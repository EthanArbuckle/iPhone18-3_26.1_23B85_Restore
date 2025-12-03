@interface _UIViewAnimationAttributes
- (CAFrameRateRange)_preferredFrameRateRange;
- (_UIViewAnimationAttributes)initWithBSXPCCoder:(id)coder;
- (_UIViewAnimationAttributes)initWithCoder:(id)coder;
- (double)_frameInterval;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIViewAnimationAttributes

- (_UIViewAnimationAttributes)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _UIViewAnimationAttributes;
  v5 = [(_UIViewAnimationAttributes *)&v18 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"duration"];
    v5->_duration = v6;
    [coderCopy decodeFloatForKey:@"delay"];
    v5->_delay = v7;
    v8 = [coderCopy decodeBoolForKey:@"hasSpringAttributes"];
    v5->_hasSpringAttributes = v8;
    if (v8)
    {
      [coderCopy decodeFloatForKey:@"springDamping"];
      v5->_springDamping = v9;
      [coderCopy decodeFloatForKey:@"springVelocity"];
      v5->_springVelocity = v10;
      [coderCopy decodeFloatForKey:@"springMass"];
      v5->_springMass = v11;
      [coderCopy decodeFloatForKey:@"springStiffness"];
      v5->_springStiffness = v12;
    }

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
    [coderCopy _ui_decodeCAFrameRateRangeForKey:@"preferredFrameRateRange"];
    v5->_preferredFrameRateRange.minimum = v13;
    v5->_preferredFrameRateRange.maximum = v14;
    v5->_preferredFrameRateRange.preferred = v15;
    v5->_updateReason = [coderCopy decodeInt32ForKey:@"updateReason"];
    v16 = v5;
  }

  return v5;
}

- (_UIViewAnimationAttributes)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _UIViewAnimationAttributes;
  v5 = [(_UIViewAnimationAttributes *)&v17 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"duration"];
    v5->_duration = v6;
    [coderCopy decodeDoubleForKey:@"delay"];
    v5->_delay = v7;
    v8 = [coderCopy decodeBoolForKey:@"hasSpringAttributes"];
    v5->_hasSpringAttributes = v8;
    if (v8)
    {
      [coderCopy decodeDoubleForKey:@"springDamping"];
      v5->_springDamping = v9;
      [coderCopy decodeDoubleForKey:@"springVelocity"];
      v5->_springVelocity = v10;
      [coderCopy decodeDoubleForKey:@"springMass"];
      v5->_springMass = v11;
      [coderCopy decodeDoubleForKey:@"springStiffness"];
      v5->_springStiffness = v12;
    }

    v5->_options = [coderCopy decodeInt64ForKey:@"options"];
    v13 = [coderCopy decodeStringForKey:@"preferredFrameRateRange"];
    v5->_preferredFrameRateRange.minimum = _CAFrameRateRangeFromString(v13);
    v5->_preferredFrameRateRange.maximum = v14;
    v5->_preferredFrameRateRange.preferred = v15;

    v5->_updateReason = [coderCopy decodeInt64ForKey:@"updateReason"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  duration = self->_duration;
  if (duration != 0.0)
  {
    *&duration = duration;
    [coderCopy encodeFloat:@"duration" forKey:duration];
  }

  delay = self->_delay;
  if (delay != 0.0)
  {
    *&delay = delay;
    [coderCopy encodeFloat:@"delay" forKey:delay];
  }

  options = self->_options;
  if (options)
  {
    [coderCopy encodeInteger:options forKey:@"options"];
  }

  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
  {
    *&v7 = self->_preferredFrameRateRange.minimum;
    *&v8 = self->_preferredFrameRateRange.maximum;
    *&v9 = self->_preferredFrameRateRange.preferred;
    [coderCopy _ui_encodeCAFrameRateRange:@"preferredFrameRateRange" forKey:{v7, v8, v9}];
    [coderCopy encodeInt32:self->_updateReason forKey:@"updateReason"];
  }

  if (self->_hasSpringAttributes)
  {
    [coderCopy encodeBool:1 forKey:@"hasSpringAttributes"];
  }

  springDamping = self->_springDamping;
  v11 = coderCopy;
  if (springDamping != 0.0)
  {
    *&springDamping = springDamping;
    [coderCopy encodeFloat:@"springDamping" forKey:springDamping];
    v11 = coderCopy;
  }

  springVelocity = self->_springVelocity;
  if (springVelocity != 0.0)
  {
    *&springVelocity = springVelocity;
    [coderCopy encodeFloat:@"springVelocity" forKey:springVelocity];
    v11 = coderCopy;
  }

  springMass = self->_springMass;
  if (springMass != 0.0)
  {
    *&springMass = springMass;
    [coderCopy encodeFloat:@"springMass" forKey:springMass];
    v11 = coderCopy;
  }

  springStiffness = self->_springStiffness;
  if (springStiffness != 0.0)
  {
    *&springStiffness = springStiffness;
    [coderCopy encodeFloat:@"springStiffness" forKey:springStiffness];
    v11 = coderCopy;
  }
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  if (self->_duration != 0.0)
  {
    [coderCopy encodeDouble:@"duration" forKey:?];
  }

  if (self->_delay != 0.0)
  {
    [coderCopy encodeDouble:@"delay" forKey:?];
  }

  options = self->_options;
  if (options)
  {
    [coderCopy encodeInt64:options forKey:@"options"];
  }

  if (!CAFrameRateRangeIsEqualToRange(self->_preferredFrameRateRange, *MEMORY[0x1E69792B8]))
  {
    v5 = _NSStringFromCAFrameRateRange(self->_preferredFrameRateRange.minimum, self->_preferredFrameRateRange.maximum, self->_preferredFrameRateRange.preferred);
    [coderCopy encodeObject:v5 forKey:@"preferredFrameRateRange"];

    [coderCopy encodeInt64:self->_updateReason forKey:@"updateReason"];
  }

  if (self->_hasSpringAttributes)
  {
    [coderCopy encodeBool:1 forKey:@"hasSpringAttributes"];
  }

  v6 = coderCopy;
  if (self->_springDamping != 0.0)
  {
    [coderCopy encodeDouble:@"springDamping" forKey:?];
    v6 = coderCopy;
  }

  if (self->_springVelocity != 0.0)
  {
    [coderCopy encodeDouble:@"springVelocity" forKey:?];
    v6 = coderCopy;
  }

  if (self->_springMass != 0.0)
  {
    [coderCopy encodeDouble:@"springMass" forKey:?];
    v6 = coderCopy;
  }

  if (self->_springStiffness != 0.0)
  {
    [coderCopy encodeDouble:@"springStiffness" forKey:?];
    v6 = coderCopy;
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