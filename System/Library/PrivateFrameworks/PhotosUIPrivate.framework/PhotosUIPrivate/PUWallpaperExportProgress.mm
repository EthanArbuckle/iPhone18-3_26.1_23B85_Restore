@interface PUWallpaperExportProgress
- (PUWallpaperExportProgress)init;
- (PUWallpaperExportProgress)initWithAssetUUIDs:(id)a3 progressHandler:(id)a4;
- (void)_updateProgressValue:(double)a3 forAssetUUID:(id)a4 inDictionary:(id)a5;
- (void)begin;
- (void)finish;
@end

@implementation PUWallpaperExportProgress

- (void)_updateProgressValue:(double)a3 forAssetUUID:(id)a4 inDictionary:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  os_unfair_lock_lock(&self->_lock);
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v9 setObject:v10 forKey:v8];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_assetUUIDs;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    v15 = 0.0;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v24 + 1) + 8 * i);
        v18 = [(NSMutableDictionary *)self->_downloadProgress valueForKey:v17, v24];
        [v18 doubleValue];
        v20 = v15 + v19;

        v21 = [(NSMutableDictionary *)self->_processingProgress valueForKey:v17];
        [v21 doubleValue];
        v15 = v20 + v22;
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  else
  {
    v15 = 0.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](v15 / self->_totalWork);
  }
}

- (void)finish
{
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](1.0);
  }
}

- (void)begin
{
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](0.0);
  }
}

- (PUWallpaperExportProgress)initWithAssetUUIDs:(id)a3 progressHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = PUWallpaperExportProgress;
  v8 = [(PUWallpaperExportProgress *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [v6 copy];
    assetUUIDs = v9->_assetUUIDs;
    v9->_assetUUIDs = v10;

    v12 = [v7 copy];
    progressHandler = v9->_progressHandler;
    v9->_progressHandler = v12;

    v14 = [(NSArray *)v9->_assetUUIDs count];
    v9->_totalWork = v14 + v14;
    v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
    downloadProgress = v9->_downloadProgress;
    v9->_downloadProgress = v15;

    v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v14];
    processingProgress = v9->_processingProgress;
    v9->_processingProgress = v17;
  }

  return v9;
}

- (PUWallpaperExportProgress)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUWallpaperShuffleResourceManager.m" lineNumber:1138 description:{@"%s is not available as initializer", "-[PUWallpaperExportProgress init]"}];

  abort();
}

@end