@interface PAEChrome
- (PAEChrome)initWithAPIManager:(id)a3;
@end

@implementation PAEChrome

- (PAEChrome)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEChrome;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 4;
  }

  return result;
}

@end