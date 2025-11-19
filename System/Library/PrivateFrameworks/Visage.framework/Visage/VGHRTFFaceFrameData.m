@interface VGHRTFFaceFrameData
- (__n128)depthIntrinsics;
- (__n128)setDepthIntrinsics:(__n128)a3;
- (id)initEmpty;
@end

@implementation VGHRTFFaceFrameData

- (id)initEmpty
{
  v6.receiver = self;
  v6.super_class = VGHRTFFaceFrameData;
  v2 = [(VGHRTFFaceFrameData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (__n128)depthIntrinsics
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

- (__n128)setDepthIntrinsics:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

@end