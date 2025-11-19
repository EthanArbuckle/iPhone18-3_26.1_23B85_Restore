@interface PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer
- (PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5;
@end

@implementation PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer

- (PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer)initWithActionType:(id)a3 assetCollectionReference:(id)a4 parameters:(id)a5
{
  v8.receiver = self;
  v8.super_class = PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionNoConfirmActionPerformer;
  v5 = [(PXAssetCollectionActionPerformer *)&v8 initWithActionType:a3 assetCollectionReference:a4 parameters:a5];
  v6 = v5;
  if (v5)
  {
    [(PXPhotoKitAssetCollectionContentSyndicationRemoveSuggestionActionPerformer *)v5 setShouldSkipUserConfirmation:1];
  }

  return v6;
}

@end