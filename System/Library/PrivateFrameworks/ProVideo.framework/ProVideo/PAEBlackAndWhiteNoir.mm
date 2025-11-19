@interface PAEBlackAndWhiteNoir
- (PAEBlackAndWhiteNoir)initWithAPIManager:(id)a3;
@end

@implementation PAEBlackAndWhiteNoir

- (PAEBlackAndWhiteNoir)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAEBlackAndWhiteNoir;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 26;
  }

  return result;
}

@end