@interface _UIKBRTTouchVelocities
- (id)recognizer:(id)a3 confidenceWhenSettingTouchInfo:(id)a4;
@end

@implementation _UIKBRTTouchVelocities

- (id)recognizer:(id)a3 confidenceWhenSettingTouchInfo:(id)a4
{
  v4 = a4;
  v5 = objc_alloc_init(_UIKBRTConfidenceLevels);
  v6 = [v4 preRuleTouchState];
  if (v6 == 7 || v6 == 1)
  {
    [(_UIKBRTConfidenceLevels *)v5 setTouchConfidence:0.0];
    [v4 currentZGradient];
    v9 = fmax(v10, 1.0) * -0.5 + 1.0;
    *&v9 = v9;
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    [v4 currentZGradient];
    v8 = fmax(v7, 1.0) * 0.5;
    *&v8 = v8;
    [(_UIKBRTConfidenceLevels *)v5 setTouchConfidence:v8];
    v9 = 0.0;
  }

  [(_UIKBRTConfidenceLevels *)v5 setRestConfidence:v9];
LABEL_7:

  return v5;
}

@end