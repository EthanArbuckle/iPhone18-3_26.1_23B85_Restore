@interface VKTimer
- (VKTimer)initWithTarget:(id)a3 selector:(SEL)a4 queue:(id)a5;
- (void)dealloc;
- (void)disable;
- (void)fireAfter:(double)a3;
@end

@implementation VKTimer

- (void)disable
{
  v3 = [MEMORY[0x1E695DF00] distantFuture];
  [v3 timeIntervalSinceReferenceDate];
  self->_nextFireDate = v4;

  source = self->_source;

  dispatch_source_set_timer(source, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)fireAfter:(double)a3
{
  self->_nextFireDate = CFAbsoluteTimeGetCurrent() + a3;
  source = self->_source;
  v6 = dispatch_time(0, (a3 * 1000000000.0));

  dispatch_source_set_timer(source, v6, 0xFFFFFFFFFFFFFFFFLL, 0xF4240uLL);
}

- (void)dealloc
{
  [(VKTimer *)self invalidate];
  source = self->_source;
  self->_source = 0;

  v4.receiver = self;
  v4.super_class = VKTimer;
  [(VKTimer *)&v4 dealloc];
}

- (VKTimer)initWithTarget:(id)a3 selector:(SEL)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!v9)
  {
    goto LABEL_6;
  }

  v22.receiver = self;
  v22.super_class = VKTimer;
  self = [(VKTimer *)&v22 init];
  if (self)
  {
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v9);
    source = self->_source;
    self->_source = v10;

    if (self->_source)
    {
      v12 = self;
      v13 = self->_source;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __41__VKTimer_initWithTarget_selector_queue___block_invoke;
      v17[3] = &unk_1E7B39630;
      v14 = v12;
      v18 = v14;
      v20 = v14;
      v21 = a4;
      v19 = v8;
      dispatch_source_set_event_handler(v13, v17);
      v14->_nextFireDate = 3153600000.0;
      dispatch_resume(self->_source);

      goto LABEL_5;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_7;
  }

LABEL_5:
  self = self;
  v15 = self;
LABEL_7:

  return v15;
}

uint64_t __41__VKTimer_initWithTarget_selector_queue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 16) = 0x41E77F03C0000000;
  v2 = [*(a1 + 40) methodForSelector:*(a1 + 56)];
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 40);

  return v2(v5, v3, v4);
}

@end