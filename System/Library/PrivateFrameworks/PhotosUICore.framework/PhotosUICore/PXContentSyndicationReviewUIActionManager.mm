@interface PXContentSyndicationReviewUIActionManager
- (void)px_registerAdditionalPerformerClasses;
@end

@implementation PXContentSyndicationReviewUIActionManager

- (void)px_registerAdditionalPerformerClasses
{
  [(PXPhotoKitAssetActionManager *)self registerPerformerClass:objc_opt_class() forType:*off_1E7721AC8];
  v3.receiver = self;
  v3.super_class = PXContentSyndicationReviewUIActionManager;
  [(PXAssetActionManager *)&v3 px_registerAdditionalPerformerClasses];
}

@end