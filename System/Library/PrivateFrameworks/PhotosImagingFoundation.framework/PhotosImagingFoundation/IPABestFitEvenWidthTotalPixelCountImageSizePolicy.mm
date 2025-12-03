@interface IPABestFitEvenWidthTotalPixelCountImageSizePolicy
- (CGSize)transformSize:(CGSize)size;
@end

@implementation IPABestFitEvenWidthTotalPixelCountImageSizePolicy

- (CGSize)transformSize:(CGSize)size
{
  if (size.width == 0.0 || size.height == 0.0)
  {
    height = size.height;
    width = size.width;
  }

  else
  {
    totalPixelCount = self->super._totalPixelCount;
    v4 = sqrt(totalPixelCount / (size.width / size.height));
    v5 = floor(v4);
    v6 = vcvtpd_s64_f64(size.width / size.height * v5);
    v7 = v6 - ((v6 & 0x8000000000000001) == 1);
    v8 = vcvtmd_s64_f64(sqrt(size.width / size.height * totalPixelCount));
    v9 = v8 - ((v8 & 0x8000000000000001) == 1);
    v10 = vcvtpd_s64_f64(v9 / (size.width / size.height));
    if ((v7 * vcvtmd_s64_f64(v4)) >= v9 * v10)
    {
      width = v7;
      height = v5;
      if (v5 * v7 > totalPixelCount)
      {
        height = v10;
        width = v9;
      }
    }

    else
    {
      height = v10;
      width = v9;
      if (v9 * v10 > totalPixelCount)
      {
        width = v7;
        height = v5;
      }
    }

    if (width > size.width || height > size.height)
    {
      if ((size.width & 0x80000001) == 1)
      {
        width = size.width + -1.0;
      }

      else
      {
        width = size.width;
      }

      height = size.height;
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

@end