@interface UIKeyboardCandidateViewConfigurationPadSplitBarJapanese
- (id)extendedState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadSplitBarJapanese

- (id)extendedState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPadSplitBarJapanese;
  v2 = [(UIKeyboardCandidateViewConfigurationPadSplitBar *)&v5 extendedState];
  v3 = [v2 style];
  [v3 setColumnsCount:3];

  return v2;
}

@end