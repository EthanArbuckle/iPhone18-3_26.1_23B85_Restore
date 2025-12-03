@interface PKPassSnapshotter
+ (PKPassSnapshotter)sharedInstance;
+ (void)purgeCache;
+ (void)purgeCacheOfPassSnapshotsWithUinqueID:(id)d;
- (BOOL)_cachedImageWithKey:(id)key completion:(id)completion;
- (PKPassSnapshotter)init;
- (id)passLibrary;
- (void)_cacheItem:(id)item withKey:(id)key;
- (void)_performSnapshot:(id)snapshot size:(CGSize)size cacheKey:(id)key completion:(id)completion;
- (void)_prepareSnapshotViewWithPass:(id)pass size:(CGSize)size suppressedContent:(unint64_t)content cacheKey:(id)key completion:(id)completion;
- (void)_snapshotWithPass:(id)pass size:(CGSize)size suppressedContent:(unint64_t)content withCache:(BOOL)cache completion:(id)completion;
- (void)dealloc;
- (void)snapshotWithUniqueID:(id)d manifestHash:(id)hash size:(CGSize)size completion:(id)completion;
- (void)snapshotWithUniqueID:(id)d size:(CGSize)size suppressedContent:(unint64_t)content completion:(id)completion;
@end

@implementation PKPassSnapshotter

+ (PKPassSnapshotter)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__PKPassSnapshotter_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_604 != -1)
  {
    dispatch_once(&_MergedGlobals_604, block);
  }

  v2 = qword_1EBD6AD00;

  return v2;
}

void __35__PKPassSnapshotter_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1EBD6AD00;
  qword_1EBD6AD00 = v1;
}

- (PKPassSnapshotter)init
{
  v15.receiver = self;
  v15.super_class = PKPassSnapshotter;
  v2 = [(PKPassSnapshotter *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v5 = dispatch_queue_create("com.apple.passkit.snapshotter", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_semaphore_create(1);
    snapshotSem = v2->_snapshotSem;
    v2->_snapshotSem = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentSnapshotKeys = v2->_currentSnapshotKeys;
    v2->_currentSnapshotKeys = v9;

    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen bounds];

    mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen2 scale];
    v2->_scale = v13;
  }

  return v2;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Pass snapshotter deallocating", buf, 2u);
  }

  v4 = self->_queue;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v5 = [(NSMutableArray *)self->_currentSnapshotKeys copy];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = _SnapshotCacheQueue();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __28__PKPassSnapshotter_dealloc__block_invoke;
        block[3] = &unk_1E8010A10;
        block[4] = v10;
        v15 = v4;
        dispatch_sync(v11, block);

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  v13.receiver = selfCopy;
  v13.super_class = PKPassSnapshotter;
  [(PKPassSnapshotter *)&v13 dealloc];
}

void __28__PKPassSnapshotter_dealloc__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = _SnapshotCompletionsByCacheKey();
  v3 = [v2 objectForKey:*(a1 + 32)];
  v4 = [v3 copy];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138543362;
      v12 = v6;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "Calling completion blocks without an image for %{public}@", buf, 0xCu);
    }

    v7 = _SnapshotCompletionsByCacheKey();
    [v7 removeObjectForKey:*(a1 + 32)];

    if ([v4 count])
    {
      v8 = *(a1 + 40);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__PKPassSnapshotter_dealloc__block_invoke_48;
      block[3] = &unk_1E8010970;
      v10 = v4;
      dispatch_async(v8, block);
    }
  }
}

void __28__PKPassSnapshotter_dealloc__block_invoke_48(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (id)passLibrary
{
  passLibrary = self->_passLibrary;
  if (!passLibrary)
  {
    mEMORY[0x1E69B8A58] = [MEMORY[0x1E69B8A58] sharedInstance];
    v5 = self->_passLibrary;
    self->_passLibrary = mEMORY[0x1E69B8A58];

    passLibrary = self->_passLibrary;
  }

  return passLibrary;
}

- (void)snapshotWithUniqueID:(id)d size:(CGSize)size suppressedContent:(unint64_t)content completion:(id)completion
{
  height = size.height;
  width = size.width;
  dCopy = d;
  completionCopy = completion;
  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __76__PKPassSnapshotter_snapshotWithUniqueID_size_suppressedContent_completion___block_invoke;
  v16[3] = &unk_1E801EC18;
  v16[4] = self;
  v17 = dCopy;
  v19 = width;
  v20 = height;
  contentCopy = content;
  v18 = completionCopy;
  v14 = completionCopy;
  v15 = dCopy;
  dispatch_async(queue, v16);
}

void __76__PKPassSnapshotter_snapshotWithUniqueID_size_suppressedContent_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passLibrary];
  v3 = [v2 passWithUniqueID:*(a1 + 40)];

  [*(a1 + 32) _snapshotWithPass:v3 size:*(a1 + 72) suppressedContent:1 withCache:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64)}];
}

