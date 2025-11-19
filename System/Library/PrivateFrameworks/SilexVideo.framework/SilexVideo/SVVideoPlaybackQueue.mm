@interface SVVideoPlaybackQueue
- (SVVideoPlaybackQueue)init;
- (id)advance;
- (unint64_t)count;
- (void)appendItem:(id)a3;
- (void)insertItem:(id)a3 afterItem:(id)a4;
- (void)playbackCoordinator:(id)a3 playbackFailedWithError:(id)a4;
- (void)prefetchItemAfterCoordinatorIfPossible:(id)a3;
- (void)prependItem:(id)a3;
@end

@implementation SVVideoPlaybackQueue

- (SVVideoPlaybackQueue)init
{
  v6.receiver = self;
  v6.super_class = SVVideoPlaybackQueue;
  v2 = [(SVVideoPlaybackQueue *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)appendItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SVVideoPlaybackQueue *)self queue];
    [v5 addObject:v4];
  }
}

- (void)prependItem:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SVVideoPlaybackQueue *)self queue];
    [v5 insertObject:v4 atIndex:0];
  }
}

- (void)insertItem:(id)a3 afterItem:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SVVideoPlaybackQueue *)self queue];
  v8 = [v7 indexOfObject:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8 + 1;
    if ([(SVVideoPlaybackQueue *)self count]<= v9)
    {
      [(SVVideoPlaybackQueue *)self appendItem:v11];
    }

    else
    {
      v10 = [(SVVideoPlaybackQueue *)self queue];
      [v10 insertObject:v11 atIndex:v9];
    }
  }
}

- (id)advance
{
  v3 = [(SVVideoPlaybackQueue *)self queue];
  v4 = [v3 firstObject];

  v5 = [(SVVideoPlaybackQueue *)self queue];
  [v5 removeObject:v4];

  if ([v4 state] == 5)
  {
    v6 = [(SVVideoPlaybackQueue *)self advance];
  }

  else
  {
    if ([(SVVideoPlaybackQueue *)self count])
    {
      [v4 addPlaybackObserver:self];
    }

    v6 = v4;
  }

  v7 = v6;

  return v7;
}

- (unint64_t)count
{
  v2 = [(SVVideoPlaybackQueue *)self queue];
  v3 = [v2 count];

  return v3;
}

- (void)playbackCoordinator:(id)a3 playbackFailedWithError:(id)a4
{
  v6 = a3;
  v5 = [(SVVideoPlaybackQueue *)self queue];
  [v5 removeObject:v6];

  [(SVVideoPlaybackQueue *)self prefetchItemAfterCoordinatorIfPossible:v6];
}

- (void)prefetchItemAfterCoordinatorIfPossible:(id)a3
{
  v4 = a3;
  memset(&v31, 0, sizeof(v31));
  v5 = [v4 loadedTimeRanges];
  v6 = [v5 lastObject];
  v7 = v6;
  if (v6)
  {
    [v6 CMTimeRangeValue];
  }

  else
  {
    memset(&v31, 0, sizeof(v31));
  }

  memset(&v30, 0, sizeof(v30));
  v29 = v31;
  CMTimeRangeGetEnd(&v30, &v29);
  v29.start = v30;
  Seconds = CMTimeGetSeconds(&v29.start);
  [v4 duration];
  v10 = v9;
  v11 = [v4 state];
  v12 = [v4 state] != 3 && objc_msgSend(v4, "state") != 4;
  v13 = [(SVVideoPlaybackQueue *)self queue];
  v14 = [v13 containsObject:v4];

  [v4 duration];
  v16 = 1;
  if (v15 > 0.0)
  {
    v15 = v10 - Seconds;
    if (v10 - Seconds <= 2.0 && v15 >= 0.0 && [v4 playbackLikelyToKeepUp])
    {
      v16 = [v4 playbackBufferFull];
    }
  }

  [v4 duration];
  if (v17 <= 0.0 || ([v4 time], v18 <= 0.0))
  {
    v22 = 1;
  }

  else
  {
    [v4 duration];
    v20 = v19;
    [v4 time];
    v22 = v20 - v21 >= 10.0;
  }

  v23 = [v4 video];
  v24 = [v23 conformsToProtocol:&unk_2877E0EB8];

  if (v11 == 5 || v24 & 1 | (((v14 | v16 | v12 | v22) & 1) == 0))
  {
    [v4 removePlaybackObserver:self];
    v25 = [(SVVideoPlaybackQueue *)self queue];
    v26 = [v25 firstObject];
    [v26 addPlaybackObserver:self];

    v27 = [(SVVideoPlaybackQueue *)self queue];
    v28 = [v27 firstObject];
    [v28 load];
  }
}

@end