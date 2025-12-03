@interface _PFTSynchronousQueueScheduler
- (_PFTSynchronousQueueScheduler)initWithQueue:(id)queue;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTSynchronousQueueScheduler

- (_PFTSynchronousQueueScheduler)initWithQueue:(id)queue
{
  queueCopy = queue;
  v10.receiver = self;
  v10.super_class = _PFTSynchronousQueueScheduler;
  v6 = [(_PFTSynchronousQueueScheduler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = v7;
  }

  return v7;
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  queue = self->_queue;
  v9 = blockCopy;
  v14 = v9;
  if (service <= 2)
  {
    if (!service)
    {
      v12 = MEMORY[0x25F8CF560](v9);
      goto LABEL_17;
    }

    if (service == 2)
    {
      v10 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v11 = dispatch_block_create_with_qos_class(0, v10, 0, v9);
      goto LABEL_16;
    }

LABEL_11:
    v10 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v10 = QOS_CLASS_UTILITY;
    }

    else
    {
      v10 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (service == 5)
  {
    v10 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (service != 6)
  {
    goto LABEL_11;
  }

  v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
LABEL_16:
  v13 = v11;
  v12 = objc_opt_self();

LABEL_17:
  dispatch_sync(queue, v12);

  objc_autoreleasePoolPop(v7);
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = objc_alloc_init(SynchronousQueueSchedulerCancellationToken);
  queue = self->_queue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74___PFTSynchronousQueueScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_279A52AE8;
  v9 = blockCopy;
  v22 = v9;
  v10 = v7;
  v21 = v10;
  v11 = v20;
  v12 = v11;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v13 = QOS_CLASS_UTILITY;
      }

      else
      {
        v13 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v13 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
      v16 = v14;
      v15 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v13 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v14 = dispatch_block_create_with_qos_class(0, v13, 0, v11);
      goto LABEL_16;
    }

LABEL_11:
    v13 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v15 = MEMORY[0x25F8CF560](v11);
LABEL_17:

  dispatch_sync(queue, v15);
  v17 = v21;
  v18 = v10;

  return v10;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  queue = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74___PFTSynchronousQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v19[3] = &unk_279A52B10;
  delayCopy = delay;
  v10 = blockCopy;
  v20 = v10;
  v11 = v19;
  v12 = v11;
  if (service <= 2)
  {
    if (!service)
    {
      v15 = MEMORY[0x25F8CF560](v11);
      goto LABEL_17;
    }

    if (service == 2)
    {
      v13 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v14 = dispatch_block_create_with_qos_class(0, v13, 0, v11);
      goto LABEL_16;
    }

LABEL_11:
    v13 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v13 = QOS_CLASS_UTILITY;
    }

    else
    {
      v13 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (service == 5)
  {
    v13 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (service != 6)
  {
    goto LABEL_11;
  }

  v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
  v16 = v14;
  v15 = objc_opt_self();

LABEL_17:
  dispatch_sync(queue, v15);

  v17 = objc_alloc_init(SynchronousQueueSchedulerCancellationToken);

  return v17;
}

@end