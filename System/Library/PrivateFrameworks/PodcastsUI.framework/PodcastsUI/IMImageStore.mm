@interface IMImageStore
+ (id)defaultStore;
+ (unint64_t)_memorySize;
- (BOOL)disableMemoryCache;
- (BOOL)hasItemForKey:(id)a3;
- (BOOL)hasItemForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5;
- (BOOL)isEmpty;
- (IMImageStore)init;
- (IMImageStore)initWithName:(id)a3;
- (IMImageStore)initWithName:(id)a3 basePath:(id)a4 maxImageDimensionInPixels:(double)a5 maxConcurrentOperations:(unint64_t)a6 alternativeSizeBlock:(id)a7;
- (id)_createModifiedImageFromSourceKey:(id)a3 newImageKey:(id)a4 modifier:(id)a5 size:(CGSize)a6 resizeOptions:(int)a7;
- (id)_createScaledImageFromSourceKey:(id)a3 newImageKey:(id)a4 size:(CGSize)a5 resizeOptions:(int)a6;
- (id)_keyForSize:(CGSize)a3 baseKey:(id)a4 modifier:(id)a5;
- (id)_loadDiskCacheImageForKey:(id)a3 expectImageExists:(BOOL)a4;
- (id)_performImagingTransactionNamed:(id)a3 block:(id)a4;
- (id)fullName;
- (id)imageForKey:(id)a3;
- (id)imageForKey:(id)a3 size:(CGSize)a4;
- (id)imageForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5;
- (id)imageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6;
- (id)imageInMemoryForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5;
- (id)imageUrlForKey:(id)a3;
- (void)_addImage:(id)a3 toMemoryCacheWithKey:(id)a4;
- (void)addImage:(id)a3 forKey:(id)a4 persist:(BOOL)a5 discardTransparency:(BOOL)a6;
- (void)addImagesWithSourceUrl:(id)a3 forKeys:(id)a4 removeOldItems:(BOOL)a5 discardTransparency:(BOOL)a6 completion:(id)a7;
- (void)asyncImageForKey:(id)a3 completionHandler:(id)a4;
- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 completionHandler:(id)a5;
- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5 completionHandler:(id)a6;
- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6 completionHandler:(id)a7;
- (void)asyncImageForKey:(id)a3 squareDimension:(double)a4 cacheKeyModifier:(id)a5 completionHandler:(id)a6;
- (void)asyncImageURLForKey:(id)a3 completionHandler:(id)a4;
- (void)asyncImageURLForKey:(id)a3 squareDimension:(double)a4 cacheKeyModifier:(id)a5 completionHandler:(id)a6;
- (void)clearCache;
- (void)configureMemoryCache;
- (void)invalidateImageAtURL:(id)a3;
- (void)invalidateImageForKey:(id)a3;
- (void)memoryWarning;
- (void)onQueueInvalidateImageForKey:(id)a3;
- (void)performWhenURLAvailableForImageForKey:(id)a3 block:(id)a4;
- (void)removeItemForKey:(id)a3;
- (void)removeItemsWithPrefx:(id)a3;
- (void)setDisableMemoryCache:(BOOL)a3;
@end

@implementation IMImageStore

- (IMImageStore)init
{
  v3 = [objc_opt_class() defaultName];
  v4 = [(IMImageStore *)self initWithName:v3];

  return v4;
}

- (void)configureMemoryCache
{
  v3 = objc_alloc_init(IMMemoryCache);
  memoryCache = self->_memoryCache;
  self->_memoryCache = v3;

  v5 = [(IMImageStore *)self fullName];
  v6 = [(IMImageStore *)self memoryCache];
  [v6 setName:v5];

  v7 = +[IMImageStore _memorySize];
  v8 = [(IMImageStore *)self memoryCache];
  [v8 setTotalCostLimit:v7];
}

- (id)fullName
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(IMImageStore *)self name];
  v4 = [v2 stringWithFormat:@"IMImageStore-%@", v3];

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
  block[4] = a1;
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

- (IMImageStore)initWithName:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() defaultBasePath];
  [objc_opt_class() defaultMaxImageDimensionInPixels];
  v7 = v6;
  v8 = [objc_opt_class() defaultMaxConcurrentOperations];
  v9 = [objc_opt_class() defaultAlternativeSizeBlock];
  v10 = [(IMImageStore *)self initWithName:v4 basePath:v5 maxImageDimensionInPixels:v8 maxConcurrentOperations:v9 alternativeSizeBlock:v7];

  return v10;
}

