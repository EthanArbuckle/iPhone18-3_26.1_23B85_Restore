@interface UIZoomTransitionAlignmentRectContext
+ (id)_contextSourceView:(id)view zoomedViewController:(id)controller;
@end

@implementation UIZoomTransitionAlignmentRectContext

+ (id)_contextSourceView:(id)view zoomedViewController:(id)controller
{
  viewCopy = view;
  controllerCopy = controller;
  v7 = objc_opt_new();
  v8 = v7[1];
  v7[1] = viewCopy;
  v9 = viewCopy;

  v10 = v7[2];
  v7[2] = controllerCopy;

  return v7;
}

@end