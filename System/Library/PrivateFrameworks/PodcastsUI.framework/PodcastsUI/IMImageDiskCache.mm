@interface IMImageDiskCache
- (BOOL)_addImage:(id)image forKey:(id)key resizeIfTooBig:(BOOL)big manageProcessingState:(BOOL)state completion:(id)completion;
- (BOOL)_isProcessingKey:(id)key completion:(id)completion;
- (BOOL)_startProcessingForAddingKey:(id)key originalKey:(id)originalKey;
- (BOOL)_usesLessMemoryToConvertThenResizeImageSource:(CGImageSource *)source destinationDimensionInPixels:(double)pixels;
- (BOOL)copyImageFromSourceUrl:(id)url sourceFileType:(id)type to:(id)to discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels;
- (CGImageSource)_copyImageSourceByConvertingImage:(CGImageSource *)image toFileType:(id)type destinationUrl:(id)url;
- (IMImageDiskCache)initWithBasePath:(id)path maxImageDimensionInPixels:(double)pixels;
- (id)_defaultImageSavingOptions;
- (id)_defaultImageSavingSourceOptions;
- (id)_resizeImageForKey:(id)key maxDimensionInPixels:(double)pixels;
- (id)imageForKey:(id)key;
- (id)imageUrlForKey:(id)key;
- (id)pathForKey:(id)key;
- (void)_addImageWithSourceUrl:(id)url forKey:(id)key discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion;
- (void)_finishProcessingKey:(id)key success:(BOOL)success;
- (void)_performWithSyncLock:(id)lock;
- (void)_startProcessingKey:(id)key completion:(id)completion;
- (void)addImageWithSourceUrl:(id)url forKey:(id)key discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion;
- (void)addImageWithSourceUrl:(id)url forKey:(id)key enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion;
- (void)addImagesWithSourceUrl:(id)url forKeys:(id)keys discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square completion:(id)completion;
- (void)copyImageFromSourceUrl:(id)url to:(id)to discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion;
- (void)performWhenURLAvailableForImageForKey:(id)key block:(id)block;
@end

@implementation IMImageDiskCache

- (IMImageDiskCache)initWithBasePath:(id)path maxImageDimensionInPixels:(double)pixels
{
  v24.receiver = self;
  v24.super_class = IMImageDiskCache;
  v5 = [(IMBaseDiskCache *)&v24 initWithBasePath:path];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@-worker", v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v10;

    fileType = [MEMORY[0x277D3DB18] fileType];
    identifier = [fileType identifier];
    onDiskFileType = v5->_onDiskFileType;
    v5->_onDiskFileType = identifier;

    v5->_saveCompressionQuality = 0.9;
    v5->_maxImageDimensionInPixels = pixels;
    v15 = objc_alloc_init(MEMORY[0x277CCAC60]);
    syncLock = v5->_syncLock;
    v5->_syncLock = v15;

    v17 = [MEMORY[0x277CBEB58] set];
    proccessingKeys = v5->_proccessingKeys;
    v5->_proccessingKeys = v17;

    v19 = objc_opt_new();
    completionHandlers = v5->_completionHandlers;
    v5->_completionHandlers = v19;

    v21 = objc_opt_new();
    pendingPerformWhenAvailableOnDiskBlocks = v5->_pendingPerformWhenAvailableOnDiskBlocks;
    v5->_pendingPerformWhenAvailableOnDiskBlocks = v21;
  }

  return v5;
}

- (void)_addImageWithSourceUrl:(id)url forKey:(id)key discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion
{
  squareCopy = square;
  transparencyCopy = transparency;
  urlCopy = url;
  keyCopy = key;
  completionCopy = completion;
  v16 = [keyCopy length];
  if (urlCopy && v16)
  {
    if ([(IMBaseDiskCache *)self hasItemForKey:keyCopy])
    {
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1);
      }
    }

    else
    {
      v17 = [(IMImageDiskCache *)self pathForKey:keyCopy];
      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:0];
      [(IMImageDiskCache *)self copyImageFromSourceUrl:urlCopy to:v18 discardTransparency:transparencyCopy enforceSquare:squareCopy maxDimensionInPixels:completionCopy completion:pixels];
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)addImagesWithSourceUrl:(id)url forKeys:(id)keys discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square completion:(id)completion
{
  squareCopy = square;
  transparencyCopy = transparency;
  v48 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v28 = completionCopy;
  v39 = v28;
  keysCopy = keys;
  v14 = _Block_copy(aBlock);
  v15 = [keysCopy objectsPassingTest:&__block_literal_global];

  imageCache = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v41 = urlCopy;
    v42 = 2112;
    v43 = v15;
    v44 = 1024;
    v45 = transparencyCopy;
    v46 = 1024;
    v47 = squareCopy;
    _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: got store-image request (fileUrl=%@, keys=%@, discardTransparency=%d, enforceSquare=%d)", buf, 0x22u);
  }

  v17 = [v15 mutableCopy];
  v18 = v17;
  if (urlCopy && [v17 count])
  {
    anyObject = [v18 anyObject];
    [v18 removeObject:anyObject];
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    objc_initWeak(&location, self);
    imageCache2 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = urlCopy;
      v42 = 2112;
      v43 = anyObject;
      _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: adding first item via addImage: (fileUrl = %@, key=%@)", buf, 0x16u);
    }

    maxImageDimensionInPixels = self->_maxImageDimensionInPixels;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke_15;
    v35[3] = &unk_2782BD918;
    v23 = v20;
    v36 = v23;
    [(IMImageDiskCache *)self addImageWithSourceUrl:urlCopy forKey:anyObject discardTransparency:transparencyCopy enforceSquare:squareCopy maxDimensionInPixels:v35 completion:maxImageDimensionInPixels];
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke_2_16;
    block[3] = &unk_2782BD940;
    objc_copyWeak(&v34, &location);
    v30 = anyObject;
    v31 = v18;
    v33 = v14;
    v32 = urlCopy;
    v25 = anyObject;
    dispatch_group_notify(v23, v24, block);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    imageCache3 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = urlCopy;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_21B365000, imageCache3, OS_LOG_TYPE_ERROR, "[DiskCache] addImagesWithSourceUrl: invalid requests (fileUrl = %@, validKeys=%@), bailing.", buf, 0x16u);
    }

    (*(v14 + 2))(v14, 0);
  }
}

