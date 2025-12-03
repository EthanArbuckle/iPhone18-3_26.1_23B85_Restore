@interface PAEDramaticFG
- (PAEDramaticFG)initWithAPIManager:(id)manager;
@end

@implementation PAEDramaticFG

- (PAEDramaticFG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEDramaticFG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 22;
  }

  return result;
}

@end