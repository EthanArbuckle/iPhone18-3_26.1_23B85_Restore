@interface AssetAttachmentsForSelection
@end

@implementation AssetAttachmentsForSelection

void ___AssetAttachmentsForSelection_block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  v5 = [v3 assetAtItemIndexPath:v14];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _AssetAttachmentsForSelection(PXSelectionSnapshot *__strong, NSMutableArray<NSURL *> *__strong, NSMutableArray<NSURL *> *__strong, BOOL)_block_invoke"}];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInFunction:v9 file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:103 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetAtItemIndexPath:indexPath]", v11, v13}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _AssetAttachmentsForSelection(PXSelectionSnapshot *__strong, NSMutableArray<NSURL *> *__strong, NSMutableArray<NSURL *> *__strong, BOOL)_block_invoke"}];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v8 handleFailureInFunction:v9 file:@"PXPhotoKitAssetFileRadarActionPerformer.m" lineNumber:103 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetAtItemIndexPath:indexPath]", v11}];
  }

LABEL_3:
  if (*(a1 + 56) == 1)
  {
    [PXFeedbackTapToRadarUtilities thumbnailFileURLForAsset:v5];
  }

  else
  {
    [PXFeedbackTapToRadarUtilities imageFileURLForAsset:v5];
  }
  v6 = ;
  if (v6)
  {
    [*(a1 + 40) addObject:v6];
  }

  v7 = [PXFeedbackTapToRadarUtilities detailedDebugDescriptionFileForAsset:v5];
  if (v7)
  {
    [*(a1 + 48) addObject:v7];
  }
}

@end