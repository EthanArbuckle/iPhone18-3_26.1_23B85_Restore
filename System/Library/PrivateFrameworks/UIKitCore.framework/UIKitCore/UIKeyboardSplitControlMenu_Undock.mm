@interface UIKeyboardSplitControlMenu_Undock
- (BOOL)visible;
- (void)actionForMenu:(id)a3;
@end

@implementation UIKeyboardSplitControlMenu_Undock

- (BOOL)visible
{
  if (+[UIKeyboardImpl rivenPreference](UIKeyboardImpl, "rivenPreference") && !+[UIKeyboardImpl isSplit])
  {
    v3 = +[UIPeripheralHost sharedInstance];
    v2 = [v3 isUndocked] ^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (void)actionForMenu:(id)a3
{
  [a3 setFinishSplitTransitionBlock:0];
  UIKeyboardSetUndocked(1);
  v3 = +[UIKeyboardImpl activeInstance];
  [v3 setRivenSplitLock:1];
}

@end