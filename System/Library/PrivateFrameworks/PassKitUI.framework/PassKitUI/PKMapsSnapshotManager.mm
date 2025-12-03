@interface PKMapsSnapshotManager
- (PKMapsSnapshotManager)init;
- (id)_iconForCacheKey:(id)key;
- (id)_iconFromDiskForCacheKey:(id)key;
- (id)placeholderWithTraitCollection:(id)collection completion:(id)completion;
- (id)snapshotForDisplayRegion:(id *)region size:(CGSize)size traitCollection:(id)collection completion:(id)completion;
- (void)_processNextRequest;
@end

@implementation PKMapsSnapshotManager

- (PKMapsSnapshotManager)init
{
  v20.receiver = self;
  v20.super_class = PKMapsSnapshotManager;
  v2 = [(PKMapsSnapshotManager *)&v20 init];
  if (v2)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    fileManager = v2->_fileManager;
    v2->_fileManager = defaultManager;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    snapshotCache = v2->_snapshotCache;
    v2->_snapshotCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    snapshotCacheKeys = v2->_snapshotCacheKeys;
    v2->_snapshotCacheKeys = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    snapshotsKeysToPerform = v2->_snapshotsKeysToPerform;
    v2->_snapshotsKeysToPerform = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    snapshotOptionsByKey = v2->_snapshotOptionsByKey;
    v2->_snapshotOptionsByKey = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    completionBlockByKey = v2->_completionBlockByKey;
    v2->_completionBlockByKey = v13;

    v2->_fileLock._os_unfair_lock_opaque = 0;
    v2->_cacheLock._os_unfair_lock_opaque = 0;
    v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(v15, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v17 = dispatch_queue_create("com.apple.passkitui.mapsnapshotter", v16);
    snapshotQueue = v2->_snapshotQueue;
    v2->_snapshotQueue = v17;

    os_unfair_lock_lock(&v2->_fileLock);
    PKMapsSnapshotsCacheCreateDirectory();
    os_unfair_lock_unlock(&v2->_fileLock);
  }

  return v2;
}

- (id)placeholderWithTraitCollection:(id)collection completion:(id)completion
{
  completionCopy = completion;
  v7 = *MEMORY[0x1E6985CC0];
  v8 = *(MEMORY[0x1E6985CC0] + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__PKMapsSnapshotManager_placeholderWithTraitCollection_completion___block_invoke;
  v12[3] = &unk_1E801A888;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [(PKMapsSnapshotManager *)self snapshotForDisplayRegion:collection size:v12 traitCollection:v7 completion:v8, 0.0, 0.0, 100.0, 100.0];

  return v10;
}

uint64_t __67__PKMapsSnapshotManager_placeholderWithTraitCollection_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)snapshotForDisplayRegion:(id *)region size:(CGSize)size traitCollection:(id)collection completion:(id)completion
{
  v11 = v9;
  v12 = v8;
  v13 = v7;
  v14 = v6;
  height = size.height;
  width = size.width;
  regionCopy = region;
  collectionCopy = collection;
  objc_initWeak(location, self);
  v54.latitude = width;
  v54.longitude = height;
  v20 = CLLocationCoordinate2DIsValid(v54);
  v21 = MEMORY[0x1E696AEC0];
  userInterfaceStyle = [($40F2142F4D10A659356C1DB5220133C1 *)regionCopy userInterfaceStyle];
  v23 = *MEMORY[0x1E6985CC0];
  v24 = *(MEMORY[0x1E6985CC0] + 8);
  if (v20)
  {
    v23 = width;
    v24 = height;
  }

  v25 = [v21 stringWithFormat:@"%.7f-%.7f-%.7f-%.7f-%.2f-%.2f-%ld", *&v23, *&v24, v14, v13, v12, v11, userInterfaceStyle];
  v26 = [v25 dataUsingEncoding:4];
  fileSafeBase64Encoding = [v26 fileSafeBase64Encoding];

  v28 = [(PKMapsSnapshotManager *)self _iconForCacheKey:fileSafeBase64Encoding];
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    v30 = [(PKMapsSnapshotManager *)self _iconFromDiskForCacheKey:fileSafeBase64Encoding];
    if (v30)
    {
      os_unfair_lock_lock(&self->_cacheLock);
      [(NSMutableArray *)self->_snapshotCacheKeys addObject:fileSafeBase64Encoding];
      [(NSMutableDictionary *)self->_snapshotCache setObject:v30 forKey:fileSafeBase64Encoding];
      os_unfair_lock_unlock(&self->_cacheLock);
    }

    else
    {
      if (!v20 || (v48[0] = MEMORY[0x1E69E9820], v48[1] = 3221225472, v48[2] = __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke, v48[3] = &unk_1E801A8B0, objc_copyWeak(&v51, location), v49 = fileSafeBase64Encoding, v50 = collectionCopy, [(PKMapsSnapshotManager *)self placeholderWithTraitCollection:regionCopy completion:v48], v30 = objc_claimAutoreleasedReturnValue(), v50, v49, objc_destroyWeak(&v51), !v30))
      {
        v32 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{*&v12, *&v11}];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke_2;
        v47[3] = &__block_descriptor_48_e40_v16__0__UIGraphicsImageRendererContext_8l;
        v47[4] = v12;
        v47[5] = v11;
        v30 = [v32 imageWithActions:v47];
      }

      if (collectionCopy)
      {
        os_unfair_lock_lock(&self->_cacheLock);
        v33 = [(NSMutableDictionary *)self->_completionBlockByKey objectForKey:fileSafeBase64Encoding];
        if (v33)
        {
          v34 = _Block_copy(collectionCopy);
          [v33 addObject:v34];

          os_unfair_lock_unlock(&self->_cacheLock);
          v35 = v30;
        }

        else
        {
          v36 = !v20;
          os_unfair_lock_unlock(&self->_cacheLock);
          snapshotQueue = self->_snapshotQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke_3;
          block[3] = &unk_1E801A8F8;
          objc_copyWeak(v45, location);
          v45[1] = v12;
          v45[2] = v11;
          v38 = regionCopy;
          v46 = v36;
          v45[3] = *&width;
          v45[4] = *&height;
          v45[5] = v14;
          v45[6] = v13;
          v41 = v38;
          selfCopy = self;
          v43 = fileSafeBase64Encoding;
          v44 = collectionCopy;
          dispatch_async(snapshotQueue, block);
          v39 = v30;

          objc_destroyWeak(v45);
        }

        goto LABEL_9;
      }
    }

    v29 = v30;
  }

  v30 = v29;
