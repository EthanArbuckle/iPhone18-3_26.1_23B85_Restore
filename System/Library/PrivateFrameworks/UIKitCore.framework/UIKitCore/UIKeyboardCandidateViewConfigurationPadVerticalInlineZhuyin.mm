@interface UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin

- (id)initialState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneVerticalInline *)&v7 initialState];
  style = [initialState style];
  [style setAlternativeTextAlignment:2];

  v4 = [off_1E70ECC18 systemFontOfSize:16.0];
  style2 = [initialState style];
  [style2 setAlternativeTextFont:v4];

  return initialState;
}

@end