@interface PUImagePickerSessionInfo
- (PUImagePickerSessionInfo)initWithPhotosViewDelegate:(id)a3 loadingStatusManager:(id)a4 allowMultipleSelection:(BOOL)a5 limitedLibrary:(BOOL)a6;
@end

@implementation PUImagePickerSessionInfo

- (PUImagePickerSessionInfo)initWithPhotosViewDelegate:(id)a3 loadingStatusManager:(id)a4 allowMultipleSelection:(BOOL)a5 limitedLibrary:(BOOL)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v15.receiver = self;
  v15.super_class = PUImagePickerSessionInfo;
  v12 = [(PUSessionInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(PUSessionInfo *)v12 setPhotosViewDelegate:v10];
    [(PUSessionInfo *)v13 setLoadingStatusManager:v11];
    [(PUSessionInfo *)v13 setAllowsMultipleSelection:v7];
    v13->_isLimitedLibraryPicker = a6;
  }

  return v13;
}

@end