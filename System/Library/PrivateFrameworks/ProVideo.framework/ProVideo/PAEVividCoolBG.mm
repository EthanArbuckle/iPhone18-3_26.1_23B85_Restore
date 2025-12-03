@interface PAEVividCoolBG
- (PAEVividCoolBG)initWithAPIManager:(id)manager;
@end

@implementation PAEVividCoolBG

- (PAEVividCoolBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEVividCoolBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 17;
  }

  return result;
}

@end