@interface IPAScaleImageSizePolicy
- (CGSize)transformSize:(CGSize)size;
- (IPAScaleImageSizePolicy)initWithCoder:(id)coder;
- (IPAScaleImageSizePolicy)initWithScale:(double)scale;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPAScaleImageSizePolicy

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = IPAScaleImageSizePolicy;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v6 encodeWithCoder:coderCopy];
  scale = self->_scale;
  *&scale = scale;
  [coderCopy encodeFloat:@"scale" forKey:{scale, v6.receiver, v6.super_class}];
}

- (IPAScaleImageSizePolicy)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IPAScaleImageSizePolicy;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:coderCopy];
  [coderCopy decodeFloatForKey:{@"scale", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_scale = v6;
  return v4;
}

- (CGSize)transformSize:(CGSize)size
{
  scale = self->_scale;
  v4 = round(size.width * scale);
  v5 = round(size.height * scale);
  result.height = v5;
  result.width = v4;
  return result;
}

- (IPAScaleImageSizePolicy)initWithScale:(double)scale
{
  if (scale <= 0.0 || scale >= 100.0)
  {
    scaleCopy = scale;
    _PFAssertContinueHandler();
  }

  v8.receiver = self;
  v8.super_class = IPAScaleImageSizePolicy;
  result = [(IPAScaleImageSizePolicy *)&v8 init];
  if (result)
  {
    result->_scale = scale;
  }

  return result;
}

@end