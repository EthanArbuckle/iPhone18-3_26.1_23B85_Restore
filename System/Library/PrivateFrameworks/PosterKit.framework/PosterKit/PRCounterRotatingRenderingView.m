@interface PRCounterRotatingRenderingView
- (void)setupSubviews;
@end

@implementation PRCounterRotatingRenderingView

- (void)setupSubviews
{
  v3 = objc_alloc(MEMORY[0x1E698E800]);
  [(PRCounterRotatingRenderingView *)self bounds];
  v4 = [v3 initWithFrame:?];
  [v4 setCounterTransformView:1];
  v5 = objc_alloc(MEMORY[0x1E69DD250]);
  [v4 bounds];
  v6 = [v5 initWithFrame:?];
  containerView = self->_containerView;
  self->_containerView = v6;
  v9 = v6;

  [v4 addContentView:v9];
  [(PRCounterRotatingRenderingView *)self addSubview:v4];
  transformView = self->_transformView;
  self->_transformView = v4;
}

@end