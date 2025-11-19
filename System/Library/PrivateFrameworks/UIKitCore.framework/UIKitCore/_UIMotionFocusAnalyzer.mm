@interface _UIMotionFocusAnalyzer
- (void)reset;
- (void)updateWithEvent:(id)a3;
@end

@implementation _UIMotionFocusAnalyzer

- (void)updateWithEvent:(id)a3
{
  v9 = a3;
  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 focusPosition];
      v5 = v4;
      v7 = v6;
      v8 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
      [v8 setViewerOffset:{v5, v7}];
    }
  }
}

- (void)reset
{
  v2 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [v2 _reset];
}

@end