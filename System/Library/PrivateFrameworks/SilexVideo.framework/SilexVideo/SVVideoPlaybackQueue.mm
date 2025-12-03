@interface SVVideoPlaybackQueue
- (SVVideoPlaybackQueue)init;
- (id)advance;
- (unint64_t)count;
- (void)appendItem:(id)item;
- (void)insertItem:(id)item afterItem:(id)afterItem;
- (void)playbackCoordinator:(id)coordinator playbackFailedWithError:(id)error;
- (void)prefetchItemAfterCoordinatorIfPossible:(id)possible;
- (void)prependItem:(id)item;
@end

@implementation SVVideoPlaybackQueue

- (SVVideoPlaybackQueue)init
{
  v6.receiver = self;
  v6.super_class = SVVideoPlaybackQueue;
  v2 = [(SVVideoPlaybackQueue *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    queue = v2->_queue;
    v2->_queue = array;
  }

  return v2;
}

- (void)appendItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    queue = [(SVVideoPlaybackQueue *)self queue];
    [queue addObject:itemCopy];
  }
}

- (void)prependItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    queue = [(SVVideoPlaybackQueue *)self queue];
    [queue insertObject:itemCopy atIndex:0];
  }
}

- (void)insertItem:(id)item afterItem:(id)afterItem
{
  itemCopy = item;
  afterItemCopy = afterItem;
  queue = [(SVVideoPlaybackQueue *)self queue];
  v8 = [queue indexOfObject:afterItemCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = v8 + 1;
    if ([(SVVideoPlaybackQueue *)self count]<= v9)
    {
      [(SVVideoPlaybackQueue *)self appendItem:itemCopy];
    }

    else
    {
      queue2 = [(SVVideoPlaybackQueue *)self queue];
      [queue2 insertObject:itemCopy atIndex:v9];
    }
  }
}

- (id)advance
{
  queue = [(SVVideoPlaybackQueue *)self queue];
  firstObject = [queue firstObject];

  queue2 = [(SVVideoPlaybackQueue *)self queue];
  [queue2 removeObject:firstObject];

  if ([firstObject state] == 5)
  {
    advance = [(SVVideoPlaybackQueue *)self advance];
  }

  else
  {
    if ([(SVVideoPlaybackQueue *)self count])
    {
      [firstObject addPlaybackObserver:self];
    }

    advance = firstObject;
  }

  v7 = advance;

  return v7;
}

- (unint64_t)count
{
  queue = [(SVVideoPlaybackQueue *)self queue];
  v3 = [queue count];

  return v3;
}

- (void)playbackCoordinator:(id)coordinator playbackFailedWithError:(id)error
{
  coordinatorCopy = coordinator;
  queue = [(SVVideoPlaybackQueue *)self queue];
  [queue removeObject:coordinatorCopy];

  [(SVVideoPlaybackQueue *)self prefetchItemAfterCoordinatorIfPossible:coordinatorCopy];
}

- (void)prefetchItemAfterCoordinatorIfPossible:(id)possible
{
  possibleCopy = possible;
  memset(&v31, 0, sizeof(v31));
  loadedTimeRanges = [possibleCopy loadedTimeRanges];
  lastObject = [loadedTimeRanges lastObject];
  v7 = lastObject;
  if (lastObject)
  {
    [lastObject CMTimeRangeValue];
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
  [possibleCopy duration];
  v10 = v9;
  state = [possibleCopy state];
  v12 = [possibleCopy state] != 3 && objc_msgSend(possibleCopy, "state") != 4;
  queue = [(SVVideoPlaybackQueue *)self queue];
  v14 = [queue containsObject:possibleCopy];

  [possibleCopy duration];
  playbackBufferFull = 1;
  if (v15 > 0.0)
  {
    v15 = v10 - Seconds;
    if (v10 - Seconds <= 2.0 && v15 >= 0.0 && [possibleCopy playbackLikelyToKeepUp])
    {
      playbackBufferFull = [possibleCopy playbackBufferFull];
    }
  }

  [possibleCopy duration];
  if (v17 <= 0.0 || ([possibleCopy time], v18 <= 0.0))
  {
    v22 = 1;
  }

  else
  {
    [possibleCopy duration];
    v20 = v19;
    [possibleCopy time];
    v22 = v20 - v21 >= 10.0;
  }

  video = [possibleCopy video];
  v24 = [video conformsToProtocol:&unk_2877E0EB8];

  if (state == 5 || v24 & 1 | (((v14 | playbackBufferFull | v12 | v22) & 1) == 0))
  {
    [possibleCopy removePlaybackObserver:self];
    queue2 = [(SVVideoPlaybackQueue *)self queue];
    firstObject = [queue2 firstObject];
    [firstObject addPlaybackObserver:self];

    queue3 = [(SVVideoPlaybackQueue *)self queue];
    firstObject2 = [queue3 firstObject];
    [firstObject2 load];
  }
}

@end