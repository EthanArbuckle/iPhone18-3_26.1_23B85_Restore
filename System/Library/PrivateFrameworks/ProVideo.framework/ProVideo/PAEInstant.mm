@interface PAEInstant
- (PAEInstant)initWithAPIManager:(id)manager;
@end

@implementation PAEInstant

- (PAEInstant)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEInstant;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 7;
  }

  return result;
}

@end