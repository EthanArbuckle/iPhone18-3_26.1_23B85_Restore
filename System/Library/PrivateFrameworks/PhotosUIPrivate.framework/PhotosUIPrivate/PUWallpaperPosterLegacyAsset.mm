@interface PUWallpaperPosterLegacyAsset
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (PUWallpaperPosterLegacyAsset)initWithProxyImage:(CGImage *)image;
- (int)loadCropRectsWithResultHandler:(id)handler;
- (int)loadMotionScore:(id)score;
- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler;
- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler;
- (void)updateSegmentationResource:(id)resource;
@end

@implementation PUWallpaperPosterLegacyAsset

- (int)loadMotionScore:(id)score
{
  scoreCopy = score;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:270 description:@"Migration asset does not support motion"];

  abort();
}

- (int)loadCropRectsWithResultHandler:(id)handler
{
  v4 = MEMORY[0x1E696ABC0];
  handlerCopy = handler;
  v6 = [v4 px_genericErrorWithDebugDescription:@"Not available"];
  (*(handler + 2))(handlerCopy, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return 0;
}

- (int)loadPetsRegionsWithOptions:(id)options resultHandler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:256 description:@"Migration asset does not support pet regions"];

  abort();
}

- (int)loadParallaxResource:(int64_t)resource options:(id)options resultHandler:(id)handler
{
  v6 = MEMORY[0x1E69C0740];
  handlerCopy = handler;
  v8 = objc_alloc_init(v6);
  [v8 setType:5];
  [v8 setProxyImage:{-[PUWallpaperPosterLegacyAsset proxyImage](self, "proxyImage")}];
  handlerCopy[2](handlerCopy, v8, 0);

  return 1;
}

- (void)updateSegmentationResource:(id)resource
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:231 description:@"Migration asset does not support caching"];
}

- (CGRect)gazeAreaRect
{
  v2 = *MEMORY[0x1E69C48E0];
  v3 = *(MEMORY[0x1E69C48E0] + 8);
  v4 = *(MEMORY[0x1E69C48E0] + 16);
  v5 = *(MEMORY[0x1E69C48E0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E69C48E0];
  v3 = *(MEMORY[0x1E69C48E0] + 8);
  v4 = *(MEMORY[0x1E69C48E0] + 16);
  v5 = *(MEMORY[0x1E69C48E0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E69C48E0];
  v3 = *(MEMORY[0x1E69C48E0] + 8);
  v4 = *(MEMORY[0x1E69C48E0] + 16);
  v5 = *(MEMORY[0x1E69C48E0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PUWallpaperPosterLegacyAsset)initWithProxyImage:(CGImage *)image
{
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterLegacyAsset;
  result = [(PUWallpaperPosterLegacyAsset *)&v5 init];
  if (result)
  {
    result->_proxyImage = image;
  }

  return result;
}

@end