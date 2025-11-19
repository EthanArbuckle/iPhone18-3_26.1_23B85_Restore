@interface PUITransformContainerView
- (CGAffineTransform)contentViewTransform;
- (PUITransformContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentView:(id)a3;
- (void)setContentViewTransform:(CGAffineTransform *)a3;
@end

@implementation PUITransformContainerView

- (PUITransformContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = PUITransformContainerView;
  v3 = [(PUITransformContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    BSRectWithSize();
    v5 = [v4 initWithFrame:?];
    containerView = v3->_containerView;
    v3->_containerView = v5;

    [(PUITransformContainerView *)v3 addSubview:v3->_containerView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PUITransformContainerView;
  [(PUITransformContainerView *)&v7 layoutSubviews];
  [(PUITransformContainerView *)self bounds];
  x = v8.origin.x;
  y = v8.origin.y;
  width = v8.size.width;
  height = v8.size.height;
  if (!CGRectEqualToRect(v8, *MEMORY[0x1E695F058]))
  {
    [(UIView *)self->_containerView setFrame:x, y, width, height];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v8 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    v7 = self->_contentView;
    [(UIView *)v7 bounds];
    [(UIView *)v7 setFrame:?];
    [(UIView *)self->_containerView addSubview:v8];
    contentView = [(PUITransformContainerView *)self setNeedsLayout];
    v5 = v8;
  }

  MEMORY[0x1EEE66BB8](contentView, v5);
}

- (void)setContentViewTransform:(CGAffineTransform *)a3
{
  containerView = self->_containerView;
  if (containerView)
  {
    [(UIView *)containerView transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v6 = *&a3->c;
  *&v9.a = *&a3->a;
  *&v9.c = v6;
  *&v9.tx = *&a3->tx;
  if (!CGAffineTransformEqualToTransform(&v9, &t2))
  {
    v7 = self->_containerView;
    v8 = *&a3->c;
    *&t2.a = *&a3->a;
    *&t2.c = v8;
    *&t2.tx = *&a3->tx;
    [(UIView *)v7 setTransform:&t2];
    [(PUITransformContainerView *)self setNeedsLayout];
  }
}

- (CGAffineTransform)contentViewTransform
{
  result = self->_containerView;
  if (result)
  {
    return [(CGAffineTransform *)result transform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)prepareForReuse
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PUITransformContainerView *)self setContentViewTransform:v4];
  [(PUITransformContainerView *)self setContentView:0];
}

@end