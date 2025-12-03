@interface IMImageStore
+ (id)defaultStore;
+ (unint64_t)_memorySize;
- (BOOL)disableMemoryCache;
- (BOOL)hasItemForKey:(id)key;
- (BOOL)hasItemForKey:(id)key size:(CGSize)size modifier:(id)modifier;
- (BOOL)isEmpty;
- (IMImageStore)init;
- (IMImageStore)initWithName:(id)name;
- (IMImageStore)initWithName:(id)name basePath:(id)path maxImageDimensionInPixels:(double)pixels maxConcurrentOperations:(unint64_t)operations alternativeSizeBlock:(id)block;
- (id)_createModifiedImageFromSourceKey:(id)key newImageKey:(id)imageKey modifier:(id)modifier size:(CGSize)size resizeOptions:(int)options;
- (id)_createScaledImageFromSourceKey:(id)key newImageKey:(id)imageKey size:(CGSize)size resizeOptions:(int)options;
- (id)_keyForSize:(CGSize)size baseKey:(id)key modifier:(id)modifier;
- (id)_loadDiskCacheImageForKey:(id)key expectImageExists:(BOOL)exists;
- (id)_performImagingTransactionNamed:(id)named block:(id)block;
- (id)fullName;
- (id)imageForKey:(id)key;
- (id)imageForKey:(id)key size:(CGSize)size;
- (id)imageForKey:(id)key size:(CGSize)size modifier:(id)modifier;
- (id)imageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier;
- (id)imageInMemoryForKey:(id)key size:(CGSize)size modifier:(id)modifier;
- (id)imageUrlForKey:(id)key;
- (void)_addImage:(id)image toMemoryCacheWithKey:(id)key;
- (void)addImage:(id)image forKey:(id)key persist:(BOOL)persist discardTransparency:(BOOL)transparency;
- (void)addImagesWithSourceUrl:(id)url forKeys:(id)keys removeOldItems:(BOOL)items discardTransparency:(BOOL)transparency completion:(id)completion;
- (void)asyncImageForKey:(id)key completionHandler:(id)handler;
- (void)asyncImageForKey:(id)key size:(CGSize)size completionHandler:(id)handler;
- (void)asyncImageForKey:(id)key size:(CGSize)size modifier:(id)modifier completionHandler:(id)handler;
- (void)asyncImageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier completionHandler:(id)handler;
- (void)asyncImageForKey:(id)key squareDimension:(double)dimension cacheKeyModifier:(id)modifier completionHandler:(id)handler;
- (void)asyncImageURLForKey:(id)key completionHandler:(id)handler;
- (void)asyncImageURLForKey:(id)key squareDimension:(double)dimension cacheKeyModifier:(id)modifier completionHandler:(id)handler;
- (void)clearCache;
- (void)configureMemoryCache;
- (void)invalidateImageAtURL:(id)l;
- (void)invalidateImageForKey:(id)key;
- (void)memoryWarning;
- (void)onQueueInvalidateImageForKey:(id)key;
- (void)performWhenURLAvailableForImageForKey:(id)key block:(id)block;
- (void)removeItemForKey:(id)key;
- (void)removeItemsWithPrefx:(id)prefx;
- (void)setDisableMemoryCache:(BOOL)cache;
@end

@implementation IMImageStore

- (IMImageStore)init
{
  defaultName = [objc_opt_class() defaultName];
  v4 = [(IMImageStore *)self initWithName:defaultName];

  return v4;
}

- (void)configureMemoryCache
{
  v3 = objc_alloc_init(IMMemoryCache);
  memoryCache = self->_memoryCache;
  self->_memoryCache = v3;

  fullName = [(IMImageStore *)self fullName];
  memoryCache = [(IMImageStore *)self memoryCache];
  [memoryCache setName:fullName];

  v7 = +[IMImageStore _memorySize];
  memoryCache2 = [(IMImageStore *)self memoryCache];
  [memoryCache2 setTotalCostLimit:v7];
}

- (id)fullName
{
  v2 = MEMORY[0x277CCACA8];
  name = [(IMImageStore *)self name];
  v4 = [v2 stringWithFormat:@"IMImageStore-%@", name];

  return v4;
}

