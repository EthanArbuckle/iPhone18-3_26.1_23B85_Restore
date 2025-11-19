@interface _UIDictationTelephonyMonitor
- (_UIDictationTelephonyMonitor)init;
- (void)_backgroundInit;
- (void)_backgroundReset;
- (void)start;
@end

@implementation _UIDictationTelephonyMonitor

- (_UIDictationTelephonyMonitor)init
{
  v6.receiver = self;
  v6.super_class = _UIDictationTelephonyMonitor;
  v2 = [(_UIDictationTelephonyMonitor *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v3;
  }

  return v2;
}

- (void)start
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37___UIDictationTelephonyMonitor_start__block_invoke;
  block[3] = &unk_1E70F3590;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_backgroundInit
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v3 = qword_1ED4988D8;
  v11 = qword_1ED4988D8;
  if (!qword_1ED4988D8)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getCXCallObserverClass_block_invoke;
    v7[3] = &unk_1E70F2F20;
    v7[4] = &v8;
    __getCXCallObserverClass_block_invoke(v7);
    v3 = v9[3];
  }

  v4 = v3;
  _Block_object_dispose(&v8, 8);
  v5 = objc_alloc_init(v3);
  callObserver = self->_callObserver;
  self->_callObserver = v5;

  [(CXCallObserver *)self->_callObserver setDelegate:self queue:self->_queue];
  [(_UIDictationTelephonyMonitor *)self _backgroundReset];
}

- (void)_backgroundReset
{
  telephonyActivity = self->_telephonyActivity;
  callObserver = self->_callObserver;
  if (callObserver)
  {
    v5 = [(CXCallObserver *)callObserver calls];
    self->_telephonyActivity = [v5 count] != 0;
  }

  else
  {
    self->_telephonyActivity = 0;
  }

  v6 = [(_UIDictationTelephonyMonitor *)self activityChanged];
  v7 = v6;
  if (telephonyActivity != self->_telephonyActivity && v6 != 0)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48___UIDictationTelephonyMonitor__backgroundReset__block_invoke;
    block[3] = &unk_1E70F0F78;
    v10 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

@end