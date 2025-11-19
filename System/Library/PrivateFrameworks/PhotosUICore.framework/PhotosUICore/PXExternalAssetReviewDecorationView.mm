@interface PXExternalAssetReviewDecorationView
- (void)_updateAssetInformation;
@end

@implementation PXExternalAssetReviewDecorationView

- (void)_updateAssetInformation
{
  v3 = [(PXContentSyndicationReviewDecorationView *)self userData];
  v4 = PXExternalAssetReviewDecorationEligibilityForAssetReference(v3);

  [(PXContentSyndicationReviewDecorationView *)self _setEligibility:v4];
}

@end