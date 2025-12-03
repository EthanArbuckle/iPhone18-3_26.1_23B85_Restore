@interface OFImageCache
+ (unint64_t)alignResolution:(unint64_t)resolution;
+ (unint64_t)bestResolutionForSize:(CGSize)size;
- (BOOL)hasImageForURL:(id)l withResolution:(unint64_t)resolution;
- (CGImage)bestImageDiskCacheForURL:(id)l;
- (CGImage)imageForURL:(id)l withResolution:(unint64_t)resolution;
- (CGImage)imageFromBestDiskCacheForURL:(id)l withResolution:(unint64_t)resolution;
- (OFImageCache)init;
- (OFImageCache)initWithDiskCacheDirectory:(id)directory;
- (id)_diskCacheDirectoryForURL:(id)l;
- (id)_diskCacheFilePathForURL:(id)l withResolution:(unint64_t)resolution;
- (id)_diskCacheResolutionsForURL:(id)l;
- (void)_didEnterBackgroundNotification;
- (void)_willTerminateNotification;
- (void)dealloc;
- (void)invalidateDiskCacheForURL:(id)l;
- (void)invalidateDiskCaches;
- (void)invalidateMemoryCaches;
- (void)purgeDiskCache:(unint64_t)cache progressBlock:(id)block;
- (void)setImage:(CGImage *)image withResolution:(unint64_t)resolution forURL:(id)l;
@end

@implementation OFImageCache

- (OFImageCache)init
{
  v7.receiver = self;
  v7.super_class = OFImageCache;
  v2 = [(OFImageCache *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.synergy.foundation.sfimagecache.disksavequeue", 0);
    v2->_serialDiskSaveQueue = v3;
    global_queue = dispatch_get_global_queue(-2, 0);
    dispatch_set_target_queue(v3, global_queue);
    v2->_diskCacheDirectory = 0;
    v2->_diskCacheDirectoryForURLs = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_useAsynchronousSerialDiskSaveQueue = 0;
    v2->_imageFormat = 0;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didReceiveMemoryWarningNotification name:*MEMORY[0x277D76670] object:0];
    [defaultCenter addObserver:v2 selector:sel__didEnterBackgroundNotification name:*MEMORY[0x277D76660] object:0];
    [defaultCenter addObserver:v2 selector:sel__willTerminateNotification name:*MEMORY[0x277D76770] object:0];
  }

  return v2;
}

- (OFImageCache)initWithDiskCacheDirectory:(id)directory
{
  v4 = [(OFImageCache *)self init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v9 = 0;
    if ([v5 fileExistsAtPath:directory isDirectory:&v9])
    {
      if (!v9)
      {
LABEL_10:

        v6 = v4;
        return 0;
      }
    }

    else
    {
      v8 = 0;
      if (([v5 createDirectoryAtPath:directory withIntermediateDirectories:1 attributes:0 error:&v8] & 1) == 0)
      {
        if (OFLoggerLevel >= 4)
        {
          +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 84, @"Failed to create image disk cache %@: %@", v4->_diskCacheDirectory, [v8 localizedDescription]);
        }

        goto LABEL_10;
      }

      v9 = 1;
    }

    v4->_diskCacheDirectory = [directory copy];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76670] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76660] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76770] object:0];
  serialDiskSaveQueue = self->_serialDiskSaveQueue;
  if (serialDiskSaveQueue)
  {
    dispatch_release(serialDiskSaveQueue);
    self->_serialDiskSaveQueue = 0;
  }

  diskCacheDirectory = self->_diskCacheDirectory;
  if (diskCacheDirectory)
  {

    self->_diskCacheDirectory = 0;
  }

  diskCacheDirectoryForURLs = self->_diskCacheDirectoryForURLs;
  if (diskCacheDirectoryForURLs)
  {

    self->_diskCacheDirectoryForURLs = 0;
  }

  v7.receiver = self;
  v7.super_class = OFImageCache;
  [(OFImageCache *)&v7 dealloc];
}

- (void)_didEnterBackgroundNotification
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__OFImageCache__didEnterBackgroundNotification__block_invoke;
  v7[3] = &unk_279C8A090;
  v7[4] = &v8;
  v4 = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v7];
  v9[3] = v4;
  if (v4 != *MEMORY[0x277D767B0])
  {
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__OFImageCache__didEnterBackgroundNotification__block_invoke_2;
    block[3] = &unk_279C89EA0;
    block[4] = self;
    block[5] = &v8;
    dispatch_async(global_queue, block);
  }

  _Block_object_dispose(&v8, 8);
}

