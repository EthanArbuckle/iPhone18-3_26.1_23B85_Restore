@interface PAEDramaticCoolFG
- (PAEDramaticCoolFG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticCoolFG

- (PAEDramaticCoolFG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticCoolFG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 23;
  }

  return result;
}

@end