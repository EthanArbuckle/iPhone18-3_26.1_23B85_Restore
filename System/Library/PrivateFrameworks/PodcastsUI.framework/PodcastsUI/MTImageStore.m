@interface MTImageStore
+ (id)defaultBasePath;
+ (id)defaultStore;
+ (unint64_t)defaultMaxConcurrentOperations;
- (MTImageStore)initWithName:(id)a3 basePath:(id)a4 maxImageDimensionInPixels:(double)a5 maxConcurrentOperations:(unint64_t)a6 alternativeSizeBlock:(id)a7;
- (id)imageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6;
- (void)addImage:(id)a3 forKey:(id)a4;
- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6 completionHandler:(id)a7;
@end

@implementation MTImageStore

+ (id)defaultStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MTImageStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (defaultStore_onceToken_0 != -1)
  {
    dispatch_once(&defaultStore_onceToken_0, block);
  }

  v2 = defaultStore_defaultStore_0;

  return v2;
}

uint64_t __28__MTImageStore_defaultStore__block_invoke(uint64_t a1)
{
  defaultStore_defaultStore_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultBasePath
{
  v2 = [MEMORY[0x277D3DB18] defaultImageStoreURL];
  v3 = [v2 URLByDeletingLastPathComponent];
  v4 = [v3 path];

  return v4;
}

+ (unint64_t)defaultMaxConcurrentOperations
{
  if (![MEMORY[0x277D3DB60] isPodcastsApp])
  {
    return 3;
  }

  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___MTImageStore;
  return objc_msgSendSuper2(&v4, sel_defaultMaxConcurrentOperations);
}

- (MTImageStore)initWithName:(id)a3 basePath:(id)a4 maxImageDimensionInPixels:(double)a5 maxConcurrentOperations:(unint64_t)a6 alternativeSizeBlock:(id)a7
{
  v9.receiver = self;
  v9.super_class = MTImageStore;
  v7 = [(IMImageStore *)&v9 initWithName:a3 basePath:a4 maxImageDimensionInPixels:a6 maxConcurrentOperations:a7 alternativeSizeBlock:a5];
  if (v7 && ([MEMORY[0x277D3DB60] isPodcastsApp] & 1) == 0)
  {
    [(IMImageStore *)v7 setDisableMemoryCache:1];
  }

  return v7;
}

- (id)imageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6
{
  v7 = *&a5;
  height = a4.height;
  width = a4.width;
  v11 = a3;
  v12 = a6;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    if ([v11 isEqualToString:*MEMORY[0x277D3DD30]])
    {
      v13 = [objc_opt_class() defaultPodcastArtworkWithWidth:width];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = MTImageStore;
      v13 = [(IMImageStore *)&v17 imageForKey:v11 size:v7 resizeOptions:v12 modifier:width, height];
    }

    v15 = v13;
  }

  else
  {
    v14 = [MEMORY[0x277D3DA90] sharedLogger];
    [v14 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Asset Caching/Legacy/MTImageStore.m" lineNumber:107 format:@"Image store is not supported on audio accessories. Returning early."];

    v15 = 0;
  }

  return v15;
}

- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6 completionHandler:(id)a7
{
  v9 = *&a5;
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  if ([v13 isEqualToString:*MEMORY[0x277D3DD30]])
  {
    v16 = [objc_opt_class() defaultPodcastArtworkWithWidth:width];
    if (v15)
    {
      v15[2](v15, v16, v13);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MTImageStore;
    [(IMImageStore *)&v17 asyncImageForKey:v13 size:v9 resizeOptions:v14 modifier:v15 completionHandler:width, height];
  }
}

- (void)addImage:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    if ([(MTImageStore *)self requireSquareImages:v7])
    {
      v8 = [v6 squareImage];

      v6 = v8;
    }

    v10.receiver = self;
    v10.super_class = MTImageStore;
    [(IMImageStore *)&v10 addImage:v6 forKey:v7];
  }

  else
  {
    v9 = [MEMORY[0x277D3DA90] sharedLogger];
    [v9 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Asset Caching/Legacy/MTImageStore.m" lineNumber:138 format:@"Image store is not supported on audio accessories. Returning early."];
  }
}

@end