- (IMImageStore)initWithName:(id)a3 basePath:(id)a4 maxImageDimensionInPixels:(double)a5 maxConcurrentOperations:(unint64_t)a6 alternativeSizeBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v33.receiver = self;
  v33.super_class = IMImageStore;
  v15 = [(IMImageStore *)&v33 init];
  if (v15)
  {
    v16 = [v12 copy];
    name = v15->_name;
    v15->_name = v16;

    [(IMImageStore *)v15 configureMemoryCache];
    v18 = [IMImageDiskCache alloc];
    v19 = [(IMImageStore *)v15 fullName];
    v20 = [v13 stringByAppendingPathComponent:v19];
    v21 = [(IMImageDiskCache *)v18 initWithBasePath:v20 maxImageDimensionInPixels:a5];
    diskCache = v15->_diskCache;
    v15->_diskCache = v21;

    v23 = [MEMORY[0x277CCAB98] defaultCenter];
    [v23 addObserver:v15 selector:sel_memoryWarning name:*MEMORY[0x277D3DA68] object:0];

    v24 = objc_opt_new();
    [(IMImageStore *)v15 setFetchOperationQueue:v24];

    v25 = [(IMImageStore *)v15 fetchOperationQueue];
    [v25 setMaxConcurrentOperationCount:a6];

    v26 = dispatch_get_global_queue(0, 0);
    v27 = [(IMImageStore *)v15 fetchOperationQueue];
    [v27 setUnderlyingQueue:v26];

    v28 = [(IMImageStore *)v15 fetchOperationQueue];
    [v28 setName:@"com.apple.podcasts.IMImageStore"];

    v29 = [(IMImageStore *)v15 fetchOperationQueue];
    [v29 setSuspended:0];

    v30 = _Block_copy(v14);
    alternativeSize = v15->_alternativeSize;
    v15->_alternativeSize = v30;

    [(IMImageStore *)v15 setMaxImageDimensionInPixels:a5];
  }

  return v15;
}

- (void)setDisableMemoryCache:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMImageStore *)self memoryCache];

  if (v3)
  {
    if (v5)
    {
      v6 = [(IMImageStore *)self memoryCache];
      [v6 removeAllObjects];

      memoryCache = self->_memoryCache;
      self->_memoryCache = 0;
    }
  }

  else if (!v5)
  {

    [(IMImageStore *)self configureMemoryCache];
  }
}

- (BOOL)disableMemoryCache
{
  v2 = [(IMImageStore *)self memoryCache];
  v3 = v2 == 0;

  return v3;
}

- (void)addImage:(id)a3 forKey:(id)a4 persist:(BOOL)a5 discardTransparency:(BOOL)a6
{
  v6 = a6;
  v19 = a3;
  v10 = a4;
  v11 = v19;
  v12 = v10;
  if (v19 && v10)
  {
    if (!a5)
    {
      if (v6)
      {
        v17 = [MEMORY[0x277D75348] whiteColor];
        v18 = [v19 im_imageWithBackgroundColor:v17];

        v11 = v18;
      }

      v15 = self;
      v16 = v11;
      v19 = v11;
      goto LABEL_10;
    }

    v13 = [(IMImageStore *)self diskCache];
    v14 = [v13 addImage:v19 forKey:v12];

    if ((v14 & 1) == 0 && !v6)
    {
      v15 = self;
      v16 = v19;
LABEL_10:
      [(IMImageStore *)v15 _addImage:v16 toMemoryCacheWithKey:v12];
    }
  }
}

