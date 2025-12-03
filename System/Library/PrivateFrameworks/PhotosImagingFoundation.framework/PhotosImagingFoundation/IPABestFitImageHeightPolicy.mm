@interface IPABestFitImageHeightPolicy
- (CGSize)transformSize:(CGSize)result;
- (IPABestFitImageHeightPolicy)initWithCoder:(id)coder;
- (IPABestFitImageHeightPolicy)initWithHeight:(double)height;
- (double)transformScaleForSize:(CGSize)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IPABestFitImageHeightPolicy

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = IPABestFitImageHeightPolicy;
  coderCopy = coder;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"fit height" forKey:{self->_fitHeight, v5.receiver, v5.super_class}];
}

- (IPABestFitImageHeightPolicy)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = IPABestFitImageHeightPolicy;
  coderCopy = coder;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:coderCopy];
  [coderCopy decodeDoubleForKey:{@"fit height", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_fitHeight = v6;
  return v4;
}

- (double)transformScaleForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(IPABestFitImageHeightPolicy *)self transformSize:?];
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
    [(IPABestFitImageHeightPolicy *)v5 isBestFitPolicy];
  }

  else
  {
    fitHeight = self->_fitHeight;
    if (result.height <= fitHeight)
    {
      fitHeight = result.height;
    }

    else
    {
      result.width = result.width * (fitHeight / result.height);
    }

    v4 = fitHeight;
  }

  result.height = v4;
  return result;
}

- (IPABestFitImageHeightPolicy)initWithHeight:(double)height
{
  if (height <= 0.0)
  {
    v5 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v5 bestFitPolicyWithWidth:v6, v7];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = IPABestFitImageHeightPolicy;
    result = [(IPABestFitImageHeightPolicy *)&v8 init];
    if (result)
    {
      result->_fitHeight = height;
    }
  }

  return result;
}

@end