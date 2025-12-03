@interface TPSImageAssetController
+ (id)dataCacheForIdentifier:(id)identifier;
+ (id)defaultInMemoryImageCache;
+ (id)formattedDataForPath:(id)path identifier:(id)identifier priority:(float)priority completionHandler:(id)handler;
+ (id)getImageForIdentifier:(id)identifier;
+ (id)imageFromMemoryCacheForIdentifier:(id)identifier;
+ (void)addInMemoryCacheForImage:(id)image identifier:(id)identifier cost:(unint64_t)cost;
+ (void)removeInMemoryCache;
@end

@implementation TPSImageAssetController

+ (id)defaultInMemoryImageCache
{
  if (defaultInMemoryImageCache_predicate != -1)
  {
    +[TPSImageAssetController defaultInMemoryImageCache];
  }

  v3 = defaultInMemoryImageCache_gInMemoryImageCache;

  return v3;
}

uint64_t __52__TPSImageAssetController_defaultInMemoryImageCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = defaultInMemoryImageCache_gInMemoryImageCache;
  defaultInMemoryImageCache_gInMemoryImageCache = v0;

  v2 = defaultInMemoryImageCache_gInMemoryImageCache;

  return [v2 setTotalCostLimit:31457280];
}

+ (void)removeInMemoryCache
{
  v2 = +[TPSImageAssetController defaultInMemoryImageCache];
  [v2 removeAllObjects];
}

+ (void)addInMemoryCacheForImage:(id)image identifier:(id)identifier cost:(unint64_t)cost
{
  imageCopy = image;
  identifierCopy = identifier;
  if (imageCopy)
  {
    v8 = +[TPSImageAssetController defaultInMemoryImageCache];
    v9 = v8;
    if (cost)
    {
      [v8 setObject:imageCopy forKey:identifierCopy cost:cost];
    }

    else
    {
      [v8 setObject:imageCopy forKey:identifierCopy];
    }
  }
}

+ (id)imageFromMemoryCacheForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[TPSImageAssetController defaultInMemoryImageCache];
  v5 = [v4 objectForKey:identifierCopy];

  return v5;
}

+ (id)getImageForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [TPSImageAssetController imageFromMemoryCacheForIdentifier:identifierCopy];
  if (!v4)
  {
    mEMORY[0x277D716A0] = [MEMORY[0x277D716A0] sharedInstance];
    v6 = [mEMORY[0x277D716A0] dataCacheForIdentifier:identifierCopy];

    mEMORY[0x277D716A0]2 = [MEMORY[0x277D716A0] sharedInstance];
    v8 = [mEMORY[0x277D716A0]2 cacheFileURLForDataCache:v6];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277D755B8]);
      path = [v8 path];
      v4 = [v9 initWithContentsOfFile:path];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)dataCacheForIdentifier:(id)identifier
{
  v3 = MEMORY[0x277D716A0];
  identifierCopy = identifier;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance dataCacheForIdentifier:identifierCopy];

  return v6;
}

+ (id)formattedDataForPath:(id)path identifier:(id)identifier priority:(float)priority completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = MEMORY[0x277D716A0];
  pathCopy = path;
  sharedInstance = [v11 sharedInstance];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke;
  v19[3] = &unk_278451370;
  v20 = identifierCopy;
  v21 = handlerCopy;
  v14 = handlerCopy;
  v15 = identifierCopy;
  *&v16 = priority;
  v17 = [sharedInstance formattedDataForPath:pathCopy identifier:v15 attributionIdentifier:0 priority:v19 completionHandler:v16];

  return v17;
}

void __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v14;
    v19 = dispatch_get_global_queue(0, 0);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke_2;
    v21[3] = &unk_278451348;
    v22 = v18;
    v23 = *(a1 + 32);
    v28 = *(a1 + 40);
    v24 = v13;
    v25 = v15;
    v29 = a5;
    v26 = v16;
    v27 = v17;
    dispatch_async(v19, v21);
  }

  else
  {
    v20 = *(a1 + 40);
    if (v20)
    {
      (*(v20 + 16))(v20, v13, 0, v15, a5, v16, v17);
    }
  }
}

void __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D755B8]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithContentsOfFile:v3];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke_3;
  v12[3] = &unk_278451348;
  v13 = v4;
  v5 = *(a1 + 40);
  v17 = *(a1 + 80);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v18 = *(a1 + 88);
  v8 = *(a1 + 64);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = *(a1 + 72);
  v11 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

uint64_t __86__TPSImageAssetController_formattedDataForPath_identifier_priority_completionHandler___block_invoke_3(void *a1)
{
  v2 = [MEMORY[0x277D717D8] sharedInstance];
  v3 = [v2 shouldIgnoreInMemoryCaching];

  if ((v3 & 1) == 0)
  {
    [TPSImageAssetController addInMemoryCacheForImage:a1[4] identifier:a1[5] cost:200];
  }

  result = a1[10];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

@end