- (void)addImagesWithSourceUrl:(id)a3 forKeys:(id)a4 removeOldItems:(BOOL)a5 discardTransparency:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v14 = v13;
  v39 = v14;
  v15 = a4;
  v16 = _Block_copy(aBlock);
  v17 = [v15 objectsPassingTest:&__block_literal_global_30];

  v18 = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v42 = v12;
    v43 = 2112;
    v44 = v17;
    v45 = 1024;
    v46 = v9;
    v47 = 1024;
    v48 = v8;
    _os_log_impl(&dword_21B365000, v18, OS_LOG_TYPE_DEFAULT, "[Store] addImagesWithSourceUrl: got store-image request (fileUrl=%@, keys=%@, removeOldItem=%d, discardTransparency=%d", buf, 0x22u);
  }

  if (v12 && [v17 count])
  {
    if (v9)
    {
      v29 = v8;
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

      v8 = v29;
    }

    v24 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v42 = v12;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_21B365000, v24, OS_LOG_TYPE_DEFAULT, "[Store] addImagesWithSourceUrl: adding to disk-cache (fileUrl = %@, keys=%@)", buf, 0x16u);
    }

    v25 = [(IMImageStore *)self diskCache];
    v26 = [v17 anyObject];
    v27 = [(IMImageStore *)self requireSquareImages:v26];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __93__IMImageStore_addImagesWithSourceUrl_forKeys_removeOldItems_discardTransparency_completion___block_invoke_32;
    v30[3] = &unk_2782BDB10;
    v31 = v12;
    v32 = v17;
    v33 = v16;
    [v25 addImagesWithSourceUrl:v31 forKeys:v32 discardTransparency:v8 enforceSquare:v27 completion:v30];
  }

  else
  {
    v28 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v42 = v12;
      v43 = 2112;
      v44 = v17;
      _os_log_impl(&dword_21B365000, v28, OS_LOG_TYPE_ERROR, "[Store] addImagesWithSourceUrl: invalid requests (fileUrl = %@, validKeys=%@), bailing.", buf, 0x16u);
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

- (id)imageForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMImageStore *)self memoryCache];
    v6 = [v5 objectForKey:v4];

    if (!v6)
    {
      v6 = [(IMImageStore *)self _loadDiskCacheImageForKey:v4 expectImageExists:0];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageForKey:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = -[IMImageStore imageForKey:size:resizeOptions:](self, "imageForKey:size:resizeOptions:", v7, [objc_opt_class() defaultImageResizeOptions], width, height);

  return v8;
}

- (id)imageForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = -[IMImageStore imageForKey:size:resizeOptions:modifier:](self, "imageForKey:size:resizeOptions:modifier:", v8, [objc_opt_class() defaultImageResizeOptions], 0, width, height);

  return v9;
}

- (id)imageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6
{
  v7 = *&a5;
  height = a4.height;
  width = a4.width;
  v31 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a6;
  if (![v11 length])
  {
LABEL_10:
    v15 = 0;
    goto LABEL_14;
  }

  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    v14 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v27 = 134218240;
      v28 = width;
      v29 = 2048;
      v30 = height;
      _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v27, 0x16u);
    }

    goto LABEL_10;
  }

  v16 = [(IMImageStore *)self _keyForSize:v11 baseKey:v12 modifier:width, height];
  v17 = [(IMImageStore *)self imageForKey:v16];
  if (!v17)
  {
    v19 = [(IMImageStore *)self alternativeSize];
    [(IMImageStore *)self maxImageDimensionInPixels];
    v21 = v19[2](v19, width, height, v20);
    v23 = v22;

    if (width != v21 || height != v23)
    {
      v25 = [(IMImageStore *)self _keyForSize:v11 baseKey:v12 modifier:v21, v23];

      v26 = [(IMImageStore *)self imageForKey:v25];
      if (v26)
      {
        v15 = v26;
        v16 = v25;
        goto LABEL_13;
      }

      v16 = v25;
      height = v23;
      width = v21;
    }

    if ([v12 hasModifications])
    {
      [(IMImageStore *)self _createModifiedImageFromSourceKey:v11 newImageKey:v16 modifier:v12 size:v7 resizeOptions:width, height];
    }

    else
    {
      [(IMImageStore *)self _createScaledImageFromSourceKey:v11 newImageKey:v16 size:v7 resizeOptions:width, height];
    }
    v17 = ;
  }

  v15 = v17;
LABEL_13:

LABEL_14:

  return v15;
}

