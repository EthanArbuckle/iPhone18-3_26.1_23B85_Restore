@interface PKPerformActionBackdropView
- (CGSize)sizeThatFits:(CGSize)result;
- (PKPerformActionBackdropView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation PKPerformActionBackdropView

- (PKPerformActionBackdropView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PKPerformActionBackdropView;
  v3 = [(PKPerformActionBackdropView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backdropView = v3->_backdropView;
    v3->_backdropView = v4;

    v6 = v3->_backdropView;
    v7 = PKProvisioningBackgroundColor();
    [(UIView *)v6 setBackgroundColor:v7];

    [(PKPerformActionBackdropView *)v3 addSubview:v3->_backdropView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPerformActionBackdropView;
  [(PKPerformActionBackdropView *)&v3 layoutSubviews];
  [(PKPerformActionBackdropView *)self bounds];
  [(UIView *)self->_backdropView setFrame:0.0, 0.0];
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = 88.0;
  result.height = v3;
  return result;
}

@end