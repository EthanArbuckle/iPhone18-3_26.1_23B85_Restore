@interface CLKUIQuadView
+ (id)quadViewWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 colorSpace:(int64_t)a6;
- (BOOL)_sync_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6;
- (BOOL)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4 completion:(id)a5;
- (CGSize)drawableSize;
- (CLKUIQuadView)initWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 asyncRenderQueue:(id)a6;
- (CLKUIQuadViewDelegate)delegate;
- (void)_async_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6;
- (void)_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6;
- (void)_prerenderForTime:(double)a3;
- (void)_runOnRenderQueueIfNeeded:(id)a3;
- (void)addQuad:(id)a3;
- (void)addQuadsFromArray:(id)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)enumerateHierarchyObserversFromView:(id)a3 withBlock:(id)a4;
- (void)removeAllQuads;
- (void)removeQuad:(id)a3;
- (void)setDebugIdentifier:(id)a3;
- (void)setDelegate:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CLKUIQuadView

+ (id)quadViewWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 colorSpace:(int64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = a4;
  v13 = [[CLKUIMetalQuadView alloc] initWithFrame:v12 identifier:a5 options:a6 colorSpace:x, y, width, height];

  return v13;
}

- (void)_runOnRenderQueueIfNeeded:(id)a3
{
  asyncRenderQueue = self->_asyncRenderQueue;
  if (asyncRenderQueue)
  {
    v5 = a3;
    dispatch_assert_queue_not_V2(asyncRenderQueue);
    dispatch_sync(self->_asyncRenderQueue, v5);
  }

  else
  {
    (*(a3 + 2))(a3);
  }
}

- (BOOL)renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4 completion:(id)a5
{
  v6 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ([(NSCountedSet *)self->_disabledRenderingReasons count])
  {
    v10 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      debugIdentifier = self->_debugIdentifier;
      disabledRenderingReasons = self->_disabledRenderingReasons;
      *buf = 138412546;
      *&buf[4] = debugIdentifier;
      *&buf[12] = 2112;
      *&buf[14] = disabledRenderingReasons;
      _os_log_impl(&dword_1BC940000, v10, OS_LOG_TYPE_DEFAULT, "CLKUIQuadView (%@): Rendering disabled for reasons: %@", buf, 0x16u);
    }

    if (v9)
    {
      v9[2](v9);
    }

    v13 = 0;
  }

  else
  {
    if (v6)
    {
      [(CLKUIQuadView *)self discardContents];
    }

    v14 = CACurrentMediaTime();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v24 = 0;
    asyncRenderQueue = self->_asyncRenderQueue;
    if (asyncRenderQueue)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __77__CLKUIQuadView_renderSynchronouslyWithImageQueueDiscard_inGroup_completion___block_invoke;
      v17[3] = &unk_1E7FF8A48;
      v20 = buf;
      v17[4] = self;
      v21 = v14;
      v18 = v8;
      v22 = v6;
      v19 = v9;
      dispatch_sync(asyncRenderQueue, v17);

      v13 = *(*&buf[8] + 24);
    }

    else
    {
      v13 = [(CLKUIQuadView *)self _sync_prepareAndRenderForTime:v8 inGroup:!v6 checkForDrawable:v9 completion:v14];
      *(*&buf[8] + 24) = v13;
    }

    _Block_object_dispose(buf, 8);
  }

  return v13 & 1;
}

uint64_t __77__CLKUIQuadView_renderSynchronouslyWithImageQueueDiscard_inGroup_completion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _sync_prepareAndRenderForTime:*(a1 + 40) inGroup:(*(a1 + 72) & 1) == 0 checkForDrawable:*(a1 + 48) completion:*(a1 + 64)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (CLKUIQuadView)initWithFrame:(CGRect)a3 identifier:(id)a4 options:(unint64_t)a5 asyncRenderQueue:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = CLKUIQuadView;
  v16 = [(CLKUIQuadView *)&v26 initWithFrame:x, y, width, height];
  if (v16)
  {
    v17 = dispatch_semaphore_create(3);
    asyncSemaphore = v16->_asyncSemaphore;
    v16->_asyncSemaphore = v17;

    v19 = [[CLKUIQuadViewRenderCoordinator alloc] initWithQuadView:v16 synchronizeWithClockTimer:(a5 >> 2) & 1];
    renderCoordinator = v16->_renderCoordinator;
    v16->_renderCoordinator = v19;

    v21 = [MEMORY[0x1E695DF70] array];
    mutableQuads = v16->_mutableQuads;
    v16->_mutableQuads = v21;

    v23 = objc_opt_new();
    disabledRenderingReasons = v16->_disabledRenderingReasons;
    v16->_disabledRenderingReasons = v23;

    objc_storeStrong(&v16->_asyncRenderQueue, a6);
    objc_storeStrong(&v16->_debugIdentifier, a4);
  }

  return v16;
}

- (void)dealloc
{
  [(CLKUIQuadViewRenderCoordinator *)self->_renderCoordinator invalidate];
  renderCoordinator = self->_renderCoordinator;
  self->_renderCoordinator = 0;

  [(CLKUIQuadView *)self removeAllQuads];
  v4.receiver = self;
  v4.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v4 dealloc];
}

