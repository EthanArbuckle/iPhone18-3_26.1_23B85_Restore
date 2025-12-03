@interface PAEGrayscale
- (PAEGrayscale)initWithAPIManager:(id)manager;
@end

@implementation PAEGrayscale

- (PAEGrayscale)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEGrayscale;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 11;
  }

  return result;
}

@end