@interface VTCorruptDetector
- (VTCorruptDetector)init;
- (void)analyze:(AudioBuffer)analyze;
@end

@implementation VTCorruptDetector

- (void)analyze:(AudioBuffer)analyze
{
  v3 = *&analyze.mNumberChannels >> 33;
  if (*&analyze.mNumberChannels >> 33)
  {
    zeroSamplesCount = self->_zeroSamplesCount;
    maxZeroSamplesCount = self->_maxZeroSamplesCount;
    do
    {
      v7 = *analyze.mData;
      analyze.mData = analyze.mData + 2;
      v6 = v7;
      if (v7 < 0)
      {
        v6 = -v6;
      }

      if (v6 < 5)
      {
        ++zeroSamplesCount;
      }

      else
      {
        zeroSamplesCount = 0;
      }

      if (maxZeroSamplesCount <= zeroSamplesCount)
      {
        maxZeroSamplesCount = zeroSamplesCount;
      }

      --v3;
    }

    while (v3);
    self->_zeroSamplesCount = zeroSamplesCount;
    self->_maxZeroSamplesCount = maxZeroSamplesCount;
  }
}

- (VTCorruptDetector)init
{
  v3.receiver = self;
  v3.super_class = VTCorruptDetector;
  result = [(VTCorruptDetector *)&v3 init];
  if (result)
  {
    *&result->_zeroSamplesCount = 0;
  }

  return result;
}

@end