@interface PAEDramaticWarmFG
- (PAEDramaticWarmFG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticWarmFG

- (PAEDramaticWarmFG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticWarmFG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 24;
  }

  return result;
}

@end