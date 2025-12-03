@interface IPABestFitImageWidthPolicy
- (CGSize)transformSize:(CGSize)result;
- (IPABestFitImageWidthPolicy)initWithCoder:(id)coder;
- (IPABestFitImageWidthPolicy)initWithWidth:(double)width;
- (double)transformScaleForSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPABestFitImageWidthPolicy

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IPABestFitImageWidthPolicy;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"fit width" forKey:{self->_fitWidth, v5.receiver, v5.super_class}];
}

- (IPABestFitImageWidthPolicy)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IPABestFitImageWidthPolicy;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:coderCopy];
  [coderCopy decodeDoubleForKey:{@"fit width", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_fitWidth = v6;
  return v4;
}

- (double)transformScaleForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(IPABestFitImageWidthPolicy *)self transformSize:?];
  v7 = v6;
  result = v6 / width;
  if (result >= v5 / height)
  {
    result = v5 / height;
  }

  v9 = ceil(v7);
  v10 = ceil(v5);
  while (1)
  {
    v11 = ceil(height * result);
    if (ceil(width * result) <= v9 && v11 <= v10)
    {
      break;
    }

    result = result * 0.999999;
  }

  return result;
}

- (CGSize)transformSize:(CGSize)result
{
  if (result.width < 0.0 || result.height < 0.0)
  {
    NSStringFromSize(result);
    objc_claimAutoreleasedReturnValue();
    v5 = _PFAssertFailHandler();
    [(IPABestFitImageWidthPolicy *)v5 isBestFitPolicy];
  }

  else
  {
    fitWidth = self->_fitWidth;
    if (result.width <= fitWidth)
    {
      fitWidth = result.width;
    }

    else
    {
      result.height = result.height * (fitWidth / result.width);
    }

    v4 = fitWidth;
  }

  result.width = v4;
  return result;
}

- (IPABestFitImageWidthPolicy)initWithWidth:(double)width
{
  if (width <= 0.0)
  {
    v5 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v5 bestFitPolicyShortestEdge:v6, v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IPABestFitImageWidthPolicy;
    result = [(IPABestFitImageWidthPolicy *)&v8 init];
    if (result)
    {
      result->_fitWidth = width;
    }
  }

  return result;
}

@end