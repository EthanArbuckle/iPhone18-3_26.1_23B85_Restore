@interface PXObservable(PXStory)
- (_PXStoryObservation)_pxStoryPPT_observeChangesUsingChangeHandler:()PXStory;
- (id)pxStory_enumerateStatesByWatchingChanges:()PXStory usingBlock:;
- (void)pxStory_enumerateStatesWithTimeout:()PXStory watchingChanges:usingBlock:timeoutHandler:;
@end

@implementation PXObservable(PXStory)

- (_PXStoryObservation)_pxStoryPPT_observeChangesUsingChangeHandler:()PXStory
{
  v4 = a3;
  v5 = [[_PXStoryObservation alloc] initWithObservable:self changeHandler:v4];

  return v5;
}

- (id)pxStory_enumerateStatesByWatchingChanges:()PXStory usingBlock:
{
  v6 = a4;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25[0] = 0;
  v6[2](v6, self, a3, v25);
  if (v23[3])
  {
    v7 = 0;
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__144752;
    v20 = __Block_byref_object_dispose__144753;
    v21 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __77__PXObservable_PXStory__pxStory_enumerateStatesByWatchingChanges_usingBlock___block_invoke;
    v11[3] = &unk_1E773D438;
    v11[4] = self;
    v13 = &v22;
    v15 = a3;
    v12 = v6;
    v14 = &v16;
    v8 = [self _pxStoryPPT_observeChangesUsingChangeHandler:v11];
    v9 = v17[5];
    v17[5] = v8;

    v7 = v17[5];
    _Block_object_dispose(&v16, 8);
  }

  _Block_object_dispose(&v22, 8);

  return v7;
}

- (void)pxStory_enumerateStatesWithTimeout:()PXStory watchingChanges:usingBlock:timeoutHandler:
{
  v10 = a5;
  v11 = a6;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __102__PXObservable_PXStory__pxStory_enumerateStatesWithTimeout_watchingChanges_usingBlock_timeoutHandler___block_invoke;
  v21[3] = &unk_1E773D410;
  v12 = v10;
  v22 = v12;
  v23 = v24;
  v13 = [self pxStory_enumerateStatesByWatchingChanges:a4 usingBlock:v21];
  if (v13)
  {
    if (objc_opt_respondsToSelector())
    {
      storyQueue = [self storyQueue];
    }

    else
    {
      storyQueue = MEMORY[0x1E69E96A0];
      v15 = MEMORY[0x1E69E96A0];
    }

    dispatch_assert_queue_V2(storyQueue);
    v16 = dispatch_time(0, (a2 * 1000000000.0));
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__PXObservable_PXStory__pxStory_enumerateStatesWithTimeout_watchingChanges_usingBlock_timeoutHandler___block_invoke_2;
    block[3] = &unk_1E7744A38;
    v18 = v13;
    v19 = v11;
    v20 = v24;
    dispatch_after(v16, storyQueue, block);
  }

  _Block_object_dispose(v24, 8);
}

@end