- (id)_createModifiedImageFromSourceKey:(id)a3 newImageKey:(id)a4 modifier:(id)a5 size:(CGSize)a6 resizeOptions:(int)a7
{
  v7 = *&a7;
  height = a6.height;
  width = a6.width;
  v13 = a4;
  v14 = a5;
  v15 = [(IMImageStore *)self imageForKey:a3 size:v7 resizeOptions:width, height];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __90__IMImageStore__createModifiedImageFromSourceKey_newImageKey_modifier_size_resizeOptions___block_invoke;
  v21[3] = &unk_2782BDB38;
  v22 = v15;
  v23 = v14;
  v24 = self;
  v25 = v13;
  v16 = v13;
  v17 = v14;
  v18 = v15;
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

- (id)_createScaledImageFromSourceKey:(id)a3 newImageKey:(id)a4 size:(CGSize)a5 resizeOptions:(int)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __79__IMImageStore__createScaledImageFromSourceKey_newImageKey_size_resizeOptions___block_invoke;
  v17[3] = &unk_2782BDB60;
  v17[4] = self;
  v18 = v11;
  v20 = width;
  v21 = height;
  v19 = v12;
  v22 = a6;
  v13 = v12;
  v14 = v11;
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

- (id)_performImagingTransactionNamed:(id)a3 block:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    v7 = @"unknown transaction";
    if (v5)
    {
      v7 = v5;
    }

    v8 = v7;
    v9 = a4;

    [(__CFString *)v8 UTF8String];
    v10 = os_transaction_create();
    a4 = v9[2](v9);

    v6 = v8;
  }

  return a4;
}

- (id)imageInMemoryForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5
{
  height = a4.height;
  width = a4.width;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (width < 0.00000011920929 || height < 0.00000011920929)
  {
    v12 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = 134218240;
      v23 = width;
      v24 = 2048;
      v25 = height;
      _os_log_impl(&dword_21B365000, v12, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v22, 0x16u);
    }

    v20 = 0;
  }

  else
  {
    v13 = [(IMImageStore *)self alternativeSize];
    [(IMImageStore *)self maxImageDimensionInPixels];
    v15 = v13[2](v13, width, height, v14);
    v17 = v16;

    v18 = [(IMImageStore *)self _keyForSize:v9 baseKey:v10 modifier:v15, v17];
    v19 = [(IMImageStore *)self memoryCache];
    v20 = [v19 objectForKey:v18];
  }

  return v20;
}

- (id)imageUrlForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMImageStore *)self diskCache];
  v6 = [v5 imageUrlForKey:v4];

  return v6;
}

- (void)asyncImageForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(IMImageStore *)self fetchOperationQueue];
  v9 = MEMORY[0x277CCA8C8];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__IMImageStore_asyncImageForKey_completionHandler___block_invoke;
  v16 = &unk_2782BDBB0;
  objc_copyWeak(&v19, &location);
  v10 = v6;
  v17 = v10;
  v11 = v7;
  v18 = v11;
  v12 = [v9 blockOperationWithBlock:&v13];
  [v8 addOperation:{v12, v13, v14, v15, v16}];

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

- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 completionHandler:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a5;
  v10 = a3;
  -[IMImageStore asyncImageForKey:size:resizeOptions:modifier:completionHandler:](self, "asyncImageForKey:size:resizeOptions:modifier:completionHandler:", v10, [objc_opt_class() defaultImageResizeOptions], 0, v9, width, height);
}

- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5 completionHandler:(id)a6
{
  height = a4.height;
  width = a4.width;
  v11 = a6;
  v12 = a5;
  v13 = a3;
  -[IMImageStore asyncImageForKey:size:resizeOptions:modifier:completionHandler:](self, "asyncImageForKey:size:resizeOptions:modifier:completionHandler:", v13, [objc_opt_class() defaultImageResizeOptions], v12, v11, width, height);
}

