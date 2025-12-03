@interface PXBadgeHelper
+ (UIImage)cloudBadgeImage;
+ (UIImage)cloudBadgeImageMini;
+ (UIImage)contentSyndicationBadgeImage;
+ (UIImage)contentSyndicationBadgeImageMini;
+ (UIImage)contentSyndicationGuestAssetBadgeImage;
+ (UIImage)favoriteBadgeImage;
+ (UIImage)favoriteBadgeImageMini;
+ (UIImage)favoritesCollectionBadgeImage;
+ (UIImage)gradientImage;
+ (UIImage)livePhotoBadgeShadowedImage;
+ (UIImage)loopingBadgeImage;
+ (UIImage)loopingBadgeTemplateImage;
+ (UIImage)ocrAssetBadgeImage;
+ (UIImage)panoramaBadgeImage;
+ (UIImage)panoramaBadgeImageMini;
+ (UIImage)sensitiveWarningBadgeImage;
+ (UIImage)sensitiveWarningBadgeImageMini;
+ (UIImage)sharedLibraryBadgeImage;
+ (UIImage)sharedLibraryBadgeImageMini;
+ (UIImage)spatialBadgeImage;
+ (UIImageSymbolConfiguration)largeSymbolConfiguration;
+ (UIImageSymbolConfiguration)mediumSymbolConfiguration;
+ (UIImageSymbolConfiguration)miniSymbolConfiguration;
+ (UIImageSymbolConfiguration)smallSymbolConfiguration;
+ (id)_favoriteBadgeImageWithSymbolConfiguration:(id)configuration;
+ (id)_sensitiveWarningBadgeImageWithSymbolConfiguration:(id)configuration;
@end

@implementation PXBadgeHelper

+ (UIImage)cloudBadgeImageMini
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud.fill"];
  v3 = +[PXBadgeHelper miniSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)sharedLibraryBadgeImageMini
{
  v2 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"person.2.fill"];
  v3 = +[PXBadgeHelper miniSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)ocrAssetBadgeImage
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"text.viewfinder"];
  v3 = +[PXBadgeHelper smallSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)contentSyndicationGuestAssetBadgeImage
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  v3 = +[PXBadgeHelper smallSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)contentSyndicationBadgeImageMini
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  v3 = +[PXBadgeHelper miniSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)contentSyndicationBadgeImage
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"message"];
  v3 = +[PXBadgeHelper smallSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)panoramaBadgeImageMini
{
  v2 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pano.fill"];
  v3 = +[PXBadgeHelper miniSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)panoramaBadgeImage
{
  if (panoramaBadgeImage_onceToken != -1)
  {
    dispatch_once(&panoramaBadgeImage_onceToken, &__block_literal_global_61);
  }

  v3 = panoramaBadgeImage_panoBadgeImage;

  return v3;
}

void __35__PXBadgeHelper_panoramaBadgeImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pano.fill"];
  v1 = panoramaBadgeImage_panoBadgeImage;
  panoramaBadgeImage_panoBadgeImage = v0;

  v8 = +[PXBadgeHelper smallSymbolConfiguration];
  v2 = [panoramaBadgeImage_panoBadgeImage px_imageWithSymbolConfiguration:v8];
  v3 = panoramaBadgeImage_panoBadgeImage;
  panoramaBadgeImage_panoBadgeImage = v2;

  v4 = panoramaBadgeImage_panoBadgeImage;
  v5 = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:v5];
  v7 = panoramaBadgeImage_panoBadgeImage;
  panoramaBadgeImage_panoBadgeImage = v6;
}

+ (id)_favoriteBadgeImageWithSymbolConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E69DCAB8];
  configurationCopy = configuration;
  v5 = [v3 systemImageNamed:@"heart.fill"];
  v6 = [v5 px_imageWithSymbolConfiguration:configurationCopy];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [v6 px_tintedImageWithColor:whiteColor];

  return v8;
}

+ (UIImage)favoritesCollectionBadgeImage
{
  v2 = +[PXBadgeHelper mediumSymbolConfiguration];
  v3 = [PXBadgeHelper _favoriteBadgeImageWithSymbolConfiguration:v2];

  return v3;
}

