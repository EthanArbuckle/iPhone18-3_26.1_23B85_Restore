@interface PXFetchResultCountObserver
- (PXFetchResultCountObserver)init;
- (PXFetchResultCountObserver)initWithQOSClass:(unsigned int)class photoLibrary:(id)library fetchResultBlock:(id)block;
- (PXFetchResultCountObserverDelegate)delegate;
- (void)_serialQueue_acquireFetchResultFromBlock:(id)block;
- (void)photoLibraryDidChange:(id)change;
- (void)setFetchResultCount:(int64_t)count;
@end

@implementation PXFetchResultCountObserver

- (PXFetchResultCountObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)photoLibraryDidChange:(id)change
{
  changeCopy = change;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__141361;
  v22 = __Block_byref_object_dispose__141362;
  v23 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PXFetchResultCountObserver_photoLibraryDidChange___block_invoke;
  block[3] = &unk_1E7749A28;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(serialQueue, block);
  if (v19[5])
  {
    v6 = [changeCopy changeDetailsForFetchResult:?];
    v7 = v6;
    if (v6)
    {
      fetchResultAfterChanges = [v6 fetchResultAfterChanges];
      v9 = self->_serialQueue;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __52__PXFetchResultCountObserver_photoLibraryDidChange___block_invoke_2;
      v15[3] = &unk_1E774C620;
      v15[4] = self;
      v10 = fetchResultAfterChanges;
      v16 = v10;
      dispatch_sync(v9, v15);
      v11 = [v10 count];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __52__PXFetchResultCountObserver_photoLibraryDidChange___block_invoke_3;
      v12[3] = &unk_1E7749808;
      objc_copyWeak(v13, &location);
      v13[1] = v11;
      dispatch_async(MEMORY[0x1E69E96A0], v12);
      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }

  _Block_object_dispose(&v18, 8);
}

void __52__PXFetchResultCountObserver_photoLibraryDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchResult];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __52__PXFetchResultCountObserver_photoLibraryDidChange___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFetchResultCount:v1];
}

- (void)setFetchResultCount:(int64_t)count
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (self->_fetchResultCount != count)
  {
    self->_fetchResultCount = count;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained fetchResultCountObserver:self didChangeFetchResultCount:count];
  }
}

- (void)_serialQueue_acquireFetchResultFromBlock:(id)block
{
  serialQueue = self->_serialQueue;
  blockCopy = block;
  dispatch_assert_queue_V2(serialQueue);
  v7 = blockCopy[2](blockCopy);

  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultCountObserver.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"fetchResult"}];
  }

  [(PXFetchResultCountObserver *)self setFetchResult:v7];
  photoLibrary = [v7 photoLibrary];
  photoLibraryURL = [photoLibrary photoLibraryURL];
  photoLibraryURL2 = [(PHPhotoLibrary *)self->_photoLibrary photoLibraryURL];
  v11 = [photoLibraryURL isEqual:photoLibraryURL2];

  if ((v11 & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFetchResultCountObserver.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"[photoLibrary.photoLibraryURL isEqual:_photoLibrary.photoLibraryURL]"}];
  }

  v12 = [v7 count];
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PXFetchResultCountObserver__serialQueue_acquireFetchResultFromBlock___block_invoke;
  block[3] = &unk_1E7749808;
  objc_copyWeak(v16, &location);
  v16[1] = v12;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

void __71__PXFetchResultCountObserver__serialQueue_acquireFetchResultFromBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setFetchResultCount:v1];
}

- (PXFetchResultCountObserver)initWithQOSClass:(unsigned int)class photoLibrary:(id)library fetchResultBlock:(id)block
{
  libraryCopy = library;
  blockCopy = block;
  v12 = blockCopy;
  if (libraryCopy)
  {
    if (blockCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultCountObserver.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXFetchResultCountObserver.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"fetchResultBlock"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = PXFetchResultCountObserver;
  v13 = [(PXFetchResultCountObserver *)&v27 init];
  v14 = v13;
  if (v13)
  {
    v13->_fetchResultCount = -1;
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_attr_make_with_qos_class(v15, class, 0);

    v17 = dispatch_queue_create("com.apple.PXFetchResultCountObserver", v16);
    serialQueue = v14->_serialQueue;
    v14->_serialQueue = v17;

    objc_storeStrong(&v14->_photoLibrary, library);
    [(PHPhotoLibrary *)v14->_photoLibrary registerChangeObserver:v14];
    objc_initWeak(&location, v14);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__PXFetchResultCountObserver_initWithQOSClass_photoLibrary_fetchResultBlock___block_invoke;
    block[3] = &unk_1E774AA30;
    objc_copyWeak(&v25, &location);
    v24 = v12;
    v19 = dispatch_block_create(DISPATCH_BLOCK_DETACHED, block);
    dispatch_async(v14->_serialQueue, v19);

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v14;
}

void __77__PXFetchResultCountObserver_initWithQOSClass_photoLibrary_fetchResultBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _serialQueue_acquireFetchResultFromBlock:*(a1 + 32)];
}

- (PXFetchResultCountObserver)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFetchResultCountObserver.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXFetchResultCountObserver init]"}];

  abort();
}

@end