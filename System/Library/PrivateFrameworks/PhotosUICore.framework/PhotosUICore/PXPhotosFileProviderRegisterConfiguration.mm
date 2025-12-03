@interface PXPhotosFileProviderRegisterConfiguration
+ (NSString)typeIdentifierAutoLoopAsGIFPrivate;
+ (NSString)typeIdentifierLivePhotoBundlePrivate;
+ (NSString)typeIdentifierLiveWallpaperPrivate;
+ (NSString)typeIdentifierMailMovieExportPrivate;
+ (NSString)typeIdentifierSpatialWallpaperPrivate;
+ (NSString)typeIdentifierThumbnailLowPrivate;
+ (NSString)typeIdentifierThumbnailStandardPrivate;
- (BOOL)isLiveWallpaperSelection;
- (BOOL)isSpatialWallpaperSelection;
- (BOOL)shouldIncludeCaption;
- (BOOL)shouldIncludeLocation;
- (NSNumber)downscalingTargetDimension;
- (PXPhotosFileProviderRegisterConfiguration)init;
- (int64_t)clientEncodingPolicy;
- (int64_t)userEncodingPolicy;
- (void)setClientEncodingPolicy:(int64_t)policy;
- (void)setDownscalingTargetDimension:(id)dimension;
- (void)setIsLiveWallpaperSelection:(BOOL)selection;
- (void)setIsSpatialWallpaperSelection:(BOOL)selection;
- (void)setShouldIncludeCaption:(BOOL)caption;
- (void)setShouldIncludeLocation:(BOOL)location;
- (void)setUserEncodingPolicy:(int64_t)policy;
@end

@implementation PXPhotosFileProviderRegisterConfiguration

+ (NSString)typeIdentifierLivePhotoBundlePrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierAutoLoopAsGIFPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierLiveWallpaperPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierSpatialWallpaperPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierThumbnailLowPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierThumbnailStandardPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

+ (NSString)typeIdentifierMailMovieExportPrivate
{
  v2 = sub_1A524C634();

  return v2;
}

- (int64_t)userEncodingPolicy
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setUserEncodingPolicy:(int64_t)policy
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_userEncodingPolicy;
  swift_beginAccess();
  *(&self->super.isa + v5) = policy;
}

- (int64_t)clientEncodingPolicy
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setClientEncodingPolicy:(int64_t)policy
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_clientEncodingPolicy;
  swift_beginAccess();
  *(&self->super.isa + v5) = policy;
}

- (BOOL)shouldIncludeLocation
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldIncludeLocation:(BOOL)location
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeLocation;
  swift_beginAccess();
  *(&self->super.isa + v5) = location;
}

- (BOOL)shouldIncludeCaption
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setShouldIncludeCaption:(BOOL)caption
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_shouldIncludeCaption;
  swift_beginAccess();
  *(&self->super.isa + v5) = caption;
}

- (NSNumber)downscalingTargetDimension
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDownscalingTargetDimension:(id)dimension
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_downscalingTargetDimension;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = dimension;
  dimensionCopy = dimension;
}

- (BOOL)isLiveWallpaperSelection
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsLiveWallpaperSelection:(BOOL)selection
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isLiveWallpaperSelection;
  swift_beginAccess();
  *(&self->super.isa + v5) = selection;
}

- (BOOL)isSpatialWallpaperSelection
{
  v3 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsSpatialWallpaperSelection:(BOOL)selection
{
  v5 = OBJC_IVAR___PXPhotosFileProviderRegisterConfiguration_isSpatialWallpaperSelection;
  swift_beginAccess();
  *(&self->super.isa + v5) = selection;
}

- (PXPhotosFileProviderRegisterConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end