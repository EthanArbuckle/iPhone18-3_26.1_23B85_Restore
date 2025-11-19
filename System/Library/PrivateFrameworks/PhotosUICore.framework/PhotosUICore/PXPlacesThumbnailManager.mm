@interface PXPlacesThumbnailManager
+ (id)_filePathForHash:(id)a3;
+ (id)_filePathForMetadataPlist;
+ (id)_hashStringForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5;
+ (id)_thumbnailFilePath;
+ (id)hashStringForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5 displayScale:(double)a6;
- (NSMutableDictionary)metadataPlist;
- (PXPlacesThumbnailManager)init;
- (id)_hashStringForKey:(id)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5 displayScale:(double)a6;
- (id)fetchPlacesThumbnailForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5;
- (void)_createThumbnailDirectoryIfNeeded;
- (void)_fetchDiskOrMemoryPlacesThumbnailForHashString:(id)a3 synchronous:(BOOL)a4 completion:(id)a5;
- (void)_setInMemoryAndPersistToDiskThumbnail:(id)a3 forHashString:(id)a4;
- (void)_setInMemoryThumbnail:(id)a3 forHashString:(id)a4;
- (void)_setMetadataDate:(id)a3 forKey:(id)a4;
- (void)_writeMetadataPlistToDisk;
- (void)cachePlacesThumbnailForBoundingRegion:(id *)a3 size:(CGSize)a4 snapshot:(id)a5 interfaceStyle:(int64_t)a6;
@end

@implementation PXPlacesThumbnailManager

- (void)_writeMetadataPlistToDisk
{
  v55[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [(PXPlacesThumbnailManager *)self metadataPlist];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __53__PXPlacesThumbnailManager__writeMetadataPlistToDisk__block_invoke;
  v48[3] = &unk_1E772F690;
  v36 = v3;
  v49 = v36;
  v6 = v4;
  v50 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v48];
  v34 = +[PXPlacesThumbnailManager _thumbnailFilePath];
  v7 = [MEMORY[0x1E695DFF8] URLWithString:?];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v55[0] = *MEMORY[0x1E695DC30];
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:1];
  v33 = v7;
  v10 = [v8 enumeratorAtURL:v7 includingPropertiesForKeys:v9 options:4 errorHandler:0];

  v35 = v5;
  v38 = [v5 allKeys];
  v37 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v32 = v10;
  v11 = [v10 allObjects];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v44 + 1) + 8 * i) lastPathComponent];
        v17 = [v16 pathExtension];
        v18 = [v17 isEqualToString:@"jpg"];

        if (v18)
        {
          v19 = [v16 stringByDeletingPathExtension];
          if (([v38 containsObject:v19] & 1) == 0)
          {
            [v37 setObject:v36 forKey:v19];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v13);
  }

  [v35 removeObjectsForKeys:v6];
  [v35 addEntriesFromDictionary:v37];
  v20 = off_1E771F000;
  v31 = +[PXPlacesThumbnailManager _filePathForMetadataPlist];
  if (([v35 writeToFile:? atomically:?] & 1) == 0)
  {
    PXAssertGetLog();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v21 = v6;
  v22 = [v21 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v41;
    v25 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v41 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = [(__objc2_class *)v20[128] _filePathForHash:*(*(&v40 + 1) + 8 * j)];
        v39 = 0;
        [v8 removeItemAtPath:v27 error:&v39];
        v28 = v39;
        if (v28)
        {
          v29 = v28;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v30 = [v29 localizedDescription];
            *buf = 138412290;
            v53 = v30;
            _os_log_impl(&dword_1A3C1C000, v25, OS_LOG_TYPE_DEFAULT, "Could not delete thumbnail with error: %@", buf, 0xCu);

            v20 = off_1E771F000;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v23);
  }
}

void __53__PXPlacesThumbnailManager__writeMetadataPlistToDisk__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(a1 + 32) timeIntervalSinceDate:a3];
  if (v5 > 604800.0)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (void)_setMetadataDate:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PXPlacesThumbnailManager *)self metadataQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __52__PXPlacesThumbnailManager__setMetadataDate_forKey___block_invoke;
  v11[3] = &unk_1E774B708;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __52__PXPlacesThumbnailManager__setMetadataDate_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [WeakRetained metadataPlist];
  [v2 setObject:*(a1 + 32) forKey:*(a1 + 40)];
}

- (id)_hashStringForKey:(id)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5 displayScale:(double)a6
{
  height = a4.height;
  width = a4.width;
  v10 = MEMORY[0x1E696AEC0];
  v11 = a3;
  v18.width = width;
  v18.height = height;
  v12 = NSStringFromCGSize(v18);
  v13 = [v10 stringWithFormat:@"%@%@%ld%f", v11, v12, a5, *&a6];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
  v15 = [v14 stringValue];

  return v15;
}

