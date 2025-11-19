@interface PXStoryCurationLengthInfo
- (PXStoryCurationLengthInfo)init;
- (PXStoryCurationLengthInfo)initWithAvailableLengths:(unint64_t)a3 defaultLength:(unint64_t)a4;
@end

@implementation PXStoryCurationLengthInfo

- (PXStoryCurationLengthInfo)initWithAvailableLengths:(unint64_t)a3 defaultLength:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = PXStoryCurationLengthInfo;
  result = [(PXStoryCurationLengthInfo *)&v7 init];
  if (result)
  {
    result->_availableCurationLengths = a3;
    result->_defaultCurationLength = a4;
  }

  return result;
}

- (PXStoryCurationLengthInfo)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryCurationLengthInfo.m" lineNumber:16 description:{@"%s is not available as initializer", "-[PXStoryCurationLengthInfo init]"}];

  abort();
}

@end