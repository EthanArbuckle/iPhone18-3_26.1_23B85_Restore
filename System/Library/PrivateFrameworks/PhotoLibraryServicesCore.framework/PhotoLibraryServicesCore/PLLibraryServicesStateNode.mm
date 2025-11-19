@interface PLLibraryServicesStateNode
- (BOOL)enqueueOperation:(id)a3 error:(id *)a4;
- (NSArray)operations;
- (PLLibraryServicesStateNode)initWithLibraryServicesState:(int64_t)a3 qualityOfService:(unsigned int)a4 logPrefix:(id)a5;
- (id)addOperationCountObserver:(id)a3 context:(void *)a4;
- (id)description;
- (id)operationQueue;
- (unint64_t)operationCount;
- (unsigned)qos;
- (void)run;
- (void)setOperationQueue:(id)a3;
- (void)setQos:(unsigned int)a3;
- (void)terminate;
@end

@implementation PLLibraryServicesStateNode

- (BOOL)enqueueOperation:(id)a3 error:(id *)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLLibraryServicesStateNode *)self operationQueue];
  v8 = v7;
  if (v7)
  {
    [v7 addOperation:v6];
  }

  else
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = PLStringFromLibraryServicesState(self->_state);
    v11 = [v9 stringWithFormat:@"Attempt to enqueue operation in state %@", v10];

    v12 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A278];
    v24[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.photos.error" code:46502 userInfo:v13];

    if (a4)
    {
      v15 = v14;
      *a4 = v14;
    }

    else
    {
      v16 = PLLibraryServicesGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [(PLLibraryServicesStateNode *)self logPrefix];
        *buf = 138543618;
        v20 = v17;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_1AA9BD000, v16, OS_LOG_TYPE_ERROR, "%{public}@: Unable to enqueue operation: %@", buf, 0x16u);
      }
    }
  }

  return v8 != 0;
}

- (id)addOperationCountObserver:(id)a3 context:(void *)a4
{
  v6 = a3;
  v7 = [(PLLibraryServicesStateNode *)self operationQueue];
  v8 = v7;
  if (v7)
  {
    [v7 addObserver:v6 forKeyPath:@"operationCount" options:5 context:a4];
  }

  return v8;
}

- (NSArray)operations
{
  v2 = [(PLLibraryServicesStateNode *)self operationQueue];
  v3 = [v2 operations];

  return v3;
}

- (unint64_t)operationCount
{
  v2 = [(PLLibraryServicesStateNode *)self operationQueue];
  v3 = [v2 operationCount];

  return v3;
}

- (void)terminate
{
  v3 = [(PLLibraryServicesStateNode *)self operationQueue];
  [v3 cancelAllOperations];

  [(PLLibraryServicesStateNode *)self setOperationQueue:0];
}

- (void)run
{
  v2 = [(PLLibraryServicesStateNode *)self operationQueue];
  [v2 setSuspended:0];
}

- (id)description
{
  v3 = [(PLLibraryServicesStateNode *)self operationQueue];
  v4 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = PLLibraryServicesStateNode;
  v5 = [(PLLibraryServicesStateNode *)&v11 description];
  v6 = [v3 qualityOfService];
  if (v6 <= 16)
  {
    if (v6 == -1)
    {
      v7 = @"NSQualityOfServiceDefault";
      goto LABEL_13;
    }

    if (v6 == 9)
    {
      v7 = @"NSQualityOfServiceBackground";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v6)
    {
      case 17:
        v7 = @"NSQualityOfServiceUtility";
        goto LABEL_13;
      case 33:
        v7 = @"NSQualityOfServiceUserInteractive";
        goto LABEL_13;
      case 25:
        v7 = @"NSQualityOfServiceUserInitiated";
        goto LABEL_13;
    }
  }

  v7 = @"Unknown";
LABEL_13:
  v8 = v7;
  v9 = [v4 stringWithFormat:@"%@ qos:%@ queue: %@", v5, v8, v3];

  return v9;
}

