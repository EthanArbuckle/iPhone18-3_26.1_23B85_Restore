@interface UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin

- (id)initialState
{
  v8.receiver = self;
  v8.super_class = UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin;
  v2 = [(UIKeyboardCandidateViewConfigurationPadInlineLiveConversion *)&v8 initialState];
  v3 = [v2 style];
  [v3 setAlternativeTextAlignment:2];

  v4 = [off_1E70ECC18 systemFontOfSize:16.0];
  v5 = [v2 style];
  [v5 setAlternativeTextFont:v4];

  v6 = [v2 style];
  [v6 setDisableSwitchingSortingMethodByTabKey:0];

  return v2;
}

@end