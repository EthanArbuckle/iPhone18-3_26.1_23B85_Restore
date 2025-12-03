@interface PAESilvertone
- (PAESilvertone)initWithAPIManager:(id)manager;
@end

@implementation PAESilvertone

- (PAESilvertone)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAESilvertone;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 25;
  }

  return result;
}

@end