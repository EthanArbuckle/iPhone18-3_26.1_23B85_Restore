@interface _UIBlurEffectAverageImpl
+ (id)sharedInstance;
- (BOOL)isEqual:(id)equal;
- (_UIBlurEffectAverageImpl)initWithScale:(double)scale;
- (void)appendDescriptionTo:(id)to;
@end

@implementation _UIBlurEffectAverageImpl

+ (id)sharedInstance
{
  v2 = _sharedAverageImplementation;
  if (!_sharedAverageImplementation)
  {
    v3 = objc_opt_new();
    v4 = _sharedAverageImplementation;
    _sharedAverageImplementation = v3;

    v2 = _sharedAverageImplementation;
  }

  return v2;
}

- (_UIBlurEffectAverageImpl)initWithScale:(double)scale
{
  v5.receiver = self;
  v5.super_class = _UIBlurEffectAverageImpl;
  result = [(_UIBlurEffectAverageImpl *)&v5 init];
  if (result)
  {
    result->_scale = fmax(fmin(scale, 1.0), 0.0);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy[1] == self->_scale;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendDescriptionTo:(id)to
{
  toCopy = to;
  [toCopy appendString:@" infiniteBlurRadius"];
  if (self->_scale > 0.0)
  {
    [toCopy appendFormat:@" scale=%f", *&self->_scale];
  }
}

@end