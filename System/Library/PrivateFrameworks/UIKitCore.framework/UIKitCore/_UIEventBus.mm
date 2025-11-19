@interface _UIEventBus
+ (id)instance;
- (_UIEventBus)init;
- (uint64_t)addEvents:(uint64_t)result;
- (uint64_t)drainEvents:(uint64_t)result;
- (void)inputForEvent:(void *)a1;
@end

@implementation _UIEventBus

+ (id)instance
{
  objc_opt_self();
  if (qword_1ED4A0970 != -1)
  {
    dispatch_once(&qword_1ED4A0970, &__block_literal_global_519);
  }

  v0 = qword_1ED4A0978;

  return v0;
}

- (_UIEventBus)init
{
  v9.receiver = self;
  v9.super_class = _UIEventBus;
  v3 = [(_UIEventBus *)&v9 self];

  if (v3)
  {
    v4 = objc_opt_new();
    events = v3->_events;
    v3->_events = v4;

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __19___UIEventBus_init__block_invoke;
    v7[3] = &unk_1E70F3590;
    v8 = v3;
    _UIUpdateInputGroupBatchChanges(&mainGroup, v7);
  }

  return v3;
}

- (void)inputForEvent:(void *)a1
{
  if (a1)
  {
    v4 = a1;
    if (!IOHIDEventGetIntegerValue() && IOHIDEventGetType() == 11 && IOHIDEventGetIntegerValue())
    {
      v5 = _UIEventHIDGetChildStylusEvent(a2);
      v6 = 1;
      if (v5)
      {
        v6 = 2;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v4[v6 + 2];
    if (!v7)
    {
      v7 = v4[2];
    }

    a1 = v7;
    v2 = vars8;
  }

  return a1;
}

- (uint64_t)addEvents:(uint64_t)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __25___UIEventBus_addEvents___block_invoke;
    v2[3] = &unk_1E70F35B8;
    v2[4] = a2;
    v2[5] = result;
    return _UIUpdateInputGroupBatchChanges(&mainGroup, v2);
  }

  return result;
}

- (uint64_t)drainEvents:(uint64_t)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __27___UIEventBus_drainEvents___block_invoke;
    v2[3] = &unk_1E70F35B8;
    v2[4] = result;
    v2[5] = a2;
    return _UIUpdateInputGroupBatchChanges(&mainGroup, v2);
  }

  return result;
}

@end