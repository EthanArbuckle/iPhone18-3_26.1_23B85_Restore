@interface PAEVividWarmBG
- (PAEVividWarmBG)initWithAPIManager:(id)manager;
@end

@implementation PAEVividWarmBG

- (PAEVividWarmBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEVividWarmBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 18;
  }

  return result;
}

@end