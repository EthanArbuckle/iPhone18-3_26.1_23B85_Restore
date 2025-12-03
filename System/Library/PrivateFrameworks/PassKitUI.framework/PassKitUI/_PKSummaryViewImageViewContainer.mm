@interface _PKSummaryViewImageViewContainer
- (_PKSummaryViewImageViewContainer)initWithFrame:(CGRect)frame;
- (id)createView;
- (void)layoutSubviews;
@end

@implementation _PKSummaryViewImageViewContainer

- (_PKSummaryViewImageViewContainer)initWithFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = _PKSummaryViewImageViewContainer;
  v3 = [(_PKSummaryViewSubviewContainer *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    view = [(_PKSummaryViewSubviewContainer *)v3 view];
    layer = [view layer];

    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setCornerRadius:6.0];
    [layer setMasksToBounds:1];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v4->_imageView;
    v4->_imageView = v7;

    view2 = [(_PKSummaryViewSubviewContainer *)v4 view];
    [view2 addSubview:v4->_imageView];

    v10 = objc_alloc_init(MEMORY[0x1E69DD250]);
    badgeView = v4->_badgeView;
    v4->_badgeView = v10;

    [(UIView *)v4->_badgeView setClipsToBounds:1];
    v12 = v4->_badgeView;
    redColor = [MEMORY[0x1E69DC888] redColor];
    [(UIView *)v12 setBackgroundColor:redColor];

    [(UIView *)v4->_badgeView setAlpha:0.0];
    layer2 = [(UIView *)v4->_badgeView layer];
    [layer2 setCornerRadius:4.5];

    layer3 = [(UIView *)v4->_badgeView layer];
    CATransform3DMakeScale(&v17, 0.6, 0.6, 1.0);
    [layer3 setTransform:&v17];

    [(_PKSummaryViewImageViewContainer *)v4 addSubview:v4->_badgeView];
  }

  return v4;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = _PKSummaryViewImageViewContainer;
  [(_PKSummaryViewSubviewContainer *)&v18 layoutSubviews];
  backgroundView = [(_PKSummaryViewImageViewContainer *)self backgroundView];
  [backgroundView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  imageView = self->_imageView;
  if (self->_imageSize.width == *MEMORY[0x1E695F060] && self->_imageSize.height == *(MEMORY[0x1E695F060] + 8))
  {
    [(UIImageView *)self->_imageView setFrame:v5, v7, v9, v11];
    v14 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v14 = *MEMORY[0x1E695EFF8];
    v15 = *(MEMORY[0x1E695EFF8] + 8);
    UIRectCenteredRect();
    [(UIImageView *)imageView setFrame:?];
  }

  [(_PKSummaryViewImageViewContainer *)self bounds];
  v16 = CGRectGetMaxX(v19) + -1.5;
  [(_PKSummaryViewImageViewContainer *)self bounds];
  v17 = CGRectGetMinY(v20) + 1.5;
  [(UIView *)self->_badgeView setBounds:v14, v15, 9.0, 9.0];
  [(UIView *)self->_badgeView setCenter:v16, v17];
}

- (id)createView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DD250]);

  return v2;
}

@end