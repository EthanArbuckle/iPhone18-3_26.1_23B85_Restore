@interface TSDFrameImageCache
+ (id)sharedFrameImageCache;
- (CGImage)newCachedImageForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 forCALayer:(BOOL)a6 mask:(BOOL)a7;
- (CGImage)setCachedImage:(CGImage *)a3 forFrame:(id)a4 size:(CGSize)a5 viewScale:(double)a6 forCALayer:(BOOL)a7 mask:(BOOL)a8;
- (TSDFrameImageCache)init;
- (id)p_newEntryForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 createIfNeeded:(BOOL)a6;
- (void)dealloc;
- (void)p_didReceiveMemoryWarning:(id)a3;
@end

@implementation TSDFrameImageCache

+ (id)sharedFrameImageCache
{
  result = sharedFrameImageCache_instance;
  if (!sharedFrameImageCache_instance)
  {
    objc_sync_enter(a1);
    if (!sharedFrameImageCache_instance)
    {
      v4 = objc_alloc_init(a1);
      __dmb(0xBu);
      sharedFrameImageCache_instance = v4;
      if (!v4)
      {
        v5 = [MEMORY[0x277D6C290] currentHandler];
        v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDFrameImageCache sharedFrameImageCache]"];
        [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDFrameImageCache.m"), 104, @"Couldn't initialize lazy variable %s", "instance"}];
      }
    }

    objc_sync_exit(a1);
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
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:v2 selector:sel_p_didReceiveMemoryWarning_ name:*MEMORY[0x277D76670] object:{objc_msgSend(MEMORY[0x277D75128], "sharedApplication")}];
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

- (CGImage)newCachedImageForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 forCALayer:(BOOL)a6 mask:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  height = a4.height;
  width = a4.width;
  objc_sync_enter(self);
  v14 = [(TSDFrameImageCache *)self p_newEntryForFrame:a3 size:0 viewScale:width createIfNeeded:height, a5];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 newImageForCALayer:v8 mask:v7];
  }

  else
  {
    v16 = 0;
  }

  objc_sync_exit(self);
  return v16;
}

- (CGImage)setCachedImage:(CGImage *)a3 forFrame:(id)a4 size:(CGSize)a5 viewScale:(double)a6 forCALayer:(BOOL)a7 mask:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  height = a5.height;
  width = a5.width;
  objc_sync_enter(self);
  v16 = [(TSDFrameImageCache *)self p_newEntryForFrame:a4 size:1 viewScale:width createIfNeeded:height, a6];
  [v16 setImage:a3 forCALayer:v9 mask:v8];
  v17 = [v16 newImageForCALayer:v9 mask:v8];

  objc_sync_exit(self);
  return v17;
}

- (id)p_newEntryForFrame:(id)a3 size:(CGSize)a4 viewScale:(double)a5 createIfNeeded:(BOOL)a6
{
  v6 = a6;
  height = a4.height;
  width = a4.width;
  v12 = [(NSMutableArray *)self->mEntries count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [(NSMutableArray *)self->mEntries objectAtIndex:v14];
      v16 = [(TSDFrameImageCacheEntry *)v15 frameSpec];
      if (v16 == [a3 frameSpec])
      {
        [(TSDFrameImageCacheEntry *)v15 assetScale];
        v18 = v17;
        [a3 assetScale];
        if (v18 == v19)
        {
          [(TSDFrameImageCacheEntry *)v15 size];
          if (v21 == width && v20 == height)
          {
            [(TSDFrameImageCacheEntry *)v15 viewScale];
            if (v23 == a5)
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

  if (!v15 && v6)
  {
    v15 = objc_alloc_init(TSDFrameImageCacheEntry);
    -[TSDFrameImageCacheEntry setFrameSpec:](v15, "setFrameSpec:", [a3 frameSpec]);
    [a3 assetScale];
    [(TSDFrameImageCacheEntry *)v15 setAssetScale:?];
    [(TSDFrameImageCacheEntry *)v15 setSize:width, height];
    [(TSDFrameImageCacheEntry *)v15 setViewScale:a5];
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

- (void)p_didReceiveMemoryWarning:(id)a3
{
  objc_sync_enter(self);
  [(NSMutableArray *)self->mEntries removeAllObjects];

  objc_sync_exit(self);
}

@end