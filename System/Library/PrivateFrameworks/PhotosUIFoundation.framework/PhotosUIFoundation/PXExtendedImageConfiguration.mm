@interface PXExtendedImageConfiguration
- (PXExtendedImageConfiguration)init;
- (PXExtendedImageConfiguration)initWithImageName:(id)name isSystemImage:(BOOL)image accessibilityLabel:(id)label tintColor:(id)color imageConfiguration:(id)configuration inBundle:(id)bundle;
@end

@implementation PXExtendedImageConfiguration

- (PXExtendedImageConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXExtendedImageConfiguration.m" lineNumber:41 description:{@"%s is not available as initializer", "-[PXExtendedImageConfiguration init]"}];

  abort();
}

- (PXExtendedImageConfiguration)initWithImageName:(id)name isSystemImage:(BOOL)image accessibilityLabel:(id)label tintColor:(id)color imageConfiguration:(id)configuration inBundle:(id)bundle
{
  nameCopy = name;
  labelCopy = label;
  colorCopy = color;
  configurationCopy = configuration;
  bundleCopy = bundle;
  v23.receiver = self;
  v23.super_class = PXExtendedImageConfiguration;
  v18 = [(PXExtendedImageConfiguration *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_imageName, name);
    v19->_isSystemImage = image;
    objc_storeStrong(&v19->_accessibilityLabel, label);
    objc_storeStrong(&v19->_tintColor, color);
    objc_storeStrong(&v19->_imageConfiguration, configuration);
    objc_storeStrong(&v19->_bundle, bundle);
  }

  return v19;
}

@end