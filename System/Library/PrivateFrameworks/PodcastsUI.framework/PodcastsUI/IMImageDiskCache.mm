@interface IMImageDiskCache
- (BOOL)_addImage:(id)a3 forKey:(id)a4 resizeIfTooBig:(BOOL)a5 manageProcessingState:(BOOL)a6 completion:(id)a7;
- (BOOL)_isProcessingKey:(id)a3 completion:(id)a4;
- (BOOL)_startProcessingForAddingKey:(id)a3 originalKey:(id)a4;
- (BOOL)_usesLessMemoryToConvertThenResizeImageSource:(CGImageSource *)a3 destinationDimensionInPixels:(double)a4;
- (BOOL)copyImageFromSourceUrl:(id)a3 sourceFileType:(id)a4 to:(id)a5 discardTransparency:(BOOL)a6 enforceSquare:(BOOL)a7 maxDimensionInPixels:(double)a8;
- (CGImageSource)_copyImageSourceByConvertingImage:(CGImageSource *)a3 toFileType:(id)a4 destinationUrl:(id)a5;
- (IMImageDiskCache)initWithBasePath:(id)a3 maxImageDimensionInPixels:(double)a4;
- (id)_defaultImageSavingOptions;
- (id)_defaultImageSavingSourceOptions;
- (id)_resizeImageForKey:(id)a3 maxDimensionInPixels:(double)a4;
- (id)imageForKey:(id)a3;
- (id)imageUrlForKey:(id)a3;
- (id)pathForKey:(id)a3;
- (void)_addImageWithSourceUrl:(id)a3 forKey:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8;
- (void)_finishProcessingKey:(id)a3 success:(BOOL)a4;
- (void)_performWithSyncLock:(id)a3;
- (void)_startProcessingKey:(id)a3 completion:(id)a4;
- (void)addImageWithSourceUrl:(id)a3 forKey:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8;
- (void)addImageWithSourceUrl:(id)a3 forKey:(id)a4 enforceSquare:(BOOL)a5 maxDimensionInPixels:(double)a6 completion:(id)a7;
- (void)addImagesWithSourceUrl:(id)a3 forKeys:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 completion:(id)a7;
- (void)copyImageFromSourceUrl:(id)a3 to:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8;
- (void)performWhenURLAvailableForImageForKey:(id)a3 block:(id)a4;
@end

@implementation IMImageDiskCache

- (IMImageDiskCache)initWithBasePath:(id)a3 maxImageDimensionInPixels:(double)a4
{
  v24.receiver = self;
  v24.super_class = IMImageDiskCache;
  v5 = [(IMBaseDiskCache *)&v24 initWithBasePath:a3];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@-worker", v8];
    v10 = dispatch_queue_create([v9 UTF8String], 0);
    workQueue = v5->_workQueue;
    v5->_workQueue = v10;

    v12 = [MEMORY[0x277D3DB18] fileType];
    v13 = [v12 identifier];
    onDiskFileType = v5->_onDiskFileType;
    v5->_onDiskFileType = v13;

    v5->_saveCompressionQuality = 0.9;
    v5->_maxImageDimensionInPixels = a4;
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

- (void)_addImageWithSourceUrl:(id)a3 forKey:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8
{
  v10 = a6;
  v11 = a5;
  v19 = a3;
  v14 = a4;
  v15 = a8;
  v16 = [v14 length];
  if (v19 && v16)
  {
    if ([(IMBaseDiskCache *)self hasItemForKey:v14])
    {
      if (v15)
      {
        v15[2](v15, 1);
      }
    }

    else
    {
      v17 = [(IMImageDiskCache *)self pathForKey:v14];
      v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:0];
      [(IMImageDiskCache *)self copyImageFromSourceUrl:v19 to:v18 discardTransparency:v11 enforceSquare:v10 maxDimensionInPixels:v15 completion:a7];
    }
  }

  else if (v15)
  {
    v15[2](v15, 0);
  }
}