uint64_t __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke_2_16(uint64_t a1)
{
  v1 = a1;
  v43 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained imageUrlForKey:*(v1 + 32)];
  if (!v3)
  {
    v8 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = *(v1 + 32);
      v24 = *(v1 + 40);
      *buf = 138412546;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_ERROR, "[DiskCache] addImagesWithSourceUrl: unable to add remaining items via NSFileManager copy.  First key's imageUrl is unavailable (firstKey=%@, remaining=%@)", buf, 0x16u);
    }

    goto LABEL_19;
  }

  if ([*(v1 + 40) count])
  {
    v4 = 0x277D3D000uLL;
    v5 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v1 + 40);
      v6 = *(v1 + 48);
      *buf = 138412802;
      v35 = v6;
      v36 = 2112;
      v37 = v3;
      v38 = 2112;
      v39 = v7;
      _os_log_impl(&dword_21B365000, v5, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: adding remaining items via NSFileManager copy: (fileUrl = %@, urlToCopy = %@, keys=%@)", buf, 0x20u);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = *(v1 + 40);
    v28 = [v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v28)
    {
      v25 = v1;
      v27 = *v31;
      v26 = v8;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v8);
          }

          v10 = *(*(&v30 + 1) + 8 * i);
          v11 = MEMORY[0x277CBEBC0];
          v12 = [WeakRetained pathForKey:v10];
          v13 = [v11 fileURLWithPath:v12];

          v14 = [MEMORY[0x277CCAA00] defaultManager];
          v29 = 0;
          v15 = [v14 copyItemAtURL:v3 toURL:v13 error:&v29];
          v16 = v29;

          if ((v15 & 1) == 0)
          {
            v17 = [*(v4 + 2696) imageCache];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v13 path];
              [v3 path];
              v19 = v4;
              v20 = v3;
              v22 = v21 = WeakRetained;
              *buf = 138413058;
              v35 = v10;
              v36 = 2112;
              v37 = v18;
              v38 = 2112;
              v39 = v22;
              v40 = 2112;
              v41 = v16;
              _os_log_impl(&dword_21B365000, v17, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: copying remaining items failed (key = %@, urlToCopy = %@, destination = %@, error = %@)", buf, 0x2Au);

              WeakRetained = v21;
              v3 = v20;
              v4 = v19;
              v8 = v26;
            }
          }
        }

        v28 = [v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v28);
      v1 = v25;
    }

LABEL_19:
  }

  (*(*(v1 + 56) + 16))();
}

- (void)addImageWithSourceUrl:(id)url forKey:(id)key enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion
{
  squareCopy = square;
  completionCopy = completion;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__IMImageDiskCache_addImageWithSourceUrl_forKey_enforceSquare_maxDimensionInPixels_completion___block_invoke;
  v14[3] = &unk_2782BD8D0;
  v15 = completionCopy;
  v13 = completionCopy;
  [(IMImageDiskCache *)self addImageWithSourceUrl:url forKey:key discardTransparency:0 enforceSquare:squareCopy maxDimensionInPixels:v14 completion:pixels];
}

