@interface PAENevada
- (PAENevada)initWithAPIManager:(id)manager;
@end

@implementation PAENevada

- (PAENevada)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAENevada;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 12;
  }

  return result;
}

@end