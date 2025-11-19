@interface SUICInitializeStaticVariables
@end

@implementation SUICInitializeStaticVariables

uint64_t ___SUICInitializeStaticVariables_block_invoke()
{
  v0 = objc_alloc_init(_SUICCheckGlyphSpringAnimationFactory);
  v1 = _SUICDefaultSpringAnimationFactory;
  _SUICDefaultSpringAnimationFactory = v0;

  v2 = dispatch_queue_create("com.apple.siriuicore.springAnimationFactory", 0);
  v3 = _SUICDefaultSpringAnimationFactoryQueue;
  _SUICDefaultSpringAnimationFactoryQueue = v2;

  v4 = [_SUICDefaultSpringAnimationFactory springAnimationWithKeyPath:0];
  v5 = _SUICSpringAnimationTimingAnimation;
  _SUICSpringAnimationTimingAnimation = v4;

  v6 = [_SUICSpringAnimationTimingAnimation timingFunction];
  v7 = _SUICSpringAnimationTimingFunction;
  _SUICSpringAnimationTimingFunction = v6;

  result = [_SUICDefaultSpringAnimationFactory duration];
  _SUICDefaultSpringAnimationDuration = v9;
  return result;
}

@end