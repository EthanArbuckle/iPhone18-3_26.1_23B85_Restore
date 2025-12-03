@interface _UIKBRTTouchVelocities
- (id)recognizer:(id)recognizer confidenceWhenSettingTouchInfo:(id)info;
@end

@implementation _UIKBRTTouchVelocities

- (id)recognizer:(id)recognizer confidenceWhenSettingTouchInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(_UIKBRTConfidenceLevels);
  preRuleTouchState = [infoCopy preRuleTouchState];
  if (preRuleTouchState == 7 || preRuleTouchState == 1)
  {
    [(_UIKBRTConfidenceLevels *)v5 setTouchConfidence:0.0];
    [infoCopy currentZGradient];
    v9 = fmax(v10, 1.0) * -0.5 + 1.0;
    *&v9 = v9;
  }

  else
  {
    if (preRuleTouchState)
    {
      goto LABEL_7;
    }

    [infoCopy currentZGradient];
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