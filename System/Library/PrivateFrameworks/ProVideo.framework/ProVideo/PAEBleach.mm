@interface PAEBleach
- (PAEBleach)initWithAPIManager:(id)manager;
@end

@implementation PAEBleach

- (PAEBleach)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEBleach;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 9;
  }

  return result;
}

@end