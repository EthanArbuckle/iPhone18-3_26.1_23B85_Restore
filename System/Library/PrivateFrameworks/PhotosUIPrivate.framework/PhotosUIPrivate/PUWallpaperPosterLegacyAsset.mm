@interface PUWallpaperPosterLegacyAsset
- (CGRect)acceptableCropRect;
- (CGRect)gazeAreaRect;
- (CGRect)preferredCropRect;
- (PUWallpaperPosterLegacyAsset)initWithProxyImage:(CGImage *)a3;
- (int)loadCropRectsWithResultHandler:(id)a3;
- (int)loadMotionScore:(id)a3;
- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5;
- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4;
- (void)updateSegmentationResource:(id)a3;
@end

@implementation PUWallpaperPosterLegacyAsset

- (int)loadMotionScore:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:270 description:@"Migration asset does not support motion"];

  abort();
}

- (int)loadCropRectsWithResultHandler:(id)a3
{
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v6 = [v4 px_genericErrorWithDebugDescription:@"Not available"];
  (*(a3 + 2))(v5, v6, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));

  return 0;
}

- (int)loadPetsRegionsWithOptions:(id)a3 resultHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:256 description:@"Migration asset does not support pet regions"];

  abort();
}

- (int)loadParallaxResource:(int64_t)a3 options:(id)a4 resultHandler:(id)a5
{
  v6 = MEMORY[0x1E69C0740];
  v7 = a5;
  v8 = objc_alloc_init(v6);
  [v8 setType:5];
  [v8 setProxyImage:{-[PUWallpaperPosterLegacyAsset proxyImage](self, "proxyImage")}];
  v7[2](v7, v8, 0);

  return 1;
}

- (void)updateSegmentationResource:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUWallpaperPosterMigrator.m" lineNumber:231 description:@"Migration asset does not support caching"];
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

- (PUWallpaperPosterLegacyAsset)initWithProxyImage:(CGImage *)a3
{
  v5.receiver = self;
  v5.super_class = PUWallpaperPosterLegacyAsset;
  result = [(PUWallpaperPosterLegacyAsset *)&v5 init];
  if (result)
  {
    result->_proxyImage = a3;
  }

  return result;
}

@end