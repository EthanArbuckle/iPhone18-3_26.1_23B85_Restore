@interface PAEBleach
- (PAEBleach)initWithAPIManager:(id)a3;
@end

@implementation PAEBleach

- (PAEBleach)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBleach;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 9;
  }

  return result;
}

@end