- (void)addImageWithSourceUrl:(id)url forKey:(id)key discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion
{
  urlCopy = url;
  keyCopy = key;
  completionCopy = completion;
  if (![(IMImageDiskCache *)self _isProcessingKey:keyCopy completion:completionCopy])
  {
    objc_initWeak(&location, self);
    [(IMImageDiskCache *)self _startProcessingKey:keyCopy completion:completionCopy];
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __115__IMImageDiskCache_addImageWithSourceUrl_forKey_discardTransparency_enforceSquare_maxDimensionInPixels_completion___block_invoke;
    v18[3] = &unk_2782BD990;
    objc_copyWeak(v21, &location);
    v19 = urlCopy;
    v20 = keyCopy;
    transparencyCopy = transparency;
    squareCopy = square;
    v21[1] = *&pixels;
    dispatch_async(workQueue, v18);

    objc_destroyWeak(v21);
    objc_destroyWeak(&location);
  }
}

void __115__IMImageDiskCache_addImageWithSourceUrl_forKey_discardTransparency_enforceSquare_maxDimensionInPixels_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 64);
  v6 = *(a1 + 65);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__IMImageDiskCache_addImageWithSourceUrl_forKey_discardTransparency_enforceSquare_maxDimensionInPixels_completion___block_invoke_2;
  v8[3] = &unk_2782BD968;
  objc_copyWeak(&v10, (a1 + 48));
  v9 = *(a1 + 40);
  [WeakRetained _addImageWithSourceUrl:v3 forKey:v4 discardTransparency:v5 enforceSquare:v6 maxDimensionInPixels:v8 completion:v7];

  objc_destroyWeak(&v10);
}

void __115__IMImageDiskCache_addImageWithSourceUrl_forKey_discardTransparency_enforceSquare_maxDimensionInPixels_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v5 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v5);

    [v6 _finishProcessingKey:*(a1 + 32) success:a2];
    WeakRetained = v6;
  }
}

- (void)copyImageFromSourceUrl:(id)url to:(id)to discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels completion:(id)completion
{
  squareCopy = square;
  transparencyCopy = transparency;
  completionCopy = completion;
  workQueue = self->_workQueue;
  toCopy = to;
  urlCopy = url;
  dispatch_assert_queue_V2(workQueue);
  onDiskFileType = [(IMImageDiskCache *)self onDiskFileType];
  v18 = [(IMImageDiskCache *)self copyImageFromSourceUrl:urlCopy sourceFileType:onDiskFileType to:toCopy discardTransparency:transparencyCopy enforceSquare:squareCopy maxDimensionInPixels:pixels];

  v19 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v18);
    v19 = completionCopy;
  }
}

