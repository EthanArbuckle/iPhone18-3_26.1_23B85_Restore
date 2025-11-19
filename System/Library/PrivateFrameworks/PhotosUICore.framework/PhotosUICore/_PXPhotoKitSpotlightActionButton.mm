@interface _PXPhotoKitSpotlightActionButton
+ (id)_appIconForBundleIdentifier:(id)a3;
- (_PXPhotoKitSpotlightActionButton)initWithAppBundleIdentifier:(id)a3;
- (void)_updateImage;
- (void)setAppBundleIdentifier:(id)a3;
@end

@implementation _PXPhotoKitSpotlightActionButton

- (void)_updateImage
{
  v3 = objc_opt_class();
  v4 = [(_PXPhotoKitSpotlightActionButton *)self appBundleIdentifier];
  v5 = [v3 _appIconForBundleIdentifier:v4];

  [(_PXPhotoKitSpotlightActionButton *)self setImage:v5 forState:0];
}

- (void)setAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_appBundleIdentifier != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      v7 = [(NSString *)v9 copy];
      appBundleIdentifier = self->_appBundleIdentifier;
      self->_appBundleIdentifier = v7;

      [(_PXPhotoKitSpotlightActionButton *)self _updateImage];
      v5 = v9;
    }
  }
}

- (_PXPhotoKitSpotlightActionButton)initWithAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() buttonWithType:0];

  if (v5)
  {
    v6 = [v4 copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    [(_PXPhotoKitSpotlightActionButton *)v5 _updateImage];
  }

  return v5;
}

+ (id)_appIconForBundleIdentifier:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v3];
  v5 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:32.0 scale:{32.0, 3.0}];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v4 prepareImagesForImageDescriptors:v6];

  v7 = [v4 imageForDescriptor:v5];
  if ([v7 placeholder])
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"appstore.app"];
    v9 = [v8 CGImage];
  }

  else
  {
    v9 = [v7 CGImage];
  }

  CGImageRetain(v9);
  if (v9)
  {
    v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v9];
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoKitAssetSpotlightActionPerformer: Unable to retrieve app icon for app with bundle identifier: %@ for Spotlight 1Up", &v13, 0xCu);
    }

    v10 = 0;
  }

  CGImageRelease(v9);

  return v10;
}

@end