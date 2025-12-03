@interface PXExternalAssetReviewDecorationView
- (void)_updateAssetInformation;
@end

@implementation PXExternalAssetReviewDecorationView

- (void)_updateAssetInformation
{
  userData = [(PXContentSyndicationReviewDecorationView *)self userData];
  v4 = PXExternalAssetReviewDecorationEligibilityForAssetReference(userData);

  [(PXContentSyndicationReviewDecorationView *)self _setEligibility:v4];
}

@end