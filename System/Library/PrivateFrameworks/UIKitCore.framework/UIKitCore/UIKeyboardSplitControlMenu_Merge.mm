@interface UIKeyboardSplitControlMenu_Merge
- (void)actionForMenu:(id)a3;
@end

@implementation UIKeyboardSplitControlMenu_Merge

- (void)actionForMenu:(id)a3
{
  v3 = a3;
  UIKeyboardSetSplit(0);
  [v3 setFinishSplitTransitionBlock:0];

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setRivenSplitLock:1];
}

@end