- (void)snapshotWithUniqueID:(id)d manifestHash:(id)hash size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  v13 = _CacheKey(dCopy, hash, 1911, width, height);
  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v13;
    _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Snapshot request for %{public}@", buf, 0xCu);
  }

  if (![(PKPassSnapshotter *)self _cachedImageWithKey:v13 completion:completionCopy])
  {
    queue = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __71__PKPassSnapshotter_snapshotWithUniqueID_manifestHash_size_completion___block_invoke;
    v16[3] = &unk_1E801EC18;
    v16[4] = self;
    v17 = dCopy;
    v19 = width;
    v20 = height;
    v21 = 1911;
    v18 = completionCopy;
    dispatch_async(queue, v16);
  }
}

void __71__PKPassSnapshotter_snapshotWithUniqueID_manifestHash_size_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) passLibrary];
  v3 = [v2 passWithUniqueID:*(a1 + 40)];

  [*(a1 + 32) _snapshotWithPass:v3 size:*(a1 + 72) suppressedContent:0 withCache:*(a1 + 48) completion:{*(a1 + 56), *(a1 + 64)}];
}

+ (void)purgeCache
{
  v2 = _SnapshotCacheQueue();
  dispatch_sync(v2, &__block_literal_global_177);
}

void __31__PKPassSnapshotter_purgeCache__block_invoke()
{
  v0 = _SnapshotCache();
  [v0 removeAllObjects];
}

+ (void)purgeCacheOfPassSnapshotsWithUinqueID:(id)d
{
  dCopy = d;
  v4 = _SnapshotCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PKPassSnapshotter_purgeCacheOfPassSnapshotsWithUinqueID___block_invoke;
  block[3] = &unk_1E8010970;
  v7 = dCopy;
  v5 = dCopy;
  dispatch_sync(v4, block);
}

void __59__PKPassSnapshotter_purgeCacheOfPassSnapshotsWithUinqueID___block_invoke(uint64_t a1)
{
  v2 = _SnapshotCache();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PKPassSnapshotter_purgeCacheOfPassSnapshotsWithUinqueID___block_invoke_2;
  v6[3] = &unk_1E801EC40;
  v7 = *(a1 + 32);
  v3 = [v2 keysOfEntriesPassingTest:v6];

  v4 = _SnapshotCache();
  v5 = [v3 allObjects];
  [v4 removeObjectsForKeys:v5];
}

- (void)_snapshotWithPass:(id)pass size:(CGSize)size suppressedContent:(unint64_t)content withCache:(BOOL)cache completion:(id)completion
{
  cacheCopy = cache;
  height = size.height;
  width = size.width;
  passCopy = pass;
  completionCopy = completion;
  uniqueID = [passCopy uniqueID];
  manifestHash = [passCopy manifestHash];
  v17 = _CacheKey(uniqueID, manifestHash, content, width, height);

  if (!cacheCopy || ![(PKPassSnapshotter *)self _cachedImageWithKey:v17 completion:completionCopy])
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke;
    v18[3] = &unk_1E801EC68;
    v19 = passCopy;
    selfCopy = self;
    v21 = v17;
    v23 = width;
    v24 = height;
    contentCopy = content;
    v22 = completionCopy;
    [v19 loadContentAsyncWithCompletion:v18];
  }
}

void __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_2;
  v9[3] = &unk_1E801EC68;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  [v2 loadImageSetAsync:0 preheat:1 withCompletion:v9];
}

void __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_2(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 24), 0xFFFFFFFFFFFFFFFFLL);
  v2 = PKLogFacilityTypeGetObject();
  PKTimeProfileBegin();

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_3;
  block[3] = &unk_1E801EC68;
  v8 = *(a1 + 32);
  v3 = *(a1 + 48);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_4;
  v6[3] = &unk_1E80144C0;
  v6[4] = v2;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v2 _prepareSnapshotViewWithPass:v3 size:v4 suppressedContent:v5 cacheKey:v6 completion:{*(a1 + 64), *(a1 + 72)}];
}