LABEL_9:

  objc_destroyWeak(location);

  return v30;
}

void __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 15);
    v5 = [*&v4[8]._os_unfair_lock_opaque objectForKey:*(a1 + 32)];

    os_unfair_lock_unlock(v4 + 15);
    if (v5)
    {
      v6 = *(a1 + 40);
      if (v6)
      {
        (*(v6 + 16))(v6, v7, 0);
      }
    }
  }
}

void __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69DC888];
  v5 = a2;
  v4 = [v3 secondarySystemBackgroundColor];
  [v4 setFill];

  [v5 fillRect:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
}

void __82__PKMapsSnapshotManager_snapshotForDisplayRegion_size_traitCollection_completion___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696F2B0]);
    [v3 setShowsBuildings:1];
    [v3 _setShowsVenues:0];
    [v3 _setShowsPointLabels:0];
    v4 = [MEMORY[0x1E696F350] filterExcludingAllCategories];
    [v3 setPointOfInterestFilter:v4];

    [v3 setSize:{*(a1 + 72), *(a1 + 80)}];
    [v3 setTraitCollection:*(a1 + 32)];
    if (*(a1 + 120))
    {
      [v3 setMapType:105];
    }

    else
    {
      v5 = *(a1 + 104);
      v6 = *(a1 + 112);
      [v3 setMapType:0];
      [v3 setRegion:{*(a1 + 88), *(a1 + 96), v5, v6}];
    }

    os_unfair_lock_lock(WeakRetained + 15);
    v7 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 48)];
    if (v7)
    {
      v8 = _Block_copy(*(a1 + 56));
      [v7 addObject:v8];

      os_unfair_lock_unlock(WeakRetained + 15);
    }

    else
    {
      v9 = [*(WeakRetained + 2) count];
      [*(WeakRetained + 2) addObject:*(a1 + 48)];
      [*(WeakRetained + 3) setObject:v3 forKey:*(a1 + 48)];
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = _Block_copy(*(a1 + 56));
      [v10 addObject:v11];

      [*(WeakRetained + 4) setObject:v10 forKey:*(a1 + 48)];
      os_unfair_lock_unlock(WeakRetained + 15);
      if (!v9)
      {
        [WeakRetained _processNextRequest];
LABEL_11:

        goto LABEL_12;
      }
    }

    v12 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1BD026000, v12, OS_LOG_TYPE_DEFAULT, "Queued snapshot for %@", &v13, 0xCu);
    }

    goto LABEL_11;
  }

LABEL_12:
}

- (void)_processNextRequest
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cacheLock);
  firstObject = [(NSMutableArray *)self->_snapshotsKeysToPerform firstObject];
  v4 = [(NSMutableDictionary *)self->_snapshotOptionsByKey objectForKey:firstObject];
  os_unfair_lock_unlock(&self->_cacheLock);
  if (firstObject)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Getting snapshot for %@", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v4];
    snapshotQueue = self->_snapshotQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__PKMapsSnapshotManager__processNextRequest__block_invoke;
    v9[3] = &unk_1E801A920;
    v9[4] = self;
    objc_copyWeak(&v13, buf);
    v10 = v4;
    v11 = firstObject;
    v8 = v6;
    v12 = v8;
    [v8 startWithQueue:snapshotQueue completionHandler:v9];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }
}

