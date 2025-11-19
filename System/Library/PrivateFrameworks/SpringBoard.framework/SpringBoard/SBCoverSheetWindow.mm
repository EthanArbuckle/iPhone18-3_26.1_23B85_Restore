@interface SBCoverSheetWindow
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation SBCoverSheetWindow

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = SBCoverSheetWindow;
  v5 = [(SBCoverSheetWindow *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
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
  v3 = [(SBCoverSheetWindow *)self rootViewController];
  v4 = [v3 presentedViewController];

  if (objc_opt_respondsToSelector())
  {
    [v4 preserveInputViews];
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBCoverSheetWindow;
    v5 = [(SBCoverSheetWindow *)&v7 resignFirstResponder];
  }

  return v5;
}

- (BOOL)becomeFirstResponder
{
  v3 = [(SBCoverSheetWindow *)self rootViewController];
  v4 = [v3 presentedViewController];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 restoreInputViews];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = SBCoverSheetWindow;
    v5 = [(SBCoverSheetWindow *)&v8 becomeFirstResponder];
  }

  v6 = v5;

  return v6;
}

@end