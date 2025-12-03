@interface PAENoir
- (PAENoir)initWithAPIManager:(id)manager;
@end

@implementation PAENoir

- (PAENoir)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAENoir;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 2;
  }

  return result;
}

@end