+ (unint64_t)_memorySize
{
  if (physicalMemory() >= 0x3B9ACA00)
  {
    return 0x4000000;
  }

  else
  {
    return 0x2000000;
  }
}

+ (id)defaultStore
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__IMImageStore_defaultStore__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultStore_onceToken != -1)
  {
    dispatch_once(&defaultStore_onceToken, block);
  }

  v2 = defaultStore_defaultStore;

  return v2;
}

uint64_t __28__IMImageStore_defaultStore__block_invoke(uint64_t a1)
{
  defaultStore_defaultStore = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (IMImageStore)initWithName:(id)name
{
  nameCopy = name;
  defaultBasePath = [objc_opt_class() defaultBasePath];
  [objc_opt_class() defaultMaxImageDimensionInPixels];
  v7 = v6;
  defaultMaxConcurrentOperations = [objc_opt_class() defaultMaxConcurrentOperations];
  defaultAlternativeSizeBlock = [objc_opt_class() defaultAlternativeSizeBlock];
  v10 = [(IMImageStore *)self initWithName:nameCopy basePath:defaultBasePath maxImageDimensionInPixels:defaultMaxConcurrentOperations maxConcurrentOperations:defaultAlternativeSizeBlock alternativeSizeBlock:v7];

  return v10;
}

- (IMImageStore)initWithName:(id)name basePath:(id)path maxImageDimensionInPixels:(double)pixels maxConcurrentOperations:(unint64_t)operations alternativeSizeBlock:(id)block
{
  nameCopy = name;
  pathCopy = path;
  blockCopy = block;
  v33.receiver = self;
  v33.super_class = IMImageStore;
  v15 = [(IMImageStore *)&v33 init];
  if (v15)
  {
    v16 = [nameCopy copy];
    name = v15->_name;
    v15->_name = v16;

    [(IMImageStore *)v15 configureMemoryCache];
    v18 = [IMImageDiskCache alloc];
    fullName = [(IMImageStore *)v15 fullName];
    v20 = [pathCopy stringByAppendingPathComponent:fullName];
    v21 = [(IMImageDiskCache *)v18 initWithBasePath:v20 maxImageDimensionInPixels:pixels];
    diskCache = v15->_diskCache;
    v15->_diskCache = v21;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v15 selector:sel_memoryWarning name:*MEMORY[0x277D3DA68] object:0];

    v24 = objc_opt_new();
    [(IMImageStore *)v15 setFetchOperationQueue:v24];

    fetchOperationQueue = [(IMImageStore *)v15 fetchOperationQueue];
    [fetchOperationQueue setMaxConcurrentOperationCount:operations];

    v26 = dispatch_get_global_queue(0, 0);
    fetchOperationQueue2 = [(IMImageStore *)v15 fetchOperationQueue];
    [fetchOperationQueue2 setUnderlyingQueue:v26];

    fetchOperationQueue3 = [(IMImageStore *)v15 fetchOperationQueue];
    [fetchOperationQueue3 setName:@"com.apple.podcasts.IMImageStore"];

    fetchOperationQueue4 = [(IMImageStore *)v15 fetchOperationQueue];
    [fetchOperationQueue4 setSuspended:0];

    v30 = _Block_copy(blockCopy);
    alternativeSize = v15->_alternativeSize;
    v15->_alternativeSize = v30;

    [(IMImageStore *)v15 setMaxImageDimensionInPixels:pixels];
  }

  return v15;
}

- (void)setDisableMemoryCache:(BOOL)cache
{
  cacheCopy = cache;
  memoryCache = [(IMImageStore *)self memoryCache];

  if (cacheCopy)
  {
    if (memoryCache)
    {
      memoryCache2 = [(IMImageStore *)self memoryCache];
      [memoryCache2 removeAllObjects];

      memoryCache = self->_memoryCache;
      self->_memoryCache = 0;
    }
  }

  else if (!memoryCache)
  {

    [(IMImageStore *)self configureMemoryCache];
  }
}

- (BOOL)disableMemoryCache
{
  memoryCache = [(IMImageStore *)self memoryCache];
  v3 = memoryCache == 0;

  return v3;
}

