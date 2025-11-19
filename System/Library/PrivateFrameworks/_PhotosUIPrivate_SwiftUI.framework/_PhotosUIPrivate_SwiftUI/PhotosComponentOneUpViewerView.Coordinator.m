@interface PhotosComponentOneUpViewerView.Coordinator
- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)a3;
@end

@implementation PhotosComponentOneUpViewerView.Coordinator

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_29EC6AD14();
}

- (void)assetExplorerReviewScreenViewController:(id)a3 didPerformCompletionAction:(unint64_t)a4 withSelectedAssetUUIDs:(id)a5 livePhotoDisabledAssetUUIDs:(id)a6 substituteAssetsByUUID:(id)a7
{
  if (a5)
  {
    sub_29EC7F294();
    if (!a6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (a6)
  {
LABEL_3:
    sub_29EC7F294();
  }

LABEL_4:
  if (a7)
  {
    sub_29EC6A3C4(0, &qword_2A1890BC8, 0x29EDC6248);
    sub_29EC7F1E4();
  }

  v11 = a3;
  v12 = self;
  sub_29EC6AD14();
}

@end