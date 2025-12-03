@interface PXLocalization
+ (NSString)currentDeviceCanonicalModel;
+ (NSString)openCameraButtonTitleForEmptyPhotoLibrary;
+ (id)messageForEmptyPhotoLibrary:(id)library;
@end

@implementation PXLocalization

+ (NSString)openCameraButtonTitleForEmptyPhotoLibrary
{
  if (MGGetBoolAnswer())
  {
    v2 = PXLocalizedStringFromTable(@"EMPTY_PHOTO_LIBRARY_OPEN_CAMERA", @"PhotosUICore");
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)messageForEmptyPhotoLibrary:(id)library
{
  libraryCopy = library;
  v6 = MGGetBoolAnswer();
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXLocalization.m" lineNumber:591 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];
  }

  if ([libraryCopy isCloudPhotoLibraryEnabled])
  {
    v7 = 0;
  }

  else
  {
    v8 = +[PXLocalization currentDeviceCanonicalModel];
    if (v6)
    {
      v9 = @"EMPTY_ALBUM_LIST_MESSAGE_%@";
    }

    else
    {
      v9 = @"EMPTY_ALBUM_LIST_NO_CAMERA_MESSAGE_%@";
    }

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v8];
    v7 = PXLocalizedStringFromTable(v10, @"PhotosUICore");
  }

  return v7;
}

+ (NSString)currentDeviceCanonicalModel
{
  v6 = *MEMORY[0x1E69E9840];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  model = [currentDevice model];

  v4 = @"iPhone";
  if (([model isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(model, "isEqualToString:", @"iPhone Simulator") & 1) == 0)
  {
    v4 = @"iPad";
    if (([model isEqualToString:@"iPad"] & 1) == 0 && (objc_msgSend(model, "isEqualToString:", @"iPad Simulator") & 1) == 0)
    {
      v4 = @"iPod touch";
      if (([model isEqualToString:@"iPod touch"] & 1) == 0)
      {
        PXAssertGetLog();
      }
    }
  }

  return &v4->isa;
}

@end