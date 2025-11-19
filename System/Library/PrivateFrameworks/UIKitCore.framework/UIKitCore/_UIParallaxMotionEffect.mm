@interface _UIParallaxMotionEffect
- (UIOffset)slideMagnitude;
- (_UIParallaxMotionEffect)init;
- (_UIParallaxMotionEffect)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_activateTiltEffectIfNecessary;
- (void)_updateGroupMotionEffect;
- (void)_updateSlideEffectsWithCurrentSlideMagnitude;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumHorizontalTiltAngle:(double)a3;
- (void)setMaximumVerticalTiltAngle:(double)a3;
- (void)setRotatingSphereRadius:(double)a3;
- (void)setSlideMagnitude:(UIOffset)a3;
@end

@implementation _UIParallaxMotionEffect

- (UIOffset)slideMagnitude
{
  horizontal = self->_slideMagnitude.horizontal;
  vertical = self->_slideMagnitude.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (_UIParallaxMotionEffect)init
{
  v9.receiver = self;
  v9.super_class = _UIParallaxMotionEffect;
  v2 = [(UIMotionEffect *)&v9 init];
  if (v2)
  {
    v3 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x" type:0];
    horizontalSlideEffect = v2->_horizontalSlideEffect;
    v2->_horizontalSlideEffect = v3;

    v5 = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y" type:1];
    verticalSlideEffect = v2->_verticalSlideEffect;
    v2->_verticalSlideEffect = v5;

    _UIParallaxMotionEffectCommonInit(v2);
    v7 = v2;
  }

  return v2;
}

- (void)_updateGroupMotionEffect
{
  v14 = *MEMORY[0x1E69E9840];
  if (self->_tiltEffect)
  {
    horizontalSlideEffect = self->_horizontalSlideEffect;
    tiltEffect = self->_tiltEffect;
    v12 = horizontalSlideEffect;
    verticalSlideEffect = self->_verticalSlideEffect;
    v4 = MEMORY[0x1E695DEC8];
    p_tiltEffect = &tiltEffect;
    v6 = 3;
  }

  else
  {
    v7 = self->_verticalSlideEffect;
    v9 = self->_horizontalSlideEffect;
    v10 = v7;
    v4 = MEMORY[0x1E695DEC8];
    p_tiltEffect = &v9;
    v6 = 2;
  }

  v8 = [v4 arrayWithObjects:p_tiltEffect count:{v6, v9, v10, tiltEffect, v12, verticalSlideEffect, v14}];
  [(UIMotionEffectGroup *)self->_group setMotionEffects:v8];
}

- (void)_updateSlideEffectsWithCurrentSlideMagnitude
{
  horizontalSlideEffect = self->_horizontalSlideEffect;
  if (self->_tiltEffect)
  {
    v4 = MEMORY[0x1E696B098];
    p_slideMagnitude = &self->_slideMagnitude;
    CATransform3DMakeTranslation(&v24, -self->_slideMagnitude.horizontal, 0.0, 0.0);
    v6 = [v4 valueWithCATransform3D:&v24];
    [(UIInterpolatingMotionEffect *)horizontalSlideEffect setMinimumRelativeValue:v6];

    v7 = self->_horizontalSlideEffect;
    v8 = MEMORY[0x1E696B098];
    CATransform3DMakeTranslation(&v24, p_slideMagnitude->horizontal, 0.0, 0.0);
    v9 = [v8 valueWithCATransform3D:&v24];
    [(UIInterpolatingMotionEffect *)v7 setMaximumRelativeValue:v9];

    verticalSlideEffect = self->_verticalSlideEffect;
    v11 = MEMORY[0x1E696B098];
    CATransform3DMakeTranslation(&v24, 0.0, -self->_slideMagnitude.vertical, 0.0);
    v12 = [v11 valueWithCATransform3D:&v24];
    [(UIInterpolatingMotionEffect *)verticalSlideEffect setMinimumRelativeValue:v12];

    v13 = self->_verticalSlideEffect;
    v14 = MEMORY[0x1E696B098];
    CATransform3DMakeTranslation(&v24, 0.0, p_slideMagnitude->vertical, 0.0);
    v15 = [v14 valueWithCATransform3D:&v24];
    [(UIInterpolatingMotionEffect *)v13 setMaximumRelativeValue:v15];
  }

  else
  {
    v16 = &self->_slideMagnitude;
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:-self->_slideMagnitude.horizontal];
    [(UIInterpolatingMotionEffect *)horizontalSlideEffect setMinimumRelativeValue:v17];

    v18 = self->_horizontalSlideEffect;
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:self->_slideMagnitude.horizontal];
    [(UIInterpolatingMotionEffect *)v18 setMaximumRelativeValue:v19];

    v20 = self->_verticalSlideEffect;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:-self->_slideMagnitude.vertical];
    [(UIInterpolatingMotionEffect *)v20 setMinimumRelativeValue:v21];

    v22 = self->_verticalSlideEffect;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v16->vertical];
    [(UIInterpolatingMotionEffect *)v22 setMaximumRelativeValue:v23];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = _UIParallaxMotionEffect;
  v4 = [(UIMotionEffect *)&v12 copyWithZone:a3];
  v5 = [(UIInterpolatingMotionEffect *)self->_horizontalSlideEffect copy];
  v6 = v4[6];
  v4[6] = v5;

  v7 = [(UIInterpolatingMotionEffect *)self->_verticalSlideEffect copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(_UITiltMotionEffect *)self->_tiltEffect copy];
  v10 = v4[8];
  v4[8] = v9;

  _UIParallaxMotionEffectCommonInit(v4);
  [v4 setSlideMagnitude:{self->_slideMagnitude.horizontal, self->_slideMagnitude.vertical}];
  return v4;
}

