@interface SBCoverSheetWindow
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation SBCoverSheetWindow

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = SBCoverSheetWindow;
  v5 = [(SBCoverSheetWindow *)&v9 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)resignFirstResponder
{
  rootViewController = [(SBCoverSheetWindow *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [presentedViewController preserveInputViews];
    resignFirstResponder = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCoverSheetWindow;
    resignFirstResponder = [(SBCoverSheetWindow *)&v7 resignFirstResponder];
  }

  return resignFirstResponder;
}

- (BOOL)becomeFirstResponder
{
  rootViewController = [(SBCoverSheetWindow *)self rootViewController];
  presentedViewController = [rootViewController presentedViewController];

  if (objc_opt_respondsToSelector())
  {
    restoreInputViews = [presentedViewController restoreInputViews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCoverSheetWindow;
    restoreInputViews = [(SBCoverSheetWindow *)&v8 becomeFirstResponder];
  }

  v6 = restoreInputViews;

  return v6;
}

@end