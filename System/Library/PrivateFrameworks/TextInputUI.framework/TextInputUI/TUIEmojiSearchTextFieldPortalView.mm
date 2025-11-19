@interface TUIEmojiSearchTextFieldPortalView
- (UIView)hitTestView;
- (void)didMoveToWindow;
- (void)removeFromSuperview;
@end

@implementation TUIEmojiSearchTextFieldPortalView

- (UIView)hitTestView
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestView);

  return WeakRetained;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = TUIEmojiSearchTextFieldPortalView;
  [(TUIEmojiSearchTextFieldPortalView *)&v6 didMoveToWindow];
  v3 = [(TUIEmojiSearchTextFieldPortalView *)self window];

  WeakRetained = objc_loadWeakRetained(&self->_hitTestView);
  v5 = WeakRetained;
  if (v3)
  {
    [WeakRetained setHidden:0];

    v5 = [(_UIPortalView *)self sourceView];
    [(_UIPortalView *)self setSourceView:0];
    [(_UIPortalView *)self setSourceView:v5];
  }

  else
  {
    [WeakRetained setHidden:1];
  }
}

- (void)removeFromSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_hitTestView);
  [WeakRetained removeFromSuperview];

  v4.receiver = self;
  v4.super_class = TUIEmojiSearchTextFieldPortalView;
  [(TUIEmojiSearchTextFieldPortalView *)&v4 removeFromSuperview];
}

@end