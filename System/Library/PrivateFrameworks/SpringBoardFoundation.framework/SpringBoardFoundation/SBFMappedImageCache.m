@interface SBFMappedImageCache
+ (id)systemAppPersistenteCache;
+ (void)systemAppPersistenteCache;
- (SBFMappedImageCache)initWithDescription:(id)a3;
- (id)imageForKey:(id)a3 cacheOptions:(unint64_t)a4 generateImageWithBlockIfNecessary:(id)a5;
- (id)imageForKey:(id)a3 generateImageWithBlockIfNecessary:(id)a4;
- (id)imageForKey:(id)a3 options:(int)a4 generateImageWithBlockIfNecessary:(id)a5;
@end

@implementation SBFMappedImageCache

+ (id)systemAppPersistenteCache
{
  v4 = MEMORY[0x1E69DDA98];
  if (([*MEMORY[0x1E69DDA98] isFrontBoard] & 1) == 0 && *v4)
  {
    +[(SBFMappedImageCache *)a2];
  }

  if (systemAppPersistenteCache___once != -1)
  {
    +[SBFMappedImageCache systemAppPersistenteCache];
  }

  v5 = systemAppPersistenteCache___cache;

  return v5;
}

uint64_t __48__SBFMappedImageCache_systemAppPersistenteCache__block_invoke()
{
  v0 = [[SBFMappedImageCache alloc] initWithUniqueIdentifier:@"Persistent"];
  v1 = systemAppPersistenteCache___cache;
  systemAppPersistenteCache___cache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SBFMappedImageCache)initWithDescription:(id)a3
{
  v4.receiver = self;
  v4.super_class = SBFMappedImageCache;
  return [(SBFMappedImageCache *)&v4 initWithUniqueIdentifier:a3];
}

- (id)imageForKey:(id)a3 generateImageWithBlockIfNecessary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__SBFMappedImageCache_imageForKey_generateImageWithBlockIfNecessary___block_invoke;
    v12[3] = &unk_1E807FC30;
    v13 = v7;
    v9 = MEMORY[0x1BFB4D9B0](v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = [(SBFMappedImageCache *)self _imageForKey:v6 withCPBitmapReadFlags:0 generatingIfNecessaryWithBlock:v9];

  return v10;
}

- (id)imageForKey:(id)a3 options:(int)a4 generateImageWithBlockIfNecessary:(id)a5
{
  v6 = *&a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__SBFMappedImageCache_imageForKey_options_generateImageWithBlockIfNecessary___block_invoke;
    v14[3] = &unk_1E807FC30;
    v15 = v9;
    v11 = MEMORY[0x1BFB4D9B0](v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBFMappedImageCache *)self _imageForKey:v8 withCPBitmapReadFlags:v6 generatingIfNecessaryWithBlock:v11];

  return v12;
}

- (id)imageForKey:(id)a3 cacheOptions:(unint64_t)a4 generateImageWithBlockIfNecessary:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __82__SBFMappedImageCache_imageForKey_cacheOptions_generateImageWithBlockIfNecessary___block_invoke;
    v17 = &unk_1E807FC58;
    v19 = a4;
    v18 = v9;
    v11 = MEMORY[0x1BFB4D9B0](&v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [(SBFMappedImageCache *)self _imageForKey:v8 withCPBitmapReadFlags:0 generatingIfNecessaryWithBlock:v11, v14, v15, v16, v17];

  return v12;
}

uint64_t __82__SBFMappedImageCache_imageForKey_cacheOptions_generateImageWithBlockIfNecessary___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    *a2 = 1;
  }

  return (*(*(a1 + 32) + 16))();
}

+ (void)systemAppPersistenteCache
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBFMappedImageCache.m" lineNumber:24 description:@"-[SBFMappedImageCache systemAppPersistenteCache] Allowed only in system app"];
}

@end