uint64_t __83__PKPassSnapshotter__snapshotWithPass_size_suppressedContent_withCache_completion___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_prepareSnapshotViewWithPass:(id)pass size:(CGSize)size suppressedContent:(unint64_t)content cacheKey:(id)key completion:(id)completion
{
  height = size.height;
  width = size.width;
  keyCopy = key;
  completionCopy = completion;
  passCopy = pass;
  v16 = [[PKPassView alloc] initWithPass:passCopy content:5];

  [(PKPassView *)v16 setSuppressedContent:content];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(PKPassView *)v16 setBackgroundColor:clearColor];

  [(PKPassView *)v16 setOpaque:0];
  [(PKPassView *)v16 setModallyPresented:1];
  [(PKPassView *)v16 layoutIfNeeded];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __93__PKPassSnapshotter__prepareSnapshotViewWithPass_size_suppressedContent_cacheKey_completion___block_invoke;
  v22[3] = &unk_1E801EC90;
  v22[4] = self;
  v23 = v16;
  v26 = width;
  v27 = height;
  v24 = keyCopy;
  v25 = completionCopy;
  v19 = completionCopy;
  v20 = keyCopy;
  v21 = v16;
  [mEMORY[0x1E69DC668] _performBlockAfterCATransactionCommits:v22];
}

- (void)_performSnapshot:(id)snapshot size:(CGSize)size cacheKey:(id)key completion:(id)completion
{
  height = size.height;
  width = size.width;
  snapshotCopy = snapshot;
  keyCopy = key;
  completionCopy = completion;
  v14 = objc_autoreleasePoolPush();
  snapshotOfPassView = [snapshotCopy snapshotOfPassView];
  v16 = CGImageRetain([snapshotOfPassView CGImage]);
  dispatch_semaphore_signal(self->_snapshotSem);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PKPassSnapshotter__performSnapshot_size_cacheKey_completion___block_invoke;
  block[3] = &unk_1E801EC68;
  v26 = width;
  v27 = height;
  v28 = v16;
  v22 = snapshotOfPassView;
  selfCopy = self;
  v18 = keyCopy;
  v24 = v18;
  v19 = completionCopy;
  v25 = v19;
  v20 = snapshotOfPassView;
  dispatch_async(queue, block);

  objc_autoreleasePoolPop(v14);
}

void __63__PKPassSnapshotter__performSnapshot_size_cacheKey_completion___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  if (*(a1 + 64) == *MEMORY[0x1E695F060] && *(a1 + 72) == v3)
  {
    Image = CGImageRetain(*(a1 + 80));
    v24 = *(a1 + 32);
  }

  else
  {
    Image = 0;
    v6 = *(a1 + 80);
    if (v6)
    {
      v7 = *(*(a1 + 40) + 32);
      if (v7 > 0.0)
      {
        v8 = CGImageGetWidth(*(a1 + 80)) / v7;
        v9 = CGImageGetHeight(v6) / v7;
        if (v8 == v2 && v9 == v3)
        {
          Image = 0;
        }

        else
        {
          PKSizeScaleAspectFit();
          if (v8 == v11 && v9 == v12)
          {
            Image = CGImageRetain(v6);
          }

          else
          {
            v14 = v11;
            v15 = v12;
            v16 = v7 * v11;
            v17 = vcvtps_u32_f32(v16);
            v18 = v7 * v12;
            v19 = vcvtps_u32_f32(v18);
            AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
            BitmapInfo = CGImageGetBitmapInfo(v6);
            ColorSpace = CGImageGetColorSpace(v6);
            v23 = CGBitmapContextCreate(0, v17, v19, 8uLL, AlignedBytesPerRow, ColorSpace, BitmapInfo);
            v32.size.width = v17;
            v32.size.height = v19;
            v32.origin.x = 0.0;
            v32.origin.y = 0.0;
            CGContextClearRect(v23, v32);
            CGContextScaleCTM(v23, v7, v7);
            CGContextGetCTM(&v31, v23);
            CGContextSetBaseCTM();
            v33.origin.x = 0.0;
            v33.origin.y = 0.0;
            v33.size.width = v14;
            v33.size.height = v15;
            CGContextDrawImage(v23, v33, v6);
            Image = CGBitmapContextCreateImage(v23);
            CGContextRelease(v23);
          }
        }
      }
    }

    v24 = [MEMORY[0x1E69DCAB8] imageWithCGImage:Image scale:0 orientation:*(*(a1 + 40) + 32)];
  }

  v25 = v24;
  if (Image)
  {
    v26 = [PKPassSnapshotCacheItem alloc];
    [v25 scale];
    v27 = [(PKPassSnapshotCacheItem *)v26 initWithCGImage:Image scale:?];
    [*(a1 + 40) _cacheItem:v27 withKey:*(a1 + 48)];
  }

  CGImageRelease(Image);
  CGImageRelease(*(a1 + 80));
  v28 = PKLogFacilityTypeGetObject();
  v29 = PKTimeProfileEnd();

  v30 = *(a1 + 56);
  if (v30)
  {
    (*(v30 + 16))(v30, v25);
  }
}

