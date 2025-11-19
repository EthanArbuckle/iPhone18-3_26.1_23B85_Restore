@interface PXLocalization
+ (NSString)currentDeviceCanonicalModel;
+ (NSString)openCameraButtonTitleForEmptyPhotoLibrary;
+ (id)messageForEmptyPhotoLibrary:(id)a3;
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

+ (id)messageForEmptyPhotoLibrary:(id)a3
{
  v5 = a3;
  v6 = MGGetBoolAnswer();
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"PXLocalization.m" lineNumber:591 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];
  }

  if ([v5 isCloudPhotoLibraryEnabled])
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
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 model];

  v4 = @"iPhone";
  if (([v3 isEqualToString:@"iPhone"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"iPhone Simulator") & 1) == 0)
  {
    v4 = @"iPad";
    if (([v3 isEqualToString:@"iPad"] & 1) == 0 && (objc_msgSend(v3, "isEqualToString:", @"iPad Simulator") & 1) == 0)
    {
      v4 = @"iPod touch";
      if (([v3 isEqualToString:@"iPod touch"] & 1) == 0)
      {
        PXAssertGetLog();
      }
    }
  }

  return &v4->isa;
}

@end