uint64_t __47__OFImageCache__didEnterBackgroundNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

void __47__OFImageCache__didEnterBackgroundNotification__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) invalidateMemoryCaches];
  v2 = *(a1 + 32);
  if (*(v2 + 32) == 1)
  {
    v3 = *(v2 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__OFImageCache__didEnterBackgroundNotification__block_invoke_3;
    block[3] = &unk_279C8A090;
    block[4] = *(a1 + 40);
    dispatch_async(v3, block);
  }

  else
  {
    v4 = [MEMORY[0x277D75128] sharedApplication];
    v5 = *(*(*(a1 + 40) + 8) + 24);

    [v4 endBackgroundTask:v5];
  }
}

uint64_t __47__OFImageCache__didEnterBackgroundNotification__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (void)_willTerminateNotification
{
  if (self->_useAsynchronousSerialDiskSaveQueue)
  {
    v16 = v5;
    v17 = v4;
    v18 = v2;
    v19 = v3;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__OFImageCache__willTerminateNotification__block_invoke;
    v11[3] = &unk_279C8A090;
    v11[4] = &v12;
    v8 = [mEMORY[0x277D75128] beginBackgroundTaskWithExpirationHandler:v11];
    v13[3] = v8;
    if (v8 != *MEMORY[0x277D767B0])
    {
      serialDiskSaveQueue = self->_serialDiskSaveQueue;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __42__OFImageCache__willTerminateNotification__block_invoke_2;
      v10[3] = &unk_279C8A090;
      v10[4] = &v12;
      dispatch_async(serialDiskSaveQueue, v10);
    }

    _Block_object_dispose(&v12, 8);
  }
}

uint64_t __42__OFImageCache__willTerminateNotification__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

uint64_t __42__OFImageCache__willTerminateNotification__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = *(*(*(a1 + 32) + 8) + 24);

  return [v2 endBackgroundTask:v3];
}

- (id)_diskCacheDirectoryForURL:(id)l
{
  diskCacheDirectoryForURLs = self->_diskCacheDirectoryForURLs;
  objc_sync_enter(diskCacheDirectoryForURLs);
  absoluteString = [l absoluteString];
  v7 = [(NSMutableDictionary *)self->_diskCacheDirectoryForURLs objectForKey:absoluteString];
  if (!v7)
  {
    v7 = -[NSString stringByAppendingPathComponent:](self->_diskCacheDirectory, "stringByAppendingPathComponent:", [objc_msgSend(absoluteString "sha1HashData")]);
    [(NSMutableDictionary *)self->_diskCacheDirectoryForURLs setObject:v7 forKey:absoluteString];
  }

  objc_sync_exit(diskCacheDirectoryForURLs);
  return v7;
}

- (id)_diskCacheFilePathForURL:(id)l withResolution:(unint64_t)resolution
{
  if (self->_imageFormat == 1)
  {
    v5 = @".png";
  }

  else
  {
    v5 = @".jpg";
  }

  v6 = [(OFImageCache *)self _diskCacheDirectoryForURL:l];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu%@", resolution, v5];

  return [v6 stringByAppendingPathComponent:v7];
}

- (id)_diskCacheResolutionsForURL:(id)l
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v16 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v5 = [v16 subpathsOfDirectoryAtPath:-[OFImageCache _diskCacheDirectoryForURL:](self error:{"_diskCacheDirectoryForURL:", l), &v21}];
  array = [MEMORY[0x277CBEB18] array];
  imageFormat = self->_imageFormat;
  v17 = 0u;
  v18 = 0u;
  if (imageFormat == 1)
  {
    v8 = @".png";
  }

  else
  {
    v8 = @".jpg";
  }

  v19 = 0uLL;
  v20 = 0uLL;
  v9 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v5);
        }

        lastPathComponent = [*(*(&v17 + 1) + 8 * i) lastPathComponent];
        if ([lastPathComponent hasSuffix:v8])
        {
          v14 = [lastPathComponent rangeOfString:@"."];
          [array addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", objc_msgSend(objc_msgSend(lastPathComponent, "substringToIndex:", v14), "longLongValue"))}];
        }
      }

      v10 = [v5 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  [array sortUsingSelector:sel_compare_];

  return array;
}

- (void)invalidateMemoryCaches
{
  diskCacheDirectoryForURLs = self->_diskCacheDirectoryForURLs;
  objc_sync_enter(diskCacheDirectoryForURLs);
  [(NSMutableDictionary *)self->_diskCacheDirectoryForURLs removeAllObjects];

  objc_sync_exit(diskCacheDirectoryForURLs);
}

