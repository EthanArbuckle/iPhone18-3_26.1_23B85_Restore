@interface PUReviewScreenControlBarButton
- (CGSize)intrinsicContentSize;
- (PUReviewScreenControlBarButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (double)_padding;
- (void)layoutSubviews;
@end

@implementation PUReviewScreenControlBarButton

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = PUReviewScreenControlBarButton;
  [(PUReviewScreenControlBarButton *)&v41 layoutSubviews];
  [(PUReviewScreenControlBarButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PUReviewScreenControlBarButton *)self _padding];
  v12 = v11;
  v38 = v11;
  v13 = [(PUReviewScreenControlBarButton *)self imageView];
  v14 = [(PUReviewScreenControlBarButton *)self titleLabel];
  v15 = [(PUReviewScreenControlBarButton *)self _backgroundView];
  [v13 frame];
  [(PUReviewScreenControlBarButton *)self intrinsicContentSize];
  v17 = v16;
  v19 = v18;
  [v14 intrinsicContentSize];
  v39 = v20;
  v40 = v21;
  v22 = v12 + v21;
  v42.origin.x = v4;
  v42.origin.y = v6;
  v42.size.width = v8;
  v42.size.height = v10;
  v23 = CGRectGetMidY(v42) - v19 * 0.5 - v22 * 0.5;
  v43.origin.x = v4;
  v43.origin.y = v6;
  v43.size.width = v8;
  v43.size.height = v10;
  MidX = CGRectGetMidX(v43);
  v25 = PURoundRectToPixel(MidX - v17 * 0.5, v23, v17, v19);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v15 setFrame:?];
  v32 = [v15 layer];
  [v32 setCornerRadius:v29 * 0.5];

  [v13 bounds];
  v33 = [(PUReviewScreenControlBarButton *)self traitCollection];
  [v33 displayScale];
  v37 = v34;
  UIRectCenteredIntegralRectScale();
  [v13 setFrame:v37];

  v44.origin.x = v25;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  v35 = v38 + CGRectGetMaxY(v44);
  v45.origin.x = v25;
  v45.origin.y = v27;
  v45.size.width = v29;
  v45.size.height = v31;
  v36 = CGRectGetMidX(v45);
  [v14 setFrame:{PUExtendRectToPixel(v36 - v39 * 0.5, v35, v39, v40)}];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v3 = [(PUReviewScreenControlBarButton *)self titleLabel];
  [v3 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  [(PUReviewScreenControlBarButton *)self intrinsicContentSize];
  v9 = v5 - v8;
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = v9 * 0.5;
  [(PUReviewScreenControlBarButton *)self intrinsicContentSize];
  v12 = (50.0 - v11) * 0.5;
  if (v10 >= v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  [(PUReviewScreenControlBarButton *)self _padding];
  v15 = v7 + v14;
  v16 = 0.0;
  v17 = v13;
  v18 = v13;
  result.right = v18;
  result.bottom = v15;
  result.left = v17;
  result.top = v16;
  return result;
}

- (double)_padding
{
  v2 = [(PUReviewScreenControlBarButton *)self useCompactSize];
  result = 6.0;
  if (v2)
  {
    return 4.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PUReviewScreenControlBarButton *)self useCompactSize];
  v3 = 42.0;
  if (v2)
  {
    v3 = 30.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUReviewScreenControlBarButton)initWithFrame:(CGRect)a3
{
  v11.receiver = self;
  v11.super_class = PUReviewScreenControlBarButton;
  v3 = [(PUReviewScreenControlBarButton *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    backgroundView = v3->__backgroundView;
    v3->__backgroundView = v4;

    [(UIView *)v3->__backgroundView setUserInteractionEnabled:0];
    if (MEMORY[0x1B8C6D660]([(PUReviewScreenControlBarButton *)v3 addSubview:v3->__backgroundView]))
    {
      [(UIView *)v3->__backgroundView _reviewScreen_applyGlassBackground];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.560784314];
      v7 = [v6 CGColor];
      v8 = [(UIView *)v3->__backgroundView layer];
      [v8 setBorderColor:v7];

      v9 = [(UIView *)v3->__backgroundView layer];
      [v9 setBorderWidth:1.0];
    }
  }

  return v3;
}

@end