@interface _PXCustomTimingFunctionAnimationFactory
+ (id)factoryWithTimingFunction:(id)function;
@end

@implementation _PXCustomTimingFunctionAnimationFactory

+ (id)factoryWithTimingFunction:(id)function
{
  functionCopy = function;
  if (!functionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXStoryScrubberContentLayout.m" lineNumber:1339 description:{@"Invalid parameter not satisfying: %@", @"timingFunction"}];
  }

  v6 = objc_alloc_init(self);
  v7 = v6[1];
  v6[1] = functionCopy;

  return v6;
}

@end