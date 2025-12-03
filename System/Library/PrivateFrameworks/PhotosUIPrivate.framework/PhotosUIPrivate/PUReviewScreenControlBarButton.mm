@interface PUReviewScreenControlBarButton
- (CGSize)intrinsicContentSize;
- (PUReviewScreenControlBarButton)initWithFrame:(CGRect)frame;
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
  imageView = [(PUReviewScreenControlBarButton *)self imageView];
  titleLabel = [(PUReviewScreenControlBarButton *)self titleLabel];
  _backgroundView = [(PUReviewScreenControlBarButton *)self _backgroundView];
  [imageView frame];
  [(PUReviewScreenControlBarButton *)self intrinsicContentSize];
  v17 = v16;
  v19 = v18;
  [titleLabel intrinsicContentSize];
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
  [_backgroundView setFrame:?];
  layer = [_backgroundView layer];
  [layer setCornerRadius:v29 * 0.5];

  [imageView bounds];
  traitCollection = [(PUReviewScreenControlBarButton *)self traitCollection];
  [traitCollection displayScale];
  v37 = v34;
  UIRectCenteredIntegralRectScale();
  [imageView setFrame:v37];

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
  [titleLabel setFrame:{PUExtendRectToPixel(v36 - v39 * 0.5, v35, v39, v40)}];
}

- (UIEdgeInsets)alignmentRectInsets
{
  titleLabel = [(PUReviewScreenControlBarButton *)self titleLabel];
  [titleLabel intrinsicContentSize];
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
  useCompactSize = [(PUReviewScreenControlBarButton *)self useCompactSize];
  result = 6.0;
  if (useCompactSize)
  {
    return 4.0;
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  useCompactSize = [(PUReviewScreenControlBarButton *)self useCompactSize];
  v3 = 42.0;
  if (useCompactSize)
  {
    v3 = 30.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (PUReviewScreenControlBarButton)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = PUReviewScreenControlBarButton;
  v3 = [(PUReviewScreenControlBarButton *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
      cGColor = [v6 CGColor];
      layer = [(UIView *)v3->__backgroundView layer];
      [layer setBorderColor:cGColor];

      layer2 = [(UIView *)v3->__backgroundView layer];
      [layer2 setBorderWidth:1.0];
    }
  }

  return v3;
}

@end