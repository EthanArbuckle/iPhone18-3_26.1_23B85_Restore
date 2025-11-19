@interface PAETransfer
- (PAETransfer)initWithAPIManager:(id)a3;
@end

@implementation PAETransfer

- (PAETransfer)initWithAPIManager:(id)a3
{
  v4.receiver = self;
  v4.super_class = PAETransfer;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:a3];
  if (result)
  {
    result->super.whichFilter = 6;
  }

  return result;
}

@end