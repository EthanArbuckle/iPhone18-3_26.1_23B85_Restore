@interface TLAccessQueue
- (TLAccessQueue)initWithLabel:(id)a3 appendUUIDToLabel:(BOOL)a4;
- (void)_performSynchronousBlockInSerialQueue:(id)a3;
- (void)performAsynchronousBlock:(id)a3;
- (void)performSynchronousBlock:(id)a3;
@end

@implementation TLAccessQueue

- (TLAccessQueue)initWithLabel:(id)a3 appendUUIDToLabel:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v22.receiver = self;
  v22.super_class = TLAccessQueue;
  v7 = [(TLAccessQueue *)&v22 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    v9 = [v8 UUIDString];

    if (!v6 || v4)
    {
      if (v6 && v4)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v6, v9];
      }

      else
      {
        v14 = [v9 copy];
      }

      v10 = v14;
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v13 = NSStringFromClass(v16);
      [v15 stringWithFormat:@"%@.%@", v13, v10, v21];
    }

    else
    {
      v10 = [v6 copy];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v11 stringWithFormat:@"%@.%@.%@", v13, v10, v9];
    }
    v17 = ;

    v18 = dispatch_queue_create([v10 UTF8String], 0);
    v19 = v18;
    if (v9 && v10 && v17 && v18)
    {
      objc_storeStrong(&v7->_label, v10);
      objc_storeStrong(&v7->_threadLocalStorageKey, v17);
      objc_storeStrong(&v7->_serialQueue, v19);
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (void)performSynchronousBlock:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [v6 objectForKey:self->_threadLocalStorageKey];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    v4[2](v4);
  }

  else
  {
    serialQueue = self->_serialQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__TLAccessQueue_performSynchronousBlock___block_invoke;
    v10[3] = &unk_1E85796E8;
    v10[4] = self;
    v11 = v4;
    dispatch_sync(serialQueue, v10);
  }
}

- (void)performAsynchronousBlock:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__TLAccessQueue_performAsynchronousBlock___block_invoke;
  v7[3] = &unk_1E85796E8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)_performSynchronousBlockInSerialQueue:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = self->_threadLocalStorageKey;
  v6 = a3;
  v7 = [v4 currentThread];
  v8 = [v7 threadDictionary];

  [v8 setObject:MEMORY[0x1E695E118] forKey:v5];
  v6[2](v6);

  [v8 removeObjectForKey:v5];
}

@end