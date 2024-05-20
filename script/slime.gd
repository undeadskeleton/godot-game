extends Node2D

const SPEED = 60

var dir = 1
@onready var ray_castleft = $RayCastleft
@onready var ray_castright = $RayCastright
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	if ray_castright.is_colliding():
			dir = -1
			animated_sprite_2d.flip_h = true
	if ray_castleft.is_colliding():
			dir = 1
			animated_sprite_2d.flip_h = false
	position.x += dir * SPEED * delta
