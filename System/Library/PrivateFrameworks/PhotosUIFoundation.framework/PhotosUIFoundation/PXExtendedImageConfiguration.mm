@interface PXExtendedImageConfiguration
- (PXExtendedImageConfiguration)init;
- (PXExtendedImageConfiguration)initWithImageName:(id)a3 isSystemImage:(BOOL)a4 accessibilityLabel:(id)a5 tintColor:(id)a6 imageConfiguration:(id)a7 inBundle:(id)a8;
@end

@implementation PXExtendedImageConfiguration

- (PXExtendedImageConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXExtendedImageConfiguration.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXExtendedImageConfiguration init]"}];

  abort();
}

- (PXExtendedImageConfiguration)initWithImageName:(id)a3 isSystemImage:(BOOL)a4 accessibilityLabel:(id)a5 tintColor:(id)a6 imageConfiguration:(id)a7 inBundle:(id)a8
{
  v22 = a3;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = PXExtendedImageConfiguration;
  v18 = [(PXExtendedImageConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageName, a3);
    v19->_isSystemImage = a4;
    objc_storeStrong(&v19->_accessibilityLabel, a5);
    objc_storeStrong(&v19->_tintColor, a6);
    objc_storeStrong(&v19->_imageConfiguration, a7);
    objc_storeStrong(&v19->_bundle, a8);
  }

  return v19;
}

@end