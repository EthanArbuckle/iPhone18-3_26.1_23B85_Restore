@interface PAEBlackAndWhiteMono
- (PAEBlackAndWhiteMono)initWithAPIManager:(id)manager;
@end

@implementation PAEBlackAndWhiteMono

- (PAEBlackAndWhiteMono)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEBlackAndWhiteMono;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 27;
  }

  return result;
}

@end