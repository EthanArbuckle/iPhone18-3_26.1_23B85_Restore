@interface PAEVividStandardBG
- (PAEVividStandardBG)initWithAPIManager:(id)manager;
@end

@implementation PAEVividStandardBG

- (PAEVividStandardBG)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEVividStandardBG;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 16;
  }

  return result;
}

@end