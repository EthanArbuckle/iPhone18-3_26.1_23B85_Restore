@interface VUIBaseView
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)window;
@end

@implementation VUIBaseView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = VUIBaseView;
  [(VUIBaseView *)&v3 didMoveToWindow];
  [(VUIBaseView *)self vui_didMoveToWindow];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIBaseView;
  [(VUIBaseView *)&v5 layoutSubviews];
  [(VUIBaseView *)self bounds];
  [(VUIBaseView *)self vui_layoutSubviews:0 computationOnly:v3, v4];
}

- (void)willMoveToWindow:(id)window
{
  v5.receiver = self;
  v5.super_class = VUIBaseView;
  windowCopy = window;
  [(VUIBaseView *)&v5 willMoveToWindow:windowCopy];
  [(VUIBaseView *)self vui_willMoveToWindow:windowCopy, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(VUIBaseView *)self vui_layoutSubviews:1 computationOnly:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end