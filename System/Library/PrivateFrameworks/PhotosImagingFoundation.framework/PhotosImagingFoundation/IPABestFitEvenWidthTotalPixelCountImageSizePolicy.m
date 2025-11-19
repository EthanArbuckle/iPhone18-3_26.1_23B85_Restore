@interface IPABestFitEvenWidthTotalPixelCountImageSizePolicy
- (CGSize)transformSize:(CGSize)a3;
@end

@implementation IPABestFitEvenWidthTotalPixelCountImageSizePolicy

- (CGSize)transformSize:(CGSize)a3
{
  if (a3.width == 0.0 || a3.height == 0.0)
  {
    height = a3.height;
    width = a3.width;
  }

  else
  {
    totalPixelCount = self->super._totalPixelCount;
    v4 = sqrt(totalPixelCount / (a3.width / a3.height));
    v5 = floor(v4);
    v6 = vcvtpd_s64_f64(a3.width / a3.height * v5);
    v7 = v6 - ((v6 & 0x8000000000000001) == 1);
    v8 = vcvtmd_s64_f64(sqrt(a3.width / a3.height * totalPixelCount));
    v9 = v8 - ((v8 & 0x8000000000000001) == 1);
    v10 = vcvtpd_s64_f64(v9 / (a3.width / a3.height));
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

    if (width > a3.width || height > a3.height)
    {
      if ((a3.width & 0x80000001) == 1)
      {
        width = a3.width + -1.0;
      }

      else
      {
        width = a3.width;
      }

      height = a3.height;
    }
  }

  v14 = width;
  v15 = height;
  result.height = v15;
  result.width = v14;
  return result;
}

@end