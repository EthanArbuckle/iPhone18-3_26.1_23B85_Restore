@interface IPABestFitTotalPixelCountImageSizePolicy
- (CGSize)_transformSize:(CGSize)result scale:(double *)scale;
- (CGSize)transformSize:(CGSize)size;
- (IPABestFitTotalPixelCountImageSizePolicy)initWithCoder:(id)coder;
- (IPABestFitTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)count;
- (double)transformScaleForSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPABestFitTotalPixelCountImageSizePolicy

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IPABestFitTotalPixelCountImageSizePolicy;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_totalPixelCount forKey:{@"one side", v5.receiver, v5.super_class}];
}

- (IPABestFitTotalPixelCountImageSizePolicy)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = IPABestFitTotalPixelCountImageSizePolicy;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeIntegerForKey:{@"one side", v7.receiver, v7.super_class}];

  v4->_totalPixelCount = v5;
  return v4;
}

- (double)transformScaleForSize:(CGSize)size
{
  v4 = 0.0;
  [(IPABestFitTotalPixelCountImageSizePolicy *)self _transformSize:&v4 scale:size.width, size.height];
  return v4;
}

- (CGSize)transformSize:(CGSize)size
{
  [(IPABestFitTotalPixelCountImageSizePolicy *)self _transformSize:0 scale:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_transformSize:(CGSize)result scale:(double *)scale
{
  if (result.width == 0.0 || result.height == 0.0)
  {
    return result;
  }

  totalPixelCount = self->_totalPixelCount;
  v5 = floor(sqrt(totalPixelCount / (result.width / result.height)));
  v6 = ceil(result.width / result.height * v5);
  v7 = floor(sqrt(result.width / result.height * totalPixelCount));
  v8 = ceil(v7 / (result.width / result.height));
  if (v5 * v6 >= v7 * v8)
  {
    if (v5 * v6 <= totalPixelCount)
    {
      goto LABEL_5;
    }

LABEL_7:
    v5 = v8;
    v6 = v7;
    v9 = v7 / result.width;
    goto LABEL_8;
  }

  if (v7 * v8 <= totalPixelCount)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = v5 / result.height;
LABEL_8:
  v10 = v6 > result.width;
  if (v5 > result.height)
  {
    v10 = 1;
  }

  if (!v10)
  {
    result.height = v5;
    result.width = v6;
  }

  if (scale)
  {
    v11 = 1.0;
    if (!v10)
    {
      v11 = v9;
    }

    *scale = v11;
  }

  return result;
}

- (IPABestFitTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)count
{
  if (count <= 0)
  {
    v5 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v5 bestFitPolicyWithEvenTotalPixelCount:v6, v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IPABestFitTotalPixelCountImageSizePolicy;
    result = [(IPABestFitTotalPixelCountImageSizePolicy *)&v8 init];
    if (result)
    {
      result->_totalPixelCount = count;
    }
  }

  return result;
}

@end