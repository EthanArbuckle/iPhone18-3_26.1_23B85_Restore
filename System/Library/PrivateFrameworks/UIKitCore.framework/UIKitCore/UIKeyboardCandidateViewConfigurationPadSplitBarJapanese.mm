@interface UIKeyboardCandidateViewConfigurationPadSplitBarJapanese
- (id)extendedState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadSplitBarJapanese

- (id)extendedState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPadSplitBarJapanese;
  extendedState = [(UIKeyboardCandidateViewConfigurationPadSplitBar *)&v5 extendedState];
  style = [extendedState style];
  [style setColumnsCount:3];

  return extendedState;
}

@end