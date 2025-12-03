@interface PAEBlackAndWhiteNoir
- (PAEBlackAndWhiteNoir)initWithAPIManager:(id)manager;
@end

@implementation PAEBlackAndWhiteNoir

- (PAEBlackAndWhiteNoir)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAEBlackAndWhiteNoir;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 26;
  }

  return result;
}

@end