@interface UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin

- (id)initialState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationPadVerticalInlineZhuyin;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneVerticalInline *)&v7 initialState];
  v3 = [v2 style];
  [v3 setAlternativeTextAlignment:2];

  v4 = [off_1E70ECC18 systemFontOfSize:16.0];
  v5 = [v2 style];
  [v5 setAlternativeTextFont:v4];

  return v2;
}

@end