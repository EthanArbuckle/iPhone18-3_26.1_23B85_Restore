@interface _RSCamera
- (CGSize)imageResolution;
- (__n128)intrinsics;
- (__n128)pose;
- (__n128)setIntrinsics:(__n128)intrinsics;
- (__n128)setPose:(__n128)pose;
- (__n128)setTransform:(__n128)transform;
- (__n128)transform;
@end

@implementation _RSCamera

- (CGSize)imageResolution
{
  width = self->_imageResolution.width;
  height = self->_imageResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__n128)setIntrinsics:(__n128)intrinsics
{
  result[2] = a2;
  result[3] = intrinsics;
  result[4] = a4;
  return result;
}

- (__n128)intrinsics
{
  result = *(self + 32);
  v2 = *(self + 48);
  v3 = *(self + 64);
  return result;
}

- (__n128)setPose:(__n128)pose
{
  result[9] = a2;
  result[10] = pose;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (__n128)pose
{
  result = *(self + 144);
  v2 = *(self + 160);
  v3 = *(self + 176);
  v4 = *(self + 192);
  return result;
}

- (__n128)setTransform:(__n128)transform
{
  result[5] = a2;
  result[6] = transform;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)transform
{
  result = *(self + 80);
  v2 = *(self + 96);
  v3 = *(self + 112);
  v4 = *(self + 128);
  return result;
}

@end