- (void)addImage:(id)image forKey:(id)key persist:(BOOL)persist discardTransparency:(BOOL)transparency
{
  transparencyCopy = transparency;
  imageCopy = image;
  keyCopy = key;
  v11 = imageCopy;
  v12 = keyCopy;
  if (imageCopy && keyCopy)
  {
    if (!persist)
    {
      if (transparencyCopy)
      {
        whiteColor = [MEMORY[0x277D75348] whiteColor];
        v18 = [imageCopy im_imageWithBackgroundColor:whiteColor];

        v11 = v18;
      }

      selfCopy2 = self;
      v16 = v11;
      imageCopy = v11;
      goto LABEL_10;
    }

    diskCache = [(IMImageStore *)self diskCache];
    v14 = [diskCache addImage:imageCopy forKey:v12];

    if ((v14 & 1) == 0 && !transparencyCopy)
    {
      selfCopy2 = self;
      v16 = imageCopy;
LABEL_10:
      [(IMImageStore *)selfCopy2 _addImage:v16 toMemoryCacheWithKey:v12];
    }
  }
}

- (void)addImagesWithSourceUrl:(id)url forKeys:(id)keys removeOldItems:(BOOL)items discardTransparency:(BOOL)transparency completion:(id)completion
{
  transparencyCopy = transparency;
  itemsCopy = items;
  v49 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v14 = completionCopy;
  v39 = v14;
  keysCopy = keys;
  v16 = _Block_copy(aBlock);
  v17 = [keysCopy objectsPassingTest:&__block_literal_global_30];

  imageCache = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = urlCopy;
    v43 = 2112;
    v44 = v17;
    v45 = 1024;
    v46 = itemsCopy;
    v47 = 1024;
    v48 = transparencyCopy;
    _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "[Store] addImagesWithSourceUrl: got store-image request (fileUrl=%@, keys=%@, removeOldItem=%d, discardTransparency=%d", buf, 0x22u);
  }

  if (urlCopy && [v17 count])
  {
    if (itemsCopy)
    {
      v29 = transparencyCopy;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v19 = v17;
      v20 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(v19);
            }

            [(IMImageStore *)self removeItemsWithPrefx:*(*(&v34 + 1) + 8 * i)];
          }

          v21 = [v19 countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v21);
      }

      transparencyCopy = v29;
    }

    imageCache2 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = urlCopy;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "[Store] addImagesWithSourceUrl: adding to disk-cache (fileUrl = %@, keys=%@)", buf, 0x16u);
    }

    diskCache = [(IMImageStore *)self diskCache];
    anyObject = [v17 anyObject];
    v27 = [(IMImageStore *)self requireSquareImages:anyObject];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke_32;
    v30[3] = &unk_2782BDB10;
    v31 = urlCopy;
    v32 = v17;
    v33 = v16;
    [diskCache addImagesWithSourceUrl:v31 forKeys:v32 discardTransparency:transparencyCopy enforceSquare:v27 completion:v30];
  }

  else
  {
    imageCache3 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = urlCopy;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_21B365000, imageCache3, OS_LOG_TYPE_ERROR, "[Store] addImagesWithSourceUrl: invalid requests (fileUrl = %@, validKeys=%@), bailing.", buf, 0x16u);
    }

    (*(v16 + 2))(v16, 0);
  }
}

uint64_t __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke_32(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[5];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_21B365000, v2, OS_LOG_TYPE_DEFAULT, "[Store] addImagesWithSourceUrl: finished adding to disk-cache (fileUrl = %@, keys=%@)", &v6, 0x16u);
  }

  return (*(a1[6] + 16))();
}

- (id)imageForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    memoryCache = [(IMImageStore *)self memoryCache];
    v6 = [memoryCache objectForKey:keyCopy];

    if (!v6)
    {
      v6 = [(IMImageStore *)self _loadDiskCacheImageForKey:keyCopy expectImageExists:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForKey:(id)key size:(CGSize)size
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  v8 = -[IMImageStore imageForKey:size:resizeOptions:](self, "imageForKey:size:resizeOptions:", keyCopy, [objc_opt_class() defaultImageResizeOptions], width, height);

  return v8;
}

- (id)imageForKey:(id)key size:(CGSize)size modifier:(id)modifier
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  v9 = -[IMImageStore imageForKey:size:resizeOptions:modifier:](self, "imageForKey:size:resizeOptions:modifier:", keyCopy, [objc_opt_class() defaultImageResizeOptions], 0, width, height);

  return v9;
}

