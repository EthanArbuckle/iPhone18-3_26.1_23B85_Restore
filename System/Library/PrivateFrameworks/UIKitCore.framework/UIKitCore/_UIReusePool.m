@interface _UIReusePool
+ (void)initialize;
- (_UIReusePool)initWithPolicy:(unint64_t)a3;
- (id)reusableObject;
- (void)addObject:(id)a3;
- (void)drainPool;
@end

@implementation _UIReusePool

- (id)reusableObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__108;
  v10 = __Block_byref_object_dispose__108;
  v11 = 0;
  reuseSetAccessQueue = self->_reuseSetAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30___UIReusePool_reusableObject__block_invoke;
  v5[3] = &unk_1E70FCDA0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(reuseSetAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (void)initialize
{
  v11.receiver = a1;
  v11.super_class = &OBJC_METACLASS____UIReusePool;
  objc_msgSendSuper2(&v11, sel_initialize);
  if (objc_opt_class() == a1)
  {
    v3 = dispatch_queue_create("com.apple.UIKit._UIReusePool.memoryPressureResponse", 0);
    v4 = qword_1ED49A2C8;
    qword_1ED49A2C8 = v3;

    v5 = MEMORY[0x1E69E96E8];
    v6 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, qword_1ED49A2C8);
    v7 = _MergedGlobals_3_12;
    _MergedGlobals_3_12 = v6;

    dispatch_source_set_event_handler(_MergedGlobals_3_12, &__block_literal_global_310);
    dispatch_resume(_MergedGlobals_3_12);
    v8 = dispatch_source_create(v5, 0, 1uLL, qword_1ED49A2C8);
    v9 = qword_1ED49A2C0;
    qword_1ED49A2C0 = v8;

    dispatch_source_set_event_handler(qword_1ED49A2C0, &__block_literal_global_3_2);
    dispatch_resume(qword_1ED49A2C0);
    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:a1 selector:sel___applicationDidEnterBackground_ name:@"UIApplicationDidEnterBackgroundNotification" object:UIApp];
    [v10 addObserver:a1 selector:sel___applicationWillEnterForeground_ name:@"UIApplicationWillEnterForegroundNotification" object:UIApp];
    if ([UIApp applicationState] == 2)
    {
      [a1 __applicationDidEnterBackground:0];
    }
  }
}

- (_UIReusePool)initWithPolicy:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = _UIReusePool;
  v4 = [(_UIReusePool *)&v14 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    reuseSet = v4->_reuseSet;
    v4->_reuseSet = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.UIKit._UIReusePool.reuseSetAccess", v7);
    reuseSetAccessQueue = v4->_reuseSetAccessQueue;
    v4->_reuseSetAccessQueue = v8;

    v4->_purgePolicy = a3;
    v10 = v4;
    if (qword_1ED49A2D8 != -1)
    {
      dispatch_once(&qword_1ED49A2D8, &__block_literal_global_34_1);
    }

    v11 = qword_1ED49A2D0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ____registerReusePool_block_invoke;
    block[3] = &unk_1E70F3590;
    v16 = v10;
    v12 = v10;
    dispatch_sync(v11, block);
  }

  return v4;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  v5 = v4;
  purgePolicy = self->_purgePolicy;
  if (purgePolicy)
  {
    v7 = atomic_load(byte_1ED491C79);
    if ((purgePolicy & 2) == 0 || (v7 & 1) == 0)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((purgePolicy & 2) == 0)
  {
    goto LABEL_7;
  }

  v8 = atomic_load(&_MergedGlobals_965);
  if (v8)
  {
LABEL_7:
    reuseSetAccessQueue = self->_reuseSetAccessQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __26___UIReusePool_addObject___block_invoke;
    v10[3] = &unk_1E70F35B8;
    v10[4] = self;
    v11 = v4;
    dispatch_sync(reuseSetAccessQueue, v10);
  }

LABEL_8:
}

- (void)drainPool
{
  reuseSetAccessQueue = self->_reuseSetAccessQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25___UIReusePool_drainPool__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_sync(reuseSetAccessQueue, block);
}

@end