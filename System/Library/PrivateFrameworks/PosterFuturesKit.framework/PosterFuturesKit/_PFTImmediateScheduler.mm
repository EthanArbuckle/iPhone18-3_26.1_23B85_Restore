@interface _PFTImmediateScheduler
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTImmediateScheduler

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v7 = blockCopy;
  v12 = v7;
  if (service <= 2)
  {
    if (!service)
    {
      v10 = MEMORY[0x25F8CF560](v7);
      goto LABEL_17;
    }

    if (service == 2)
    {
      v8 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v9 = dispatch_block_create_with_qos_class(0, v8, 0, v7);
      goto LABEL_16;
    }

LABEL_11:
    v8 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (service <= 4)
  {
    if (service == 3)
    {
      v8 = QOS_CLASS_UTILITY;
    }

    else
    {
      v8 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (service == 5)
  {
    v8 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (service != 6)
  {
    goto LABEL_11;
  }

  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v7);
LABEL_16:
  v11 = v9;
  v10 = objc_opt_self();

LABEL_17:
  v10[2](v10);

  objc_autoreleasePoolPop(v6);
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = objc_alloc_init(PFTImmediateSchedulerCancellationToken);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67___PFTImmediateScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v18[3] = &unk_279A52AE8;
  v7 = blockCopy;
  v20 = v7;
  v8 = v6;
  v19 = v8;
  v9 = v18;
  v10 = v9;
  if (service > 2)
  {
    if (service <= 4)
    {
      if (service == 3)
      {
        v11 = QOS_CLASS_UTILITY;
      }

      else
      {
        v11 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (service == 5)
    {
      v11 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (service == 6)
    {
      v12 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v9);
LABEL_16:
      v14 = v12;
      v13 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (service)
  {
    if (service == 2)
    {
      v11 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v12 = dispatch_block_create_with_qos_class(0, v11, 0, v9);
      goto LABEL_16;
    }

LABEL_11:
    v11 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v13 = MEMORY[0x25F8CF560](v9);
LABEL_17:

  v13[2](v13);
  v15 = v19;
  v16 = v8;

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  v8 = MEMORY[0x277CCACC8];
  blockCopy = block;
  [v8 sleepForTimeInterval:delay];
  [(_PFTImmediateScheduler *)self performBlock:blockCopy qualityOfService:service];

  v10 = objc_alloc_init(PFTImmediateSchedulerCancellationToken);

  return v10;
}

@end