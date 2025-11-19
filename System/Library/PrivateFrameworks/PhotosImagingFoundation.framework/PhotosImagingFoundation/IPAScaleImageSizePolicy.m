@interface IPAScaleImageSizePolicy
- (CGSize)transformSize:(CGSize)a3;
- (IPAScaleImageSizePolicy)initWithCoder:(id)a3;
- (IPAScaleImageSizePolicy)initWithScale:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPAScaleImageSizePolicy

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = IPAScaleImageSizePolicy;
  v4 = a3;
  [(IPAImageSizePolicy *)&v6 encodeWithCoder:v4];
  scale = self->_scale;
  *&scale = scale;
  [v4 encodeFloat:@"scale" forKey:{scale, v6.receiver, v6.super_class}];
}

- (IPAScaleImageSizePolicy)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IPAScaleImageSizePolicy;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:v3];
  [v3 decodeFloatForKey:{@"scale", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_scale = v6;
  return v4;
}

- (CGSize)transformSize:(CGSize)a3
{
  scale = self->_scale;
  v4 = round(a3.width * scale);
  v5 = round(a3.height * scale);
  result.height = v5;
  result.width = v4;
  return result;
}

- (IPAScaleImageSizePolicy)initWithScale:(double)a3
{
  if (a3 <= 0.0 || a3 >= 100.0)
  {
    v7 = a3;
    _PFAssertContinueHandler();
  }

  v8.receiver = self;
  v8.super_class = IPAScaleImageSizePolicy;
  result = [(IPAScaleImageSizePolicy *)&v8 init];
  if (result)
  {
    result->_scale = a3;
  }

  return result;
}

@end