+ (UIImage)favoriteBadgeImageMini
{
  v2 = +[PXBadgeHelper miniSymbolConfiguration];
  v3 = [PXBadgeHelper _favoriteBadgeImageWithSymbolConfiguration:v2];

  return v3;
}

+ (UIImage)favoriteBadgeImage
{
  v2 = +[PXBadgeHelper smallSymbolConfiguration];
  v3 = [PXBadgeHelper _favoriteBadgeImageWithSymbolConfiguration:v2];

  return v3;
}

+ (id)_sensitiveWarningBadgeImageWithSymbolConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E69DCAB8];
  configurationCopy = configuration;
  v5 = [v3 px_systemImageNamed:@"exclamationmark.shield.fill"];
  v6 = [v5 px_imageWithSymbolConfiguration:configurationCopy];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v8 = [v6 px_tintedImageWithColor:whiteColor];

  return v8;
}

+ (UIImage)sensitiveWarningBadgeImageMini
{
  v2 = +[PXBadgeHelper miniSymbolConfiguration];
  v3 = [PXBadgeHelper _sensitiveWarningBadgeImageWithSymbolConfiguration:v2];

  return v3;
}

+ (UIImage)sensitiveWarningBadgeImage
{
  v2 = +[PXBadgeHelper largeSymbolConfiguration];
  v3 = [PXBadgeHelper _sensitiveWarningBadgeImageWithSymbolConfiguration:v2];

  return v3;
}

+ (UIImage)sharedLibraryBadgeImage
{
  v2 = +[PXBadgeHelper smallSymbolConfiguration];
  v3 = [MEMORY[0x1E69DCAB8] px_systemImageNamed:@"person.2.fill"];
  v4 = [v3 px_imageWithSymbolConfiguration:v2];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)cloudBadgeImage
{
  if (cloudBadgeImage_onceToken != -1)
  {
    dispatch_once(&cloudBadgeImage_onceToken, &__block_literal_global_47);
  }

  v3 = cloudBadgeImage_image;

  return v3;
}

void __32__PXBadgeHelper_cloudBadgeImage__block_invoke()
{
  v0 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"icloud.fill"];
  v1 = cloudBadgeImage_image;
  cloudBadgeImage_image = v0;

  v2 = cloudBadgeImage_image;
  v3 = +[PXBadgeHelper smallSymbolConfiguration];
  v4 = [v2 px_imageWithSymbolConfiguration:v3];
  v5 = cloudBadgeImage_image;
  cloudBadgeImage_image = v4;

  v6 = cloudBadgeImage_image;
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v7 = [v6 px_tintedImageWithColor:v9];
  v8 = cloudBadgeImage_image;
  cloudBadgeImage_image = v7;
}

+ (UIImage)loopingBadgeTemplateImage
{
  if (loopingBadgeTemplateImage_onceToken != -1)
  {
    dispatch_once(&loopingBadgeTemplateImage_onceToken, &__block_literal_global_45);
  }

  v3 = loopingBadgeTemplateImage_image;

  return v3;
}

uint64_t __42__PXBadgeHelper_loopingBadgeTemplateImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = PXPhotosUIFoundationBundle();
  v2 = [v0 px_imageNamed:@"PXAssetBadgeLoop" bundle:v1];
  v3 = loopingBadgeTemplateImage_image;
  loopingBadgeTemplateImage_image = v2;

  loopingBadgeTemplateImage_image = [loopingBadgeTemplateImage_image imageWithRenderingMode:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (UIImage)loopingBadgeImage
{
  if (loopingBadgeImage_onceToken != -1)
  {
    dispatch_once(&loopingBadgeImage_onceToken, &__block_literal_global_40);
  }

  v3 = loopingBadgeImage_image;

  return v3;
}

void __34__PXBadgeHelper_loopingBadgeImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = PXPhotosUIFoundationBundle();
  v1 = [v0 px_imageNamed:@"PXAssetBadgeLoop" bundle:v3];
  v2 = loopingBadgeImage_image;
  loopingBadgeImage_image = v1;
}

