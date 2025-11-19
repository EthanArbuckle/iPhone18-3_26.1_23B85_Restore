@interface PAEDramaticFG
- (PAEDramaticFG)initWithAPIManager:(id)a3;
@end

@implementation PAEDramaticFG

- (PAEDramaticFG)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEDramaticFG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 22;
  }

  return result;
}

@end