@interface _PXPhotoKitSpotlightActionButton
+ (id)_appIconForBundleIdentifier:(id)identifier;
- (_PXPhotoKitSpotlightActionButton)initWithAppBundleIdentifier:(id)identifier;
- (void)_updateImage;
- (void)setAppBundleIdentifier:(id)identifier;
@end

@implementation _PXPhotoKitSpotlightActionButton

- (void)_updateImage
{
  v3 = objc_opt_class();
  appBundleIdentifier = [(_PXPhotoKitSpotlightActionButton *)self appBundleIdentifier];
  v5 = [v3 _appIconForBundleIdentifier:appBundleIdentifier];

  [(_PXPhotoKitSpotlightActionButton *)self setImage:v5 forState:0];
}

- (void)setAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_appBundleIdentifier != identifierCopy)
  {
    v9 = identifierCopy;
    v6 = [(NSString *)identifierCopy isEqualToString:?];
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

- (_PXPhotoKitSpotlightActionButton)initWithAppBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_opt_class() buttonWithType:0];

  if (v5)
  {
    v6 = [identifierCopy copy];
    appBundleIdentifier = v5->_appBundleIdentifier;
    v5->_appBundleIdentifier = v6;

    [(_PXPhotoKitSpotlightActionButton *)v5 _updateImage];
  }

  return v5;
}

+ (id)_appIconForBundleIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v4 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:identifierCopy];
  v5 = [objc_alloc(MEMORY[0x1E69A8A30]) initWithSize:32.0 scale:{32.0, 3.0}];
  v15[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [v4 prepareImagesForImageDescriptors:v6];

  v7 = [v4 imageForDescriptor:v5];
  if ([v7 placeholder])
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"appstore.app"];
    cGImage = [v8 CGImage];
  }

  else
  {
    cGImage = [v7 CGImage];
  }

  CGImageRetain(cGImage);
  if (cGImage)
  {
    v10 = [MEMORY[0x1E69DCAB8] imageWithCGImage:cGImage];
  }

  else
  {
    v11 = PLUIGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = identifierCopy;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "PXPhotoKitAssetSpotlightActionPerformer: Unable to retrieve app icon for app with bundle identifier: %@ for Spotlight 1Up", &v13, 0xCu);
    }

    v10 = 0;
  }

  CGImageRelease(cGImage);

  return v10;
}

@end