- (id)imageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier
{
  v7 = *&options;
  height = size.height;
  width = size.width;
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modifierCopy = modifier;
  if (![keyCopy length])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_14;
  }

  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      v27 = 134218240;
      v28 = width;
      v29 = 2048;
      v30 = height;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v27, 0x16u);
    }

    goto LABEL_10;
  }

  height = [(IMImageStore *)self _keyForSize:keyCopy baseKey:modifierCopy modifier:width, height];
  v17 = [(IMImageStore *)self imageForKey:height];
  if (!v17)
  {
    alternativeSize = [(IMImageStore *)self alternativeSize];
    [(IMImageStore *)self maxImageDimensionInPixels];
    v21 = alternativeSize[2](alternativeSize, width, height, v20);
    v23 = v22;

    if (width != v21 || height != v23)
    {
      v25 = [(IMImageStore *)self _keyForSize:keyCopy baseKey:modifierCopy modifier:v21, v23];

      v26 = [(IMImageStore *)self imageForKey:v25];
      if (v26)
      {
        v15 = v26;
        height = v25;
        goto LABEL_13;
      }

      height = v25;
      height = v23;
      width = v21;
    }

    if ([modifierCopy hasModifications])
    {
      [(IMImageStore *)self _createModifiedImageFromSourceKey:keyCopy newImageKey:height modifier:modifierCopy size:v7 resizeOptions:width, height];
    }

    else
    {
      [(IMImageStore *)self _createScaledImageFromSourceKey:keyCopy newImageKey:height size:v7 resizeOptions:width, height];
    }
    v17 = ;
  }

  v15 = v17;
LABEL_13:

LABEL_14:

  return v15;
}

- (id)_createModifiedImageFromSourceKey:(id)key newImageKey:(id)imageKey modifier:(id)modifier size:(CGSize)size resizeOptions:(int)options
{
  v7 = *&options;
  height = size.height;
  width = size.width;
  imageKeyCopy = imageKey;
  modifierCopy = modifier;
  height = [(IMImageStore *)self imageForKey:key size:v7 resizeOptions:width, height];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__IMImageStore__createModifiedImageFromSourceKey_newImageKey_modifier_size_resizeOptions___block_invoke;
  v21[3] = &unk_2782BDB38;
  v22 = height;
  v23 = modifierCopy;
  selfCopy = self;
  v25 = imageKeyCopy;
  v16 = imageKeyCopy;
  v17 = modifierCopy;
  v18 = height;
  v19 = [(IMImageStore *)self _performImagingTransactionNamed:@"image blur" block:v21];

  return v19;
}

id __90__IMImageStore__createModifiedImageFromSourceKey_newImageKey_modifier_size_resizeOptions___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) imageFromSourceImage:?];
    if (v2)
    {
      [*(a1 + 48) addImage:v2 forKey:*(a1 + 56)];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_createScaledImageFromSourceKey:(id)key newImageKey:(id)imageKey size:(CGSize)size resizeOptions:(int)options
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  imageKeyCopy = imageKey;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__IMImageStore__createScaledImageFromSourceKey_newImageKey_size_resizeOptions___block_invoke;
  v17[3] = &unk_2782BDB60;
  v17[4] = self;
  v18 = keyCopy;
  v20 = width;
  v21 = height;
  v19 = imageKeyCopy;
  optionsCopy = options;
  v13 = imageKeyCopy;
  v14 = keyCopy;
  v15 = [(IMImageStore *)self _performImagingTransactionNamed:@"image resize" block:v17];

  return v15;
}

