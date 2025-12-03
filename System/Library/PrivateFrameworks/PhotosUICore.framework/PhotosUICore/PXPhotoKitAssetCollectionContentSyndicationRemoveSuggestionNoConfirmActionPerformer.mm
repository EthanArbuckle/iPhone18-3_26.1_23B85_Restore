@interface PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer
- (PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters;
@end

@implementation PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer

- (PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer)initWithActionType:(id)type assetCollectionReference:(id)reference parameters:(id)parameters
{
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer;
  v5 = [(PXAssetCollectionActionPerformer *)&v8 initWithActionType:type assetCollectionReference:reference parameters:parameters];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)v5 setShouldSkipUserConfirmation:1];
  }

  return v6;
}

@end