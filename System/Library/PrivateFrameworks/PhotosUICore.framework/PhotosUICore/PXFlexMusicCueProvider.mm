@interface PXFlexMusicCueProvider
- (PXFlexMusicCueProvider)init;
- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler;
- (void)_deliverCuesIfNeeded;
- (void)_fetchCuesForAudioAsset:(id)asset resultHandler:(id)handler;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXFlexMusicCueProvider

- (void)_deliverCuesIfNeeded
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc_init(MEMORY[0x1E696AD50]);
  requests = self->_requests;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__PXFlexMusicCueProvider__deliverCuesIfNeeded__block_invoke;
  v6[3] = &unk_1E773F390;
  v7 = v3;
  v5 = v3;
  [(NSMutableArray *)requests enumerateObjectsUsingBlock:v6];
  [(NSMutableArray *)self->_requests removeObjectsAtIndexes:v5];
}

void __46__PXFlexMusicCueProvider__deliverCuesIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  v5 = +[PXFlexMusicLibrary sharedLibrary];
  v6 = [v9 asset];
  v7 = [v5 cuesForAsset:v6];

  if (([v7 isEmpty] & 1) == 0)
  {
    v8 = [v9 resultHandler];
    (v8)[2](v8, v7, 0);

    [*(a1 + 32) addIndex:a3];
  }
}

- (void)_fetchCuesForAudioAsset:(id)asset resultHandler:(id)handler
{
  assetCopy = asset;
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  if ([(PXFlexMusicLibrary *)self->_library hasLocalResourceForAsset:assetCopy resourceType:2])
  {
    v8 = +[PXFlexMusicLibrary sharedLibrary];
    v9 = [v8 cuesForAsset:assetCopy];

    handlerCopy[2](handlerCopy, v9, 0);
  }

  else
  {
    requests = self->_requests;
    v11 = [[_PXFlexMusicCueRequest alloc] initWithAsset:assetCopy resultHandler:handlerCopy];

    [(NSMutableArray *)requests addObject:v11];
    [(PXFlexMusicLibrary *)self->_library requestDownloadForAsset:assetCopy resourceType:2];
  }
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 2) != 0 && LibraryContext_166709 == context)
  {
    block[5] = v5;
    block[6] = v6;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PXFlexMusicCueProvider_observable_didChange_context___block_invoke;
    block[3] = &unk_1E774C648;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (id)requestCuesForAudioAsset:(id)asset resultHandler:(id)handler
{
  assetCopy = asset;
  handlerCopy = handler;
  v8 = assetCopy;
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFlexMusicCueProvider requestCuesForAudioAsset:resultHandler:]"];
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      px_descriptionForAssertionMessage = [v8 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInFunction:v14 file:@"PXFlexMusicCueProvider.m" lineNumber:52 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"asset", v16, px_descriptionForAssertionMessage}];
    }
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__PXFlexMusicCueProvider_requestCuesForAudioAsset_resultHandler___block_invoke;
  block[3] = &unk_1E773F368;
  objc_copyWeak(&v21, &location);
  v19 = v8;
  v20 = handlerCopy;
  v10 = v8;
  v11 = handlerCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return 0;
}

void __65__PXFlexMusicCueProvider_requestCuesForAudioAsset_resultHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _fetchCuesForAudioAsset:*(a1 + 32) resultHandler:*(a1 + 40)];
}

- (PXFlexMusicCueProvider)init
{
  v3.receiver = self;
  v3.super_class = PXFlexMusicCueProvider;
  if ([(PXFlexMusicCueProvider *)&v3 init])
  {
    px_dispatch_queue_create_serial();
  }

  return 0;
}

uint64_t __30__PXFlexMusicCueProvider_init__block_invoke(uint64_t a1)
{
  v2 = +[PXFlexMusicLibrary sharedLibrary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v5 = *(*(a1 + 32) + 16);

  return [v5 registerChangeObserver:? context:?];
}

@end