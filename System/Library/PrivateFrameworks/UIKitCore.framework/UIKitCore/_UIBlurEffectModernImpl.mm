@interface _UIBlurEffectModernImpl
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectModernImpl)initWithBlurRadius:(double)radius scale:(double)scale;
- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage;
- (void)appendDescriptionTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _UIBlurEffectModernImpl

- (_UIBlurEffectModernImpl)initWithBlurRadius:(double)radius scale:(double)scale
{
  v8.receiver = self;
  v8.super_class = _UIBlurEffectModernImpl;
  result = [(_UIBlurEffectModernImpl *)&v8 init];
  if (result)
  {
    if (radius >= 0.0)
    {
      radiusCopy = radius;
    }

    else
    {
      radiusCopy = 0.0;
    }

    result->_blurRadius = radiusCopy;
    result->_blurScale = fmax(fmin(scale, 1.0), 0.0);
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_blurRadius > 0.0)
  {
    [coderCopy encodeDouble:@"UIBlurEffectRadius" forKey:?];
    coderCopy = v5;
  }

  if (self->_blurScale > 0.0)
  {
    [v5 encodeDouble:@"UIBlurEffectScale" forKey:?];
    coderCopy = v5;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && equalCopy[1] == self->_blurRadius && equalCopy[2] == self->_blurScale;

  return v5;
}

- (void)_updateEffectDescriptor:(id)descriptor forEnvironment:(id)environment usage:(int64_t)usage
{
  environmentCopy = environment;
  descriptorCopy = descriptor;
  if ([environmentCopy reducedTransperancy])
  {
    _UIBlurEffectAddAverageColorFilterEntry(descriptorCopy, environmentCopy, fmax(self->_blurScale, 0.25));
  }

  else
  {
    _UIBlurEffectAddBlurFilterEntry(descriptorCopy, environmentCopy, self->_blurRadius, self->_blurScale);
  }
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  [toCopy appendFormat:@" blurRadius=%f", *&self->_blurRadius];
  if (self->_blurScale > 0.0)
  {
    [toCopy appendFormat:@" blurScale=%f", *&self->_blurScale];
  }
}

@end