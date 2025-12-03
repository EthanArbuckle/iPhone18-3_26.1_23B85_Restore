@interface PXPhotoKitAssetSpotlightActionPerformer
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
@end

@implementation PXPhotoKitAssetSpotlightActionPerformer

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  v36 = *MEMORY[0x1E69E9840];
  selectionManager = [manager selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];
  dataSource = [selectionSnapshot dataSource];
  *buf = [dataSource identifier];
  *&buf[8] = 0;
  *&buf[16] = 0;
  v35 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [dataSource objectAtIndexPath:buf];
  v9 = v8;
  if (v8)
  {
    v30 = PXOwningAppBundleIdentifierForSpotlightAsset(v8);
    v10 = [[_PXPhotoKitSpotlightActionButton alloc] initWithAppBundleIdentifier:v30];
    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithCustomView:v10];
    v12 = PXLocalizedStringFromTable(@"PXSpotlightPhotosIconAXDescription", @"PhotosUICore");
    [v11 setAccessibilityLabel:v12];

    [(_PXPhotoKitSpotlightActionButton *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    centerXAnchor = [(_PXPhotoKitSpotlightActionButton *)v10 centerXAnchor];
    customView = [v11 customView];
    [customView centerXAnchor];
    v15 = v32 = selectionManager;
    v16 = [centerXAnchor constraintEqualToAnchor:v15];

    centerYAnchor = [(_PXPhotoKitSpotlightActionButton *)v10 centerYAnchor];
    customView2 = [v11 customView];
    [customView2 centerYAnchor];
    v19 = v31 = selectionSnapshot;
    v20 = [centerYAnchor constraintEqualToAnchor:v19];

    widthAnchor = [(_PXPhotoKitSpotlightActionButton *)v10 widthAnchor];
    v22 = [widthAnchor constraintEqualToConstant:32.0];

    heightAnchor = [(_PXPhotoKitSpotlightActionButton *)v10 heightAnchor];
    v24 = [heightAnchor constraintEqualToConstant:32.0];

    v25 = MEMORY[0x1E696ACD8];
    v33[0] = v16;
    v33[1] = v20;
    v33[2] = v22;
    v33[3] = v24;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];
    v27 = v25;
    selectionManager = v32;
    [v27 activateConstraints:v26];

    v28 = v30;
    selectionSnapshot = v31;
  }

  else
  {
    v28 = PLUIGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      *&buf[4] = dataSource;
      *&buf[12] = 2112;
      *&buf[14] = selectionSnapshot;
      *&buf[22] = 2112;
      v35 = selectionManager;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "PXPhotoKitAssetSpotlightActionPerformer: Unable to locate asset in datasource: %@ with selection snapshot: %@, selection manager: %@ for Spotlight 'open in app' 1Up action", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

@end