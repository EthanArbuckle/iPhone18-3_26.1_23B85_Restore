@interface PAENoir
- (PAENoir)initWithAPIManager:(id)a3;
@end

@implementation PAENoir

- (PAENoir)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAENoir;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 2;
  }

  return result;
}

@end