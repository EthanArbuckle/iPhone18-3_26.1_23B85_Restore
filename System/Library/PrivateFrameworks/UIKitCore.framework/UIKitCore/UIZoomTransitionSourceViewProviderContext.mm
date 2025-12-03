@interface UIZoomTransitionSourceViewProviderContext
+ (id)_contextWithSource:(id)source zoomed:(id)zoomed;
@end

@implementation UIZoomTransitionSourceViewProviderContext

+ (id)_contextWithSource:(id)source zoomed:(id)zoomed
{
  sourceCopy = source;
  zoomedCopy = zoomed;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = sourceCopy;
  v9 = sourceCopy;

  v10 = v7[2];
  v7[2] = zoomedCopy;

  return v7;
}

@end