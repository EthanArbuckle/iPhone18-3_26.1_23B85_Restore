@interface _UIBlurEffectModernImpl
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectModernImpl)initWithBlurRadius:(double)a3 scale:(double)a4;
- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5;
- (void)appendDescriptionTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _UIBlurEffectModernImpl

- (_UIBlurEffectModernImpl)initWithBlurRadius:(double)a3 scale:(double)a4
{
  v8.receiver = self;
  v8.super_class = _UIBlurEffectModernImpl;
  result = [(_UIBlurEffectModernImpl *)&v8 init];
  if (result)
  {
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    else
    {
      v7 = 0.0;
    }

    result->_blurRadius = v7;
    result->_blurScale = fmax(fmin(a4, 1.0), 0.0);
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_blurRadius > 0.0)
  {
    [v4 encodeDouble:@"UIBlurEffectRadius" forKey:?];
    v4 = v5;
  }

  if (self->_blurScale > 0.0)
  {
    [v5 encodeDouble:@"UIBlurEffectScale" forKey:?];
    v4 = v5;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [v4 isMemberOfClass:objc_opt_class()] && v4[1] == self->_blurRadius && v4[2] == self->_blurScale;

  return v5;
}

- (void)_updateEffectDescriptor:(id)a3 forEnvironment:(id)a4 usage:(int64_t)a5
{
  v7 = a4;
  v8 = a3;
  if ([v7 reducedTransperancy])
  {
    _UIBlurEffectAddAverageColorFilterEntry(v8, v7, fmax(self->_blurScale, 0.25));
  }

  else
  {
    _UIBlurEffectAddBlurFilterEntry(v8, v7, self->_blurRadius, self->_blurScale);
  }
}

- (void)appendDescriptionTo:(id)a3
{
  v4 = a3;
  [v4 appendFormat:@" blurRadius=%f", *&self->_blurRadius];
  if (self->_blurScale > 0.0)
  {
    [v4 appendFormat:@" blurScale=%f", *&self->_blurScale];
  }
}

@end