- (BOOL)copyImageFromSourceUrl:(id)url sourceFileType:(id)type to:(id)to discardTransparency:(BOOL)transparency enforceSquare:(BOOL)square maxDimensionInPixels:(double)pixels
{
  squareCopy = square;
  transparencyCopy = transparency;
  v98 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  typeCopy = type;
  toCopy = to;
  v17 = os_transaction_create();
  imageCache = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v91 = urlCopy;
    v92 = 2112;
    *v93 = toCopy;
    *&v93[8] = 1024;
    *&v93[10] = transparencyCopy;
    v94 = 1024;
    v95 = squareCopy;
    v96 = 2048;
    pixelsCopy3 = pixels;
    _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "saving image to disk in copyImageFromSourceUrl: (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);
  }

  v84 = transparencyCopy;

  v19 = objc_autoreleasePoolPush();
  v20 = *MEMORY[0x277CD3668];
  v88[0] = *MEMORY[0x277CD3618];
  v88[1] = v20;
  v89[0] = MEMORY[0x277CBEC28];
  v89[1] = typeCopy;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v21 = CGImageSourceCreateWithURL(urlCopy, v85);
  v22 = v21;
  if (!v21 || !CGImageSourceGetCount(v21))
  {
    v23 = typeCopy;
    imageCache2 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache2, OS_LOG_TYPE_DEFAULT))
    {
      path = [(__CFURL *)urlCopy path];
      *buf = 134218498;
      v91 = v22;
      v92 = 1024;
      *v93 = 0;
      *&v93[4] = 2112;
      *&v93[6] = path;
      _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "Could not create image source (source = %p, imageCount = %d) using sourceUrl: %@", buf, 0x1Cu);
    }

    if (!v22)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v23 = typeCopy;
  [(IMImageDiskCache *)self onDiskFileType];
  v24 = v83 = v17;
  v25 = CGImageDestinationCreateWithURL(toCopy, v24, 1uLL, 0);

  v17 = v83;
  idst = v25;
  if (!v25)
  {
LABEL_11:
    CFRelease(v22);
LABEL_12:
    v28 = 0;
    v29 = v23;
    v30 = toCopy;
    goto LABEL_51;
  }

  v80 = squareCopy && !CGImageSourceIsSquare(v22);
  v29 = v23;
  _defaultImageSavingOptions = [(IMImageDiskCache *)self _defaultImageSavingOptions];
  v82 = [_defaultImageSavingOptions mutableCopy];

  v30 = toCopy;
  if (v84)
  {
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    cGColor = [whiteColor CGColor];
    [v82 setObject:cGColor forKeyedSubscript:*MEMORY[0x277CD2CD0]];
  }

  if ([(IMImageDiskCache *)self _needsResizing:v22 maxDimensionInPixels:pixels])
  {
    v79 = v19;
    if ([(IMImageDiskCache *)self _usesLessMemoryToConvertThenResizeImageSource:v22 destinationDimensionInPixels:pixels])
    {
      v34 = MEMORY[0x277CBEBC0];
      v35 = NSTemporaryDirectory();
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v38 = [v35 stringByAppendingPathComponent:uUIDString];
      v39 = [v34 fileURLWithPath:v38];

      onDiskFileType = [(IMImageDiskCache *)self onDiskFileType];
      v41 = [(IMImageDiskCache *)self _copyImageSourceByConvertingImage:v22 toFileType:onDiskFileType destinationUrl:v39];

      if (v41)
      {
        imageCache3 = [MEMORY[0x277D3DA88] imageCache];
        if (os_log_type_enabled(imageCache3, OS_LOG_TYPE_DEFAULT))
        {
          path2 = [(__CFURL *)urlCopy path];
          path3 = [v39 path];
          *buf = 138412546;
          v91 = path2;
          v92 = 2112;
          *v93 = path3;
          _os_log_impl(&dword_21B365000, imageCache3, OS_LOG_TYPE_DEFAULT, "[ImageResize] performing 2-step save.  Performing format-only conversion (originalSourceUrl = %@, intermediateUrl = %@", buf, 0x16u);
        }

        CFRelease(v22);
        v45 = v39;
        v22 = v41;
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }

    v59 = MEMORY[0x277CBEC38];
    v60 = *MEMORY[0x277CD3578];
    v86[0] = *MEMORY[0x277CD3610];
    v86[1] = v60;
    v87[0] = MEMORY[0x277CBEC38];
    v87[1] = MEMORY[0x277CBEC38];
    v61 = *MEMORY[0x277CD3568];
    v87[2] = MEMORY[0x277CBEC38];
    v62 = *MEMORY[0x277CD3660];
    v86[2] = v61;
    v86[3] = v62;
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:pixels];
    v86[4] = *MEMORY[0x277CD3678];
    v87[3] = v63;
    v87[4] = v59;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:5];

    imageCache4 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache4, OS_LOG_TYPE_DEFAULT))
    {
      path4 = [(__CFURL *)urlCopy path];
      path5 = [(__CFURL *)v30 path];
      *buf = 138413314;
      v91 = path4;
      v92 = 2112;
      *v93 = path5;
      *&v93[8] = 1024;
      *&v93[10] = v84;
      v94 = 1024;
      v95 = v80;
      v96 = 2048;
      pixelsCopy3 = pixels;
      _os_log_impl(&dword_21B365000, imageCache4, OS_LOG_TYPE_DEFAULT, "[ImageResize] saving... (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);
    }

    v68 = v64;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v22, 0, v64);
    if (v80)
    {
      v70 = MEMORY[0x277D755B8];
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen scale];
      v72 = [v70 imageWithCGImage:ThumbnailAtIndex scale:0 orientation:?];

      if (v72)
      {
        squareImage = [v72 squareImage];
        cGImage = [squareImage CGImage];

        CGImageDestinationAddImage(idst, cGImage, v82);
      }

      v58 = idst;
    }

    else
    {
      v58 = idst;
      CGImageDestinationAddImage(idst, ThumbnailAtIndex, v82);
    }

    v19 = v79;
    if (ThumbnailAtIndex)
    {
      CFRelease(ThumbnailAtIndex);
    }
  }

  else
  {
    imageCache5 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache5, OS_LOG_TYPE_DEFAULT))
    {
      path6 = [(__CFURL *)urlCopy path];
      [(__CFURL *)toCopy path];
      v49 = v48 = v19;
      *buf = 138413314;
      v91 = path6;
      v92 = 2112;
      *v93 = v49;
      *&v93[8] = 1024;
      *&v93[10] = v84;
      v94 = 1024;
      v95 = v80;
      v96 = 2048;
      pixelsCopy3 = pixels;
      _os_log_impl(&dword_21B365000, imageCache5, OS_LOG_TYPE_DEFAULT, "[ImageResize] saving... (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);

      v19 = v48;
    }

    if (v80)
    {
      v50 = v19;
      v51 = MEMORY[0x277D755B8];
      path7 = [(__CFURL *)urlCopy path];
      v53 = [v51 imageWithContentsOfFile:path7];

      if (v53)
      {
        imageCache6 = [MEMORY[0x277D3DA88] imageCache];
        if (os_log_type_enabled(imageCache6, OS_LOG_TYPE_DEFAULT))
        {
          path8 = [(__CFURL *)urlCopy path];
          *buf = 138412290;
          v91 = path8;
          _os_log_impl(&dword_21B365000, imageCache6, OS_LOG_TYPE_DEFAULT, "Failed to load image from: %@", buf, 0xCu);
        }

        squareImage2 = [v53 squareImage];
        cGImage2 = [squareImage2 CGImage];

        CGImageDestinationAddImage(idst, cGImage2, v82);
      }

      v45 = 0;
      v19 = v50;
      v58 = idst;
    }

    else
    {
      v58 = idst;
      CGImageDestinationAddImageFromSource(idst, v22, 0, v82);
      v45 = 0;
    }
  }

  v28 = CGImageDestinationFinalize(v58);
  if (!v28)
  {
    imageCache7 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache7, OS_LOG_TYPE_DEFAULT))
    {
      path9 = [(__CFURL *)v30 path];
      *buf = 138412290;
      v91 = path9;
      _os_log_impl(&dword_21B365000, imageCache7, OS_LOG_TYPE_DEFAULT, "Failed to write image data to: %@", buf, 0xCu);

      v58 = idst;
    }
  }

  CFRelease(v58);
  CFRelease(v22);
  if (v45)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v45 error:0];
  }

  v17 = v83;
