@interface VGHRTFDepthCalibrationData
- (__n128)intrinsicMatrix;
- (__n128)setIntrinsicMatrix:(__n128)a3;
@end

@implementation VGHRTFDepthCalibrationData

- (__n128)intrinsicMatrix
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

- (__n128)setIntrinsicMatrix:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

@end