@interface TLAccessQueue
- (TLAccessQueue)initWithLabel:(id)label appendUUIDToLabel:(BOOL)toLabel;
- (void)_performSynchronousBlockInSerialQueue:(id)queue;
- (void)performAsynchronousBlock:(id)block;
- (void)performSynchronousBlock:(id)block;
@end

@implementation TLAccessQueue

- (TLAccessQueue)initWithLabel:(id)label appendUUIDToLabel:(BOOL)toLabel
{
  toLabelCopy = toLabel;
  labelCopy = label;
  v22.receiver = self;
  v22.super_class = TLAccessQueue;
  v7 = [(TLAccessQueue *)&v22 init];
  if (v7)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    if (!labelCopy || toLabelCopy)
    {
      if (labelCopy && toLabelCopy)
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", labelCopy, uUIDString];
      }

      else
      {
        v14 = [uUIDString copy];
      }

      v10 = v14;
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v13 = NSStringFromClass(v16);
      [v15 stringWithFormat:@"%@.%@", v13, v10, v21];
    }

    else
    {
      v10 = [labelCopy copy];
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [v11 stringWithFormat:@"%@.%@.%@", v13, v10, uUIDString];
    }
    v17 = ;

    v18 = dispatch_queue_create([v10 UTF8String], 0);
    v19 = v18;
    if (uUIDString && v10 && v17 && v18)
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

- (void)performSynchronousBlock:(id)block
{
  blockCopy = block;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v7 = [threadDictionary objectForKey:self->_threadLocalStorageKey];
  bOOLValue = [v7 BOOLValue];

  if (bOOLValue)
  {
    blockCopy[2](blockCopy);
  }

  else
  {
    serialQueue = self->_serialQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __41__TLAccessQueue_performSynchronousBlock___block_invoke;
    v10[3] = &unk_1E85796E8;
    v10[4] = self;
    v11 = blockCopy;
    dispatch_sync(serialQueue, v10);
  }
}

- (void)performAsynchronousBlock:(id)block
{
  blockCopy = block;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__TLAccessQueue_performAsynchronousBlock___block_invoke;
  v7[3] = &unk_1E85796E8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_async(serialQueue, v7);
}

- (void)_performSynchronousBlockInSerialQueue:(id)queue
{
  v4 = MEMORY[0x1E696AF00];
  v5 = self->_threadLocalStorageKey;
  queueCopy = queue;
  currentThread = [v4 currentThread];
  threadDictionary = [currentThread threadDictionary];

  [threadDictionary setObject:MEMORY[0x1E695E118] forKey:v5];
  queueCopy[2](queueCopy);

  [threadDictionary removeObjectForKey:v5];
}

@end