@interface PAEDramaticWarmBG
- (PAEDramaticWarmBG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticWarmBG

- (PAEDramaticWarmBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticWarmBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 21;
  }

  return result;
}

@end