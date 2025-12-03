@interface PUReviewScreenSpec
- (PUReviewScreenSpec)initWithOptions:(unint64_t)options;
@end

@implementation PUReviewScreenSpec

- (PUReviewScreenSpec)initWithOptions:(unint64_t)options
{
  v6.receiver = self;
  v6.super_class = PUReviewScreenSpec;
  result = [(PUReviewScreenSpec *)&v6 init];
  if (result)
  {
    v5 = 263400;
    if ((options & 0x20) != 0)
    {
      v5 = 267496;
    }

    result->_options = options;
    result->_oneUpOptions = ((options & 1) << 8) & 0xBDFF | ((options & 1) << 9) & 0xBFFF | v5 & 0xFFFFFFFFFFFFBFFFLL | (((options >> 1) & 1) << 14);
    result->_allowSendButton = options & 1;
  }

  return result;
}

@end