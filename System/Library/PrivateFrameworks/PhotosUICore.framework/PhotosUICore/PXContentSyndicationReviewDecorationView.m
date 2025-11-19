@interface PXContentSyndicationReviewDecorationView
- (CGRect)clippingRect;
- (PXContentSyndicationReviewDecorationView)initWithFrame:(CGRect)a3;
- (void)_positionSubviews;
- (void)_setEligibility:(int64_t)a3;
- (void)_updateAssetInformation;
- (void)layoutSubviews;
- (void)setUserData:(id)a3;
@end

@implementation PXContentSyndicationReviewDecorationView

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setUserData:(id)a3
{
  v5 = a3;
  if (self->_userData != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_userData, a3);
    [(PXContentSyndicationReviewDecorationView *)self _updateAssetInformation];
    v5 = v6;
  }
}

- (void)_updateAssetInformation
{
  v3 = [(PXContentSyndicationReviewDecorationView *)self userData];
  v4 = PXContentSyndicationReviewDecorationEligibilityForAssetReference(v3);

  [(PXContentSyndicationReviewDecorationView *)self _setEligibility:v4];
}

- (void)_setEligibility:(int64_t)a3
{
  if (self->_eligibility != a3)
  {
    self->_eligibility = a3;
    v5 = PXContentSyndicationReviewDecorationImageForSyndicationEligibility(a3);
    [(UIImageView *)self->_imageView setImage:v5];
  }
}

- (void)_positionSubviews
{
  v3 = [(PXContentSyndicationReviewDecorationView *)self effectiveUserInterfaceLayoutDirection];
  [(PXContentSyndicationReviewDecorationView *)self bounds];
  if (v4 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = v6 * 0.2;
  v8 = v6 * 0.05;
  v9 = v4 - v6 * 0.05 - v6 * 0.2;
  if (v3)
  {
    v9 = v8;
  }

  v10 = v7;
  v13 = CGRectIntegral(*&v9);
  imageView = self->_imageView;

  [(UIImageView *)imageView setFrame:v13.origin.x, v13.origin.y, v13.size.width, v13.size.height];
}

- (void)layoutSubviews
{
  [(PXContentSyndicationReviewDecorationView *)self _positionSubviews];
  v3.receiver = self;
  v3.super_class = PXContentSyndicationReviewDecorationView;
  [(PXContentSyndicationReviewDecorationView *)&v3 layoutSubviews];
}

- (PXContentSyndicationReviewDecorationView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXContentSyndicationReviewDecorationView;
  v3 = [(PXContentSyndicationReviewDecorationView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    imageView = v3->_imageView;
    v3->_imageView = v4;

    [(PXContentSyndicationReviewDecorationView *)v3 addSubview:v3->_imageView];
  }

  return v3;
}

@end