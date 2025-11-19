@interface UIWebScrollView
- (UIWebScrollView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation UIWebScrollView

- (UIWebScrollView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = UIWebScrollView;
  v3 = [(UIScrollView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(UIView *)self window];
  if (!v3)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._delegate);
    v5 = objc_opt_respondsToSelector();

    if ((v5 & 1) == 0)
    {
      return;
    }

    v3 = objc_loadWeakRetained(&self->super._delegate);
    [v3 performSelector:sel_scrollViewWasRemoved_ withObject:self];
  }
}

@end