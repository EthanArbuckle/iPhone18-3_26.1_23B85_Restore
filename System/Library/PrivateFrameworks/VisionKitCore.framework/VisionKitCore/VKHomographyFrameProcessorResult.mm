@interface VKHomographyFrameProcessorResult
- (__n128)setWarpTransform:(__n128)transform;
@end

@implementation VKHomographyFrameProcessorResult

- (__n128)setWarpTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  return result;
}

@end