+ (UIImage)spatialBadgeImage
{
  v2 = +[PXBadgeHelper smallSymbolConfiguration];
  v3 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"spatial"];
  v4 = [v3 px_imageWithSymbolConfiguration:v2];

  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v6 = [v4 px_tintedImageWithColor:whiteColor];

  return v6;
}

+ (UIImage)livePhotoBadgeShadowedImage
{
  if (livePhotoBadgeShadowedImage_onceToken != -1)
  {
    dispatch_once(&livePhotoBadgeShadowedImage_onceToken, &__block_literal_global_30);
  }

  v3 = livePhotoBadgeShadowedImage_image;

  return v3;
}

uint64_t __44__PXBadgeHelper_livePhotoBadgeShadowedImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = PXPhotosUIFoundationBundle();
  v2 = [v0 px_imageNamed:@"PXAssetBadgeOverContentLivePhotoOn" bundle:v1];
  v3 = livePhotoBadgeShadowedImage_image;
  livePhotoBadgeShadowedImage_image = v2;

  livePhotoBadgeShadowedImage_image = [livePhotoBadgeShadowedImage_image imageWithRenderingMode:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (UIImage)gradientImage
{
  if (gradientImage_onceToken != -1)
  {
    dispatch_once(&gradientImage_onceToken, &__block_literal_global_24);
  }

  v3 = gradientImage_image;

  return v3;
}

void __30__PXBadgeHelper_gradientImage__block_invoke()
{
  v0 = MEMORY[0x1E69DCAB8];
  v3 = PXPhotosUIFoundationBundle();
  v1 = [v0 px_imageNamed:@"PXAssetBadgeBannerGradient" bundle:v3];
  v2 = gradientImage_image;
  gradientImage_image = v1;
}

+ (UIImageSymbolConfiguration)largeSymbolConfiguration
{
  if (largeSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&largeSymbolConfiguration_onceToken, &__block_literal_global_22);
  }

  v3 = largeSymbolConfiguration_largeSymbolConfiguration;

  return v3;
}

uint64_t __41__PXBadgeHelper_largeSymbolConfiguration__block_invoke()
{
  largeSymbolConfiguration_largeSymbolConfiguration = [MEMORY[0x1E69DCAD8] configurationWithScale:3];

  return MEMORY[0x1EEE66BB8]();
}

+ (UIImageSymbolConfiguration)mediumSymbolConfiguration
{
  if (mediumSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&mediumSymbolConfiguration_onceToken, &__block_literal_global_20);
  }

  v3 = mediumSymbolConfiguration_mediumSymbolConfiguration;

  return v3;
}

uint64_t __42__PXBadgeHelper_mediumSymbolConfiguration__block_invoke()
{
  mediumSymbolConfiguration_mediumSymbolConfiguration = [MEMORY[0x1E69DCAD8] configurationWithScale:2];

  return MEMORY[0x1EEE66BB8]();
}

+ (UIImageSymbolConfiguration)smallSymbolConfiguration
{
  if (smallSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&smallSymbolConfiguration_onceToken, &__block_literal_global_18);
  }

  v3 = smallSymbolConfiguration_smallSymbolConfiguration;

  return v3;
}

uint64_t __41__PXBadgeHelper_smallSymbolConfiguration__block_invoke()
{
  smallSymbolConfiguration_smallSymbolConfiguration = [MEMORY[0x1E69DCAD8] configurationWithScale:1];

  return MEMORY[0x1EEE66BB8]();
}

+ (UIImageSymbolConfiguration)miniSymbolConfiguration
{
  if (miniSymbolConfiguration_onceToken != -1)
  {
    dispatch_once(&miniSymbolConfiguration_onceToken, &__block_literal_global_456);
  }

  v3 = miniSymbolConfiguration_miniSymbolConfiguration;

  return v3;
}

uint64_t __40__PXBadgeHelper_miniSymbolConfiguration__block_invoke()
{
  miniSymbolConfiguration_miniSymbolConfiguration = [MEMORY[0x1E69DCAD8] configurationWithPointSize:11.0];

  return MEMORY[0x1EEE66BB8]();
}

@end