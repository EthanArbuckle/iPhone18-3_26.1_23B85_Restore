@interface PAENewYork
- (PAENewYork)initWithAPIManager:(id)manager;
@end

@implementation PAENewYork

- (PAENewYork)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAENewYork;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 13;
  }

  return result;
}

@end