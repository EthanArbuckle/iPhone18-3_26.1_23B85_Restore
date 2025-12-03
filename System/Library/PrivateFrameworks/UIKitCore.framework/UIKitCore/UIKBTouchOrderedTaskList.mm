@interface UIKBTouchOrderedTaskList
+ (id)taskListForTouchUUID:(id)d withPathIndex:(unint64_t)index;
- (BOOL)executeTasksInView:(id)view withBlock:(id)block;
- (BOOL)isExecutingFirstTask;
- (UIKBTouchOrderedTaskList)initWithTouchUUID:(id)d withPathIndex:(unint64_t)index;
- (id)firstTouchStateForUITouchPhase:(int64_t)phase;
- (void)addTask:(id)task;
- (void)dealloc;
- (void)removeTasksMatchingFilter:(id)filter;
@end

@implementation UIKBTouchOrderedTaskList

+ (id)taskListForTouchUUID:(id)d withPathIndex:(unint64_t)index
{
  dCopy = d;
  v6 = [[UIKBTouchOrderedTaskList alloc] initWithTouchUUID:dCopy withPathIndex:index];

  return v6;
}

- (UIKBTouchOrderedTaskList)initWithTouchUUID:(id)d withPathIndex:(unint64_t)index
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = UIKBTouchOrderedTaskList;
  v8 = [(UIKBTouchOrderedTaskList *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_touchUUID, d);
    v9->_pathIndex = index;
    v10 = dispatch_queue_create(0, 0);
    touchStateTasksQueue = v9->_touchStateTasksQueue;
    v9->_touchStateTasksQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    touchStateTasks = v9->_touchStateTasks;
    v9->_touchStateTasks = v12;
  }

  return v9;
}

- (void)dealloc
{
  touchStateTasksQueue = self->_touchStateTasksQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__UIKBTouchOrderedTaskList_dealloc__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(touchStateTasksQueue, block);
  v4 = self->_touchStateTasksQueue;
  self->_touchStateTasksQueue = 0;

  v5.receiver = self;
  v5.super_class = UIKBTouchOrderedTaskList;
  [(UIKBTouchOrderedTaskList *)&v5 dealloc];
}

void __35__UIKBTouchOrderedTaskList_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)addTask:(id)task
{
  taskCopy = task;
  touchState = [taskCopy touchState];
  phase = [touchState phase];

  if (!phase)
  {
    touchState2 = [taskCopy touchState];
    [touchState2 timestamp];
    self->_originalStartTime = v8;
  }

  touchStateTasksQueue = self->_touchStateTasksQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __36__UIKBTouchOrderedTaskList_addTask___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v11[4] = self;
  v12 = taskCopy;
  v10 = taskCopy;
  dispatch_sync(touchStateTasksQueue, v11);
}

uint64_t __36__UIKBTouchOrderedTaskList_addTask___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 24) count] || (objc_msgSend(*(*(a1 + 32) + 24), "lastObject"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "compare:", *(a1 + 40)), v2, v3 == -1))
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 32) + 24);

    return [v9 addObject:v8];
  }

  else
  {
    v4 = [*(*(a1 + 32) + 24) indexOfObject:*(a1 + 40) inSortedRange:0 options:objc_msgSend(*(*(a1 + 32) + 24) usingComparator:{"count"), 1024, &__block_literal_global_386}];
    v5 = *(a1 + 40);
    v6 = *(*(a1 + 32) + 24);

    return [v6 insertObject:v5 atIndex:v4];
  }
}

- (BOOL)isExecutingFirstTask
{
  firstObject = [(NSMutableArray *)self->_touchStateTasks firstObject];
  isBusy = [firstObject isBusy];

  return isBusy;
}

- (void)removeTasksMatchingFilter:(id)filter
{
  v25 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__134;
  v22 = __Block_byref_object_dispose__134;
  v23 = 0;
  touchStateTasksQueue = self->_touchStateTasksQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__UIKBTouchOrderedTaskList_removeTasksMatchingFilter___block_invoke;
  block[3] = &unk_1E70FCDA0;
  block[4] = self;
  block[5] = &v18;
  dispatch_sync(touchStateTasksQueue, block);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v19[5];
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (filterCopy[2](filterCopy, v10))
        {
          v11 = self->_touchStateTasksQueue;
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __54__UIKBTouchOrderedTaskList_removeTasksMatchingFilter___block_invoke_2;
          v12[3] = &unk_1E70F35B8;
          v12[4] = self;
          v12[5] = v10;
          dispatch_sync(v11, v12);
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v24 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v18, 8);
}

void __54__UIKBTouchOrderedTaskList_removeTasksMatchingFilter___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)executeTasksInView:(id)view withBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v27 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__134;
  v25 = __Block_byref_object_dispose__134;
  v26 = 0;
  touchStateTasksQueue = self->_touchStateTasksQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__UIKBTouchOrderedTaskList_executeTasksInView_withBlock___block_invoke;
  block[3] = &unk_1E70FCDA0;
  block[4] = self;
  block[5] = &v21;
  dispatch_sync(touchStateTasksQueue, block);
  v9 = v22[5];
  if (v9)
  {
    [v9 setIsBusy:1];
    if (blockCopy && ([v22[5] touchState], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22[5], "task"), v11 = objc_claimAutoreleasedReturnValue(), blockCopy[2](blockCopy, v10, v11, &v27), v11, v10, v27))
    {
      [v22[5] setIsBusy:0];
    }

    else
    {
      v12 = MEMORY[0x1E696B098];
      touchState = [v22[5] touchState];
      [touchState locationInWindow];
      [viewCopy convertPoint:0 fromView:?];
      v14 = [v12 valueWithCGPoint:?];
      currentTouchPoint = self->_currentTouchPoint;
      self->_currentTouchPoint = v14;

      v16 = self->_touchStateTasksQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __57__UIKBTouchOrderedTaskList_executeTasksInView_withBlock___block_invoke_2;
      v19[3] = &unk_1E70F3590;
      v19[4] = self;
      dispatch_sync(v16, v19);
    }
  }

  v17 = v27;
  _Block_object_dispose(&v21, 8);

  return v17;
}

void __57__UIKBTouchOrderedTaskList_executeTasksInView_withBlock___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) firstObject];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)firstTouchStateForUITouchPhase:(int64_t)phase
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__134;
  v16 = __Block_byref_object_dispose__134;
  v17 = 0;
  touchStateTasksQueue = self->_touchStateTasksQueue;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__UIKBTouchOrderedTaskList_firstTouchStateForUITouchPhase___block_invoke;
  v11[3] = &unk_1E70FCDA0;
  v11[4] = self;
  v11[5] = &v12;
  dispatch_sync(touchStateTasksQueue, v11);
  v5 = v13;
  v6 = v13[5];
  if (v6)
  {
    phase = [v6 phase];
    v5 = v13;
    if (phase != phase)
    {
      v8 = v13[5];
      v13[5] = 0;

      v5 = v13;
    }
  }

  v9 = v5[5];
  _Block_object_dispose(&v12, 8);

  return v9;
}

void __59__UIKBTouchOrderedTaskList_firstTouchStateForUITouchPhase___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 24) firstObject];
  v2 = [v5 touchState];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end