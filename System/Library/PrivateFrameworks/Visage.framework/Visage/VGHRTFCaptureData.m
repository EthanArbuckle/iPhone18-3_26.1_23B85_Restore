@interface VGHRTFCaptureData
- (__n128)colorIntrinsics;
- (__n128)setColorIntrinsics:(__n128)a3;
@end

@implementation VGHRTFCaptureData

- (__n128)colorIntrinsics
{
  result = *(a1 + 48);
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  return result;
}

- (__n128)setColorIntrinsics:(__n128)a3
{
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

@end