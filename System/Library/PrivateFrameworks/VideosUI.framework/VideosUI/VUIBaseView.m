@interface VUIBaseView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)willMoveToWindow:(id)a3;
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

- (void)willMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = VUIBaseView;
  v4 = a3;
  [(VUIBaseView *)&v5 willMoveToWindow:v4];
  [(VUIBaseView *)self vui_willMoveToWindow:v4, v5.receiver, v5.super_class];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(VUIBaseView *)self vui_layoutSubviews:1 computationOnly:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

@end