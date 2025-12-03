@interface PAECool
- (PAECool)initWithAPIManager:(id)manager;
@end

@implementation PAECool

- (PAECool)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAECool;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 28;
  }

  return result;
}

@end