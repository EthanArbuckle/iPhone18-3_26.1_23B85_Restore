@interface IPABestFitImageSizePolicy
- (CGSize)transformSize:(CGSize)result;
- (IPABestFitImageSizePolicy)initWithCoder:(id)a3;
- (IPABestFitImageSizePolicy)initWithFitSize:(CGSize)a3;
- (double)transformScaleForSize:(CGSize)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IPABestFitImageSizePolicy

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = IPABestFitImageSizePolicy;
  v4 = a3;
  [(IPAImageSizePolicy *)&v5 encodeWithCoder:v4];
  [v4 encodeSize:@"fit size" forKey:{self->_fitSize.width, self->_fitSize.height, v5.receiver, v5.super_class}];
}

- (IPABestFitImageSizePolicy)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = IPABestFitImageSizePolicy;
  v3 = a3;
  v4 = [(IPAImageSizePolicy *)&v10 initWithCoder:v3];
  [v3 decodeSizeForKey:{@"fit size", v10.receiver, v10.super_class}];
  v6 = v5;
  v8 = v7;

  v4->_fitSize.width = v6;
  v4->_fitSize.height = v8;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromSize(self->_fitSize);
  v6 = [v3 stringWithFormat:@"<%@:%p> size=%@", v4, self, v5];

  return v6;
}

- (double)transformScaleForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(IPABestFitImageSizePolicy *)self transformSize:?];
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
    v9 = _PFAssertFailHandler();
    [(IPABestFitImageSizePolicy *)v9 isBestFitPolicy];
  }

  else if (result.width != 0.0 || result.height != 0.0)
  {
    width = self->_fitSize.width;
    height = self->_fitSize.height;
    if (result.width > width || result.height > height)
    {
      v6 = result.width / result.height;
      v7 = result.height == 0.0;
      v8 = 0.0;
      if (!v7)
      {
        v8 = v6;
      }

      if (v8 <= 0.0 || height == 0.0 || width / height <= 0.0)
      {
        return **&MEMORY[0x277CBF3A8];
      }

      else if (v8 <= 1.0)
      {
        result.width = v8 * height;
        result.height = self->_fitSize.height;
      }

      else
      {
        result.width = self->_fitSize.width;
        result.height = width / v8;
      }
    }
  }

  return result;
}

- (IPABestFitImageSizePolicy)initWithFitSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (a3.height <= 0.0 || a3.width <= 0.0)
  {
    NSStringFromSize(a3);
    objc_claimAutoreleasedReturnValue();
    v6 = _PFAssertFailHandler();
    return [(IPAImageSizePolicy *)v6 scalePolicyWithScale:v7, v8];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = IPABestFitImageSizePolicy;
    result = [(IPABestFitImageSizePolicy *)&v9 init];
    if (result)
    {
      result->_fitSize.width = width;
      result->_fitSize.height = height;
    }
  }

  return result;
}

@end