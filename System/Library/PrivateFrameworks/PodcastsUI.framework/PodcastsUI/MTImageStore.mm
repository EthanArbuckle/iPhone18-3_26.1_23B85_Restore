@interface MTImageStore
+ (id)defaultBasePath;
+ (id)defaultStore;
+ (unint64_t)defaultMaxConcurrentOperations;
- (MTImageStore)initWithName:(id)name basePath:(id)path maxImageDimensionInPixels:(double)pixels maxConcurrentOperations:(unint64_t)operations alternativeSizeBlock:(id)block;
- (id)imageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier;
- (void)addImage:(id)image forKey:(id)key;
- (void)asyncImageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier completionHandler:(id)handler;
@end

@implementation MTImageStore

+ (id)defaultStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__MTImageStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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
  defaultImageStoreURL = [MEMORY[0x277D3DB18] defaultImageStoreURL];
  uRLByDeletingLastPathComponent = [defaultImageStoreURL URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  return path;
}

+ (unint64_t)defaultMaxConcurrentOperations
{
  if (![MEMORY[0x277D3DB60] isPodcastsApp])
  {
    return 3;
  }

  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___MTImageStore;
  return objc_msgSendSuper2(&v4, sel_defaultMaxConcurrentOperations);
}

- (MTImageStore)initWithName:(id)name basePath:(id)path maxImageDimensionInPixels:(double)pixels maxConcurrentOperations:(unint64_t)operations alternativeSizeBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = MTImageStore;
  v7 = [(IMImageStore *)&v9 initWithName:name basePath:path maxImageDimensionInPixels:operations maxConcurrentOperations:block alternativeSizeBlock:pixels];
  if (v7 && ([MEMORY[0x277D3DB60] isPodcastsApp] & 1) == 0)
  {
    [(IMImageStore *)v7 setDisableMemoryCache:1];
  }

  return v7;
}

- (id)imageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier
{
  v7 = *&options;
  height = size.height;
  width = size.width;
  keyCopy = key;
  modifierCopy = modifier;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    if ([keyCopy isEqualToString:*MEMORY[0x277D3DD30]])
    {
      height = [objc_opt_class() defaultPodcastArtworkWithWidth:width];
    }

    else
    {
      v17.receiver = self;
      v17.super_class = MTImageStore;
      height = [(IMImageStore *)&v17 imageForKey:keyCopy size:v7 resizeOptions:modifierCopy modifier:width, height];
    }

    v15 = height;
  }

  else
  {
    mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
    [mEMORY[0x277D3DA90] logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Asset Caching/Legacy/MTImageStore.m" lineNumber:107 format:@"Image store is not supported on audio accessories. Returning early."];

    v15 = 0;
  }

  return v15;
}

- (void)asyncImageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier completionHandler:(id)handler
{
  v9 = *&options;
  height = size.height;
  width = size.width;
  keyCopy = key;
  modifierCopy = modifier;
  handlerCopy = handler;
  if ([keyCopy isEqualToString:*MEMORY[0x277D3DD30]])
  {
    v16 = [objc_opt_class() defaultPodcastArtworkWithWidth:width];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v16, keyCopy);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = MTImageStore;
    [(IMImageStore *)&v17 asyncImageForKey:keyCopy size:v9 resizeOptions:modifierCopy modifier:handlerCopy completionHandler:width, height];
  }
}

- (void)addImage:(id)image forKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  if ([MEMORY[0x277D3DB60] supportsImageStore])
  {
    if ([(MTImageStore *)self requireSquareImages:keyCopy])
    {
      squareImage = [imageCopy squareImage];

      imageCopy = squareImage;
    }

    v10.receiver = self;
    v10.super_class = MTImageStore;
    [(IMImageStore *)&v10 addImage:imageCopy forKey:keyCopy];
  }

  else
  {
    mEMORY[0x277D3DA90] = [MEMORY[0x277D3DA90] sharedLogger];
    [mEMORY[0x277D3DA90] logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsUI/PodcastsUI/PodcastsUI/Asset Caching/Legacy/MTImageStore.m" lineNumber:138 format:@"Image store is not supported on audio accessories. Returning early."];
  }
}

@end