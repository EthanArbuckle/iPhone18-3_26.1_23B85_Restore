@interface _UIViewAnimationAttributes
- (CAFrameRateRange)_preferredFrameRateRange;
- (_UIViewAnimationAttributes)initWithBSXPCCoder:(id)a3;
- (_UIViewAnimationAttributes)initWithCoder:(id)a3;
- (double)_frameInterval;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIViewAnimationAttributes

- (_UIViewAnimationAttributes)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _UIViewAnimationAttributes;
  v5 = [(_UIViewAnimationAttributes *)&v18 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"duration"];
    v5->_duration = v6;
    [v4 decodeFloatForKey:@"delay"];
    v5->_delay = v7;
    v8 = [v4 decodeBoolForKey:@"hasSpringAttributes"];
    v5->_hasSpringAttributes = v8;
    if (v8)
    {
      [v4 decodeFloatForKey:@"springDamping"];
      v5->_springDamping = v9;
      [v4 decodeFloatForKey:@"springVelocity"];
      v5->_springVelocity = v10;
      [v4 decodeFloatForKey:@"springMass"];
      v5->_springMass = v11;
      [v4 decodeFloatForKey:@"springStiffness"];
      v5->_springStiffness = v12;
    }

    v5->_options = [v4 decodeIntegerForKey:@"options"];
    [v4 _ui_decodeCAFrameRateRangeForKey:@"preferredFrameRateRange"];
    v5->_preferredFrameRateRange.minimum = v13;
    v5->_preferredFrameRateRange.maximum = v14;
    v5->_preferredFrameRateRange.preferred = v15;
    v5->_updateReason = [v4 decodeInt32ForKey:@"updateReason"];
    v16 = v5;
  }

  return v5;
}

- (_UIViewAnimationAttributes)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = _UIViewAnimationAttributes;
  v5 = [(_UIViewAnimationAttributes *)&v17 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    [v4 decodeDoubleForKey:@"delay"];
    v5->_delay = v7;
    v8 = [v4 decodeBoolForKey:@"hasSpringAttributes"];
    v5->_hasSpringAttributes = v8;
    if (v8)
    {
      [v4 decodeDoubleForKey:@"springDamping"];
      v5->_springDamping = v9;
      [v4 decodeDoubleForKey:@"springVelocity"];
      v5->_springVelocity = v10;
      [v4 decodeDoubleForKey:@"springMass"];
      v5->_springMass = v11;
      [v4 decodeDoubleForKey:@"springStiffness"];
      v5->_springStiffness = v12;
    }

    v5->_options = [v4 decodeInt64ForKey:@"options"];
    v13 = [v4 decodeStringForKey:@"preferredFrameRateRange"];
    v5->_preferredFrameRateRange.minimum = _CAFrameRateRangeFromString(v13);
    v5->_preferredFrameRateRange.maximum = v14;
    v5->_preferredFrameRateRange.preferred = v15;

    v5->_updateReason = [v4 decodeInt64ForKey:@"updateReason"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  duration = self->_duration;
  if (duration != 0.0)
  {
    *&duration = duration;
    [v15 encodeFloat:@"duration" forKey:duration];
  }

  delay = self->_delay;
  if (delay != 0.0)
  {
    *&delay = delay;
    [v15 encodeFloat:@"delay" forKey:delay];
  }

  options = self->_options;
  if (options)
  {
    [v15 encodeInteger:options forKey:@"options"];
  }

  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
  {
    *&v7 = self->_preferredFrameRateRange.minimum;
    *&v8 = self->_preferredFrameRateRange.maximum;
    *&v9 = self->_preferredFrameRateRange.preferred;
    [v15 _ui_encodeCAFrameRateRange:@"preferredFrameRateRange" forKey:{v7, v8, v9}];
    [v15 encodeInt32:self->_updateReason forKey:@"updateReason"];
  }

  if (self->_hasSpringAttributes)
  {
    [v15 encodeBool:1 forKey:@"hasSpringAttributes"];
  }

  springDamping = self->_springDamping;
  v11 = v15;
  if (springDamping != 0.0)
  {
    *&springDamping = springDamping;
    [v15 encodeFloat:@"springDamping" forKey:springDamping];
    v11 = v15;
  }

  springVelocity = self->_springVelocity;
  if (springVelocity != 0.0)
  {
    *&springVelocity = springVelocity;
    [v15 encodeFloat:@"springVelocity" forKey:springVelocity];
    v11 = v15;
  }

  springMass = self->_springMass;
  if (springMass != 0.0)
  {
    *&springMass = springMass;
    [v15 encodeFloat:@"springMass" forKey:springMass];
    v11 = v15;
  }

  springStiffness = self->_springStiffness;
  if (springStiffness != 0.0)
  {
    *&springStiffness = springStiffness;
    [v15 encodeFloat:@"springStiffness" forKey:springStiffness];
    v11 = v15;
  }
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v7 = a3;
  if (self->_duration != 0.0)
  {
    [v7 encodeDouble:@"duration" forKey:?];
  }

  if (self->_delay != 0.0)
  {
    [v7 encodeDouble:@"delay" forKey:?];
  }

  options = self->_options;
  if (options)
  {
    [v7 encodeInt64:options forKey:@"options"];
  }

  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
  {
    v5 = _NSStringFromCAFrameRateRange(self->_preferredFrameRateRange.minimum, self->_preferredFrameRateRange.maximum, self->_preferredFrameRateRange.preferred);
    [v7 encodeObject:v5 forKey:@"preferredFrameRateRange"];

    [v7 encodeInt64:self->_updateReason forKey:@"updateReason"];
  }

  if (self->_hasSpringAttributes)
  {
    [v7 encodeBool:1 forKey:@"hasSpringAttributes"];
  }

  v6 = v7;
  if (self->_springDamping != 0.0)
  {
    [v7 encodeDouble:@"springDamping" forKey:?];
    v6 = v7;
  }

  if (self->_springVelocity != 0.0)
  {
    [v7 encodeDouble:@"springVelocity" forKey:?];
    v6 = v7;
  }

  if (self->_springMass != 0.0)
  {
    [v7 encodeDouble:@"springMass" forKey:?];
    v6 = v7;
  }

  if (self->_springStiffness != 0.0)
  {
    [v7 encodeDouble:@"springStiffness" forKey:?];
    v6 = v7;
  }
}

- (double)_frameInterval
{
  if ((self->_options & 0xF000000) != 0)
  {
    return 1.0 / (240.0 / ((BYTE3(self->_options) & 0xFu) + 1));
  }

  else
  {
    return 0.0;
  }
}

- (CAFrameRateRange)_preferredFrameRateRange
{
  minimum = self->_preferredFrameRateRange.minimum;
  maximum = self->_preferredFrameRateRange.maximum;
  preferred = self->_preferredFrameRateRange.preferred;
  result.preferred = preferred;
  result.maximum = maximum;
  result.minimum = minimum;
  return result;
}

@end