- (_UIParallaxMotionEffect)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _UIParallaxMotionEffect;
  v5 = [(UIMotionEffect *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"horizontalSlideEffect"];
    horizontalSlideEffect = v5->_horizontalSlideEffect;
    v5->_horizontalSlideEffect = v6;

    v8 = [v4 decodeObjectForKey:@"verticalSlideEffect"];
    verticalSlideEffect = v5->_verticalSlideEffect;
    v5->_verticalSlideEffect = v8;

    v10 = [v4 decodeObjectForKey:@"tiltEffect"];
    tiltEffect = v5->_tiltEffect;
    v5->_tiltEffect = v10;

    [v4 decodeUIOffsetForKey:@"slideMagnitude"];
    [(_UIParallaxMotionEffect *)v5 setSlideMagnitude:?];
    _UIParallaxMotionEffectCommonInit(v5);
    v12 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _UIParallaxMotionEffect;
  [(UIMotionEffect *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_horizontalSlideEffect forKey:@"horizontalSlideEffect"];
  [v4 encodeObject:self->_verticalSlideEffect forKey:@"verticalSlideEffect"];
  [v4 encodeUIOffset:@"slideMagnitude" forKey:{self->_slideMagnitude.horizontal, self->_slideMagnitude.vertical}];
  tiltEffect = self->_tiltEffect;
  if (tiltEffect)
  {
    [v4 encodeObject:tiltEffect forKey:@"tiltEffect"];
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(_UIParallaxMotionEffect *)self slideMagnitude];
  v6 = NSStringFromUIOffset(v19);
  [(_UIParallaxMotionEffect *)self horizontalSlideAccelerationBoostFactor];
  v8 = v7;
  [(_UIParallaxMotionEffect *)self verticalSlideAccelerationBoostFactor];
  v10 = v9;
  [(_UIParallaxMotionEffect *)self maximumHorizontalTiltAngle];
  v12 = v11;
  [(_UIParallaxMotionEffect *)self maximumVerticalTiltAngle];
  v14 = v13;
  [(_UIParallaxMotionEffect *)self rotatingSphereRadius];
  v16 = [v3 stringWithFormat:@"<%@: %p slideMagnitude=%@ accelerationBoostFactor=(%f, %f) maximumTiltAngle=(%f, %f) rotatingSphereRadius=%f>", v5, self, v6, v8, v10, v12, v14, v15];

  return v16;
}

- (void)setSlideMagnitude:(UIOffset)a3
{
  if (a3.horizontal != self->_slideMagnitude.horizontal || a3.vertical != self->_slideMagnitude.vertical)
  {
    self->_slideMagnitude = a3;
    [(_UIParallaxMotionEffect *)self _updateSlideEffectsWithCurrentSlideMagnitude];
  }
}

- (void)_activateTiltEffectIfNecessary
{
  if (!self->_tiltEffect)
  {
    v3 = objc_alloc_init(_UITiltMotionEffect);
    tiltEffect = self->_tiltEffect;
    self->_tiltEffect = v3;

    [(_UIParallaxMotionEffect *)self _updateGroupMotionEffect];
    [(UIInterpolatingMotionEffect *)self->_horizontalSlideEffect _setKeyPath:@"layer.transform"];
    [(UIInterpolatingMotionEffect *)self->_verticalSlideEffect _setKeyPath:@"layer.transform"];

    [(_UIParallaxMotionEffect *)self _updateSlideEffectsWithCurrentSlideMagnitude];
  }
}

- (void)setMaximumHorizontalTiltAngle:(double)a3
{
  [(_UIParallaxMotionEffect *)self _activateTiltEffectIfNecessary];
  tiltEffect = self->_tiltEffect;

  [(_UITiltMotionEffect *)tiltEffect setMaximumHorizontalTiltAngle:a3];
}

- (void)setMaximumVerticalTiltAngle:(double)a3
{
  [(_UIParallaxMotionEffect *)self _activateTiltEffectIfNecessary];
  tiltEffect = self->_tiltEffect;

  [(_UITiltMotionEffect *)tiltEffect setMaximumVerticalTiltAngle:a3];
}

- (void)setRotatingSphereRadius:(double)a3
{
  [(_UIParallaxMotionEffect *)self _activateTiltEffectIfNecessary];
  tiltEffect = self->_tiltEffect;

  [(_UITiltMotionEffect *)tiltEffect setRotatingSphereRadius:a3];
}

@end