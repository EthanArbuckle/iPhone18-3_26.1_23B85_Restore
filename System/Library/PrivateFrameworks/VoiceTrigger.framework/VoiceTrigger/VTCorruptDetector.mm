@interface VTCorruptDetector
- (VTCorruptDetector)init;
- (void)analyze:(AudioBuffer)a3;
@end

@implementation VTCorruptDetector

- (void)analyze:(AudioBuffer)a3
{
  v3 = *&a3.mNumberChannels >> 33;
  if (*&a3.mNumberChannels >> 33)
  {
    zeroSamplesCount = self->_zeroSamplesCount;
    maxZeroSamplesCount = self->_maxZeroSamplesCount;
    do
    {
      v7 = *a3.mData;
      a3.mData = a3.mData + 2;
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