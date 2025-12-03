@interface PAESixties
- (PAESixties)initWithAPIManager:(id)manager;
@end

@implementation PAESixties

- (PAESixties)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESixties;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 14;
  }

  return result;
}

@end