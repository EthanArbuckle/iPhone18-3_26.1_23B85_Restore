@interface PXPhotoKitTrashAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
@end

@implementation PXPhotoKitTrashAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a3;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:16 target:v7 action:a4];

  return v8;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = a3;
  v8 = a4;
  if (([v8 isTrashBin] & 1) != 0 || (objc_msgSend(v8, "px_isRecoveredSmartAlbum") & 1) != 0 || !objc_msgSend(off_1E7721428, "destructiveActionsEnabled") || !objc_msgSend(v8, "canPerformEditOperation:", 1))
  {
    v9 = 0;
  }

  else
  {
    v9 = [v7 canPerformEditOperation:1];
  }

  return v9;
}

@end