@interface PXStorySongResourcePreloadingOperation
- (PXStorySongResourcePreloadingOperation)init;
- (PXStorySongResourcePreloadingOperation)initWithSongResource:(id)resource;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)px_start;
@end

@implementation PXStorySongResourcePreloadingOperation

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 0xA) != 0 && SessionContext == context)
  {
    session = [(PXStorySongResourcePreloadingOperation *)self session];
    if (([session isReadyToPlay] & 1) != 0 || objc_msgSend(session, "status") == 4)
    {
      [(PXAsyncOperation *)self px_finishIfPossible];
    }
  }
}

- (void)px_start
{
  resource = [(PXStorySongResourcePreloadingOperation *)self resource];
  px_storyResourceSongAsset = [resource px_storyResourceSongAsset];

  v5 = objc_alloc([px_storyResourceSongAsset audioSessionClass]);
  queue = self->_queue;
  v8 = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = [v5 initWithAsset:px_storyResourceSongAsset volume:&v8 startTime:queue queue:0 audioSessionDelegate:0.0];
  [v7 registerChangeObserver:self context:SessionContext];
  [(PXStorySongResourcePreloadingOperation *)self setSession:v7];
  [v7 performChanges:&__block_literal_global_18833];
}

- (PXStorySongResourcePreloadingOperation)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXStorySongResourcePreloadingOperation.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXStorySongResourcePreloadingOperation init]"}];

  abort();
}

- (PXStorySongResourcePreloadingOperation)initWithSongResource:(id)resource
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = PXStorySongResourcePreloadingOperation;
  v6 = [(PXAsyncOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, resource);
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;

    px_dispatch_queue_create();
  }

  return 0;
}

@end