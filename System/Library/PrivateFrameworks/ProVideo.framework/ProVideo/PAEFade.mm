@interface PAEFade
- (PAEFade)initWithAPIManager:(id)manager;
@end

@implementation PAEFade

- (PAEFade)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEFade;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 3;
  }

  return result;
}

@end