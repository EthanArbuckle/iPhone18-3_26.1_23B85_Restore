@interface _UIBlurEffectAverageImpl
+ (id)sharedInstance;
- (BOOL)isEqual:(id)a3;
- (_UIBlurEffectAverageImpl)initWithScale:(double)a3;
- (void)appendDescriptionTo:(id)a3;
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

- (_UIBlurEffectAverageImpl)initWithScale:(double)a3
{
  v5.receiver = self;
  v5.super_class = _UIBlurEffectAverageImpl;
  result = [(_UIBlurEffectAverageImpl *)&v5 init];
  if (result)
  {
    result->_scale = fmax(fmin(a3, 1.0), 0.0);
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4[1] == self->_scale;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)appendDescriptionTo:(id)a3
{
  v4 = a3;
  [v4 appendString:@" infiniteBlurRadius"];
  if (self->_scale > 0.0)
  {
    [v4 appendFormat:@" scale=%f", *&self->_scale];
  }
}

@end