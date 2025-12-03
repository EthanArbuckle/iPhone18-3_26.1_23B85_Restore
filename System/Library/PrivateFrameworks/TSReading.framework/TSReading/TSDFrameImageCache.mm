@interface TSDFrameImageCache
+ (id)sharedFrameImageCache;
- (CGImage)newCachedImageForFrame:(id)frame size:(CGSize)size viewScale:(double)scale forCALayer:(BOOL)layer mask:(BOOL)mask;
- (CGImage)setCachedImage:(CGImage *)image forFrame:(id)frame size:(CGSize)size viewScale:(double)scale forCALayer:(BOOL)layer mask:(BOOL)mask;
- (TSDFrameImageCache)init;
- (id)p_newEntryForFrame:(id)frame size:(CGSize)size viewScale:(double)scale createIfNeeded:(BOOL)needed;
- (void)dealloc;
- (void)p_didReceiveMemoryWarning:(id)warning;
@end

@implementation TSDFrameImageCache

+ (id)sharedFrameImageCache
{
  result = sharedFrameImageCache_instance;
  if (!sharedFrameImageCache_instance)
  {
    objc_sync_enter(self);
    if (!sharedFrameImageCache_instance)
    {
      v4 = objc_alloc_init(self);
      __dmb(0xBu);
      sharedFrameImageCache_instance = v4;
      if (!v4)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameImageCache sharedFrameImageCache]"];
        [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameImageCache.m"), 104, @"Couldn't initialize lazy variable %s", "instance"}];
      }
    }

    objc_sync_exit(self);
    return sharedFrameImageCache_instance;
  }

  return result;
}

- (TSDFrameImageCache)init
{
  v5.receiver = self;
  v5.super_class = TSDFrameImageCache;
  v2 = [(TSDFrameImageCache *)&v5 init];
  if (v2)
  {
    v2->mEntries = objc_alloc_init(MEMORY[0x277CBEB18]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:{objc_msgSend(MEMORY[0x277D75128], "sharedApplication")}];
  }

  return v2;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3.receiver = self;
  v3.super_class = TSDFrameImageCache;
  [(TSDFrameImageCache *)&v3 dealloc];
}

- (CGImage)newCachedImageForFrame:(id)frame size:(CGSize)size viewScale:(double)scale forCALayer:(BOOL)layer mask:(BOOL)mask
{
  maskCopy = mask;
  layerCopy = layer;
  height = size.height;
  width = size.width;
  objc_sync_enter(self);
  scale = [(TSDFrameImageCache *)self p_newEntryForFrame:frame size:0 viewScale:width createIfNeeded:height, scale];
  v15 = scale;
  if (scale)
  {
    v16 = [scale newImageForCALayer:layerCopy mask:maskCopy];
  }

  else
  {
    v16 = 0;
  }

  objc_sync_exit(self);
  return v16;
}

- (CGImage)setCachedImage:(CGImage *)image forFrame:(id)frame size:(CGSize)size viewScale:(double)scale forCALayer:(BOOL)layer mask:(BOOL)mask
{
  maskCopy = mask;
  layerCopy = layer;
  height = size.height;
  width = size.width;
  objc_sync_enter(self);
  scale = [(TSDFrameImageCache *)self p_newEntryForFrame:frame size:1 viewScale:width createIfNeeded:height, scale];
  [scale setImage:image forCALayer:layerCopy mask:maskCopy];
  v17 = [scale newImageForCALayer:layerCopy mask:maskCopy];

  objc_sync_exit(self);
  return v17;
}

- (id)p_newEntryForFrame:(id)frame size:(CGSize)size viewScale:(double)scale createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  height = size.height;
  width = size.width;
  v12 = [(NSMutableArray *)self->mEntries count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [(NSMutableArray *)self->mEntries objectAtIndex:v14];
      frameSpec = [(TSDFrameImageCacheEntry *)v15 frameSpec];
      if (frameSpec == [frame frameSpec])
      {
        [(TSDFrameImageCacheEntry *)v15 assetScale];
        v18 = v17;
        [frame assetScale];
        if (v18 == v19)
        {
          [(TSDFrameImageCacheEntry *)v15 size];
          if (v21 == width && v20 == height)
          {
            [(TSDFrameImageCacheEntry *)v15 viewScale];
            if (v23 == scale)
            {
              break;
            }
          }
        }
      }

      if (v13 == ++v14)
      {
        goto LABEL_14;
      }
    }

    v24 = v15;
    [(NSMutableArray *)self->mEntries removeObjectAtIndex:v14];
    [(NSMutableArray *)self->mEntries insertObject:v15 atIndex:0];
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  if (!v15 && neededCopy)
  {
    v15 = objc_alloc_init(TSDFrameImageCacheEntry);
    -[TSDFrameImageCacheEntry setFrameSpec:](v15, "setFrameSpec:", [frame frameSpec]);
    [frame assetScale];
    [(TSDFrameImageCacheEntry *)v15 setAssetScale:?];
    [(TSDFrameImageCacheEntry *)v15 setSize:width, height];
    [(TSDFrameImageCacheEntry *)v15 setViewScale:scale];
    if ([(NSMutableArray *)self->mEntries count]>= 0xA)
    {
      do
      {
        [(NSMutableArray *)self->mEntries removeLastObject];
      }

      while ([(NSMutableArray *)self->mEntries count]> 9);
    }

    [(NSMutableArray *)self->mEntries insertObject:v15 atIndex:0];
  }

  return v15;
}

- (void)p_didReceiveMemoryWarning:(id)warning
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->mEntries removeAllObjects];

  objc_sync_exit(self);
}

@end