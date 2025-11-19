@interface PAEVividCoolBG
- (PAEVividCoolBG)initWithAPIManager:(id)a3;
@end

@implementation PAEVividCoolBG

- (PAEVividCoolBG)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEVividCoolBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 17;
  }

  return result;
}

@end