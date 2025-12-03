@interface PAEDramaticCoolBG
- (PAEDramaticCoolBG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticCoolBG

- (PAEDramaticCoolBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticCoolBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 20;
  }

  return result;
}

@end