@interface _UIMotionFocusAnalyzer
- (void)reset;
- (void)updateWithEvent:(id)event;
@end

@implementation _UIMotionFocusAnalyzer

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [eventCopy focusPosition];
      v5 = v4;
      v7 = v6;
      viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
      [viewerRelativeDevicePose setViewerOffset:{v5, v7}];
    }
  }
}

- (void)reset
{
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose _reset];
}

@end