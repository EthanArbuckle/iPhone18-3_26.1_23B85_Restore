@interface PXPhotoKitAssetSpotlightActionPerformer
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
@end

@implementation PXPhotoKitAssetSpotlightActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [a5 selectionManager];
  v6 = [v5 selectionSnapshot];
  v7 = [v6 dataSource];
  *buf = [v7 identifier];
  *&buf[8] = 0;
  *&buf[16] = 0;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [v7 objectAtIndexPath:buf];
  v9 = v8;
  if (v8)
  {
    v30 = PXOwningAppBundleIdentifierForSpotlightAsset(v8);
    v10 = [[_PXPhotoKitSpotlightActionButton alloc] initWithAppBundleIdentifier:v30];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
    v12 = PXLocalizedStringFromTable(@"PXSpotlightPhotosIconAXDescription", @"PhotosUICore");
    [v11 setAccessibilityLabel:v12];

    [(_PXPhotoKitSpotlightActionButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [(_PXPhotoKitSpotlightActionButton *)v10 centerXAnchor];
    v14 = [v11 customView];
    [v14 centerXAnchor];
    v15 = v32 = v5;
    v16 = [v13 constraintEqualToAnchor:v15];

    v17 = [(_PXPhotoKitSpotlightActionButton *)v10 centerYAnchor];
    v18 = [v11 customView];
    [v18 centerYAnchor];
    v19 = v31 = v6;
    v20 = [v17 constraintEqualToAnchor:v19];

    v21 = [(_PXPhotoKitSpotlightActionButton *)v10 widthAnchor];
    v22 = [v21 constraintEqualToConstant:32.0];

    v23 = [(_PXPhotoKitSpotlightActionButton *)v10 heightAnchor];
    v24 = [v23 constraintEqualToConstant:32.0];

    v25 = MEMORY[0x1E696ACD8];
    v33[0] = v16;
    v33[1] = v20;
    v33[2] = v22;
    v33[3] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v27 = v25;
    v5 = v32;
    [v27 activateConstraints:v26];

    v28 = v30;
    v6 = v31;
  }

  else
  {
    v28 = PLUIGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = v7;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      *&buf[22] = 2112;
      v35 = v5;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "PXPhotoKitAssetSpotlightActionPerformer: Unable to locate asset in datasource: %@ with selection snapshot: %@, selection manager: %@ for Spotlight 'open in app' 1Up action", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

@end