@interface PXStorySongResourcePreloadingOperation
- (PXStorySongResourcePreloadingOperation)init;
- (PXStorySongResourcePreloadingOperation)initWithSongResource:(id)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)px_start;
@end

@implementation PXStorySongResourcePreloadingOperation

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if ((a4 & 0xA) != 0 && SessionContext == a5)
  {
    v8 = [(PXStorySongResourcePreloadingOperation *)self session];
    if (([v8 isReadyToPlay] & 1) != 0 || objc_msgSend(v8, "status") == 4)
    {
      [(PXAsyncOperation *)self px_finishIfPossible];
    }
  }
}

- (void)px_start
{
  v3 = [(PXStorySongResourcePreloadingOperation *)self resource];
  v4 = [v3 px_storyResourceSongAsset];

  v5 = objc_alloc([v4 audioSessionClass]);
  queue = self->_queue;
  v8 = *MEMORY[0x1E6960CC0];
  v9 = *(MEMORY[0x1E6960CC0] + 16);
  v7 = [v5 initWithAsset:v4 volume:&v8 startTime:queue queue:0 audioSessionDelegate:0.0];
  [v7 registerChangeObserver:self context:SessionContext];
  [(PXStorySongResourcePreloadingOperation *)self setSession:v7];
  [v7 performChanges:&__block_literal_global_18833];
}

- (PXStorySongResourcePreloadingOperation)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStorySongResourcePreloadingOperation.m" lineNumber:44 description:{@"%s is not available as initializer", "-[PXStorySongResourcePreloadingOperation init]"}];

  abort();
}

- (PXStorySongResourcePreloadingOperation)initWithSongResource:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStorySongResourcePreloadingOperation;
  v6 = [(PXAsyncOperation *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, a3);
    v8 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:100];
    progress = v7->_progress;
    v7->_progress = v8;

    px_dispatch_queue_create();
  }

  return 0;
}

@end