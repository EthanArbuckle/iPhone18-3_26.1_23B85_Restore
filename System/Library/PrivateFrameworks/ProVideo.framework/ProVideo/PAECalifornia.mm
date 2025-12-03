@interface PAECalifornia
- (PAECalifornia)initWithAPIManager:(id)manager;
@end

@implementation PAECalifornia

- (PAECalifornia)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAECalifornia;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 10;
  }

  return result;
}

@end