void __44__PKMapsSnapshotManager__processNextRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 72);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__PKMapsSnapshotManager__processNextRequest__block_invoke_2;
  v10[3] = &unk_1E80179D8;
  objc_copyWeak(&v16, (a1 + 64));
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v14 = v6;
  v15 = *(a1 + 56);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);

  objc_destroyWeak(&v16);
}

void __44__PKMapsSnapshotManager__processNextRequest__block_invoke_2(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (!WeakRetained)
  {
    goto LABEL_15;
  }

  v3 = [*(a1 + 32) image];
  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Snapshot completed for %@", buf, 0xCu);
    }

    os_unfair_lock_lock(WeakRetained + 16);
    v6 = [*(a1 + 48) stringByAppendingPathExtension:@"png"];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __44__PKMapsSnapshotManager__processNextRequest__block_invoke_38;
    v26 = &unk_1E801A860;
    v27 = v3;
    PKMapsSnapshotsCacheCreateFileURLForWriting();
    os_unfair_lock_unlock(WeakRetained + 16);
    os_unfair_lock_lock(WeakRetained + 15);
    [*(WeakRetained + 5) addObject:*(a1 + 48)];
    [*(WeakRetained + 6) setObject:v27 forKey:*(a1 + 48)];
    os_unfair_lock_unlock(WeakRetained + 15);
  }

  else
  {
    if (!*(a1 + 56))
    {
      goto LABEL_7;
    }

    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      *buf = 138412290;
      v30 = v15;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Could not get snapshot for %@", buf, 0xCu);
    }
  }

LABEL_7:
  os_unfair_lock_lock(WeakRetained + 15);
  v7 = [*(WeakRetained + 4) objectForKey:*(a1 + 48)];
  [*(WeakRetained + 2) removeObjectAtIndex:0];
  [*(WeakRetained + 3) removeObjectForKey:*(a1 + 48)];
  [*(WeakRetained + 4) removeObjectForKey:*(a1 + 48)];
  os_unfair_lock_unlock(WeakRetained + 15);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    v12 = MEMORY[0x1E69E96A0];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __44__PKMapsSnapshotManager__processNextRequest__block_invoke_40;
        v16[3] = &unk_1E8010E20;
        v18 = v14;
        v17 = v3;
        dispatch_async(v12, v16);
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v10);
  }

  [WeakRetained _processNextRequest];
LABEL_15:
}

void __44__PKMapsSnapshotManager__processNextRequest__block_invoke_38(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = UIImagePNGRepresentation(v2);
  [v4 writeToURL:v3 atomically:1];
}

- (id)_iconForCacheKey:(id)key
{
  if (key)
  {
    keyCopy = key;
    os_unfair_lock_lock(&self->_cacheLock);
    v5 = [(NSMutableDictionary *)self->_snapshotCache objectForKey:keyCopy];
    [(NSMutableArray *)self->_snapshotCacheKeys removeObject:keyCopy];
    [(NSMutableArray *)self->_snapshotCacheKeys addObject:keyCopy];

    if ([(NSMutableArray *)self->_snapshotCacheKeys count]>= 0x33)
    {
      firstObject = [(NSMutableArray *)self->_snapshotCacheKeys firstObject];
      [(NSMutableArray *)self->_snapshotCacheKeys removeObject:firstObject];
      [(NSMutableDictionary *)self->_snapshotCache removeObjectForKey:firstObject];
    }

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_iconFromDiskForCacheKey:(id)key
{
  keyCopy = key;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__30;
  v11 = __Block_byref_object_dispose__30;
  v12 = 0;
  v4 = [keyCopy stringByAppendingPathExtension:@"png"];
  PKMapsSnapshotsCacheCreateFileURLForWriting();
  v5 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v5;
}

void __50__PKMapsSnapshotManager__iconFromDiskForCacheKey___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v3 = [v10 path];
  if ([*(*(a1 + 32) + 8) fileExistsAtPath:v3])
  {
    v4 = [*(*(a1 + 32) + 8) attributesOfItemAtPath:v3 error:0];
    v5 = [v4 objectForKey:*MEMORY[0x1E696A308]];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
    if (v5 && [v5 compare:v6] == -1)
    {
      [*(*(a1 + 32) + 8) removeItemAtURL:v10 error:0];
    }

    else
    {
      v7 = [MEMORY[0x1E69DCAB8] imageWithContentsOfFile:v3];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }
  }

  os_unfair_lock_unlock((*(a1 + 32) + 64));
}

@end