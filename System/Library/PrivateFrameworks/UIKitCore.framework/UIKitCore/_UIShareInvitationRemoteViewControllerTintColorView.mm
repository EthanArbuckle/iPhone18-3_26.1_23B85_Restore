@interface _UIShareInvitationRemoteViewControllerTintColorView
- (void)tintColorDidChange;
@end

@implementation _UIShareInvitationRemoteViewControllerTintColorView

- (void)tintColorDidChange
{
  v3 = [(UIView *)self superview];
  v5 = [(UIView *)v3 __viewDelegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = [(UIView *)self tintColor];
    [v5 _tintColorDidChangeToColor:v4];
  }
}

@end