- (void)asyncImageForKey:(id)a3 size:(CGSize)a4 resizeOptions:(int)a5 modifier:(id)a6 completionHandler:(id)a7
{
  height = a4.height;
  width = a4.width;
  v13 = a3;
  v14 = a6;
  v15 = a7;
  objc_initWeak(&location, self);
  v16 = [(IMImageStore *)self fetchOperationQueue];
  v17 = MEMORY[0x277CCA8C8];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __79__IMImageStore_asyncImageForKey_size_resizeOptions_modifier_completionHandler___block_invoke;
  v25 = &unk_2782BDBD8;
  objc_copyWeak(v29, &location);
  v18 = v13;
  v26 = v18;
  v29[1] = *&width;
  v29[2] = *&height;
  v30 = a5;
  v19 = v14;
  v27 = v19;
  v20 = v15;
  v28 = v20;
  v21 = [v17 blockOperationWithBlock:&v22];
  [v16 addOperation:{v21, v22, v23, v24, v25}];

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

- (void)asyncImageForKey:(id)a3 squareDimension:(double)a4 cacheKeyModifier:(id)a5 completionHandler:(id)a6
{
  v10 = a6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __84__IMImageStore_asyncImageForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke;
  v12[3] = &unk_2782BDC00;
  v13 = v10;
  v11 = v10;
  [(IMImageStore *)self asyncImageURLForKey:a3 squareDimension:a5 cacheKeyModifier:v12 completionHandler:a4];
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

- (void)asyncImageURLForKey:(id)a3 squareDimension:(double)a4 cacheKeyModifier:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke;
  aBlock[3] = &unk_2782BDC28;
  v13 = v12;
  v33 = v13;
  v14 = v10;
  v32 = v14;
  v15 = _Block_copy(aBlock);
  v16 = [(IMImageStore *)self _keyForSize:v14 baseKey:0 modifier:a4, a4];
  v17 = v16;
  if ([v11 length])
  {
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v16, v11];
  }

  v18 = [(IMImageStore *)self fetchOperationQueue];
  v19 = MEMORY[0x277CCA8C8];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __87__IMImageStore_asyncImageURLForKey_squareDimension_cacheKeyModifier_completionHandler___block_invoke_2;
  v25[3] = &unk_2782BDC78;
  v25[4] = self;
  v26 = v16;
  v28 = v14;
  v29 = v15;
  v27 = v17;
  v30 = a4;
  v20 = v14;
  v21 = v17;
  v22 = v15;
  v23 = v16;
  v24 = [v19 blockOperationWithBlock:v25];
  [v18 addOperation:v24];
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

- (void)asyncImageURLForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3042000000;
  v17[3] = __Block_byref_object_copy__52;
  v17[4] = __Block_byref_object_dispose__53;
  objc_initWeak(&v18, self);
  v8 = [(IMImageStore *)self fetchOperationQueue];
  v9 = MEMORY[0x277CCA8C8];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__IMImageStore_asyncImageURLForKey_completionHandler___block_invoke;
  v13[3] = &unk_2782BDCA0;
  v16 = v17;
  v10 = v6;
  v14 = v10;
  v11 = v7;
  v15 = v11;
  v12 = [v9 blockOperationWithBlock:v13];
  [v8 addOperation:v12];

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
  v3 = [(IMImageStore *)self memoryCache];
  [v3 removeAllObjects];

  v4 = [(IMImageStore *)self diskCache];
  [v4 clearCache];
}

- (BOOL)hasItemForKey:(id)a3 size:(CGSize)a4 modifier:(id)a5
{
  height = a4.height;
  width = a4.width;
  v16 = *MEMORY[0x277D85DE8];
  if (a4.width < 0.00000011920929 || a4.height < 0.00000011920929)
  {
    v8 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218240;
      v13 = width;
      v14 = 2048;
      v15 = height;
      _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_ERROR, "Invalid arguments. Size must be non-zero in both dimensions. (width: %f, height: %f)", &v12, 0x16u);
    }

    return 0;
  }

  else
  {
    v9 = self;
    v10 = [(IMImageStore *)self _keyForSize:a3 baseKey:a5 modifier:a4.width, a4.height];
    LOBYTE(v9) = [(IMImageStore *)v9 hasItemForKey:v10];

    return v9;
  }
}

- (BOOL)hasItemForKey:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMImageStore *)self memoryCache];
    v6 = [v5 objectForKey:v4];
    if (v6)
    {
      v7 = 1;
    }

    else
    {
      v8 = [(IMImageStore *)self diskCache];
      v7 = [v8 hasItemForKey:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)removeItemsWithPrefx:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [(IMImageStore *)self memoryCache];
    [v4 removeObjectsForKeyWithPrefix:v6];

    v5 = [(IMImageStore *)self diskCache];
    [v5 removeItemsWithPrefx:v6];
  }
}

- (void)removeItemForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMImageStore *)self memoryCache];
  [v5 removeObjectForKey:v4];

  v6 = [(IMImageStore *)self diskCache];
  [v6 removeItemForKey:v4];
}

- (BOOL)isEmpty
{
  v2 = [(IMImageStore *)self diskCache];
  v3 = [v2 isEmpty];

  return v3;
}

