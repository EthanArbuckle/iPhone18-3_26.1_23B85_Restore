@interface IPABestFitEvenTotalPixelCountImageSizePolicy
- (CGSize)transformSize:(CGSize)a3;
- (IPABestFitEvenTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)a3;
- (double)transformScaleForSize:(CGSize)a3;
@end

@implementation IPABestFitEvenTotalPixelCountImageSizePolicy

- (double)transformScaleForSize:(CGSize)a3
{
  v5.receiver = self;
  v5.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  [(IPABestFitTotalPixelCountImageSizePolicy *)&v5 transformScaleForSize:a3.width, a3.height];
  return v3 + v3;
}

- (CGSize)transformSize:(CGSize)a3
{
  v7.receiver = self;
  v7.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  [(IPABestFitTotalPixelCountImageSizePolicy *)&v7 transformSize:a3.width, a3.height];
  v4 = v3 + v3;
  v6 = v5 + v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (IPABestFitEvenTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  return [(IPABestFitTotalPixelCountImageSizePolicy *)&v4 initWithTotalPixelCount:a3 / 4];
}

@end