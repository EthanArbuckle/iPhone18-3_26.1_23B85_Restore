@interface _RSCamera
- (CGSize)imageResolution;
- (__n128)intrinsics;
- (__n128)pose;
- (__n128)setIntrinsics:(__n128)a3;
- (__n128)setPose:(__n128)a3;
- (__n128)setTransform:(__n128)a3;
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

- (__n128)setIntrinsics:(__n128)a3
{
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  return result;
}

- (__n128)intrinsics
{
  result = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 64);
  return result;
}

- (__n128)setPose:(__n128)a3
{
  result[9] = a2;
  result[10] = a3;
  result[11] = a4;
  result[12] = a5;
  return result;
}

- (__n128)pose
{
  result = *(a1 + 144);
  v2 = *(a1 + 160);
  v3 = *(a1 + 176);
  v4 = *(a1 + 192);
  return result;
}

- (__n128)setTransform:(__n128)a3
{
  result[5] = a2;
  result[6] = a3;
  result[7] = a4;
  result[8] = a5;
  return result;
}

- (__n128)transform
{
  result = *(a1 + 80);
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = *(a1 + 128);
  return result;
}

@end