id __79__IMImageStore__createScaledImageFromSourceKey_newImageKey_size_resizeOptions___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) imageForKey:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 64);
    [v2 size];
    if (v4 <= v5 && (v6 = *(a1 + 56), [v3 size], v6 <= v7))
    {
      v9 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v12 = NSStringFromCGSize(*(a1 + 56));
        v14 = 138412802;
        v15 = v10;
        v16 = 2112;
        v17 = v11;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "[ImageResize] in-memory image resizing in _createScaledImageFromSourceKey: (sourceImageKey = %@, newImageKey = %@, size = %@)", &v14, 0x20u);
      }

      v8 = [v3 imageWithSize:*(a1 + 72) resizeOptions:{*(a1 + 56), *(a1 + 64)}];
      [*(a1 + 32) addImage:v8 forKey:*(a1 + 48)];
    }

    else
    {
      v8 = v3;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_performImagingTransactionNamed:(id)named block:(id)block
{
  namedCopy = named;
  v6 = namedCopy;
  if (block)
  {
    v7 = @"unknown transaction";
    if (namedCopy)
    {
      v7 = namedCopy;
    }

    v8 = v7;
    blockCopy = block;

    [(__CFString *)v8 UTF8String];
    v10 = os_transaction_create();
    block = blockCopy[2](blockCopy);

    v6 = v8;
  }

  return block;
}

- (id)imageInMemoryForKey:(id)key size:(CGSize)size modifier:(id)modifier
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modifierCopy = modifier;
  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218240;
      v23 = width;
      v24 = 2048;
      v25 = height;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v22, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    alternativeSize = [(IMImageStore *)self alternativeSize];
    [(IMImageStore *)self maxImageDimensionInPixels];
    v15 = alternativeSize[2](alternativeSize, width, height, v14);
    v17 = v16;

    v18 = [(IMImageStore *)self _keyForSize:keyCopy baseKey:modifierCopy modifier:v15, v17];
    memoryCache = [(IMImageStore *)self memoryCache];
    v20 = [memoryCache objectForKey:v18];
  }

  return v20;
}

- (id)imageUrlForKey:(id)key
{
  keyCopy = key;
  diskCache = [(IMImageStore *)self diskCache];
  v6 = [diskCache imageUrlForKey:keyCopy];

  return v6;
}

- (void)asyncImageForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  fetchOperationQueue = [(IMImageStore *)self fetchOperationQueue];
  v9 = MEMORY[0x277CCA8C8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__IMImageStore_asyncImageForKey_completionHandler___block_invoke;
  v16 = &unk_2782BDBB0;
  objc_copyWeak(&v19, &location);
  v10 = keyCopy;
  v17 = v10;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [v9 blockOperationWithBlock:&v13];
  [fetchOperationQueue addOperation:{v12, v13, v14, v15, v16}];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__IMImageStore_asyncImageForKey_completionHandler___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained imageForKey:a1[4]];
  if (a1[5])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__IMImageStore_asyncImageForKey_completionHandler___block_invoke_2;
    block[3] = &unk_2782BDB88;
    v7 = a1[5];
    v5 = v3;
    v6 = a1[4];
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)asyncImageForKey:(id)key size:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  keyCopy = key;
  -[IMImageStore asyncImageForKey:size:resizeOptions:modifier:completionHandler:](self, "asyncImageForKey:size:resizeOptions:modifier:completionHandler:", keyCopy, [objc_opt_class() defaultImageResizeOptions], 0, handlerCopy, width, height);
}

- (void)asyncImageForKey:(id)key size:(CGSize)size modifier:(id)modifier completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  handlerCopy = handler;
  modifierCopy = modifier;
  keyCopy = key;
  -[IMImageStore asyncImageForKey:size:resizeOptions:modifier:completionHandler:](self, "asyncImageForKey:size:resizeOptions:modifier:completionHandler:", keyCopy, [objc_opt_class() defaultImageResizeOptions], modifierCopy, handlerCopy, width, height);
}

- (void)asyncImageForKey:(id)key size:(CGSize)size resizeOptions:(int)options modifier:(id)modifier completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  modifierCopy = modifier;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  fetchOperationQueue = [(IMImageStore *)self fetchOperationQueue];
  v17 = MEMORY[0x277CCA8C8];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __79__IMImageStore_asyncImageForKey_size_resizeOptions_modifier_completionHandler___block_invoke;
  v25 = &unk_2782BDBD8;
  objc_copyWeak(v29, &location);
  v18 = keyCopy;
  v26 = v18;
  v29[1] = *&width;
  v29[2] = *&height;
  optionsCopy = options;
  v19 = modifierCopy;
  v27 = v19;
  v20 = handlerCopy;
  v28 = v20;
  v21 = [v17 blockOperationWithBlock:&v22];
  [fetchOperationQueue addOperation:{v21, v22, v23, v24, v25}];

  objc_destroyWeak(v29);
  objc_destroyWeak(&location);
}

