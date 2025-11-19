@interface PUIScalingContainerView
- (CGAffineTransform)_derivedContentViewTransform;
- (CGAffineTransform)contentViewTransform;
- (CGSize)intrinsicContentSize;
- (PUIScalingContainerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContentView:(id)a3;
- (void)setContentViewTransform:(CGAffineTransform *)a3;
@end

@implementation PUIScalingContainerView

- (PUIScalingContainerView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PUIScalingContainerView;
  v3 = [(PUIScalingContainerView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [PUITransformContainerView alloc];
    [(PUIScalingContainerView *)v3 bounds];
    v5 = [(PUITransformContainerView *)v4 initWithFrame:?];
    containerView = v3->_containerView;
    v3->_containerView = v5;

    v7 = MEMORY[0x1E695EFD0];
    v8 = *(MEMORY[0x1E695EFD0] + 16);
    *&v3->_contentViewTransform.a = *MEMORY[0x1E695EFD0];
    *&v3->_contentViewTransform.c = v8;
    *&v3->_contentViewTransform.tx = *(v7 + 32);
    [(PUIScalingContainerView *)v3 addSubview:v3->_containerView];
  }

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PUIScalingContainerView *)self contentView];
  [v3 bounds];
  v8 = v5;
  v9 = v4;

  [(PUIScalingContainerView *)self _derivedContentViewTransform];
  v6 = vmlaq_n_f64(vmulq_n_f64(0, v8), 0, v9);
  v7 = v6.f64[1];
  result.width = v6.f64[0];
  result.height = v7;
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = PUIScalingContainerView;
  [(PUIScalingContainerView *)&v6 layoutSubviews];
  containerView = self->_containerView;
  [(PUIScalingContainerView *)self bounds];
  [(UIView *)containerView pui_setBoundsAndPositionFromFrame:?];
  v4 = self->_containerView;
  [(PUIScalingContainerView *)self _derivedContentViewTransform];
  [(PUITransformContainerView *)v4 setContentViewTransform:&v5];
}

- (CGAffineTransform)_derivedContentViewTransform
{
  [(PUIScalingContainerView *)self bounds];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v9 = *MEMORY[0x1E695F058];
  v10 = *(MEMORY[0x1E695F058] + 8);
  v11 = *(MEMORY[0x1E695F058] + 16);
  v12 = *(MEMORY[0x1E695F058] + 24);
  v43.origin.x = *MEMORY[0x1E695F058];
  v43.origin.y = v10;
  v43.size.width = v11;
  v43.size.height = v12;
  result = CGRectEqualToRect(v39, v43);
  if (result)
  {
    goto LABEL_4;
  }

  v32 = height;
  v33 = width;
  v34 = y;
  v35 = x;
  v14 = [(PUIScalingContainerView *)self contentView];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v40.origin.x = v16;
  v40.origin.y = v18;
  v40.size.width = v20;
  v40.size.height = v22;
  v44.origin.x = v9;
  v44.origin.y = v10;
  v44.size.width = v11;
  v44.size.height = v12;
  v23 = CGRectEqualToRect(v40, v44);
  v24 = [(PUIScalingContainerView *)self contentView];
  v25 = v24;
  if (v23)
  {
    [v24 setHidden:1];

LABEL_4:
    v26 = MEMORY[0x1E695EFD0];
    v27 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v27;
    *&retstr->tx = *(v26 + 32);
    return result;
  }

  [v24 setHidden:0];

  v28 = v33 / v20;
  v41.origin.x = v35;
  v41.origin.y = v34;
  v41.size.width = v33;
  v41.size.height = v32;
  v29 = CGRectGetMidX(v41) - v20 * (v33 / v20) * 0.5;
  v42.origin.x = v35;
  v42.origin.y = v34;
  v42.size.width = v33;
  v42.size.height = v32;
  MidY = CGRectGetMidY(v42);
  memset(&v38, 0, sizeof(v38));
  CGAffineTransformMakeTranslation(&t1, v29, MidY - v22 * (v32 / v22) * 0.5);
  CGAffineTransformScale(&v38, &t1, v28, v32 / v22);
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v31 = *&self->_contentViewTransform.c;
  *&t1.a = *&self->_contentViewTransform.a;
  *&t1.c = v31;
  *&t1.tx = *&self->_contentViewTransform.tx;
  t2 = v38;
  return CGAffineTransformConcat(retstr, &t1, &t2);
}

- (void)setContentView:(id)a3
{
  [(PUITransformContainerView *)self->_containerView setContentView:a3];

  [(PUIScalingContainerView *)self setNeedsLayout];
}

- (void)setContentViewTransform:(CGAffineTransform *)a3
{
  p_contentViewTransform = &self->_contentViewTransform;
  v6 = *&a3->c;
  *&t1.a = *&a3->a;
  *&t1.c = v6;
  *&t1.tx = *&a3->tx;
  v7 = *&self->_contentViewTransform.c;
  *&v10.a = *&self->_contentViewTransform.a;
  *&v10.c = v7;
  *&v10.tx = *&self->_contentViewTransform.tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&a3->a;
    v9 = *&a3->tx;
    *&p_contentViewTransform->c = *&a3->c;
    *&p_contentViewTransform->tx = v9;
    *&p_contentViewTransform->a = v8;
    [(PUIScalingContainerView *)self setNeedsLayout];
  }
}

- (void)prepareForReuse
{
  v3 = *(MEMORY[0x1E695EFD0] + 16);
  v4[0] = *MEMORY[0x1E695EFD0];
  v4[1] = v3;
  v4[2] = *(MEMORY[0x1E695EFD0] + 32);
  [(PUIScalingContainerView *)self setContentViewTransform:v4];
  [(PUIScalingContainerView *)self setContentView:0];
}

- (CGAffineTransform)contentViewTransform
{
  v3 = *&self[9].a;
  *&retstr->a = *&self[8].tx;
  *&retstr->c = v3;
  *&retstr->tx = *&self[9].c;
  return self;
}

@end