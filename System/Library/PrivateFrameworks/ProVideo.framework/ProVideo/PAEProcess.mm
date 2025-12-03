@interface PAEProcess
- (PAEProcess)initWithAPIManager:(id)manager;
@end

@implementation PAEProcess

- (PAEProcess)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEProcess;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 5;
  }

  return result;
}

@end