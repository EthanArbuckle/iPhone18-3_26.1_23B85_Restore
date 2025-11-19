@interface _PFTQueueScheduler
- (_PFTQueueScheduler)initWithQueue:(id)a3;
- (id)_queueForQualityOfService:(unint64_t)a3;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation _PFTQueueScheduler

- (_PFTQueueScheduler)initWithQueue:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = _PFTQueueScheduler;
  v6 = [(_PFTQueueScheduler *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = v7;
  }

  return v7;
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(_PFTQueueScheduler *)self _queueForQualityOfService:a4];
  v8 = v6;
  v13 = v8;
  if (a4 <= 2)
  {
    if (!a4)
    {
      v11 = MEMORY[0x25F8CF560](v8);
      goto LABEL_17;
    }

    if (a4 == 2)
    {
      v9 = QOS_CLASS_BACKGROUND;
LABEL_15:
      v10 = dispatch_block_create_with_qos_class(0, v9, 0, v8);
      goto LABEL_16;
    }

LABEL_11:
    v9 = QOS_CLASS_DEFAULT;
    goto LABEL_15;
  }

  if (a4 <= 4)
  {
    if (a4 == 3)
    {
      v9 = QOS_CLASS_UTILITY;
    }

    else
    {
      v9 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_15;
  }

  if (a4 == 5)
  {
    v9 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_15;
  }

  if (a4 != 6)
  {
    goto LABEL_11;
  }

  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v8);
LABEL_16:
  v12 = v10;
  v11 = objc_opt_self();

LABEL_17:
  dispatch_async(v7, v11);
}

- (id)_queueForQualityOfService:(unint64_t)a3
{
  v5 = [(_PFTQueueScheduler *)self queue];

  if (v5)
  {
    v6 = [(_PFTQueueScheduler *)self queue];
  }

  else
  {
    if (a3 - 1 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_25EDA92F8[a3 - 1];
    }

    v6 = dispatch_get_global_queue(v7, 0);
  }

  return v6;
}

- (id)performCancellableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PFTQueueSchedulerCancellationToken);
  v8 = [(_PFTQueueScheduler *)self _queueForQualityOfService:a4];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __63___PFTQueueScheduler_performCancellableBlock_qualityOfService___block_invoke;
  v20[3] = &unk_279A52D20;
  v9 = v7;
  v21 = v9;
  v10 = v6;
  v22 = v10;
  v11 = v20;
  v12 = v11;
  if (a4 > 2)
  {
    if (a4 <= 4)
    {
      if (a4 == 3)
      {
        v13 = QOS_CLASS_UTILITY;
      }

      else
      {
        v13 = QOS_CLASS_USER_INITIATED;
      }

      goto LABEL_15;
    }

    if (a4 == 5)
    {
      v13 = QOS_CLASS_USER_INTERACTIVE;
      goto LABEL_15;
    }

    if (a4 == 6)
    {
      v14 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v11);
LABEL_16:
      v16 = v14;
      v15 = objc_opt_self();

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 2)
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

  dispatch_async(v8, v15);
  v17 = v22;
  v18 = v9;

  return v9;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(_PFTQueueScheduler *)self _queueForQualityOfService:a5];
  v10 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v9);

  v11 = [[PFTDispatchSource alloc] initWithSource:v10];
  if (a3 <= 1.84467441e10)
  {
    v12 = dispatch_time(0, (a3 * 1000000000.0));
  }

  else
  {
    v12 = -1;
  }

  dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63___PFTQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke;
  v26[3] = &unk_279A52AE8;
  v13 = v8;
  v28 = v13;
  v14 = v11;
  v27 = v14;
  v15 = v26;
  v16 = v15;
  if (a5 <= 2)
  {
    if (!a5)
    {
      v19 = MEMORY[0x25F8CF560](v15);
      goto LABEL_20;
    }

    if (a5 == 2)
    {
      v17 = QOS_CLASS_BACKGROUND;
LABEL_18:
      v18 = dispatch_block_create_with_qos_class(0, v17, 0, v15);
      goto LABEL_19;
    }

LABEL_14:
    v17 = QOS_CLASS_DEFAULT;
    goto LABEL_18;
  }

  if (a5 <= 4)
  {
    if (a5 == 3)
    {
      v17 = QOS_CLASS_UTILITY;
    }

    else
    {
      v17 = QOS_CLASS_USER_INITIATED;
    }

    goto LABEL_18;
  }

  if (a5 == 5)
  {
    v17 = QOS_CLASS_USER_INTERACTIVE;
    goto LABEL_18;
  }

  if (a5 != 6)
  {
    goto LABEL_14;
  }

  v18 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v15);
LABEL_19:
  v20 = v18;
  v19 = objc_opt_self();

LABEL_20:
  dispatch_source_set_event_handler(v10, v19);

  v21 = objc_alloc_init(PFTQueueSchedulerCancellationToken);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __63___PFTQueueScheduler_afterDelay_performBlock_qualityOfService___block_invoke_2;
  v24[3] = &unk_279A52C60;
  v25 = v14;
  v22 = v14;
  [(PFTCancellationToken *)v21 addCancellationBlock:v24];
  dispatch_resume(v10);

  return v21;
}

@end