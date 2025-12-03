@interface PhotosComponentOneUpViewerView.Coordinator
- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d;
- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel;
@end

@implementation PhotosComponentOneUpViewerView.Coordinator

- (void)assetExplorerReviewScreenViewControllerDidPressCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_29EC6AD14();
}

- (void)assetExplorerReviewScreenViewController:(id)controller didPerformCompletionAction:(unint64_t)action withSelectedAssetUUIDs:(id)ds livePhotoDisabledAssetUUIDs:(id)iDs substituteAssetsByUUID:(id)d
{
  if (ds)
  {
    sub_29EC7F294();
    if (!iDs)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (iDs)
  {
LABEL_3:
    sub_29EC7F294();
  }

LABEL_4:
  if (d)
  {
    sub_29EC6A3C4(0, &qword_2A1890BC8, 0x29EDC6248);
    sub_29EC7F1E4();
  }

  controllerCopy = controller;
  selfCopy = self;
  sub_29EC6AD14();
}

@end