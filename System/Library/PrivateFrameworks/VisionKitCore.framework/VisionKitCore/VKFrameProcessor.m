@interface VKFrameProcessor
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (OS_dispatch_queue)resultHandlerQueue;
- (VKFrameProcessor)init;
- (double)infrequentProcessingInterval;
- (double)processingInterval;
- (void)_processFrame:(void *)a1;
- (void)cancel;
- (void)enqueueFrame:(id)a3;
- (void)requestImmediateProcessing;
- (void)reset;
- (void)setExecuting:(void *)a1;
- (void)setInfrequentProcessingInterval:(double)a3;
- (void)setProcessingInterval:(double)a3;
- (void)setResultHandlerQueue:(id)a3;
@end

@implementation VKFrameProcessor

- (VKFrameProcessor)init
{
  v13.receiver = self;
  v13.super_class = VKFrameProcessor;
  v2 = [(VKFrameProcessor *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"com.apple.visionkit.%@.serial", v8];

    v10 = dispatch_queue_create([v9 UTF8String], v5);
    serialQueue = v3->_serialQueue;
    v3->_serialQueue = v10;

    *&v3->_processingInterval = xmmword_1B4428400;
    v3->_currentProcessingInterval = 0.25;
  }

  return v3;
}

- (OS_dispatch_queue)resultHandlerQueue
{
  [(VKFrameProcessor *)self lock];
  v3 = self->_resultHandlerQueue;
  [(VKFrameProcessor *)self unlock];

  return v3;
}

- (void)setResultHandlerQueue:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__VKFrameProcessor_setResultHandlerQueue___block_invoke;
  v6[3] = &unk_1E7BE4768;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  vk_performWhileLocked(self, v6);
}

- (void)enqueueFrame:(id)a3
{
  v4 = a3;
  v5 = [(VKFrameProcessor *)self wantsThrottling];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__VKFrameProcessor_enqueueFrame___block_invoke;
  v7[3] = &unk_1E7BE5068;
  v9 = v5;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  vk_performWhileLocked(self, v7);
}

void __33__VKFrameProcessor_enqueueFrame___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    if (*(a1 + 48) != 1)
    {
LABEL_9:
      *(v1 + 32) = 1;
      *(*(a1 + 32) + 56) = CFAbsoluteTimeGetCurrent();
      v8 = *(a1 + 32);
      v9 = v8[3];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __33__VKFrameProcessor_enqueueFrame___block_invoke_2;
      v10[3] = &unk_1E7BE5040;
      v11 = *(a1 + 40);
      vk_performBlockOnQueueWithStrongSelf(v9, v8, v10);

      return;
    }

    if (*(v1 + 34) == 1)
    {
      *(v1 + 34) = 0;
      v1 = *(a1 + 32);
      goto LABEL_9;
    }

    v3 = [*(a1 + 40) info];
    v4 = [v3 sceneStability];

    v5 = 40;
    if (v4 == 3)
    {
      v5 = 48;
    }

    *(*(a1 + 32) + 64) = *(*(a1 + 32) + v5);
    Current = CFAbsoluteTimeGetCurrent();
    v1 = *(a1 + 32);
    v7 = *(v1 + 56);
    if (v7 == 0.0 || Current - v7 >= *(v1 + 64))
    {
      goto LABEL_9;
    }
  }
}

uint64_t __34__VKFrameProcessor__processFrame___block_invoke(uint64_t result)
{
  *(*(result + 32) + 32) = 0;
  *(*(result + 32) + 33) = 0;
  return result;
}

- (double)processingInterval
{
  [(VKFrameProcessor *)self lock];
  processingInterval = self->_processingInterval;
  [(VKFrameProcessor *)self unlock];
  return processingInterval;
}

- (void)setProcessingInterval:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__VKFrameProcessor_setProcessingInterval___block_invoke;
  v3[3] = &unk_1E7BE5090;
  v3[4] = self;
  *&v3[5] = a3;
  vk_performWhileLocked(self, v3);
}

double __42__VKFrameProcessor_setProcessingInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 40) = result;
  return result;
}

- (double)infrequentProcessingInterval
{
  [(VKFrameProcessor *)self lock];
  infrequentProcessingInterval = self->_infrequentProcessingInterval;
  [(VKFrameProcessor *)self unlock];
  return infrequentProcessingInterval;
}

- (void)setInfrequentProcessingInterval:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __52__VKFrameProcessor_setInfrequentProcessingInterval___block_invoke;
  v3[3] = &unk_1E7BE5090;
  v3[4] = self;
  *&v3[5] = a3;
  vk_performWhileLocked(self, v3);
}

double __52__VKFrameProcessor_setInfrequentProcessingInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 48) = result;
  return result;
}

- (void)requestImmediateProcessing
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__VKFrameProcessor_requestImmediateProcessing__block_invoke;
  v2[3] = &unk_1E7BE4208;
  v2[4] = self;
  vk_performWhileLocked(self, v2);
}

- (BOOL)isExecuting
{
  [(VKFrameProcessor *)self lock];
  isExecuting = self->_isExecuting;
  [(VKFrameProcessor *)self unlock];
  return isExecuting;
}

- (BOOL)isCancelled
{
  [(VKFrameProcessor *)self lock];
  isCancelled = self->_isCancelled;
  [(VKFrameProcessor *)self unlock];
  return isCancelled;
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __26__VKFrameProcessor_cancel__block_invoke;
  v2[3] = &unk_1E7BE4208;
  v2[4] = self;
  vk_performWhileLocked(self, v2);
}

- (void)reset
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __25__VKFrameProcessor_reset__block_invoke;
  v2[3] = &unk_1E7BE4208;
  v2[4] = self;
  vk_performWhileLocked(self, v2);
}

uint64_t __25__VKFrameProcessor_reset__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 32) == 1)
  {
    *(v1 + 33) = 1;
  }

  return result;
}

- (void)_processFrame:(void *)a1
{
  if (a1)
  {
    v3 = a1[3];
    v4 = a2;
    dispatch_assert_queue_V2(v3);
    [a1 processFrame:v4];

    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __34__VKFrameProcessor__processFrame___block_invoke;
    v5[3] = &unk_1E7BE4208;
    v5[4] = a1;
    vk_performWhileLocked(a1, v5);
  }
}

- (void)setExecuting:(void *)a1
{
  if (a1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __33__VKFrameProcessor_setExecuting___block_invoke;
    v2[3] = &unk_1E7BE41B8;
    v2[4] = a1;
    v3 = a2;
    vk_performWhileLocked(a1, v2);
  }
}

@end