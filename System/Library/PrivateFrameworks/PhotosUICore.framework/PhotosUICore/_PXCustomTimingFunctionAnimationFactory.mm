@interface _PXCustomTimingFunctionAnimationFactory
+ (id)factoryWithTimingFunction:(id)a3;
@end

@implementation _PXCustomTimingFunctionAnimationFactory

+ (id)factoryWithTimingFunction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXStoryScrubberContentLayout.m" lineNumber:1339 description:{@"Invalid parameter not satisfying: %@", @"timingFunction"}];
  }

  v6 = objc_alloc_init(a1);
  v7 = v6[1];
  v6[1] = v5;

  return v6;
}

@end