LABEL_51:

  objc_autoreleasePoolPop(v19);
  return v28;
}

- (CGImageSource)_copyImageSourceByConvertingImage:(CGImageSource *)image toFileType:(id)type destinationUrl:(id)url
{
  v20 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  urlCopy = url;
  if (!image)
  {
    Type = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(Type, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_21B365000, Type, OS_LOG_TYPE_ERROR, "no source", &v18, 2u);
    }

    goto LABEL_10;
  }

  Type = CGImageSourceGetType(image);
  onDiskFileType = [(IMImageDiskCache *)self onDiskFileType];
  v12 = [Type isEqualToString:onDiskFileType];

  if (v12)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v13 = CGImageDestinationCreateWithURL(urlCopy, typeCopy, 1uLL, 0);
  if (!v13)
  {
    imageCache = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = urlCopy;
      _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_ERROR, "unable to save image to %@", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  v14 = v13;
  CGImageDestinationAddImageFromSource(v13, image, 0, 0);
  CGImageDestinationFinalize(v14);
  v15 = CGImageSourceCreateWithURL(urlCopy, [(IMImageDiskCache *)self _defaultImageSavingSourceOptions]);
  CFRelease(v14);
LABEL_11:

  return v15;
}

- (id)_defaultImageSavingSourceOptions
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD3618];
  v8[0] = MEMORY[0x277CBEC28];
  v3 = *MEMORY[0x277CD3668];
  v7[0] = v2;
  v7[1] = v3;
  onDiskFileType = [(IMImageDiskCache *)self onDiskFileType];
  v7[2] = *MEMORY[0x277CD3678];
  v8[1] = onDiskFileType;
  v8[2] = MEMORY[0x277CBEC38];
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (id)_defaultImageSavingOptions
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = *MEMORY[0x277CD2D48];
  v2 = MEMORY[0x277CCABB0];
  [(IMImageDiskCache *)self saveCompressionQuality];
  v3 = [v2 numberWithDouble:?];
  v4 = *MEMORY[0x277CD2D78];
  v9[0] = v3;
  v9[1] = MEMORY[0x277CBEC38];
  v5 = *MEMORY[0x277CD3678];
  v8[1] = v4;
  v8[2] = v5;
  v9[2] = MEMORY[0x277CBEC38];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (BOOL)_usesLessMemoryToConvertThenResizeImageSource:(CGImageSource *)source destinationDimensionInPixels:(double)pixels
{
  sourceCopy = source;
  if (source)
  {
    Type = CGImageSourceGetType(source);
    onDiskFileType = [(IMImageDiskCache *)self onDiskFileType];
    v9 = [(__CFString *)Type isEqualToString:onDiskFileType];

    if (v9)
    {
      LOBYTE(sourceCopy) = 0;
    }

    else
    {
      v10 = (2 * CGImageSourcePixelSize(sourceCopy)) >= pixels;
      LOBYTE(sourceCopy) = (2 * v11) >= pixels && v10;
    }
  }

  return sourceCopy;
}

