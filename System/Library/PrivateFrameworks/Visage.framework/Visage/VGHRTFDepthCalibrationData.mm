@interface VGHRTFDepthCalibrationData
- (__n128)intrinsicMatrix;
- (__n128)setIntrinsicMatrix:(__n128)matrix;
@end

@implementation VGHRTFDepthCalibrationData

- (__n128)intrinsicMatrix
{
  result = *(self + 32);
  v2 = *(self + 48);
  v3 = *(self + 64);
  return result;
}

- (__n128)setIntrinsicMatrix:(__n128)matrix
{
  result[2] = a2;
  result[3] = matrix;
  result[4] = a4;
  return result;
}

@end