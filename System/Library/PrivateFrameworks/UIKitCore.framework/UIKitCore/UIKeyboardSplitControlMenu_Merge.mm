@interface UIKeyboardSplitControlMenu_Merge
- (void)actionForMenu:(id)menu;
@end

@implementation UIKeyboardSplitControlMenu_Merge

- (void)actionForMenu:(id)menu
{
  menuCopy = menu;
  UIKeyboardSetSplit(0);
  [menuCopy setFinishSplitTransitionBlock:0];

  v4 = +[UIKeyboardImpl activeInstance];
  [v4 setRivenSplitLock:1];
}

@end