- (BOOL)_addImage:(id)image forKey:(id)key resizeIfTooBig:(BOOL)big manageProcessingState:(BOOL)state completion:(id)completion
{
  stateCopy = state;
  bigCopy = big;
  v63 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  keyCopy = key;
  completionCopy = completion;
  v15 = os_transaction_create();
  v16 = keyCopy;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v17 = completionCopy;
  v54 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [v16 length];
  if (imageCopy && v19)
  {
    imageCache = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
    {
      [imageCopy size];
      NSStringFromCGSize(v64);
      v21 = v17;
      v23 = v22 = stateCopy;
      *buf = 138412546;
      v56 = v23;
      v57 = 2112;
      v58 = v16;
      _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "adding image (size = %@) to cache for with key %@", buf, 0x16u);

      stateCopy = v22;
      v17 = v21;
    }

    if (!bigCopy || (([imageCopy scale], v25 = v24, objc_msgSend(imageCopy, "size"), maxImageDimensionInPixels = self->_maxImageDimensionInPixels, v29 = v25 * v28, v25 * v26 <= maxImageDimensionInPixels) ? (v30 = v29 <= maxImageDimensionInPixels) : (v30 = 0), v30))
    {
      v33 = 0;
      v31 = v16;
      if (!stateCopy)
      {
LABEL_13:
        v34 = &__block_literal_global_32;
        goto LABEL_18;
      }
    }

    else
    {
      v31 = [v16 stringByAppendingString:@"-raw"];

      imageCache2 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(imageCache2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v16;
        _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "image is too big, will resize (key=%@)", buf, 0xCu);
      }

      v33 = 1;
      if (!stateCopy)
      {
        goto LABEL_13;
      }
    }

    if (![(IMImageDiskCache *)self _startProcessingForAddingKey:v31 originalKey:v16])
    {
      v18[2](v18, 0);
      LOBYTE(v33) = 0;
      v41 = &__block_literal_global_32;
LABEL_24:

      goto LABEL_25;
    }

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke_2;
    v52[3] = &unk_2782BD9D8;
    v52[4] = self;
    v34 = _Block_copy(v52);
LABEL_18:
    if (v33)
    {
      imageCache3 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(imageCache3, OS_LOG_TYPE_DEFAULT))
      {
        [imageCopy size];
        v37 = v36;
        [imageCopy size];
        v38 = self->_maxImageDimensionInPixels;
        *buf = 138413058;
        v56 = v31;
        v57 = 2048;
        v58 = v37;
        v59 = 2048;
        v60 = v39;
        v61 = 2048;
        v62 = v38;
        _os_log_impl(&dword_21B365000, imageCache3, OS_LOG_TYPE_DEFAULT, "Image for key %@ is larger than max size so downscaling asynchronously ({%f,%f} > max size (px) of %f)", buf, 0x2Au);
      }
    }

    objc_initWeak(buf, self);
    workQueue = self->_workQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke_33;
    block[3] = &unk_2782BDA28;
    objc_copyWeak(&v50, buf);
    v44 = v31;
    v41 = v34;
    v48 = v41;
    v49 = v18;
    v45 = imageCopy;
    v51 = v33;
    v46 = v16;
    v47 = v15;
    dispatch_async(workQueue, block);

    objc_destroyWeak(&v50);
    objc_destroyWeak(buf);
    goto LABEL_24;
  }

  v18[2](v18, 0);
  LOBYTE(v33) = 0;
  v31 = v16;
LABEL_25:

  return v33;
}

uint64_t __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke_33(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v3 = MEMORY[0x277CBEBC0];
  v4 = [WeakRetained pathForKey:*(a1 + 32)];
  v5 = [v3 fileURLWithPath:v4];

  v6 = [WeakRetained onDiskFileType];
  v7 = CGImageDestinationCreateWithURL(v5, v6, 1uLL, 0);

  if (!v7)
  {
    v14 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "Unable to create CGImageDestinationWithURL for url %@", buf, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
    v15 = *(*(a1 + 72) + 16);
    goto LABEL_10;
  }

  CGImageDestinationAddImage(v7, [*(a1 + 40) CGImage], objc_msgSend(WeakRetained, "_defaultImageSavingOptions"));
  v8 = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(__CFURL *)v5 path];
    v10 = *(a1 + 32);
    *buf = 138412546;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    _os_log_impl(&dword_21B365000, v8, OS_LOG_TYPE_DEFAULT, "saving image to %@ for key %@", buf, 0x16u);
  }

  CGImageDestinationFinalize(v7);
  CFRelease(v7);
  if (*(a1 + 88) != 1)
  {
    (*(*(a1 + 64) + 16))();
    v15 = *(*(a1 + 72) + 16);
LABEL_10:
    v15();
    goto LABEL_11;
  }

  v11 = *(a1 + 32);
  [WeakRetained maxImageDimensionInPixels];
  v12 = [WeakRetained _resizeImageForKey:v11 maxDimensionInPixels:?];
  v13 = *(a1 + 48);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke_34;
  v16[3] = &unk_2782BDA00;
  v18 = *(a1 + 64);
  v17 = *(a1 + 48);
  v19 = *(a1 + 72);
  [WeakRetained _addImage:v12 forKey:v13 resizeIfTooBig:0 manageProcessingState:0 completion:v16];
  [WeakRetained removeItemForKey:*(a1 + 32)];
  (*(*(a1 + 64) + 16))();

LABEL_11:
}

