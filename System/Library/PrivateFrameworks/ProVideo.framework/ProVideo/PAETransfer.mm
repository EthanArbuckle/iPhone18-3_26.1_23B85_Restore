@interface PAETransfer
- (PAETransfer)initWithAPIManager:(id)manager;
@end

@implementation PAETransfer

- (PAETransfer)initWithAPIManager:(id)manager
{
  v4.receiver = self;
  v4.super_class = PAETransfer;
  result = [(PAEPhotosFilters *)&v4 initWithAPIManager:manager];
  if (result)
  {
    result->super.whichFilter = 6;
  }

  return result;
}

@end