@interface PUImagePickerSessionInfo
- (PUImagePickerSessionInfo)initWithPhotosViewDelegate:(id)delegate loadingStatusManager:(id)manager allowMultipleSelection:(BOOL)selection limitedLibrary:(BOOL)library;
@end

@implementation PUImagePickerSessionInfo

- (PUImagePickerSessionInfo)initWithPhotosViewDelegate:(id)delegate loadingStatusManager:(id)manager allowMultipleSelection:(BOOL)selection limitedLibrary:(BOOL)library
{
  selectionCopy = selection;
  delegateCopy = delegate;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PUImagePickerSessionInfo;
  v12 = [(PUSessionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PUSessionInfo *)v12 setPhotosViewDelegate:delegateCopy];
    [(PUSessionInfo *)v13 setLoadingStatusManager:managerCopy];
    [(PUSessionInfo *)v13 setAllowsMultipleSelection:selectionCopy];
    v13->_isLimitedLibraryPicker = library;
  }

  return v13;
}

@end