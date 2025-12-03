@interface PAEChrome
- (PAEChrome)initWithAPIManager:(id)manager;
@end

@implementation PAEChrome

- (PAEChrome)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEChrome;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 4;
  }

  return result;
}

@end