@interface PAESilvertone
- (PAESilvertone)initWithAPIManager:(id)a3;
@end

@implementation PAESilvertone

- (PAESilvertone)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAESilvertone;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 25;
  }

  return result;
}

@end