- (id)_keyForSize:(CGSize)a3 baseKey:(id)a4 modifier:(id)a5
{
  height = a3.height;
  width = a3.width;
  v26 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  if ([v9 length])
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-{%f, %f}", v9, *&width, *&height];
    if (![v10 hasModifications])
    {
LABEL_5:
      v11 = v11;
      v14 = v11;
      goto LABEL_13;
    }

    v12 = [v10 modificationCacheKey];
    if ([v12 length])
    {
      v13 = [v11 stringByAppendingFormat:@"-%@", v12];

      v11 = v13;
      goto LABEL_5;
    }

    v15 = [MEMORY[0x277D3DA88] defaultCategory];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v29.width = width;
      v29.height = height;
      v16 = NSStringFromCGSize(v29);
      *buf = 138413058;
      v19 = self;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v10;
      _os_log_impl(&dword_21B365000, v15, OS_LOG_TYPE_ERROR, "Invalid modifier cache key in call to [%@ _keyForSize:%@]", buf, 0x2Au);
    }

    goto LABEL_11;
  }

  v11 = [MEMORY[0x277D3DA88] defaultCategory];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v28.width = width;
    v28.height = height;
    v12 = NSStringFromCGSize(v28);
    *buf = 138413058;
    v19 = self;
    v20 = 2112;
    v21 = v12;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_ERROR, "Invalid baseKey encountered in call to [%@ _keyForSize:%@]", buf, 0x2Au);
LABEL_11:
  }

  v14 = 0;
LABEL_13:

  return v14;
}

- (void)memoryWarning
{
  v2 = [(IMImageStore *)self memoryCache];
  [v2 removeAllObjects];
}

- (void)_addImage:(id)a3 toMemoryCacheWithKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (![(IMImageStore *)self disableMemoryCache])
  {
    v7 = v12;
    v8 = [v12 CGImage];
    BytesPerRow = CGImageGetBytesPerRow(v8);
    v10 = CGImageGetHeight(v8) * BytesPerRow;
    v11 = [(IMImageStore *)self memoryCache];
    [v11 setObject:v12 forKey:v6 cost:v10];
  }
}

- (id)_loadDiskCacheImageForKey:(id)a3 expectImageExists:(BOOL)a4
{
  v4 = a4;
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(IMImageStore *)self diskCache];
  v8 = [v7 imageForKey:v6];

  if (v8)
  {
    v9 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, "_loadDiskCacheImageForKey: successfully loaded image forKey: %@", &v12, 0xCu);
    }

    [(IMImageStore *)self _addImage:v8 toMemoryCacheWithKey:v6];
  }

  else if (v4)
  {
    v10 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_21B365000, v10, OS_LOG_TYPE_ERROR, "_loadDiskCacheImageForKey: failed to load image forKey: %@", &v12, 0xCu);
    }
  }

  return v8;
}

- (void)performWhenURLAvailableForImageForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke;
  aBlock[3] = &unk_2782BDC00;
  v8 = v7;
  v19 = v8;
  v9 = _Block_copy(aBlock);
  objc_initWeak(&location, self);
  v10 = [(IMImageStore *)self diskCache];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__IMImageStore_performWhenURLAvailableForImageForKey_block___block_invoke_2;
  v13[3] = &unk_2782BDCC8;
  objc_copyWeak(&v16, &location);
  v11 = v9;
  v15 = v11;
  v12 = v6;
  v14 = v12;
  [v10 performWhenURLAvailableForImageForKey:v12 block:v13];

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

- (void)invalidateImageForKey:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(IMImageStore *)self fetchOperationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__IMImageStore_invalidateImageForKey___block_invoke;
  v7[3] = &unk_2782BDCF0;
  objc_copyWeak(&v9, &location);
  v6 = v4;
  v8 = v6;
  [v5 addOperationWithBlock:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __38__IMImageStore_invalidateImageForKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained onQueueInvalidateImageForKey:*(a1 + 32)];
}

- (void)onQueueInvalidateImageForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMImageStore *)self diskCache];
  v7 = [v5 imageUrlForKey:v4];

  v6 = v7;
  if (v7)
  {
    [(IMImageStore *)self invalidateImageAtURL:v7];
    v6 = v7;
  }
}

- (void)invalidateImageAtURL:(id)a3
{
  v3 = a3;
  v4 = [v3 URLByAppendingPathExtension:@"invalidated"];
  v5 = [MEMORY[0x277CBEA90] data];
  [v5 writeToURL:v4 atomically:0];
}

@end