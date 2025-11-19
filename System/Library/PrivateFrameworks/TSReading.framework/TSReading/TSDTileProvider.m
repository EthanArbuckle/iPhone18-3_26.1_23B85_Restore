@interface TSDTileProvider
- (TSDTileProvider)initWithTarget:(id)a3 queue:(id)a4 storage:(id)a5 accessController:(id)a6;
- (id)contentsInRect:(CGRect)a3 contentsScale:(double)a4 forTile:(id)a5 atLocation:(id)a6 takingReadLock:(BOOL)a7;
- (void)dealloc;
- (void)drawLayer:(id)a3 inContext:(CGContext *)a4;
- (void)provideContentsInRect:(CGRect)a3 contentsScale:(double)a4 forTile:(id)a5 atLocation:(id)a6 inGroup:(id)a7 limitedBySemaphore:(id)a8 takingReadLock:(BOOL)a9 startBlock:(id)a10 completionBlock:(id)a11;
- (void)removeStoredImages;
@end

@implementation TSDTileProvider

- (TSDTileProvider)initWithTarget:(id)a3 queue:(id)a4 storage:(id)a5 accessController:(id)a6
{
  v16.receiver = self;
  v16.super_class = TSDTileProvider;
  v10 = [(TSDTileProvider *)&v16 init];
  if (v10)
  {
    v10->mTarget = a3;
    if (!a4)
    {
      v11 = [MEMORY[0x277D6C290] currentHandler];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileProvider initWithTarget:queue:storage:accessController:]"];
      [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileProvider.m"), 36, @"invalid nil value for '%s'", "queue"}];
    }

    v10->mQueue = a4;
    v10->mTileStorage = a5;
    if (!a6)
    {
      v13 = [MEMORY[0x277D6C290] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDTileProvider initWithTarget:queue:storage:accessController:]"];
      [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDTileProvider.m"), 41, @"invalid nil value for '%s'", "accessController"}];
    }

    v10->mAccessController = a6;
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

- (void)provideContentsInRect:(CGRect)a3 contentsScale:(double)a4 forTile:(id)a5 atLocation:(id)a6 inGroup:(id)a7 limitedBySemaphore:(id)a8 takingReadLock:(BOOL)a9 startBlock:(id)a10 completionBlock:(id)a11
{
  var1 = a6.var1;
  var0 = a6.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  dispatch_retain(a8);
  mQueue = self->mQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __143__TSDTileProvider_provideContentsInRect_contentsScale_forTile_atLocation_inGroup_limitedBySemaphore_takingReadLock_startBlock_completionBlock___block_invoke;
  block[3] = &unk_279D492C8;
  block[4] = a8;
  block[5] = self;
  *&block[9] = x;
  *&block[10] = y;
  *&block[11] = width;
  *&block[12] = height;
  *&block[13] = a4;
  block[6] = a5;
  block[7] = a10;
  block[14] = var0;
  block[15] = var1;
  v25 = a9;
  block[8] = a11;
  dispatch_group_async(a7, mQueue, block);
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

- (id)contentsInRect:(CGRect)a3 contentsScale:(double)a4 forTile:(id)a5 atLocation:(id)a6 takingReadLock:(BOOL)a7
{
  v7 = a7;
  var1 = a6.var1;
  var0 = a6.var0;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

  v24 = [(TSDTileProvider *)self p_bucketKey];
  v22 = [(TSDTileStorage *)self->mTileStorage contentsInRect:var0 contentsScale:var1 forTileAtLocation:v24 inBucket:x, y, width, height, a4];
  if (!v22)
  {
    [MEMORY[0x277CD9FF0] begin];
    if (a5)
    {
      [a5 setNeedsDisplay];
      v22 = a5;
    }

    else
    {
      v22 = [MEMORY[0x277CD9ED0] layer];
    }

    [v22 setDelegate:self];
    [v22 setBounds:{x, y, width, height}];
    v25 = *MEMORY[0x277CBF348];
    v26 = *(MEMORY[0x277CBF348] + 8);
    [v22 setPosition:{*MEMORY[0x277CBF348], v26}];
    [v22 setAnchorPoint:{v25, v26}];
    [v22 setOpaque:{-[TSDTileProvider isTargetOpaque](self, "isTargetOpaque")}];
    [v22 setContentsScale:a4];
    if (v7)
    {
      mAccessController = self->mAccessController;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __82__TSDTileProvider_contentsInRect_contentsScale_forTile_atLocation_takingReadLock___block_invoke;
      v28[3] = &unk_279D46770;
      v28[4] = v22;
      [(TSKAccessController *)mAccessController performRead:v28];
    }

    else
    {
      [v22 display];
    }

    [v22 setDelegate:0];
    [MEMORY[0x277CD9FF0] commit];
    [(TSDTileStorage *)self->mTileStorage storeContents:v22 inRect:var0 contentsScale:var1 forTileAtLocation:v24 inBucket:x, y, width, height, a4];
  }

  return v22;
}

- (void)removeStoredImages
{
  mTileStorage = self->mTileStorage;
  v3 = [(TSDTileProvider *)self p_bucketKey];

  [(TSDTileStorage *)mTileStorage removeImagesInBucket:v3];
}

- (void)drawLayer:(id)a3 inContext:(CGContext *)a4
{
  v7 = objc_autoreleasePoolPush();
  if (([a3 contentsAreFlipped] & 1) == 0)
  {
    [a3 bounds];
    TSDAffineTransformForFlips(0, 1, &v12, v8, v9, v10, v11);
    CGContextConcatCTM(a4, &v12);
  }

  [(TSDTileProvider *)self drawTargetInLayer:a3 context:a4];
  objc_autoreleasePoolPop(v7);
}

@end