@interface PXContentSyndicationReviewDecorationView
- (CGRect)clippingRect;
- (PXContentSyndicationReviewDecorationView)initWithFrame:(CGRect)frame;
- (void)_positionSubviews;
- (void)_setEligibility:(int64_t)eligibility;
- (void)_updateAssetInformation;
- (void)layoutSubviews;
- (void)setUserData:(id)data;
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

- (void)setUserData:(id)data
{
  dataCopy = data;
  if (self->_userData != dataCopy)
  {
    v6 = dataCopy;
    objc_storeStrong(&self->_userData, data);
    [(PXContentSyndicationReviewDecorationView *)self _updateAssetInformation];
    dataCopy = v6;
  }
}

- (void)_updateAssetInformation
{
  userData = [(PXContentSyndicationReviewDecorationView *)self userData];
  v4 = PXContentSyndicationReviewDecorationEligibilityForAssetReference(userData);

  [(PXContentSyndicationReviewDecorationView *)self _setEligibility:v4];
}

- (void)_setEligibility:(int64_t)eligibility
{
  if (self->_eligibility != eligibility)
  {
    self->_eligibility = eligibility;
    v5 = PXContentSyndicationReviewDecorationImageForSyndicationEligibility(eligibility);
    [(UIImageView *)self->_imageView setImage:v5];
  }
}

- (void)_positionSubviews
{
  effectiveUserInterfaceLayoutDirection = [(PXContentSyndicationReviewDecorationView *)self effectiveUserInterfaceLayoutDirection];
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
  if (effectiveUserInterfaceLayoutDirection)
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

- (PXContentSyndicationReviewDecorationView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXContentSyndicationReviewDecorationView;
  v3 = [(PXContentSyndicationReviewDecorationView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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