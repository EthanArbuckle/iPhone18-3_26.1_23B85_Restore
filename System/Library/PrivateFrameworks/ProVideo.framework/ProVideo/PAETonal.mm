@interface PAETonal
- (PAETonal)initWithAPIManager:(id)manager;
@end

@implementation PAETonal

- (PAETonal)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETonal;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 1;
  }

  return result;
}

@end