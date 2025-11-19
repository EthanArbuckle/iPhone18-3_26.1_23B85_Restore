@interface PAEDramaticCoolBG
- (PAEDramaticCoolBG)initWithAPIManager:(id)a3;
@end

@implementation PAEDramaticCoolBG

- (PAEDramaticCoolBG)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEDramaticCoolBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 20;
  }

  return result;
}

@end