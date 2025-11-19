@interface PAEVividWarmBG
- (PAEVividWarmBG)initWithAPIManager:(id)a3;
@end

@implementation PAEVividWarmBG

- (PAEVividWarmBG)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEVividWarmBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 18;
  }

  return result;
}

@end