@interface WebThreadSafeUndoManager
- (BOOL)_alwaysShowEditAlertView;
- (void)redo;
- (void)undo;
@end

@implementation WebThreadSafeUndoManager

- (void)undo
{
  if (WebThreadIsEnabled() && WebThreadNotCurrent())
  {
    WebThreadLock();
  }

  v3.receiver = self;
  v3.super_class = WebThreadSafeUndoManager;
  [(WebThreadSafeUndoManager *)&v3 undo];
  [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl textChanged:"textChanged:", self];
}

- (void)redo
{
  if (WebThreadIsEnabled() && WebThreadNotCurrent())
  {
    WebThreadLock();
  }

  v3.receiver = self;
  v3.super_class = WebThreadSafeUndoManager;
  [(WebThreadSafeUndoManager *)&v3 redo];
  [+[UIKeyboardImpl sharedInstance](UIKeyboardImpl textChanged:"textChanged:", self];
}

- (BOOL)_alwaysShowEditAlertView
{
  v2 = [objc_msgSend(+[UIWindow _applicationKeyWindow](UIWindow "_applicationKeyWindow")];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [v2 hasEditableSelection];
}

@end