@interface PXStoryCurationLengthInfo
- (PXStoryCurationLengthInfo)init;
- (PXStoryCurationLengthInfo)initWithAvailableLengths:(unint64_t)lengths defaultLength:(unint64_t)length;
@end

@implementation PXStoryCurationLengthInfo

- (PXStoryCurationLengthInfo)initWithAvailableLengths:(unint64_t)lengths defaultLength:(unint64_t)length
{
  v7.receiver = self;
  v7.super_class = PXStoryCurationLengthInfo;
  result = [(PXStoryCurationLengthInfo *)&v7 init];
  if (result)
  {
    result->_availableCurationLengths = lengths;
    result->_defaultCurationLength = length;
  }

  return result;
}

- (PXStoryCurationLengthInfo)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryCurationLengthInfo.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryCurationLengthInfo init]"}];

  abort();
}

@end