uint64_t __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke_34(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (BOOL)_startProcessingForAddingKey:(id)key originalKey:(id)originalKey
{
  v21 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  originalKeyCopy = originalKey;
  v8 = [originalKeyCopy isEqualToString:keyCopy];
  if ((v8 & 1) == 0)
  {
    if ([(IMImageDiskCache *)self _isProcessingKey:originalKeyCopy completion:0])
    {
      imageCache = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = originalKeyCopy;
        v10 = "Skipping adding image. originalKey '%@' is already being processed";
        goto LABEL_16;
      }

LABEL_17:

LABEL_18:
      v13 = 0;
      goto LABEL_25;
    }

    if ([(IMBaseDiskCache *)self hasItemForKey:originalKeyCopy])
    {
      imageCache = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = originalKeyCopy;
        v10 = "Skipping adding image. An image for originalKey '%@' already exists on disk.";
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  if ([(IMImageDiskCache *)self _isProcessingKey:keyCopy completion:0])
  {
    imageCache = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = keyCopy;
      v10 = "Skipping adding image. key '%@' is already being processed";
LABEL_16:
      _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ([(IMBaseDiskCache *)self hasItemForKey:keyCopy])
  {
    imageCache2 = [MEMORY[0x277D3DA88] imageCache];
    v12 = os_log_type_enabled(imageCache2, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v12)
      {
        v17 = 138412290;
        v18 = keyCopy;
        _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "Skipping adding image. An image for key '%@' already exists on disk.", &v17, 0xCu);
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v17 = 138412546;
      v18 = keyCopy;
      v19 = 2112;
      v20 = originalKeyCopy;
      _os_log_impl(&dword_21B365000, imageCache2, OS_LOG_TYPE_DEFAULT, "Detected orphaned intermediate image with key '%@' for original '%@'.  Deleting and will continue processing…", &v17, 0x16u);
    }

    v14 = [(IMImageDiskCache *)self pathForKey:keyCopy];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtPath:v14 error:0];
  }

  if (([originalKeyCopy isEqualToString:keyCopy] & 1) == 0)
  {
    [(IMImageDiskCache *)self _startProcessingKey:originalKeyCopy completion:0];
  }

  [(IMImageDiskCache *)self _startProcessingKey:keyCopy completion:0];
  v13 = 1;
LABEL_25:

  return v13;
}

- (id)imageUrlForKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    v5 = [(IMImageDiskCache *)self pathForKey:keyCopy];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(self) = [(IMImageDiskCache *)self _isProcessingKey:keyCopy completion:0];

    if ((self & 1) != 0 || ![defaultManager fileExistsAtPath:v5])
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageForKey:(id)key
{
  v4 = [(IMImageDiskCache *)self imageUrlForKey:key];
  if (v4)
  {
    _defaultImageSavingSourceOptions = [(IMImageDiskCache *)self _defaultImageSavingSourceOptions];
    v6 = CGImageSourceCreateWithURL(v4, _defaultImageSavingSourceOptions);
    if (v6)
    {
      v7 = v6;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, _defaultImageSavingSourceOptions);
      if (ImageAtIndex)
      {
        v9 = ImageAtIndex;
        v10 = [MEMORY[0x277D755B8] imageWithCGImage:ImageAtIndex];
        CFRelease(v9);
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v7);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)pathForKey:(id)key
{
  keyCopy = key;
  _onDiskFileExtension = [(IMImageDiskCache *)self _onDiskFileExtension];
  v6 = [keyCopy stringByAppendingPathExtension:_onDiskFileExtension];

  v9.receiver = self;
  v9.super_class = IMImageDiskCache;
  v7 = [(IMBaseDiskCache *)&v9 pathForKey:v6];

  return v7;
}

- (void)_performWithSyncLock:(id)lock
{
  lockCopy = lock;
  [(NSRecursiveLock *)self->_syncLock lock];
  lockCopy[2]();
  [(NSRecursiveLock *)self->_syncLock unlock];
}

- (void)_startProcessingKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__IMImageDiskCache__startProcessingKey_completion___block_invoke;
  v10[3] = &unk_2782BDA50;
  v10[4] = self;
  v11 = keyCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = keyCopy;
  [(IMImageDiskCache *)self _performWithSyncLock:v10];
}

void __51__IMImageDiskCache__startProcessingKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proccessingKeys];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) completionHandlers];
  v10 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  if (!v10)
  {
    v10 = objc_opt_new();
    v4 = [*(a1 + 32) completionHandlers];
    [v4 setObject:v10 forKeyedSubscript:*(a1 + 40)];
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v6 = _Block_copy(v5);
    [v10 addObject:v6];
  }

  v7 = [*(a1 + 32) pendingPerformWhenAvailableOnDiskBlocks];
  v8 = [v7 objectForKeyedSubscript:*(a1 + 40)];

  v9 = [*(a1 + 32) pendingPerformWhenAvailableOnDiskBlocks];
  [v9 setObject:0 forKeyedSubscript:*(a1 + 40)];

  if (v8)
  {
    [v10 addObjectsFromArray:v8];
  }
}

- (void)_finishProcessingKey:(id)key success:(BOOL)success
{
  keyCopy = key;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__IMImageDiskCache__finishProcessingKey_success___block_invoke;
  v8[3] = &unk_2782BDA78;
  v8[4] = self;
  v9 = keyCopy;
  successCopy = success;
  v7 = keyCopy;
  [(IMImageDiskCache *)self _performWithSyncLock:v8];
}