- (void)_createThumbnailDirectoryIfNeeded
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = +[PXPlacesThumbnailManager _thumbnailFilePath];
  v6 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v6];
  v5 = v6;
  if ((v4 & 1) == 0)
  {
    PXAssertGetLog();
  }
}

- (void)_setInMemoryAndPersistToDiskThumbnail:(id)a3 forHashString:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PXPlacesThumbnailManager *)self _setInMemoryThumbnail:v6 forHashString:v7];
  objc_initWeak(&location, self);
  v8 = [(PXPlacesThumbnailManager *)self metadataQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__PXPlacesThumbnailManager__setInMemoryAndPersistToDiskThumbnail_forHashString___block_invoke;
  v11[3] = &unk_1E774B708;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __80__PXPlacesThumbnailManager__setInMemoryAndPersistToDiskThumbnail_forHashString___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained thumbnailsToWrite];
  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [WeakRetained setThumbnailsToWrite:v3];
  }

  [v3 setValue:*(a1 + 32) forKey:*(a1 + 40)];
  v4 = [WeakRetained diskTimer];
  if (!v4)
  {
    v5 = MEMORY[0x1E695DFF0];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __80__PXPlacesThumbnailManager__setInMemoryAndPersistToDiskThumbnail_forHashString___block_invoke_2;
    v9 = &unk_1E772F668;
    v10 = v3;
    v11 = WeakRetained;
    v4 = [v5 timerWithTimeInterval:0 repeats:&v6 block:3.0];
    [WeakRetained setDiskTimer:{v4, v6, v7, v8, v9}];
    [v4 fire];
  }
}

void __80__PXPlacesThumbnailManager__setInMemoryAndPersistToDiskThumbnail_forHashString___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_21020];
  [*(a1 + 32) removeAllObjects];
  [*(a1 + 40) _writeMetadataPlistToDisk];
  [*(a1 + 40) setDiskTimer:0];
  [v4 invalidate];
}

void __80__PXPlacesThumbnailManager__setInMemoryAndPersistToDiskThumbnail_forHashString___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  image = a3;
  v4 = [PXPlacesThumbnailManager _filePathForHash:a2];
  if (v4)
  {
    v5 = UIImageJPEGRepresentation(image, 1.0);
    v6 = [objc_alloc(MEMORY[0x1E695F658]) initWithData:v5];
    v7 = [v6 properties];
    v8 = [v7 objectForKey:*MEMORY[0x1E696D9B0]];
    CGImageWriteEXIFJPEGToPath();
  }
}

- (void)_setInMemoryThumbnail:(id)a3 forHashString:(id)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10[0] = a3;
  v6 = MEMORY[0x1E695DF20];
  v7 = a4;
  v8 = a3;
  [v6 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  objc_claimAutoreleasedReturnValue();
  [(PXPlacesThumbnailManager *)self cache];
  objc_claimAutoreleasedReturnValue();
  [v8 px_pixelSize];
  PXSizeGetArea();
}

- (void)_fetchDiskOrMemoryPlacesThumbnailForHashString:(id)a3 synchronous:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = [(PXPlacesThumbnailManager *)self cache];
  v11 = [v10 objectForKey:v8];

  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__21025;
  v26 = __Block_byref_object_dispose__21026;
  v27 = [v11 objectForKey:v8];
  if (v23[5])
  {
    if (v9)
    {
      v9[2](v9);
    }
  }

  else
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __98__PXPlacesThumbnailManager__fetchDiskOrMemoryPlacesThumbnailForHashString_synchronous_completion___block_invoke;
    aBlock[3] = &unk_1E7742618;
    v21 = &v22;
    v18 = v8;
    v19 = self;
    v20 = v9;
    v12 = _Block_copy(aBlock);
    v13 = v12;
    if (v6)
    {
      (*(v12 + 2))(v12);
    }

    else
    {
      v14 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __98__PXPlacesThumbnailManager__fetchDiskOrMemoryPlacesThumbnailForHashString_synchronous_completion___block_invoke_2;
      block[3] = &unk_1E774C250;
      v16 = v13;
      dispatch_async(v14, block);
    }
  }

  _Block_object_dispose(&v22, 8);
}

void __98__PXPlacesThumbnailManager__fetchDiskOrMemoryPlacesThumbnailForHashString_synchronous_completion___block_invoke(uint64_t a1)
{
  v2 = [PXPlacesThumbnailManager _filePathForHash:*(a1 + 32)];
  v15 = v2;
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
    if (v3)
    {
      v4 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v3];
      v5 = MEMORY[0x1E69DCAB8];
      v6 = [MEMORY[0x1E69DCEB0] px_mainScreen];
      [v6 scale];
      v7 = [v5 imageWithData:v4 scale:?];
      v8 = *(*(a1 + 56) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v10 = [*(*(*(a1 + 56) + 8) + 40) imageByPreparingForDisplay];
      v11 = *(*(a1 + 56) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(*(*(a1 + 56) + 8) + 40);
      if (v13)
      {
        [*(a1 + 40) _setInMemoryThumbnail:v13 forHashString:*(a1 + 32)];
      }
    }

    v2 = v15;
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    (*(v14 + 16))(v14, *(*(*(a1 + 56) + 8) + 40), v2);
    v2 = v15;
  }
}

- (id)fetchPlacesThumbnailForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  height = a4.height;
  width = a4.width;
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXPlacesThumbnailManager.m" lineNumber:82 description:@"This should not be called on main"];
  }

  if (fabs(height) > 180.0 || fabs(width) > 90.0 || v13 < 0.0 || v13 > 180.0 || v12 < 0.0 || v12 > 360.0)
  {
    PXAssertGetLog();
  }

  v18 = [objc_opt_class() _hashStringForBoundingRegion:a3 size:width interfaceStyle:{height, v13, v12, v11, v10}];
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__21025;
  v27 = __Block_byref_object_dispose__21026;
  v28 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __86__PXPlacesThumbnailManager_fetchPlacesThumbnailForBoundingRegion_size_interfaceStyle___block_invoke;
  v22[3] = &unk_1E772F620;
  v22[4] = buf;
  [(PXPlacesThumbnailManager *)self _fetchDiskOrMemoryPlacesThumbnailForHashString:v18 synchronous:1 completion:v22];
  v19 = *(v24 + 5);
  _Block_object_dispose(buf, 8);

  return v19;
}

- (void)cachePlacesThumbnailForBoundingRegion:(id *)a3 size:(CGSize)a4 snapshot:(id)a5 interfaceStyle:(int64_t)a6
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  height = a4.height;
  width = a4.width;
  v18 = a3;
  if (fabs(height) > 180.0 || fabs(width) > 90.0 || v14 < 0.0 || v14 > 180.0 || v13 < 0.0 || v13 > 360.0)
  {
    PXAssertGetLog();
  }

  v19 = [objc_opt_class() _hashStringForBoundingRegion:a5 size:width interfaceStyle:{height, v14, v13, v12, v11}];
  [(PXPlacesThumbnailManager *)self _setInMemoryAndPersistToDiskThumbnail:v18 forHashString:v19];
}

- (NSMutableDictionary)metadataPlist
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_metadataPlist)
  {
    v3 = +[PXPlacesThumbnailManager _filePathForMetadataPlist];
    v4 = [MEMORY[0x1E695DF90] dictionaryWithContentsOfFile:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    metadataPlist = v2->_metadataPlist;
    v2->_metadataPlist = v6;
  }

  objc_sync_exit(v2);

  v8 = v2->_metadataPlist;

  return v8;
}

- (PXPlacesThumbnailManager)init
{
  v8.receiver = self;
  v8.super_class = PXPlacesThumbnailManager;
  v2 = [(PXPlacesThumbnailManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    cache = v2->_cache;
    v2->_cache = v3;

    [(PXPlacesThumbnailManager *)v2 _createThumbnailDirectoryIfNeeded];
    v5 = dispatch_queue_create("PXPlacesThumbnailManager metadata queue", 0);
    metadataQueue = v2->_metadataQueue;
    v2->_metadataQueue = v5;
  }

  return v2;
}

+ (id)_hashStringForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5
{
  v8 = v6;
  v9 = v5;
  v10 = MEMORY[0x1E696AEC0];
  v11 = [a1 _descriptionForBoundingRegion:{a3, a5, a4.width, a4.height}];
  v18.width = v9;
  v18.height = v8;
  v12 = NSStringFromCGSize(v18);
  v13 = [v10 stringWithFormat:@"%@_%@_%ld", v11, v12, a3];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v13, "hash")}];
  v15 = [v14 stringValue];

  return v15;
}

+ (id)hashStringForBoundingRegion:(id *)a3 size:(CGSize)a4 interfaceStyle:(int64_t)a5 displayScale:(double)a6
{
  v9 = v8;
  v11 = v7;
  v12 = v6;
  v13 = MEMORY[0x1E696AEC0];
  v14 = [a1 _descriptionForBoundingRegion:{a3, a5, a4.width, a4.height, a6}];
  v21.width = v12;
  v21.height = v11;
  v15 = NSStringFromCGSize(v21);
  v16 = [v13 stringWithFormat:@"%@_%@_%ld_%f", v14, v15, a3, v9];

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
  v18 = [v17 stringValue];

  return v18;
}

+ (id)_filePathForMetadataPlist
{
  v2 = +[PXPlacesThumbnailManager _thumbnailFilePath];
  v3 = [v2 stringByAppendingPathComponent:@"thumbnailMetadata.plist"];

  return v3;
}

+ (id)_filePathForHash:(id)a3
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.jpg", a3];
  v5 = [a1 _thumbnailFilePath];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

+ (id)_thumbnailFilePath
{
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"com.apple.mobileslideshow/places/thumbnails"];

  return v3;
}

@end