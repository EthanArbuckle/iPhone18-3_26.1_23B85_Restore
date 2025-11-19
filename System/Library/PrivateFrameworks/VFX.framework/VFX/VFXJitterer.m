@interface VFXJitterer
- (VFXJitterer)initWithDelegate:(id)a3;
- (void)dealloc;
- (void)delegateWillDie;
- (void)jitter;
- (void)restart;
- (void)setEnabled:(BOOL)a3;
- (void)stopIfNeeded;
- (void)update;
@end

@implementation VFXJitterer

- (VFXJitterer)initWithDelegate:(id)a3
{
  v10.receiver = self;
  v10.super_class = VFXJitterer;
  v4 = [(VFXJitterer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, a3);
    v5->_restartSourceIsSuspended = 1;
    v5->_state = 3;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = sub_1AF3B5E48;
    v9[4] = sub_1AF3B5E58;
    v9[5] = v5;
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED7398C0);
    v5->_restartSource = v6;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1AF3B5E64;
    handler[3] = &unk_1E7A7F968;
    handler[4] = v9;
    dispatch_source_set_event_handler(v6, handler);
    _Block_object_dispose(v9, 8);
  }

  return v5;
}

- (void)dealloc
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF3B5FB4;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  dispatch_sync(qword_1ED7398C0, block);
  v3 = dispatch_semaphore_create(0);
  restartSource = self->_restartSource;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1AF3B5FD0;
  handler[3] = &unk_1E7A7A770;
  handler[4] = v3;
  dispatch_source_set_cancel_handler(restartSource, handler);
  dispatch_source_cancel(self->_restartSource);
  dispatch_release(self->_restartSource);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = VFXJitterer;
  [(VFXJitterer *)&v5 dealloc];
}

- (void)delegateWillDie
{
  objc_storeWeak(&self->_delegate, 0);
  if (self->_state <= 1)
  {
    self->_state = 2;
  }

  v3 = qword_1ED7398C0;

  dispatch_sync(v3, &unk_1F24ED378);
}

- (void)setEnabled:(BOOL)a3
{
  if (self->_enabled != a3)
  {
    if (a3)
    {
      self->_enabled = 1;

      objc_msgSend_restart(self, a2, a3, v3);
    }

    else
    {
      objc_msgSend_stopIfNeeded(self, a2, a3, v3);
      self->_enabled = 0;
    }
  }
}

- (void)update
{
  Weak = objc_loadWeak(&self->_delegate);
  state = self->_state;
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    self->_iteration = 0;
    if (!objc_msgSend__canJitter(Weak, v4, v5, v6))
    {
      return;
    }

    self->_state = 0;
  }

  MEMORY[0x1EEE66B58](self, sel_jitter, v5, v6);
}

- (void)jitter
{
  if (self->_iteration >= 0x52)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFBA08(v3);
    }
  }

  Weak = objc_loadWeak(&self->_delegate);
  if (Weak)
  {
    v5 = Weak;
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    iteration = self->_iteration;
    v13 = (iteration & 1) == 0 && iteration > 8;
    v14 = objc_msgSend_renderer(v5, v8, v9, v10);
    objc_msgSend__jitterAtStep_updateMainFramebuffer_redisplay_jitterer_(v14, v15, self->_iteration, v13, v13, self);
    state = self->_state;
    v17 = self->_iteration + 1;
    self->_iteration = v17;
    if (v17 == 81)
    {
      if (!state)
      {
        self->_state = 3;
      }
    }

    else if (state != 2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3B62A4;
      block[3] = &unk_1E7A7A770;
      block[4] = self;
      dispatch_async(qword_1ED7398C0, block);
    }

    objc_autoreleasePoolPop(v6);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1AF3B62AC;
    v18[3] = &unk_1E7A7A770;
    v18[4] = v5;
    dispatch_async(MEMORY[0x1E69E96A0], v18);
  }
}

- (void)stopIfNeeded
{
  if (self->_enabled)
  {
    if (self->_state <= 1)
    {
      self->_state = 2;
    }

    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF3B6350;
    block[3] = &unk_1E7A7A770;
    block[4] = self;
    dispatch_async(qword_1ED7398C0, block);
  }
}

- (void)restart
{
  if (self->_enabled)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1AF3B6420;
    block[3] = &unk_1E7A7A770;
    block[4] = self;
    dispatch_async(qword_1ED7398C0, block);
  }
}

@end