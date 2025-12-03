@interface VFXManipulatorNodeTransformPair
- (__n128)setTransform:(__n128)transform;
- (void)dealloc;
@end

@implementation VFXManipulatorNodeTransformPair

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXManipulatorNodeTransformPair;
  [(VFXManipulatorNodeTransformPair *)&v3 dealloc];
}

- (__n128)setTransform:(__n128)transform
{
  result[1] = a2;
  result[2] = transform;
  result[3] = a4;
  result[4] = a5;
  return result;
}

@end