void __79__IMImageStore_asyncImageForKey_size_resizeOptions_modifier_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained imageForKey:*(a1 + 32) size:*(a1 + 80) resizeOptions:*(a1 + 40) modifier:{*(a1 + 64), *(a1 + 72)}];
  if (*(a1 + 48))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__IMImageStore_asyncImageForKey_size_resizeOptions_modifier_completionHandler___block_invoke_2;
    block[3] = &unk_2782BDB88;
    v7 = *(a1 + 48);
    v5 = v3;
    v6 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (void)asyncImageForKey:(id)key squareDimension:(double)dimension cacheKeyModifier:(id)modifier completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__IMImageStore_asyncImageForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke;
  v12[3] = &unk_2782BDC00;
  v13 = handlerCopy;
  v11 = handlerCopy;
  [(IMImageStore *)self asyncImageURLForKey:key squareDimension:modifier cacheKeyModifier:v12 completionHandler:dimension];
}

void __84__IMImageStore_asyncImageForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = MEMORY[0x277D755B8];
  v6 = [a2 path];
  v7 = [v5 imageWithContentsOfFile:v6];

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v7, v9);
  }
}

- (void)asyncImageURLForKey:(id)key squareDimension:(double)dimension cacheKeyModifier:(id)modifier completionHandler:(id)handler
{
  keyCopy = key;
  modifierCopy = modifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke;
  aBlock[3] = &unk_2782BDC28;
  v13 = handlerCopy;
  v33 = v13;
  v14 = keyCopy;
  v32 = v14;
  v15 = _Block_copy(aBlock);
  dimension = [(IMImageStore *)self _keyForSize:v14 baseKey:0 modifier:dimension, dimension];
  modifierCopy = dimension;
  if ([modifierCopy length])
  {
    modifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", dimension, modifierCopy];
  }

  fetchOperationQueue = [(IMImageStore *)self fetchOperationQueue];
  v19 = MEMORY[0x277CCA8C8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke_2;
  v25[3] = &unk_2782BDC78;
  v25[4] = self;
  v26 = dimension;
  v28 = v14;
  v29 = v15;
  v27 = modifierCopy;
  dimensionCopy = dimension;
  v20 = v14;
  v21 = modifierCopy;
  v22 = v15;
  v23 = dimension;
  v24 = [v19 blockOperationWithBlock:v25];
  [fetchOperationQueue addOperation:v24];
}

uint64_t __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 40))
  {
    v7 = v3;
    if (v3)
    {
      v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    }

    else
    {
      v5 = 0;
    }

    (*(*(a1 + 40) + 16))();

    v4 = v7;
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) diskCache];
  if ([v2 hasItemForKey:*(a1 + 40)] && (objc_msgSend(v2, "pathForKey:", *(a1 + 40)), (v3 = objc_claimAutoreleasedReturnValue()) != 0) || objc_msgSend(v2, "hasItemForKey:", *(a1 + 48)) && (objc_msgSend(v2, "pathForKey:", *(a1 + 48)), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = *(*(a1 + 64) + 16);
LABEL_9:
    v5();
    goto LABEL_10;
  }

  v6 = [*(a1 + 32) diskCache];
  v4 = [v6 imageUrlForKey:*(a1 + 56)];

  if (!v4)
  {
    v5 = *(*(a1 + 64) + 16);
    goto LABEL_9;
  }

  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v7 = v2;
  v19 = v7;
  v8 = *(a1 + 72);
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 scale];
  v11 = v10;

  v12 = *(a1 + 48);
  v13 = [*(a1 + 32) requireSquareImages:*(a1 + 56)];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke_51;
  v14[3] = &unk_2782BDC50;
  v17 = v18;
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  [v7 addImageWithSourceUrl:v4 forKey:v12 enforceSquare:v13 maxDimensionInPixels:v14 completion:v8 * v11];

  _Block_object_dispose(v18, 8);
LABEL_10:
}