- (void)addImagesWithSourceUrl:(id)a3 forKeys:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 completion:(id)a7
{
  v27 = a6;
  v8 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v28 = v12;
  v39 = v28;
  v13 = a4;
  v14 = _Block_copy(aBlock);
  v15 = [v13 objectsPassingTest:&__block_literal_global];

  v16 = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v41 = v11;
    v42 = 2112;
    v43 = v15;
    v44 = 1024;
    v45 = v8;
    v46 = 1024;
    v47 = v27;
    _os_log_impl(&dword_21B365000, v16, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: got store-image request (fileUrl=%@, keys=%@, discardTransparency=%d, enforceSquare=%d)", buf, 0x22u);
  }

  v17 = [v15 mutableCopy];
  v18 = v17;
  if (v11 && [v17 count])
  {
    v19 = [v18 anyObject];
    [v18 removeObject:v19];
    v20 = dispatch_group_create();
    dispatch_group_enter(v20);
    objc_initWeak(&location, self);
    v21 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v19;
      _os_log_impl(&dword_21B365000, v21, OS_LOG_TYPE_DEFAULT, "[DiskCache] addImagesWithSourceUrl: adding first item via addImage: (fileUrl = %@, key=%@)", buf, 0x16u);
    }

    maxImageDimensionInPixels = self->_maxImageDimensionInPixels;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke_15;
    v35[3] = &unk_2782BD918;
    v23 = v20;
    v36 = v23;
    [(IMImageDiskCache *)self addImageWithSourceUrl:v11 forKey:v19 discardTransparency:v8 enforceSquare:v27 maxDimensionInPixels:v35 completion:maxImageDimensionInPixels];
    v24 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__IMImageDiskCache_addImagesWithSourceUrl_forKeys_discardTransparency_enforceSquare_completion___block_invoke_2_16;
    block[3] = &unk_2782BD940;
    objc_copyWeak(&v34, &location);
    v30 = v19;
    v31 = v18;
    v33 = v14;
    v32 = v11;
    v25 = v19;
    dispatch_group_notify(v23, v24, block);

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  else
  {
    v26 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v18;
      _os_log_impl(&dword_21B365000, v26, OS_LOG_TYPE_ERROR, "[DiskCache] addImagesWithSourceUrl: invalid requests (fileUrl = %@, validKeys=%@), bailing.", buf, 0x16u);
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

- (void)addImageWithSourceUrl:(id)a3 forKey:(id)a4 enforceSquare:(BOOL)a5 maxDimensionInPixels:(double)a6 completion:(id)a7
{
  v8 = a5;
  v12 = a7;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__IMImageDiskCache_addImageWithSourceUrl_forKey_enforceSquare_maxDimensionInPixels_completion___block_invoke;
  v14[3] = &unk_2782BD8D0;
  v15 = v12;
  v13 = v12;
  [(IMImageDiskCache *)self addImageWithSourceUrl:a3 forKey:a4 discardTransparency:0 enforceSquare:v8 maxDimensionInPixels:v14 completion:a6];
}

- (void)addImageWithSourceUrl:(id)a3 forKey:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  if (![(IMImageDiskCache *)self _isProcessingKey:v15 completion:v16])
  {
    objc_initWeak(&location, self);
    [(IMImageDiskCache *)self _startProcessingKey:v15 completion:v16];
    workQueue = self->_workQueue;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __115__IMImageDiskCache_addImageWithSourceUrl_forKey_discardTransparency_enforceSquare_maxDimensionInPixels_completion___block_invoke;
    v18[3] = &unk_2782BD990;
    objc_copyWeak(v21, &location);
    v19 = v14;
    v20 = v15;
    v22 = a5;
    v23 = a6;
    v21[1] = *&a7;
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

- (void)copyImageFromSourceUrl:(id)a3 to:(id)a4 discardTransparency:(BOOL)a5 enforceSquare:(BOOL)a6 maxDimensionInPixels:(double)a7 completion:(id)a8
{
  v9 = a6;
  v10 = a5;
  v20 = a8;
  workQueue = self->_workQueue;
  v15 = a4;
  v16 = a3;
  dispatch_assert_queue_V2(workQueue);
  v17 = [(IMImageDiskCache *)self onDiskFileType];
  v18 = [(IMImageDiskCache *)self copyImageFromSourceUrl:v16 sourceFileType:v17 to:v15 discardTransparency:v10 enforceSquare:v9 maxDimensionInPixels:a7];

  v19 = v20;
  if (v20)
  {
    (*(v20 + 2))(v20, v18);
    v19 = v20;
  }
}

- (BOOL)copyImageFromSourceUrl:(id)a3 sourceFileType:(id)a4 to:(id)a5 discardTransparency:(BOOL)a6 enforceSquare:(BOOL)a7 maxDimensionInPixels:(double)a8
{
  v9 = a7;
  v10 = a6;
  v98 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = os_transaction_create();
  v18 = [MEMORY[0x277D3DA88] imageCache];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v91 = v14;
    v92 = 2112;
    *v93 = v16;
    *&v93[8] = 1024;
    *&v93[10] = v10;
    v94 = 1024;
    v95 = v9;
    v96 = 2048;
    v97 = a8;
    _os_log_impl(&dword_21B365000, v18, OS_LOG_TYPE_DEFAULT, "saving image to disk in copyImageFromSourceUrl: (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);
  }

  v84 = v10;

  v19 = objc_autoreleasePoolPush();
  v20 = *MEMORY[0x277CD3668];
  v88[0] = *MEMORY[0x277CD3618];
  v88[1] = v20;
  v89[0] = MEMORY[0x277CBEC28];
  v89[1] = v15;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:2];
  v21 = CGImageSourceCreateWithURL(v14, v85);
  v22 = v21;
  if (!v21 || !CGImageSourceGetCount(v21))
  {
    v23 = v15;
    v26 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [(__CFURL *)v14 path];
      *buf = 134218498;
      v91 = v22;
      v92 = 1024;
      *v93 = 0;
      *&v93[4] = 2112;
      *&v93[6] = v27;
      _os_log_impl(&dword_21B365000, v26, OS_LOG_TYPE_DEFAULT, "Could not create image source (source = %p, imageCount = %d) using sourceUrl: %@", buf, 0x1Cu);
    }

    if (!v22)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v23 = v15;
  [(IMImageDiskCache *)self onDiskFileType];
  v24 = v83 = v17;
  v25 = CGImageDestinationCreateWithURL(v16, v24, 1uLL, 0);

  v17 = v83;
  idst = v25;
  if (!v25)
  {
LABEL_11:
    CFRelease(v22);
LABEL_12:
    v28 = 0;
    v29 = v23;
    v30 = v16;
    goto LABEL_51;
  }

  v80 = v9 && !CGImageSourceIsSquare(v22);
  v29 = v23;
  v31 = [(IMImageDiskCache *)self _defaultImageSavingOptions];
  v82 = [v31 mutableCopy];

  v30 = v16;
  if (v84)
  {
    v32 = [MEMORY[0x277D75348] whiteColor];
    v33 = [v32 CGColor];
    [v82 setObject:v33 forKeyedSubscript:*MEMORY[0x277CD2CD0]];
  }

  if ([(IMImageDiskCache *)self _needsResizing:v22 maxDimensionInPixels:a8])
  {
    v79 = v19;
    if ([(IMImageDiskCache *)self _usesLessMemoryToConvertThenResizeImageSource:v22 destinationDimensionInPixels:a8])
    {
      v34 = MEMORY[0x277CBEBC0];
      v35 = NSTemporaryDirectory();
      v36 = [MEMORY[0x277CCAD78] UUID];
      v37 = [v36 UUIDString];
      v38 = [v35 stringByAppendingPathComponent:v37];
      v39 = [v34 fileURLWithPath:v38];

      v40 = [(IMImageDiskCache *)self onDiskFileType];
      v41 = [(IMImageDiskCache *)self _copyImageSourceByConvertingImage:v22 toFileType:v40 destinationUrl:v39];

      if (v41)
      {
        v42 = [MEMORY[0x277D3DA88] imageCache];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          v43 = [(__CFURL *)v14 path];
          v44 = [v39 path];
          *buf = 138412546;
          v91 = v43;
          v92 = 2112;
          *v93 = v44;
          _os_log_impl(&dword_21B365000, v42, OS_LOG_TYPE_DEFAULT, "[ImageResize] performing 2-step save.  Performing format-only conversion (originalSourceUrl = %@, intermediateUrl = %@", buf, 0x16u);
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
    v63 = [MEMORY[0x277CCABB0] numberWithDouble:a8];
    v86[4] = *MEMORY[0x277CD3678];
    v87[3] = v63;
    v87[4] = v59;
    v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:5];

    v65 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [(__CFURL *)v14 path];
      v67 = [(__CFURL *)v30 path];
      *buf = 138413314;
      v91 = v66;
      v92 = 2112;
      *v93 = v67;
      *&v93[8] = 1024;
      *&v93[10] = v84;
      v94 = 1024;
      v95 = v80;
      v96 = 2048;
      v97 = a8;
      _os_log_impl(&dword_21B365000, v65, OS_LOG_TYPE_DEFAULT, "[ImageResize] saving... (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);
    }

    v68 = v64;
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v22, 0, v64);
    if (v80)
    {
      v70 = MEMORY[0x277D755B8];
      v71 = [MEMORY[0x277D759A0] mainScreen];
      [v71 scale];
      v72 = [v70 imageWithCGImage:ThumbnailAtIndex scale:0 orientation:?];

      if (v72)
      {
        v73 = [v72 squareImage];
        v74 = [v73 CGImage];

        CGImageDestinationAddImage(idst, v74, v82);
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
    v46 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(__CFURL *)v14 path];
      [(__CFURL *)v16 path];
      v49 = v48 = v19;
      *buf = 138413314;
      v91 = v47;
      v92 = 2112;
      *v93 = v49;
      *&v93[8] = 1024;
      *&v93[10] = v84;
      v94 = 1024;
      v95 = v80;
      v96 = 2048;
      v97 = a8;
      _os_log_impl(&dword_21B365000, v46, OS_LOG_TYPE_DEFAULT, "[ImageResize] saving... (sourceUrl = %@, destinationUrl = %@, discardTransparency=%d, enforceSquare=%d, maxPixels=%.2f)", buf, 0x2Cu);

      v19 = v48;
    }

    if (v80)
    {
      v50 = v19;
      v51 = MEMORY[0x277D755B8];
      v52 = [(__CFURL *)v14 path];
      v53 = [v51 imageWithContentsOfFile:v52];

      if (v53)
      {
        v54 = [MEMORY[0x277D3DA88] imageCache];
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = [(__CFURL *)v14 path];
          *buf = 138412290;
          v91 = v55;
          _os_log_impl(&dword_21B365000, v54, OS_LOG_TYPE_DEFAULT, "Failed to load image from: %@", buf, 0xCu);
        }

        v56 = [v53 squareImage];
        v57 = [v56 CGImage];

        CGImageDestinationAddImage(idst, v57, v82);
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
    v75 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
    {
      v76 = [(__CFURL *)v30 path];
      *buf = 138412290;
      v91 = v76;
      _os_log_impl(&dword_21B365000, v75, OS_LOG_TYPE_DEFAULT, "Failed to write image data to: %@", buf, 0xCu);

      v58 = idst;
    }
  }

  CFRelease(v58);
  CFRelease(v22);
  if (v45)
  {
    v77 = [MEMORY[0x277CCAA00] defaultManager];
    [v77 removeItemAtURL:v45 error:0];
  }

  v17 = v83;
LABEL_51:

  objc_autoreleasePoolPop(v19);
  return v28;
}

- (CGImageSource)_copyImageSourceByConvertingImage:(CGImageSource *)a3 toFileType:(id)a4 destinationUrl:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!a3)
  {
    Type = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(Type, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_21B365000, Type, OS_LOG_TYPE_ERROR, "no source", &v18, 2u);
    }

    goto LABEL_10;
  }

  Type = CGImageSourceGetType(a3);
  v11 = [(IMImageDiskCache *)self onDiskFileType];
  v12 = [Type isEqualToString:v11];

  if (v12)
  {
LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v13 = CGImageDestinationCreateWithURL(v9, v8, 1uLL, 0);
  if (!v13)
  {
    v16 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v9;
      _os_log_impl(&dword_21B365000, v16, OS_LOG_TYPE_ERROR, "unable to save image to %@", &v18, 0xCu);
    }

    goto LABEL_10;
  }

  v14 = v13;
  CGImageDestinationAddImageFromSource(v13, a3, 0, 0);
  CGImageDestinationFinalize(v14);
  v15 = CGImageSourceCreateWithURL(v9, [(IMImageDiskCache *)self _defaultImageSavingSourceOptions]);
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
  v4 = [(IMImageDiskCache *)self onDiskFileType];
  v7[2] = *MEMORY[0x277CD3678];
  v8[1] = v4;
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

- (BOOL)_usesLessMemoryToConvertThenResizeImageSource:(CGImageSource *)a3 destinationDimensionInPixels:(double)a4
{
  v4 = a3;
  if (a3)
  {
    Type = CGImageSourceGetType(a3);
    v8 = [(IMImageDiskCache *)self onDiskFileType];
    v9 = [(__CFString *)Type isEqualToString:v8];

    if (v9)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      v10 = (2 * CGImageSourcePixelSize(v4)) >= a4;
      LOBYTE(v4) = (2 * v11) >= a4 && v10;
    }
  }

  return v4;
}

