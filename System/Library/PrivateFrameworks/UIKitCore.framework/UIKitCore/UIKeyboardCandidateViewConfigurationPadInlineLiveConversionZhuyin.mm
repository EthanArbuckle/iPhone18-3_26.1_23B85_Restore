@interface UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin

- (id)initialState
{
  v8.receiver = self;
  v8.super_class = UIKeyboardCandidateViewConfigurationPadInlineLiveConversionZhuyin;
  initialState = [(UIKeyboardCandidateViewConfigurationPadInlineLiveConversion *)&v8 initialState];
  style = [initialState style];
  [style setAlternativeTextAlignment:2];

  v4 = [off_1E70ECC18 systemFontOfSize:16.0];
  style2 = [initialState style];
  [style2 setAlternativeTextFont:v4];

  style3 = [initialState style];
  [style3 setDisableSwitchingSortingMethodByTabKey:0];

  return initialState;
}

@end