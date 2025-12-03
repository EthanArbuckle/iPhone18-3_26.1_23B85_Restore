@interface _PFTJumpToMainRunLoopScheduler
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation _PFTJumpToMainRunLoopScheduler

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  Main = CFRunLoopGetMain();
  v7 = *MEMORY[0x277CBF048];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __64___PFTJumpToMainRunLoopScheduler_performBlock_qualityOfService___block_invoke;
  v16[3] = &unk_279A52CD8;
  v8 = blockCopy;
  v17 = v8;
  v9 = v16;
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

  CFRunLoopPerformBlock(Main, v7, v13);
  v15 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v15);
}

- (id)performCancellableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v6 = objc_alloc_init(PFTMainRunLoopSchedulerCancellationToken);
  Main = CFRunLoopGetMain();
  v8 = *MEMORY[0x277CBF048];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75___PFTJumpToMainRunLoopScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v21[3] = &unk_279A52D20;
  v9 = v6;
  v22 = v9;
  v10 = blockCopy;
  v23 = v10;
  v11 = v21;
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

  CFRunLoopPerformBlock(Main, v8, v15);
  v17 = CFRunLoopGetMain();
  CFRunLoopWakeUp(v17);
  v18 = v23;
  v19 = v9;

  return v9;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  v7 = CFAbsoluteTimeGetCurrent() + delay;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75___PFTJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  block[3] = &unk_279A53170;
  v8 = blockCopy;
  v19 = v8;
  v9 = CFRunLoopTimerCreateWithHandler(0, v7, 0.0, 0, 0, block);
  if (v9)
  {
    v10 = CFAutorelease(v9);
  }

  else
  {
    v10 = 0;
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddTimer(Main, v10, *MEMORY[0x277CBF048]);
  v12 = v10;
  v13 = objc_alloc_init(PFTMainRunLoopSchedulerCancellationToken);
  objc_initWeak(&location, v12);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75___PFTJumpToMainRunLoopScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v15[3] = &unk_279A52D78;
  objc_copyWeak(&v16, &location);
  [(PFTCancellationToken *)v13 addCancellationBlock:v15];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v13;
}

@end