- (void)_cacheItem:(id)item withKey:(id)key
{
  itemCopy = item;
  keyCopy = key;
  v8 = _SnapshotCacheQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PKPassSnapshotter__cacheItem_withKey___block_invoke;
  block[3] = &unk_1E8010A88;
  v12 = itemCopy;
  v13 = keyCopy;
  selfCopy = self;
  v9 = keyCopy;
  v10 = itemCopy;
  dispatch_sync(v8, block);
}

void __40__PKPassSnapshotter__cacheItem_withKey___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = _SnapshotCache();
  [v2 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  v3 = _SnapshotCompletionsByCacheKey();
  v4 = [v3 objectForKey:*(a1 + 40)];
  v5 = [v4 copy];

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      *buf = 138543362;
      v19 = v7;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Calling completion blocks for %{public}@", buf, 0xCu);
    }

    v8 = _SnapshotCompletionsByCacheKey();
    [v8 removeObjectForKey:*(a1 + 40)];

    if ([v5 count])
    {
      v9 = [*(a1 + 32) UIImageFromCache];
      v10 = *(*(a1 + 48) + 8);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __40__PKPassSnapshotter__cacheItem_withKey___block_invoke_59;
      v15 = &unk_1E8010A10;
      v16 = v5;
      v17 = v9;
      v11 = v9;
      dispatch_async(v10, &v12);
    }

    [*(*(a1 + 48) + 40) removeObject:{*(a1 + 40), v12, v13, v14, v15}];
  }
}

void __40__PKPassSnapshotter__cacheItem_withKey___block_invoke_59(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (BOOL)_cachedImageWithKey:(id)key completion:(id)completion
{
  keyCopy = key;
  completionCopy = completion;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [completionCopy copy];

  v9 = _SnapshotCacheQueue();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PKPassSnapshotter__cachedImageWithKey_completion___block_invoke;
  v13[3] = &unk_1E8014B30;
  v14 = keyCopy;
  selfCopy = self;
  v16 = v8;
  v17 = &v18;
  v10 = v8;
  v11 = keyCopy;
  dispatch_sync(v9, v13);

  LOBYTE(v8) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return (v8 & 1) == 0;
}

void __52__PKPassSnapshotter__cachedImageWithKey_completion___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = _SnapshotCache();
  v3 = [v2 objectForKey:*(a1 + 32)];

  if (v3)
  {
    v4 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543362;
      v16 = v5;
      _os_log_impl(&dword_1BD026000, v4, OS_LOG_TYPE_DEFAULT, "Image in cache, calling completion for %{public}@", buf, 0xCu);
    }

    v6 = *(*(a1 + 40) + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __52__PKPassSnapshotter__cachedImageWithKey_completion___block_invoke_60;
    v12[3] = &unk_1E8010E20;
    v14 = *(a1 + 48);
    v13 = v3;
    dispatch_async(v6, v12);
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  else
  {
    v7 = _SnapshotCompletionsByCacheKey();
    v8 = [v7 objectForKey:*(a1 + 32)];

    if (v8)
    {
      v9 = _Block_copy(*(a1 + 48));
      [v8 addObject:v9];

      v10 = 0;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = _SnapshotCompletionsByCacheKey();
      [v11 setObject:v8 forKey:*(a1 + 32)];

      if (([*(*(a1 + 40) + 40) containsObject:*(a1 + 32)] & 1) == 0)
      {
        [*(*(a1 + 40) + 40) addObject:*(a1 + 32)];
      }

      v10 = 1;
    }

    *(*(*(a1 + 56) + 8) + 24) = v10;
  }
}

void __52__PKPassSnapshotter__cachedImageWithKey_completion___block_invoke_60(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) UIImageFromCache];
  (*(v1 + 16))(v1, v2);
}

@end