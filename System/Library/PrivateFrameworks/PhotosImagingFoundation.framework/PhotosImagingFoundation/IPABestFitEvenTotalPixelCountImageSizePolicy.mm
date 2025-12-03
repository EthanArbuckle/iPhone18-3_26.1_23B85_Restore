@interface IPABestFitEvenTotalPixelCountImageSizePolicy
- (CGSize)transformSize:(CGSize)size;
- (IPABestFitEvenTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)count;
- (double)transformScaleForSize:(CGSize)size;
@end

@implementation IPABestFitEvenTotalPixelCountImageSizePolicy

- (double)transformScaleForSize:(CGSize)size
{
  v5.receiver = self;
  v5.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  [(IPABestFitTotalPixelCountImageSizePolicy *)&v5 transformScaleForSize:size.width, size.height];
  return v3 + v3;
}

- (CGSize)transformSize:(CGSize)size
{
  v7.receiver = self;
  v7.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  [(IPABestFitTotalPixelCountImageSizePolicy *)&v7 transformSize:size.width, size.height];
  v4 = v3 + v3;
  v6 = v5 + v5;
  result.height = v6;
  result.width = v4;
  return result;
}

- (IPABestFitEvenTotalPixelCountImageSizePolicy)initWithTotalPixelCount:(int64_t)count
{
  v4.receiver = self;
  v4.super_class = IPABestFitEvenTotalPixelCountImageSizePolicy;
  return [(IPABestFitTotalPixelCountImageSizePolicy *)&v4 initWithTotalPixelCount:count / 4];
}

@end