@interface UIWebScrollView
- (UIWebScrollView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation UIWebScrollView

- (UIWebScrollView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = UIWebScrollView;
  v3 = [(UIScrollView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(UIScrollView *)v3 setDirectionalLockEnabled:1];
    [(UIScrollView *)v4 setAlwaysBounceVertical:1];
  }

  return v4;
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = UIWebScrollView;
  [(UIView *)&v6 didMoveToWindow];
  window = [(UIView *)self window];
  if (!window)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    window = objc_loadWeakRetained(&self->super._delegate);
    [window performSelector:sel_scrollViewWasRemoved_ withObject:self];
  }
}

@end