- (BOOL)_addImage:(id)a3 forKey:(id)a4 resizeIfTooBig:(BOOL)a5 manageProcessingState:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v9 = a5;
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = os_transaction_create();
  v16 = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__IMImageDiskCache__addImage_forKey_resizeIfTooBig_manageProcessingState_completion___block_invoke;
  aBlock[3] = &unk_2782BD8D0;
  v17 = v14;
  v54 = v17;
  v18 = _Block_copy(aBlock);
  v19 = [v16 length];
  if (v12 && v19)
  {
    v20 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [v12 size];
      NSStringFromCGSize(v64);
      v21 = v17;
      v23 = v22 = v8;
      *buf = 138412546;
      v56 = v23;
      v57 = 2112;
      v58 = v16;
      _os_log_impl(&dword_21B365000, v20, OS_LOG_TYPE_DEFAULT, "adding image (size = %@) to cache for with key %@", buf, 0x16u);

      v8 = v22;
      v17 = v21;
    }

    if (!v9 || (([v12 scale], v25 = v24, objc_msgSend(v12, "size"), maxImageDimensionInPixels = self->_maxImageDimensionInPixels, v29 = v25 * v28, v25 * v26 <= maxImageDimensionInPixels) ? (v30 = v29 <= maxImageDimensionInPixels) : (v30 = 0), v30))
    {
      v33 = 0;
      v31 = v16;
      if (!v8)
      {
LABEL_13:
        v34 = &__block_literal_global_32;
        goto LABEL_18;
      }
    }

    else
    {
      v31 = [v16 stringByAppendingString:@"-raw"];

      v32 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v56 = v16;
        _os_log_impl(&dword_21B365000, v32, OS_LOG_TYPE_DEFAULT, "image is too big, will resize (key=%@)", buf, 0xCu);
      }

      v33 = 1;
      if (!v8)
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
      v35 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        [v12 size];
        v37 = v36;
        [v12 size];
        v38 = self->_maxImageDimensionInPixels;
        *buf = 138413058;
        v56 = v31;
        v57 = 2048;
        v58 = v37;
        v59 = 2048;
        v60 = v39;
        v61 = 2048;
        v62 = v38;
        _os_log_impl(&dword_21B365000, v35, OS_LOG_TYPE_DEFAULT, "Image for key %@ is larger than max size so downscaling asynchronously ({%f,%f} > max size (px) of %f)", buf, 0x2Au);
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
    v45 = v12;
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

