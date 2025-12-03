@interface PAEMono
- (PAEMono)initWithAPIManager:(id)manager;
@end

@implementation PAEMono

- (PAEMono)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEMono;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 0;
  }

  return result;
}

@end