void __49__IMImageDiskCache__finishProcessingKey_success___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) proccessingKeys];
  [v2 removeObject:*(a1 + 40)];

  v3 = [*(a1 + 32) completionHandlers];
  v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v11 + 1) + 8 * v9) + 16))(*(*(&v11 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [*(a1 + 32) completionHandlers];
  [v10 removeObjectForKey:*(a1 + 40)];
}

- (BOOL)_isProcessingKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__IMImageDiskCache__isProcessingKey_completion___block_invoke;
  v11[3] = &unk_2782BDAA0;
  v14 = &v15;
  v11[4] = self;
  v8 = keyCopy;
  v12 = v8;
  v9 = completionCopy;
  v13 = v9;
  [(IMImageDiskCache *)self _performWithSyncLock:v11];
  LOBYTE(self) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return self;
}

void __48__IMImageDiskCache__isProcessingKey_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) proccessingKeys];
  *(*(*(a1 + 56) + 8) + 24) = [v2 containsObject:*(a1 + 40)];

  if (*(a1 + 48) && *(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v3 = [*(a1 + 32) completionHandlers];
    v5 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (v5)
    {
      v4 = _Block_copy(*(a1 + 48));
      [v5 addObject:v4];
    }
  }
}

- (id)_resizeImageForKey:(id)key maxDimensionInPixels:(double)pixels
{
  v31 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v7 = [keyCopy length];
  if (pixels < 1.0 || v7 == 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(IMImageDiskCache *)self pathForKey:keyCopy];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v10];

    if (v13)
    {
      imageCache = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(imageCache, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = keyCopy;
        v29 = 2048;
        pixelsCopy = pixels;
        _os_log_impl(&dword_21B365000, imageCache, OS_LOG_TYPE_DEFAULT, "[ImageResize] disk-based image resizing: (key = %@, maxDimensionInPixels = %.2f)", buf, 0x16u);
      }

      _defaultImageSavingSourceOptions = [(IMImageDiskCache *)self _defaultImageSavingSourceOptions];
      v9 = CGImageSourceCreateWithURL(v11, _defaultImageSavingSourceOptions);
      if (v9)
      {
        v16 = MEMORY[0x277CBEC38];
        v17 = *MEMORY[0x277CD3578];
        v25[0] = *MEMORY[0x277CD3610];
        v25[1] = v17;
        v26[0] = MEMORY[0x277CBEC38];
        v26[1] = MEMORY[0x277CBEC38];
        v18 = *MEMORY[0x277CD3568];
        v26[2] = MEMORY[0x277CBEC38];
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:{pixels, v25[0], v17, v18, *MEMORY[0x277CD3660]}];
        v25[4] = *MEMORY[0x277CD3678];
        v26[3] = v19;
        v26[4] = v16;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v9, 0, v20);
        CFRelease(v9);

        if (ThumbnailAtIndex)
        {
          v22 = MEMORY[0x277D755B8];
          mainScreen = [MEMORY[0x277D759A0] mainScreen];
          [mainScreen scale];
          v9 = [v22 imageWithCGImage:ThumbnailAtIndex scale:0 orientation:?];

          CFRelease(ThumbnailAtIndex);
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (void)performWhenURLAvailableForImageForKey:(id)key block:(id)block
{
  keyCopy = key;
  blockCopy = block;
  if (blockCopy)
  {
    v8 = [(IMImageDiskCache *)self imageUrlForKey:keyCopy];

    if (v8)
    {
      blockCopy[2](blockCopy, 1);
    }

    else
    {
      v13[0] = 0;
      v13[1] = v13;
      v13[2] = 0x2020000000;
      v14 = 0;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__IMImageDiskCache_performWhenURLAvailableForImageForKey_block___block_invoke;
      v9[3] = &unk_2782BDAA0;
      v12 = v13;
      v9[4] = self;
      v10 = keyCopy;
      v11 = blockCopy;
      [(IMImageDiskCache *)self _performWithSyncLock:v9];

      _Block_object_dispose(v13, 8);
    }
  }
}

void __64__IMImageDiskCache_performWhenURLAvailableForImageForKey_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__IMImageDiskCache_performWhenURLAvailableForImageForKey_block___block_invoke_2;
  v11[3] = &unk_2782BD8D0;
  v12 = *(a1 + 48);
  *(*(*(a1 + 56) + 8) + 24) = [v2 _isProcessingKey:v3 completion:v11];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v4 = [*(a1 + 32) pendingPerformWhenAvailableOnDiskBlocks];
    v5 = [v4 objectForKeyedSubscript:*(a1 + 40)];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [MEMORY[0x277CBEB18] array];
    }

    v8 = v7;

    v9 = _Block_copy(*(a1 + 48));
    [v8 addObject:v9];

    v10 = [*(a1 + 32) pendingPerformWhenAvailableOnDiskBlocks];
    [v10 setObject:v8 forKeyedSubscript:*(a1 + 40)];
  }
}

@end