- (BOOL)_startProcessingForAddingKey:(id)a3 originalKey:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 isEqualToString:v6];
  if ((v8 & 1) == 0)
  {
    if ([(IMImageDiskCache *)self _isProcessingKey:v7 completion:0])
    {
      v9 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v7;
        v10 = "Skipping adding image. originalKey '%@' is already being processed";
        goto LABEL_16;
      }

LABEL_17:

LABEL_18:
      v13 = 0;
      goto LABEL_25;
    }

    if ([(IMBaseDiskCache *)self hasItemForKey:v7])
    {
      v9 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412290;
        v18 = v7;
        v10 = "Skipping adding image. An image for originalKey '%@' already exists on disk.";
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  if ([(IMImageDiskCache *)self _isProcessingKey:v6 completion:0])
  {
    v9 = [MEMORY[0x277D3DA88] imageCache];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v6;
      v10 = "Skipping adding image. key '%@' is already being processed";
LABEL_16:
      _os_log_impl(&dword_21B365000, v9, OS_LOG_TYPE_DEFAULT, v10, &v17, 0xCu);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if ([(IMBaseDiskCache *)self hasItemForKey:v6])
  {
    v11 = [MEMORY[0x277D3DA88] imageCache];
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (v12)
      {
        v17 = 138412290;
        v18 = v6;
        _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "Skipping adding image. An image for key '%@' already exists on disk.", &v17, 0xCu);
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v17 = 138412546;
      v18 = v6;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_21B365000, v11, OS_LOG_TYPE_DEFAULT, "Detected orphaned intermediate image with key '%@' for original '%@'.  Deleting and will continue processing…", &v17, 0x16u);
    }

    v14 = [(IMImageDiskCache *)self pathForKey:v6];
    v15 = [MEMORY[0x277CCAA00] defaultManager];
    [v15 removeItemAtPath:v14 error:0];
  }

  if (([v7 isEqualToString:v6] & 1) == 0)
  {
    [(IMImageDiskCache *)self _startProcessingKey:v7 completion:0];
  }

  [(IMImageDiskCache *)self _startProcessingKey:v6 completion:0];
  v13 = 1;
