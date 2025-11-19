@interface IPABestFitImageWidthPolicy
- (CGSize)transformSize:(CGSize)result;
- (IPABestFitImageWidthPolicy)initWithCoder:(id)a3;
- (IPABestFitImageWidthPolicy)initWithWidth:(double)a3;
- (double)transformScaleForSize:(CGSize)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPABestFitImageWidthPolicy

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IPABestFitImageWidthPolicy;
  v4 = a3;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:v4];
  [v4 encodeDouble:@"fit width" forKey:{self->_fitWidth, v5.receiver, v5.super_class}];
}

- (IPABestFitImageWidthPolicy)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = IPABestFitImageWidthPolicy;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v8 initWithCoder:v3];
  [v3 decodeDoubleForKey:{@"fit width", v8.receiver, v8.super_class}];
  v6 = v5;

  v4->_fitWidth = v6;
  return v4;
}

- (double)transformScaleForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (IPABestFitImageWidthPolicy)initWithWidth:(double)a3
{
  if (a3 <= 0.0)
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
      result->_fitWidth = a3;
    }
  }

  return result;
}

@end