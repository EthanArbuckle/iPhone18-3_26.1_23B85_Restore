@interface PULoadingIndicatorController
- (BOOL)shouldInvalidateLoadingIndicatorForAssetViewModelChange:(id)change;
- (int64_t)loadingIndicatorStyleForAssetViewModel:(id)model;
@end

@implementation PULoadingIndicatorController

- (BOOL)shouldInvalidateLoadingIndicatorForAssetViewModelChange:(id)change
{
  changeCopy = change;
  v4 = +[PUOneUpSettings sharedInstance];
  showLoadingIndicatorDuringDownload = [v4 showLoadingIndicatorDuringDownload];

  if (showLoadingIndicatorDuringDownload && ([changeCopy loadingStatusChanged] & 1) != 0 || (objc_msgSend(changeCopy, "assetChanged") & 1) != 0)
  {
    isUpdatingDisplayedContentChanged = 1;
  }

  else
  {
    isUpdatingDisplayedContentChanged = [changeCopy isUpdatingDisplayedContentChanged];
  }

  return isUpdatingDisplayedContentChanged;
}

- (int64_t)loadingIndicatorStyleForAssetViewModel:(id)model
{
  modelCopy = model;
  v4 = +[PUOneUpSettings sharedInstance];
  if ([v4 showLoadingIndicatorDuringDownload])
  {
    loadingStatus = [modelCopy loadingStatus];
    v6 = [loadingStatus state] == 1;
  }

  else
  {

    v6 = 0;
  }

  asset = [modelCopy asset];
  isTemporaryPlaceholder = [asset isTemporaryPlaceholder];

  if (isTemporaryPlaceholder)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  if ([modelCopy isUpdatingDisplayedContent])
  {
    v9 = 3;
  }

  return v9;
}

@end