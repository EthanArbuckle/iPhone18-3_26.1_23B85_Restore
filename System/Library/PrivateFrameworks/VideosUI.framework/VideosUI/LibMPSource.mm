@interface LibMPSource
- (void)downloadManager:(id)manager didEnqueueAssetDownloads:(id)downloads didRemoveAssetDownloads:(id)assetDownloads;
- (void)mpMediaLibraryContentChanged;
- (void)mpMediaLibraryDownloadingDidChange;
- (void)refreshRentalMenu;
@end

@implementation LibMPSource

- (void)downloadManager:(id)manager didEnqueueAssetDownloads:(id)downloads didRemoveAssetDownloads:(id)assetDownloads
{
  if (downloads)
  {
    sub_1E3280A90(0, &qword_1ECF32758);
    sub_1E42062B4();
  }

  if (assetDownloads)
  {
    sub_1E3280A90(0, &qword_1ECF32758);
    sub_1E42062B4();
  }

  managerCopy = manager;
  selfCopy = self;
  sub_1E3AD6BE4();
}

- (void)mpMediaLibraryContentChanged
{
  selfCopy = self;
  sub_1E3AD6D34();
}

- (void)mpMediaLibraryDownloadingDidChange
{
  selfCopy = self;
  sub_1E3AD7160();
}

- (void)refreshRentalMenu
{
  selfCopy = self;
  sub_1E3AD7308();
}

@end