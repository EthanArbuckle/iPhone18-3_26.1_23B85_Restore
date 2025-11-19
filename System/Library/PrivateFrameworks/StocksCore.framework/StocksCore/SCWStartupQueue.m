@interface SCWStartupQueue
- (void)enqueueStartupBlock:(id)a3;
- (void)executeAfterStartup:(id)a3;
@end

@implementation SCWStartupQueue

- (void)enqueueStartupBlock:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_startupTaskDepthLock);
  ++self->_startupTaskDepth;
  os_unfair_lock_unlock(&self->_startupTaskDepthLock);
  v5 = [(SCWStartupQueue *)self startupTaskQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SCWStartupQueue_enqueueStartupBlock___block_invoke;
  v7[3] = &unk_1E85E3508;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enqueueBlock:v7];
}

void __39__SCWStartupQueue_enqueueStartupBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SCWStartupQueue_enqueueStartupBlock___block_invoke_2;
  v7[3] = &unk_1E85E34E0;
  v4 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

uint64_t __39__SCWStartupQueue_enqueueStartupBlock___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  --*(*(a1 + 32) + 24);
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)executeAfterStartup:(id)a3
{
  v4 = a3;
  v5 = [(SCWStartupQueue *)self startupTaskQueue];
  [v5 setSuspended:0];

  os_unfair_lock_lock(&self->_startupTaskDepthLock);
  startupTaskDepth = self->_startupTaskDepth;
  os_unfair_lock_unlock(&self->_startupTaskDepthLock);
  if (startupTaskDepth <= 0)
  {
    v4[2](v4);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__SCWStartupQueue_executeAfterStartup___block_invoke;
    v7[3] = &unk_1E85E3530;
    v8 = v4;
    [(SCWStartupQueue *)self enqueueStartupBlock:v7];
  }
}

void __39__SCWStartupQueue_executeAfterStartup___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = a2;
  v3(v2);
  v4[2]();
}

@end