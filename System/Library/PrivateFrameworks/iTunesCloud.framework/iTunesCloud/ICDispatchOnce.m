@interface ICDispatchOnce
- (ICDispatchOnce)initWithBooleanHandler:(id)a3;
- (ICDispatchOnce)initWithObjectHandler:(id)a3;
- (void)_invalidate;
- (void)failWithError:(id)a3;
- (void)finishWithBooleanResult:(BOOL)a3 error:(id)a4;
- (void)finishWithObjectResult:(id)a3 error:(id)a4;
- (void)startWithTimeout:(double)a3 queue:(id)a4;
@end

@implementation ICDispatchOnce

- (void)_invalidate
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    dispatch_source_cancel(timeoutTimer);
    v4 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  BOOLeanHandler = self->_BOOLeanHandler;
  self->_BOOLeanHandler = 0;

  objectHandler = self->_objectHandler;
  self->_objectHandler = 0;

  queue = self->_queue;
  self->_queue = 0;

  strongSelf = self->_strongSelf;
  self->_strongSelf = 0;
}

- (void)startWithTimeout:(double)a3 queue:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    queue = self->_queue;
    self->_queue = v8;
  }

  else
  {
    queue = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.iTunesCloud.ICDispatchOnce", queue);
    v11 = self->_queue;
    self->_queue = v10;
  }

  objc_storeStrong(&self->_strongSelf, self);
  self->_timeout = a3;
  v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v12;

  v14 = self->_timeoutTimer;
  v15 = dispatch_time(0, (a3 * 1000000000.0));
  dispatch_source_set_timer(v14, v15, (a3 * 1000000000.0), 0);
  v16 = self->_timeoutTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __41__ICDispatchOnce_startWithTimeout_queue___block_invoke;
  handler[3] = &unk_1E7BFA300;
  handler[4] = self;
  dispatch_source_set_event_handler(v16, handler);
  dispatch_resume(self->_timeoutTimer);
}

void __41__ICDispatchOnce_startWithTimeout_queue___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICError" code:-7003 userInfo:0];
  [*(a1 + 32) failWithError:v2];
}

- (void)finishWithObjectResult:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ((atomic_exchange(&self->_didFire._Value, 1u) & 1) == 0)
  {
    objectHandler = self->_objectHandler;
    if (objectHandler)
    {
      objectHandler[2](objectHandler, v8, v6);
    }

    else if (self->_BOOLeanHandler)
    {
      if (objc_opt_respondsToSelector())
      {
        [v8 BOOLValue];
      }

      (*(self->_BOOLeanHandler + 2))();
    }

    [(ICDispatchOnce *)self _invalidate];
  }
}

- (void)finishWithBooleanResult:(BOOL)a3 error:(id)a4
{
  v4 = a3;
  a4;
  if ((atomic_exchange(&self->_didFire._Value, 1u) & 1) == 0)
  {
    BOOLeanHandler = self->_BOOLeanHandler;
    if (BOOLeanHandler)
    {
      BOOLeanHandler[2](BOOLeanHandler, v4);
    }

    else if (self->_objectHandler)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v4];
      (*(self->_objectHandler + 2))();
    }

    [(ICDispatchOnce *)self _invalidate];
  }

  MEMORY[0x1EEE66BE0]();
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  if ((atomic_exchange(&self->_didFire._Value, 1u) & 1) == 0)
  {
    BOOLeanHandler = self->_BOOLeanHandler;
    if (BOOLeanHandler)
    {
      BOOLeanHandler[2](BOOLeanHandler, 0);
    }

    else
    {
      objectHandler = self->_objectHandler;
      if (objectHandler)
      {
        objectHandler[2](objectHandler, 0, v4);
      }
    }

    [(ICDispatchOnce *)self _invalidate];
  }

  MEMORY[0x1EEE66BE0]();
}

- (ICDispatchOnce)initWithObjectHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDispatchOnce;
  v5 = [(ICDispatchOnce *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    objectHandler = v5->_objectHandler;
    v5->_objectHandler = v6;
  }

  return v5;
}

- (ICDispatchOnce)initWithBooleanHandler:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ICDispatchOnce;
  v5 = [(ICDispatchOnce *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    BOOLeanHandler = v5->_BOOLeanHandler;
    v5->_BOOLeanHandler = v6;
  }

  return v5;
}

@end