- (void)setQos:(unsigned int)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __37__PLLibraryServicesStateNode_setQos___block_invoke;
  v11[3] = &unk_1E7930508;
  v11[4] = self;
  v12 = a3;
  PLRunWithUnfairLock(&self->_lock, v11);
  if (a3 <= 20)
  {
    if (a3 && a3 != 17)
    {
      goto LABEL_10;
    }

LABEL_8:
    v5 = 0x11u;
    goto LABEL_11;
  }

  switch(a3)
  {
    case 0x15u:
      goto LABEL_8;
    case 0x19u:
      v5 = 25;
      goto LABEL_11;
    case 0x21u:
      v5 = 0x21u;
      goto LABEL_11;
  }

LABEL_10:
  v5 = 9u;
LABEL_11:
  v6 = PLLibraryServicesGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(PLLibraryServicesStateNode *)self logPrefix];
    v8 = PLStringFromLibraryServicesState(self->_state);
    v9 = *(&off_1E7932E68[-1] + v5 - 1);
    *buf = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&dword_1AA9BD000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Setting QoS of state node %{public}@ to %{public}@", buf, 0x20u);
  }

  v10 = [(PLLibraryServicesStateNode *)self operationQueue];
  [v10 setQualityOfService:v5];
}

- (unsigned)qos
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__PLLibraryServicesStateNode_qos__block_invoke;
  v4[3] = &unk_1E7932A58;
  v4[4] = self;
  v4[5] = &v5;
  PLRunWithUnfairLock(&self->_lock, v4);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)setOperationQueue:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__PLLibraryServicesStateNode_setOperationQueue___block_invoke;
  v6[3] = &unk_1E7932A28;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  PLRunWithUnfairLock(&self->_lock, v6);
}

- (id)operationQueue
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__PLLibraryServicesStateNode_operationQueue__block_invoke;
  v4[3] = &unk_1E79325E0;
  v4[4] = self;
  v2 = PLResultWithUnfairLock(&self->_lock, v4);

  return v2;
}

- (PLLibraryServicesStateNode)initWithLibraryServicesState:(int64_t)a3 qualityOfService:(unsigned int)a4 logPrefix:(id)a5
{
  v8 = a5;
  v22.receiver = self;
  v22.super_class = PLLibraryServicesStateNode;
  v9 = [(PLLibraryServicesStateNode *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v9->_state = a3;
    v11 = [v8 copy];
    logPrefix = v10->_logPrefix;
    v10->_logPrefix = v11;

    v10->_lock._os_unfair_lock_opaque = 0;
    v10->_lock_qos = a4;
    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    lock_operationQueue = v10->_lock_operationQueue;
    v10->_lock_operationQueue = v13;

    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = PLStringFromLibraryServicesState(a3);
    v19 = [v15 stringWithFormat:@"%@(%@: %@)", v17, v8, v18];
    [(NSOperationQueue *)v10->_lock_operationQueue setName:v19];

    [(NSOperationQueue *)v10->_lock_operationQueue setSuspended:1];
    [(NSOperationQueue *)v10->_lock_operationQueue setMaxConcurrentOperationCount:1];
    if (a4 <= 20)
    {
      if (a4 && a4 != 17)
      {
        goto LABEL_11;
      }
    }

    else if (a4 != 21)
    {
      if (a4 == 25)
      {
        v20 = 25;
        goto LABEL_12;
      }

      if (a4 == 33)
      {
        v20 = 33;
LABEL_12:
        [(NSOperationQueue *)v10->_lock_operationQueue setQualityOfService:v20];
        goto LABEL_13;
      }

LABEL_11:
      v20 = 9;
      goto LABEL_12;
    }

    v20 = 17;
    goto LABEL_12;
  }

LABEL_13:

  return v10;
}

@end