@interface PAEDramaticBG
- (PAEDramaticBG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticBG

- (PAEDramaticBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 19;
  }

  return result;
}

@end