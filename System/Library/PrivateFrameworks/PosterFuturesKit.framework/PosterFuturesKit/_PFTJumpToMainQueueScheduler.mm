@interface _PFTJumpToMainQueueScheduler
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _PFTJumpToMainQueueScheduler

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = MEMORY[0x277D85CD0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __62___PFTJumpToMainQueueScheduler_performBlock_qualityOfService___block_invoke;
  v15[3] = &unk_279A52CD8;
  v7 = v5;
  v16 = v7;
  v8 = v15;
  v9 = v8;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v10 = QOS_CLASS_UTILITY;
      }

      else
      {
        v10 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      v10 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a4 == 6)
    {
      v11 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
LABEL_16:
      v13 = v11;
      v12 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 2)
    {
      v10 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v11 = dispatch_block_create_with_qos_class(0, v10, 0, v8);
      goto LABEL_16;
    }

LABEL_11:
    v10 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v12 = MEMORY[0x25F8CF560](v8);
LABEL_17:

  v14 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PFTMainQueueSchedulerCancellationToken);
  v7 = MEMORY[0x277D85CD0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __73___PFTJumpToMainQueueScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_279A52D20;
  v8 = v6;
  v21 = v8;
  v9 = v5;
  v22 = v9;
  v10 = v20;
  v11 = v10;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v12 = QOS_CLASS_UTILITY;
      }

      else
      {
        v12 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      v12 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a4 == 6)
    {
      v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v10);
LABEL_16:
      v15 = v13;
      v14 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 2)
    {
      v12 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v13 = dispatch_block_create_with_qos_class(0, v12, 0, v10);
      goto LABEL_16;
    }

LABEL_11:
    v12 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v14 = MEMORY[0x25F8CF560](v10);
LABEL_17:

  v16 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v14);

  v17 = v22;
  v18 = v8;

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v7 = a4;
  v8 = objc_alloc_init(PFTMainQueueSchedulerCancellationToken);
  v9 = MEMORY[0x277D85CD0];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73___PFTJumpToMainQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v22[3] = &unk_279A52D20;
  v10 = v8;
  v23 = v10;
  v11 = v7;
  v24 = v11;
  v12 = v22;
  v13 = v12;
  if (a5 > 2)
  {
    if (a5 <= 4)
    {
      if (a5 == 3)
      {
        v14 = QOS_CLASS_UTILITY;
      }

      else
      {
        v14 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a5 == 5)
    {
      v14 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a5 == 6)
    {
      v15 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v12);
LABEL_16:
      v17 = v15;
      v16 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a5)
  {
    if (a5 == 2)
    {
      v14 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v15 = dispatch_block_create_with_qos_class(0, v14, 0, v12);
      goto LABEL_16;
    }

LABEL_11:
    v14 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  v16 = MEMORY[0x25F8CF560](v12);
LABEL_17:

  v18 = MEMORY[0x277D85CD0];
  dispatch_after(a3, MEMORY[0x277D85CD0], v16);

  v19 = v24;
  v20 = v10;

  return v10;
}

@end