- (void)invalidateDiskCaches
{
  objc_sync_enter(self);
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = 0;
  if ([v3 fileExistsAtPath:self->_diskCacheDirectory])
  {
    v4 = [v3 removeItemAtPath:self->_diskCacheDirectory error:&v8];
    if (OFLoggerLevel < 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if ((v5 & 1) == 0)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 311, @"Failed to cleanup thumbnails disk caches %@: %@", self->_diskCacheDirectory, [v8 localizedDescription]);
    }

    v6 = [v3 createDirectoryAtPath:self->_diskCacheDirectory withIntermediateDirectories:1 attributes:0 error:&v8];
    if (OFLoggerLevel < 4)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 316, @"Failed to create thumbnail disk cache %@: %@", self->_diskCacheDirectory, [v8 localizedDescription]);
    }
  }

  objc_sync_exit(self);
}

- (void)invalidateDiskCacheForURL:(id)l
{
  if (l)
  {
    objc_sync_enter(self);
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v9 = 0;
    v6 = [(OFImageCache *)self _diskCacheDirectoryForURL:l];
    if ([v5 fileExistsAtPath:v6])
    {
      v7 = [v5 removeItemAtPath:v6 error:&v9];
      if (OFLoggerLevel < 4)
      {
        v8 = 1;
      }

      else
      {
        v8 = v7;
      }

      if ((v8 & 1) == 0)
      {
        +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 341, @"Failed to cleanup thumbnails disk cache %@: %@", v6, [v9 localizedDescription]);
      }
    }

    objc_sync_exit(self);
  }
}

+ (unint64_t)alignResolution:(unint64_t)resolution
{
  v3 = 2048;
  if (resolution <= 0x7FF)
  {
    v3 = (((resolution & 0xFFFFFFFFFFFFF87FLL) + 127) & 0xFFFFFFFFFFFFFF80) + (resolution & 0x780);
  }

  if (resolution >= 0x80)
  {
    return v3;
  }

  else
  {
    return 128;
  }
}

+ (unint64_t)bestResolutionForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_opt_class();
  if (width >= height)
  {
    v6 = width;
  }

  else
  {
    v6 = height;
  }

  return [v5 alignResolution:v6];
}

- (void)purgeDiskCache:(unint64_t)cache progressBlock:(id)block
{
  v35 = *MEMORY[0x277D85DE8];
  objc_sync_enter(self);
  obj = self;
  if (self->_diskCacheDirectory)
  {
    v25 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->_diskCacheDirectory];
    v7 = *MEMORY[0x277CBE8E8];
    v8 = *MEMORY[0x277CBE7A8];
    v9 = [v25 enumeratorAtURL:v6 includingPropertiesForKeys:objc_msgSend(MEMORY[0x277CBEA60] options:"arrayWithObjects:" errorHandler:{*MEMORY[0x277CBE8E8], *MEMORY[0x277CBE7A8], 0), 6, 0}];
    cacheCopy = cache;
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v33 = 0;
    if (self->_imageFormat == 1)
    {
      v10 = @"png";
    }

    else
    {
      v10 = @"jpg";
    }

    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v29 + 1) + 8 * i);
          v28 = 0;
          [v14 getResourceValue:&v28 forKey:v7 error:0];
          if ([objc_msgSend(v28 "pathExtension")])
          {
            v27 = 0;
            [v14 getResourceValue:&v27 forKey:v8 error:0];
            if (v27)
            {
              [v26 addObject:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v14, @"url", v27, @"date", 0)}];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v11);
    }

    if ([v26 count] >= cacheCopy)
    {
      [v26 sortUsingComparator:&__block_literal_global_4];
      if ([v26 count] > cacheCopy)
      {
        v15 = [v26 count];
        v28 = 0;
        v16 = v15 - cacheCopy;
        if (v15 != cacheCopy)
        {
          v17 = 1;
          do
          {
            v18 = [objc_msgSend(v26 objectAtIndex:{v17 - 1), "valueForKeyPath:", @"url"}];
            if ([v25 fileExistsAtPath:{objc_msgSend(v18, "path")}])
            {
              v19 = [v25 removeItemAtURL:v18 error:&v28];
              v20 = OFLoggerLevel < 4 ? 1 : v19;
              if ((v20 & 1) == 0)
              {
                +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 445, @"Failed to cleanup image disk cache %@: %@", v18, [v28 localizedDescription]);
              }
            }

            if (block)
            {
              (*(block + 2))(block, &v33, v17 / v16);
            }

            if (v33)
            {
              break;
            }
          }

          while (v16 != v17++);
        }
      }
    }

    else
    {
    }
  }

  objc_sync_exit(obj);
}

