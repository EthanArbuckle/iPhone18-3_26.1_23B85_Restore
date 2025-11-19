@interface PAECool
- (PAECool)initWithAPIManager:(id)a3;
@end

@implementation PAECool

- (PAECool)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAECool;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 28;
  }

  return result;
}

@end