- (void)_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6
{
  if (self->_asyncRenderQueue)
  {
    [(CLKUIQuadView *)self _async_prepareAndRenderForTime:a4 inGroup:a5 checkForDrawable:a6 completion:a3];
  }

  else
  {
    [(CLKUIQuadView *)self _sync_prepareAndRenderForTime:a4 inGroup:a5 checkForDrawable:a6 completion:a3];
  }
}

- (void)_async_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  if (!dispatch_semaphore_wait(self->_asyncSemaphore, 0))
  {
    asyncRenderQueue = self->_asyncRenderQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_completion___block_invoke;
    block[3] = &unk_1E7FF8A70;
    block[4] = self;
    v16 = a3;
    v14 = v10;
    v17 = a5;
    v15 = v11;
    dispatch_async(asyncRenderQueue, block);
  }
}

intptr_t __84__CLKUIQuadView__async_prepareAndRenderForTime_inGroup_checkForDrawable_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _sync_prepareAndRenderForTime:*(a1 + 40) inGroup:*(a1 + 64) checkForDrawable:*(a1 + 48) completion:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 464);

  return dispatch_semaphore_signal(v2);
}

- (BOOL)_sync_prepareAndRenderForTime:(double)a3 inGroup:(id)a4 checkForDrawable:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a4;
  v11 = a6;
  asyncRenderQueue = self->_asyncRenderQueue;
  if (asyncRenderQueue)
  {
    dispatch_assert_queue_V2(asyncRenderQueue);
  }

  if (v10)
  {
    dispatch_group_enter(v10);
  }

  [(CLKUIQuadView *)self _prerenderForTime:a3];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __83__CLKUIQuadView__sync_prepareAndRenderForTime_inGroup_checkForDrawable_completion___block_invoke;
  v17[3] = &unk_1E7FF8A98;
  v18 = v10;
  v19 = v11;
  v13 = v10;
  v14 = v11;
  v15 = [(CLKUIQuadView *)self _displayAndCheckForDrawable:v7 withCompletion:v17];
  ++self->_frameNum;

  return v15;
}

void __83__CLKUIQuadView__sync_prepareAndRenderForTime_inGroup_checkForDrawable_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_group_leave(v3);
  }
}

- (void)enumerateHierarchyObserversFromView:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9 = v5;
  v7 = v9;
  do
  {
    if (objc_opt_respondsToSelector())
    {
      v6[2](v6, v7);
    }

    v8 = [v7 superview];

    v7 = v8;
  }

  while (v8);
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v7 willMoveToWindow:a3];
  v4 = [(CLKUIQuadView *)self superview];

  if (v4)
  {
    v5 = [(CLKUIQuadView *)self superview];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__CLKUIQuadView_willMoveToWindow___block_invoke;
    v6[3] = &unk_1E7FF8AC0;
    v6[4] = self;
    [(CLKUIQuadView *)self enumerateHierarchyObserversFromView:v5 withBlock:v6];
  }
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = CLKUIQuadView;
  [(CLKUIQuadView *)&v6 didMoveToWindow];
  v3 = [(CLKUIQuadView *)self superview];

  if (v3)
  {
    v4 = [(CLKUIQuadView *)self superview];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __32__CLKUIQuadView_didMoveToWindow__block_invoke;
    v5[3] = &unk_1E7FF8AC0;
    v5[4] = self;
    [(CLKUIQuadView *)self enumerateHierarchyObserversFromView:v4 withBlock:v5];
  }
}

- (CGSize)drawableSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)addQuad:(id)a3
{
  v4 = a3;
  [v4 setQuadView:self];
  [v4 setupForQuadView:self];
  [(NSMutableArray *)self->_mutableQuads addObject:v4];

  mutableQuads = self->_mutableQuads;

  [(CLKUIQuadView *)self _handleQuadArrayChange:mutableQuads];
}

- (void)addQuadsFromArray:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [v9 setQuadView:self];
        [v9 setupForQuadView:self];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_mutableQuads addObjectsFromArray:v4];
  [(CLKUIQuadView *)self _handleQuadArrayChange:self->_mutableQuads];
}

- (void)removeQuad:(id)a3
{
  v4 = a3;
  [v4 purge];
  [v4 setQuadView:0];
  [(NSMutableArray *)self->_mutableQuads removeObject:v4];

  mutableQuads = self->_mutableQuads;

  [(CLKUIQuadView *)self _handleQuadArrayChange:mutableQuads];
}

- (void)removeAllQuads
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_mutableQuads;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 purge];
        [v8 setQuadView:0];
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_mutableQuads removeAllObjects];
  [(CLKUIQuadView *)self _handleQuadArrayChange:self->_mutableQuads];
}

- (void)_prerenderForTime:(double)a3
{
  if (*&self->_delegateRespondsTo)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained quadViewWillDisplay:self forTime:a3];
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_delegate, obj);
    *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;
  }
}

- (void)setDebugIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 length];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (v5 >= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v5;
    }

    do
    {
      v8 |= [v4 characterAtIndex:v7++] << v6;
      v6 += 8;
    }

    while (v9 != v7);
  }

  else
  {
    v8 = 0;
  }

  self->_debugId = v8;
  debugIdentifier = self->_debugIdentifier;
  self->_debugIdentifier = v4;
}

- (CLKUIQuadViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end