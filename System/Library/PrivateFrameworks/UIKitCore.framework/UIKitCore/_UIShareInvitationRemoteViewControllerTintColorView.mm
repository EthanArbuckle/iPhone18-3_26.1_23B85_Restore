@interface _UIShareInvitationRemoteViewControllerTintColorView
- (void)tintColorDidChange;
@end

@implementation _UIShareInvitationRemoteViewControllerTintColorView

- (void)tintColorDidChange
{
  superview = [(UIView *)self superview];
  __viewDelegate = [(UIView *)superview __viewDelegate];

  if (objc_opt_respondsToSelector())
  {
    tintColor = [(UIView *)self tintColor];
    [__viewDelegate _tintColorDidChangeToColor:tintColor];
  }
}

@end