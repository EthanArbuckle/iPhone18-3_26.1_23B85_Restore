@interface LibMPSource
- (void)downloadManager:(id)a3 didEnqueueAssetDownloads:(id)a4 didRemoveAssetDownloads:(id)a5;
- (void)mpMediaLibraryContentChanged;
- (void)mpMediaLibraryDownloadingDidChange;
- (void)refreshRentalMenu;
@end

@implementation LibMPSource

- (void)downloadManager:(id)a3 didEnqueueAssetDownloads:(id)a4 didRemoveAssetDownloads:(id)a5
{
  if (a4)
  {
    sub_1E3280A90(0, &qword_1ECF32758);
    sub_1E42062B4();
  }

  if (a5)
  {
    sub_1E3280A90(0, &qword_1ECF32758);
    sub_1E42062B4();
  }

  v8 = a3;
  v9 = self;
  sub_1E3AD6BE4();
}

- (void)mpMediaLibraryContentChanged
{
  v2 = self;
  sub_1E3AD6D34();
}

- (void)mpMediaLibraryDownloadingDidChange
{
  v2 = self;
  sub_1E3AD7160();
}

- (void)refreshRentalMenu
{
  v2 = self;
  sub_1E3AD7308();
}

@end