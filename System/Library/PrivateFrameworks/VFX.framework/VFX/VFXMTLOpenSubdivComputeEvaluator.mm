@interface VFXMTLOpenSubdivComputeEvaluator
- (void)dealloc;
@end

@implementation VFXMTLOpenSubdivComputeEvaluator

- (void)dealloc
{
  computeEvaluator = self->_computeEvaluator;
  if (computeEvaluator)
  {
    v4 = sub_1AFDB0C1C(computeEvaluator);
    MEMORY[0x1B271C6B0](v4, 0x1080C40AA79BA9DLL);
  }

  v5.receiver = self;
  v5.super_class = VFXMTLOpenSubdivComputeEvaluator;
  [(VFXMTLOpenSubdivComputeEvaluator *)&v5 dealloc];
}

@end