void __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke_51(void *a1)
{
  if ([*(*(a1[6] + 8) + 40) hasItemForKey:a1[4]])
  {
    v2 = [*(*(a1[6] + 8) + 40) pathForKey:a1[4]];
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;
  (*(a1[5] + 16))();
}

- (void)asyncImageURLForKey:(id)key completionHandler:(id)handler
{
  keyCopy = key;
  handlerCopy = handler;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3042000000;
  v17[3] = __Block_byref_object_copy__52;
  v17[4] = __Block_byref_object_dispose__53;
  objc_initWeak(&v18, self);
  fetchOperationQueue = [(IMImageStore *)self fetchOperationQueue];
  v9 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IMImageStore_asyncImageURLForKey_completionHandler___block_invoke;
  v13[3] = &unk_2782BDCA0;
  v16 = v17;
  v10 = keyCopy;
  v14 = v10;
  v11 = handlerCopy;
  v15 = v11;
  v12 = [v9 blockOperationWithBlock:v13];
  [fetchOperationQueue addOperation:v12];

  _Block_object_dispose(v17, 8);
  objc_destroyWeak(&v18);
}

void __54__IMImageStore_asyncImageURLForKey_completionHandler___block_invoke(void *a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1[6] + 8) + 40));
  v3 = [WeakRetained diskCache];
  v5 = [v3 imageUrlForKey:a1[4]];

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))(v4, v5, a1[4]);
  }
}

- (void)clearCache
{
  memoryCache = [(IMImageStore *)self memoryCache];
  [memoryCache removeAllObjects];

  diskCache = [(IMImageStore *)self diskCache];
  [diskCache clearCache];
}

- (BOOL)hasItemForKey:(id)key size:(CGSize)size modifier:(id)modifier
{
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x277D85DE8];
  if (size.width < 0.00000011920929 || size.height < 0.00000011920929)
  {
    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = width;
      v14 = 2048;
      v15 = height;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v12, 0x16u);
    }

    return 0;
  }

  else
  {
    selfCopy = self;
    v10 = [(IMImageStore *)self _keyForSize:key baseKey:modifier modifier:size.width, size.height];
    LOBYTE(selfCopy) = [(IMImageStore *)selfCopy hasItemForKey:v10];

    return selfCopy;
  }
}

