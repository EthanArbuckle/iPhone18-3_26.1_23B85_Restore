@interface TSDTileProvider
- (TSDTileProvider)initWithTarget:(id)target queue:(id)queue storage:(id)storage accessController:(id)controller;
- (id)contentsInRect:(CGRect)rect contentsScale:(double)scale forTile:(id)tile atLocation:(id)location takingReadLock:(BOOL)lock;
- (void)dealloc;
- (void)drawLayer:(id)layer inContext:(CGContext *)context;
- (void)provideContentsInRect:(CGRect)rect contentsScale:(double)scale forTile:(id)tile atLocation:(id)location inGroup:(id)group limitedBySemaphore:(id)semaphore takingReadLock:(BOOL)lock startBlock:(id)self0 completionBlock:(id)self1;
- (void)removeStoredImages;
@end

@implementation TSDTileProvider

- (TSDTileProvider)initWithTarget:(id)target queue:(id)queue storage:(id)storage accessController:(id)controller
{
  v16.receiver = self;
  v16.super_class = TSDTileProvider;
  v10 = [(TSDTileProvider *)&v16 init];
  if (v10)
  {
    v10->mTarget = target;
    if (!queue)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileProvider initWithTarget:queue:storage:accessController:]"];
      [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileProvider.m"), 36, @"invalid nil value for '%s'", "queue"}];
    }

    v10->mQueue = queue;
    v10->mTileStorage = storage;
    if (!controller)
    {
      currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileProvider initWithTarget:queue:storage:accessController:]"];
      [currentHandler2 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileProvider.m"), 41, @"invalid nil value for '%s'", "accessController"}];
    }

    v10->mAccessController = controller;
  }

  return v10;
}

- (void)dealloc
{
  [(TSDTileProvider *)self removeStoredImages];

  v3.receiver = self;
  v3.super_class = TSDTileProvider;
  [(TSDTileProvider *)&v3 dealloc];
}

- (void)provideContentsInRect:(CGRect)rect contentsScale:(double)scale forTile:(id)tile atLocation:(id)location inGroup:(id)group limitedBySemaphore:(id)semaphore takingReadLock:(BOOL)lock startBlock:(id)self0 completionBlock:(id)self1
{
  var1 = location.var1;
  var0 = location.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dispatch_retain(semaphore);
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__TSDTileProvider_provideContentsInRect_contentsScale_forTile_atLocation_inGroup_limitedBySemaphore_takingReadLock_startBlock_completionBlock___block_invoke;
  block[3] = &unk_279D492C8;
  block[4] = semaphore;
  block[5] = self;
  *&block[9] = x;
  *&block[10] = y;
  *&block[11] = width;
  *&block[12] = height;
  *&block[13] = scale;
  block[6] = tile;
  block[7] = block;
  block[14] = var0;
  block[15] = var1;
  lockCopy = lock;
  block[8] = completionBlock;
  dispatch_group_async(group, mQueue, block);
}

void __143__TSDTileProvider_provideContentsInRect_contentsScale_forTile_atLocation_inGroup_limitedBySemaphore_takingReadLock_startBlock_completionBlock___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = [*(a1 + 40) contentsInRect:*(a1 + 48) contentsScale:*(a1 + 112) forTile:*(a1 + 120) atLocation:*(a1 + 128) takingReadLock:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  dispatch_semaphore_signal(*(a1 + 32));
  if (v3)
  {
    (*(*(a1 + 64) + 16))();
  }

  v4 = *(a1 + 32);

  dispatch_release(v4);
}

- (id)contentsInRect:(CGRect)rect contentsScale:(double)scale forTile:(id)tile atLocation:(id)location takingReadLock:(BOOL)lock
{
  lockCopy = lock;
  var1 = location.var1;
  var0 = location.var0;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (self)
  {
    [(TSDTileProvider *)self visibleTileRect];
    v18 = *(&v29 + 1);
    v17 = v30;
    v19 = v29;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  v21 = v19 > var0 || var0 > v17 || v18 > var1;
  if (v21 || var1 > *(&v30 + 1))
  {
    return 0;
  }

  p_bucketKey = [(TSDTileProvider *)self p_bucketKey];
  tileCopy = [(TSDTileStorage *)self->mTileStorage contentsInRect:var0 contentsScale:var1 forTileAtLocation:p_bucketKey inBucket:x, y, width, height, scale];
  if (!tileCopy)
  {
    [MEMORY[0x277CD9FF0] begin];
    if (tile)
    {
      [tile setNeedsDisplay];
      tileCopy = tile;
    }

    else
    {
      tileCopy = [MEMORY[0x277CD9ED0] layer];
    }

    [tileCopy setDelegate:self];
    [tileCopy setBounds:{x, y, width, height}];
    v25 = *MEMORY[0x277CBF348];
    v26 = *(MEMORY[0x277CBF348] + 8);
    [tileCopy setPosition:{*MEMORY[0x277CBF348], v26}];
    [tileCopy setAnchorPoint:{v25, v26}];
    [tileCopy setOpaque:{-[TSDTileProvider isTargetOpaque](self, "isTargetOpaque")}];
    [tileCopy setContentsScale:scale];
    if (lockCopy)
    {
      mAccessController = self->mAccessController;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __82__TSDTileProvider_contentsInRect_contentsScale_forTile_atLocation_takingReadLock___block_invoke;
      v28[3] = &unk_279D46770;
      v28[4] = tileCopy;
      [(TSKAccessController *)mAccessController performRead:v28];
    }

    else
    {
      [tileCopy display];
    }

    [tileCopy setDelegate:0];
    [MEMORY[0x277CD9FF0] commit];
    [(TSDTileStorage *)self->mTileStorage storeContents:tileCopy inRect:var0 contentsScale:var1 forTileAtLocation:p_bucketKey inBucket:x, y, width, height, scale];
  }

  return tileCopy;
}

- (void)removeStoredImages
{
  mTileStorage = self->mTileStorage;
  p_bucketKey = [(TSDTileProvider *)self p_bucketKey];

  [(TSDTileStorage *)mTileStorage removeImagesInBucket:p_bucketKey];
}

- (void)drawLayer:(id)layer inContext:(CGContext *)context
{
  v7 = objc_autoreleasePoolPush();
  if (([layer contentsAreFlipped] & 1) == 0)
  {
    [layer bounds];
    TSDAffineTransformForFlips(0, 1, &v12, v8, v9, v10, v11);
    CGContextConcatCTM(context, &v12);
  }

  [(TSDTileProvider *)self drawTargetInLayer:layer context:context];
  objc_autoreleasePoolPop(v7);
}

@end