@interface TSDBackgroundLayoutAndRenderState
- (TSDBackgroundLayoutAndRenderState)initWithDelegate:(id)a3;
- (void)setNeedsLayoutAndRender;
- (void)setNeedsLayoutForTilingLayers;
@end

@implementation TSDBackgroundLayoutAndRenderState

- (TSDBackgroundLayoutAndRenderState)initWithDelegate:(id)a3
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBackgroundLayoutAndRenderState initWithDelegate:]"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 175, @"This operation must only be performed on the main thread."}];
  }

  v8.receiver = self;
  v8.super_class = TSDBackgroundLayoutAndRenderState;
  result = [(TSDBackgroundLayoutAndRenderState *)&v8 init];
  if (result)
  {
    result->mDelegate = a3;
  }

  return result;
}

- (void)setNeedsLayoutAndRender
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBackgroundLayoutAndRenderState setNeedsLayoutAndRender]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 191, @"This operation must only be performed on the main thread."}];
  }

  objc_sync_enter(self);
  if (!self->mNeedsLayoutAndRender)
  {
    self->mNeedsLayoutAndRender = 1;
    [(TSDBackgroundLayoutAndRenderState *)self setNeedsLayoutForTilingLayers];
  }

  objc_sync_exit(self);
}

- (void)setNeedsLayoutForTilingLayers
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDBackgroundLayoutAndRenderState setNeedsLayoutForTilingLayers]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDInteractiveCanvasController.m"), 203, @"This operation must only be performed on the main thread."}];
  }

  objc_sync_enter(self);
  if (self->mNeedsLayoutForTilingLayers)
  {

    objc_sync_exit(self);
  }

  else
  {
    self->mNeedsLayoutForTilingLayers = 1;
    objc_sync_exit(self);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__TSDBackgroundLayoutAndRenderState_setNeedsLayoutForTilingLayers__block_invoke;
    v5[3] = &unk_279D46770;
    v5[4] = self;
    if (([(TSDBackgroundLayoutAndRenderStateDelegate *)self->mDelegate backgroundLayoutAndRenderState:self shouldDispatchBackgroundWork:v5]& 1) != 0)
    {
      [+[TSKThreadDispatcher sharedInstance](TSKThreadDispatcher dispatch:"dispatch:", v5];
    }
  }
}

uint64_t __66__TSDBackgroundLayoutAndRenderState_setNeedsLayoutForTilingLayers__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16) == 0;
  *(v3 + 16) = 0;
  *(*(a1 + 32) + 17) = 0;
  objc_sync_exit(v2);
  [*(*(a1 + 32) + 8) backgroundLayoutAndRenderState:*(a1 + 32) performWorkInBackgroundTilingOnly:v4];
  v5 = *(a1 + 32);

  return [v5 performSelectorOnMainThread:sel_p_didBackgroundLayoutAndRender withObject:0 waitUntilDone:0];
}

@end