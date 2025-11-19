@interface PUReviewScreenSpec
- (PUReviewScreenSpec)initWithOptions:(unint64_t)a3;
@end

@implementation PUReviewScreenSpec

- (PUReviewScreenSpec)initWithOptions:(unint64_t)a3
{
  v6.receiver = self;
  v6.super_class = PUReviewScreenSpec;
  result = [(PUReviewScreenSpec *)&v6 init];
  if (result)
  {
    v5 = 263400;
    if ((a3 & 0x20) != 0)
    {
      v5 = 267496;
    }

    result->_options = a3;
    result->_oneUpOptions = ((a3 & 1) << 8) & 0xBDFF | ((a3 & 1) << 9) & 0xBFFF | v5 & 0xFFFFFFFFFFFFBFFFLL | (((a3 >> 1) & 1) << 14);
    result->_allowSendButton = a3 & 1;
  }

  return result;
}

@end