uint64_t __45__OFImageCache_purgeDiskCache_progressBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:@"date"];
  v4 = [a2 objectForKey:@"date"];

  return [v3 compare:v4];
}

- (void)setImage:(CGImage *)image withResolution:(unint64_t)resolution forURL:(id)l
{
  if (image && resolution && l)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v7 = __47__OFImageCache_setImage_withResolution_forURL___block_invoke;
    v8 = &unk_279C8A0D8;
    selfCopy = self;
    lCopy = l;
    resolutionCopy = resolution;
    imageCopy = image;
    CGImageRetain(image);
    if (self->_useAsynchronousSerialDiskSaveQueue)
    {
      dispatch_async(self->_serialDiskSaveQueue, v6);
    }

    else
    {
      v7(v6);
    }
  }
}

void __47__OFImageCache_setImage_withResolution_forURL___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = 0;
  v4 = [*(a1 + 32) _diskCacheFilePathForURL:*(a1 + 40) withResolution:*(a1 + 48)];
  v5 = [v4 stringByDeletingLastPathComponent];
  v8 = 0;
  if ([v3 fileExistsAtPath:v5 isDirectory:&v8] & 1) != 0 || (objc_msgSend(v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v5, 1, 0, &v9))
  {
    v6 = *(*(a1 + 32) + 40);
    if (v6 == 1)
    {
      v7 = OFCGImagePNGRepresentation(*(a1 + 56));
    }

    else if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = OFCGImageJPEGRepresentation(*(a1 + 56), 0.800000012);
    }

    if (![(NSData *)v7 writeToFile:v4 options:1 error:&v9]&& OFLoggerLevel >= 4)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 512, @"Failed to save image disk cache %@: %@", v4, [v9 localizedDescription]);
    }

    CGImageRelease(*(a1 + 56));
  }

  else
  {
    if (OFLoggerLevel >= 4)
    {
      +[OFLogger logMessageWithLevel:file:line:andFormat:](OFLogger, "logMessageWithLevel:file:line:andFormat:", 4, "/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusFoundation/Framework/Caching/OFImageCache.m", 489, @"Failed to create images disk cache %@: %@", v5, [v9 localizedDescription]);
    }

    CGImageRelease(*(a1 + 56));
  }

  objc_autoreleasePoolPop(v2);
}

- (CGImage)imageForURL:(id)l withResolution:(unint64_t)resolution
{
  v4 = [(OFImageCache *)self _diskCacheFilePathForURL:l withResolution:resolution];
  v5 = OFCGImageCreateWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:v4], 1);

  return v5;
}

- (BOOL)hasImageForURL:(id)l withResolution:(unint64_t)resolution
{
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  LOBYTE(resolution) = [v7 fileExistsAtPath:{-[OFImageCache _diskCacheFilePathForURL:withResolution:](self, "_diskCacheFilePathForURL:withResolution:", l, resolution)}];

  return resolution;
}

- (CGImage)imageFromBestDiskCacheForURL:(id)l withResolution:(unint64_t)resolution
{
  if (!l)
  {
    return 0;
  }

  v7 = [(OFImageCache *)self _diskCacheResolutionsForURL:?];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  if (![v7 count])
  {
    return 0;
  }

  v9 = [objc_msgSend(v8 "lastObject")];
  if (v9 <= resolution)
  {
    return 0;
  }

  v10 = [(OFImageCache *)self _diskCacheFilePathForURL:l withResolution:v9];
  ThumbnailWithURL = OFCGImageCreateThumbnailWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:v10], resolution, 1);

  return ThumbnailWithURL;
}

- (CGImage)bestImageDiskCacheForURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v5 = [(OFImageCache *)self _diskCacheResolutionsForURL:?];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (![v5 count])
  {
    return 0;
  }

  v7 = [objc_msgSend(v6 "lastObject")];
  v8 = [(OFImageCache *)self _diskCacheFilePathForURL:l withResolution:v7];
  ThumbnailWithURL = OFCGImageCreateThumbnailWithURL([MEMORY[0x277CBEBC0] fileURLWithPath:v8], v7, 1);

  return ThumbnailWithURL;
}

@end