LABEL_25:

  return v13;
}

- (id)imageUrlForKey:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(IMImageDiskCache *)self pathForKey:v4];
    v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    LOBYTE(self) = [(IMImageDiskCache *)self _isProcessingKey:v4 completion:0];

    if ((self & 1) != 0 || ![v7 fileExistsAtPath:v5])
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

- (id)imageForKey:(id)a3
{
  v4 = [(IMImageDiskCache *)self imageUrlForKey:a3];
  if (v4)
  {
    v5 = [(IMImageDiskCache *)self _defaultImageSavingSourceOptions];
    v6 = CGImageSourceCreateWithURL(v4, v5);
    if (v6)
    {
      v7 = v6;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v6, 0, v5);
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

- (id)pathForKey:(id)a3
{
  v4 = a3;
  v5 = [(IMImageDiskCache *)self _onDiskFileExtension];
  v6 = [v4 stringByAppendingPathExtension:v5];

  v9.receiver = self;
  v9.super_class = IMImageDiskCache;
  v7 = [(IMBaseDiskCache *)&v9 pathForKey:v6];

  return v7;
}

- (void)_performWithSyncLock:(id)a3
{
  v4 = a3;
  [(NSRecursiveLock *)self->_syncLock lock];
  v4[2]();
  [(NSRecursiveLock *)self->_syncLock unlock];
}

- (void)_startProcessingKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__IMImageDiskCache__startProcessingKey_completion___block_invoke;
  v10[3] = &unk_2782BDA50;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)_finishProcessingKey:(id)a3 success:(BOOL)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__IMImageDiskCache__finishProcessingKey_success___block_invoke;
  v8[3] = &unk_2782BDA78;
  v8[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
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

- (BOOL)_isProcessingKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v12 = v8;
  v9 = v7;
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

- (id)_resizeImageForKey:(id)a3 maxDimensionInPixels:(double)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 length];
  if (a4 < 1.0 || v7 == 0)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(IMImageDiskCache *)self pathForKey:v6];
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [v12 fileExistsAtPath:v10];

    if (v13)
    {
      v14 = [MEMORY[0x277D3DA88] imageCache];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = v6;
        v29 = 2048;
        v30 = a4;
        _os_log_impl(&dword_21B365000, v14, OS_LOG_TYPE_DEFAULT, "[ImageResize] disk-based image resizing: (key = %@, maxDimensionInPixels = %.2f)", buf, 0x16u);
      }

      v15 = [(IMImageDiskCache *)self _defaultImageSavingSourceOptions];
      v9 = CGImageSourceCreateWithURL(v11, v15);
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
        v19 = [MEMORY[0x277CCABB0] numberWithDouble:{a4, v25[0], v17, v18, *MEMORY[0x277CD3660]}];
        v25[4] = *MEMORY[0x277CD3678];
        v26[3] = v19;
        v26[4] = v16;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:5];

        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v9, 0, v20);
        CFRelease(v9);

        if (ThumbnailAtIndex)
        {
          v22 = MEMORY[0x277D755B8];
          v23 = [MEMORY[0x277D759A0] mainScreen];
          [v23 scale];
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

- (void)performWhenURLAvailableForImageForKey:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(IMImageDiskCache *)self imageUrlForKey:v6];

    if (v8)
    {
      v7[2](v7, 1);
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
      v10 = v6;
      v11 = v7;
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