- (BOOL)hasItemForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy length])
  {
    memoryCache = [(IMImageStore *)self memoryCache];
    v6 = [memoryCache objectForKey:keyCopy];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      diskCache = [(IMImageStore *)self diskCache];
      v7 = [diskCache hasItemForKey:keyCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeItemsWithPrefx:(id)prefx
{
  prefxCopy = prefx;
  if ([prefxCopy length])
  {
    memoryCache = [(IMImageStore *)self memoryCache];
    [memoryCache removeObjectsForKeyWithPrefix:prefxCopy];

    diskCache = [(IMImageStore *)self diskCache];
    [diskCache removeItemsWithPrefx:prefxCopy];
  }
}

- (void)removeItemForKey:(id)key
{
  keyCopy = key;
  memoryCache = [(IMImageStore *)self memoryCache];
  [memoryCache removeObjectForKey:keyCopy];

  diskCache = [(IMImageStore *)self diskCache];
  [diskCache removeItemForKey:keyCopy];
}

- (BOOL)isEmpty
{
  diskCache = [(IMImageStore *)self diskCache];
  isEmpty = [diskCache isEmpty];

  return isEmpty;
}

- (id)_keyForSize:(CGSize)size baseKey:(id)key modifier:(id)modifier
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  modifierCopy = modifier;
  if ([keyCopy length])
  {
    defaultCategory2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-{%f, %f}", keyCopy, *&width, *&height];
    if (![modifierCopy hasModifications])
    {
LABEL_5:
      defaultCategory2 = defaultCategory2;
      v14 = defaultCategory2;
      goto LABEL_13;
    }

    modificationCacheKey = [modifierCopy modificationCacheKey];
    if ([modificationCacheKey length])
    {
      v13 = [defaultCategory2 stringByAppendingFormat:@"-%@", modificationCacheKey];

      defaultCategory2 = v13;
      goto LABEL_5;
    }

    defaultCategory = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(defaultCategory, OS_LOG_TYPE_ERROR))
    {
      v29.width = width;
      v29.height = height;
      v16 = NSStringFromCGSize(v29);
      *buf = 138413058;
      selfCopy2 = self;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = keyCopy;
      v24 = 2112;
      v25 = modifierCopy;
      _os_log_impl(&dword_21B365000, defaultCategory, OS_LOG_TYPE_ERROR, "Invalid modifier cache key in call to [%@ _keyForSize:%@]", buf, 0x2Au);
    }

    goto LABEL_11;
  }

  defaultCategory2 = [MEMORY[0x277D3DA88] defaultCategory];
  if (os_log_type_enabled(defaultCategory2, OS_LOG_TYPE_ERROR))
  {
    v28.width = width;
    v28.height = height;
    modificationCacheKey = NSStringFromCGSize(v28);
    *buf = 138413058;
    selfCopy2 = self;
    v20 = 2112;
    v21 = modificationCacheKey;
    v22 = 2112;
    v23 = keyCopy;
    v24 = 2112;
    v25 = modifierCopy;
    _os_log_impl(&dword_21B365000, defaultCategory2, OS_LOG_TYPE_ERROR, "Invalid baseKey encountered in call to [%@ _keyForSize:%@]", buf, 0x2Au);
LABEL_11:
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)memoryWarning
{
  memoryCache = [(IMImageStore *)self memoryCache];
  [memoryCache removeAllObjects];
}

- (void)_addImage:(id)image toMemoryCacheWithKey:(id)key
{
  imageCopy = image;
  keyCopy = key;
  if (![(IMImageStore *)self disableMemoryCache])
  {
    v7 = imageCopy;
    cGImage = [imageCopy CGImage];
    BytesPerRow = CGImageGetBytesPerRow(cGImage);
    v10 = CGImageGetHeight(cGImage) * BytesPerRow;
    memoryCache = [(IMImageStore *)self memoryCache];
    [memoryCache setObject:imageCopy forKey:keyCopy cost:v10];
  }
}

- (id)_loadDiskCacheImageForKey:(id)key expectImageExists:(BOOL)exists
{
  existsCopy = exists;
  v14 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  diskCache = [(IMImageStore *)self diskCache];
  v8 = [diskCache imageForKey:keyCopy];

  if (v8)
  {
    imageCache = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "_loadDiskCacheImageForKey: successfully loaded image forKey: %@", &v12, 0xCu);
    }

    [(IMImageStore *)self _addImage:v8 toMemoryCacheWithKey:keyCopy];
  }

  else if (existsCopy)
  {
    imageCache2 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache2, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_ERROR, "_loadDiskCacheImageForKey: failed to load image forKey: %@", &v12, 0xCu);
    }
  }

  return v8;
}

- (void)performWhenURLAvailableForImageForKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke;
  aBlock[3] = &unk_2782BDC00;
  v8 = blockCopy;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  diskCache = [(IMImageStore *)self diskCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke_2;
  v13[3] = &unk_2782BDCC8;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v15 = v11;
  v12 = keyCopy;
  v14 = v12;
  [diskCache performWhenURLAvailableForImageForKey:v12 block:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

uint64_t __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke_2(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained && (a2 & 1) != 0)
  {
    v5 = [WeakRetained diskCache];
    v6 = [v5 imageUrlForKey:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)invalidateImageForKey:(id)key
{
  keyCopy = key;
  objc_initWeak(&location, self);
  fetchOperationQueue = [(IMImageStore *)self fetchOperationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IMImageStore_invalidateImageForKey___block_invoke;
  v7[3] = &unk_2782BDCF0;
  objc_copyWeak(&v9, &location);
  v6 = keyCopy;
  v8 = v6;
  [fetchOperationQueue addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__IMImageStore_invalidateImageForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onQueueInvalidateImageForKey:*(a1 + 32)];
}

- (void)onQueueInvalidateImageForKey:(id)key
{
  keyCopy = key;
  diskCache = [(IMImageStore *)self diskCache];
  v7 = [diskCache imageUrlForKey:keyCopy];

  v6 = v7;
  if (v7)
  {
    [(IMImageStore *)self invalidateImageAtURL:v7];
    v6 = v7;
  }
}

- (void)invalidateImageAtURL:(id)l
{
  lCopy = l;
  v4 = [lCopy URLByAppendingPathExtension:@"invalidated"];
  data = [MEMORY[0x277CBEA90] data];
  [data writeToURL:v4 atomically:0];
}

@end