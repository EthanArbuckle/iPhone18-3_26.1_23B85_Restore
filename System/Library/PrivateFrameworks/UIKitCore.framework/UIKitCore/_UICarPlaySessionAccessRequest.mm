@interface _UICarPlaySessionAccessRequest
- (_UICarPlaySessionAccessRequest)initWithTimeout:(double)a3 completion:(id)a4;
- (void)_cancelTimer;
- (void)dealloc;
@end

@implementation _UICarPlaySessionAccessRequest

- (_UICarPlaySessionAccessRequest)initWithTimeout:(double)a3 completion:(id)a4
{
  v6 = a4;
  v19.receiver = self;
  v19.super_class = _UICarPlaySessionAccessRequest;
  v7 = [(_UICarPlaySessionAccessRequest *)&v19 init];
  if (v7)
  {
    v8 = _Block_copy(v6);
    v9 = *(v7 + 2);
    *(v7 + 2) = v8;

    if (a3 > 0.0)
    {
      v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      v11 = *(v7 + 1);
      *(v7 + 1) = v10;

      objc_initWeak(&location, v7);
      v12 = *(v7 + 1);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __61___UICarPlaySessionAccessRequest_initWithTimeout_completion___block_invoke;
      v16[3] = &unk_1E70F5A28;
      objc_copyWeak(&v17, &location);
      dispatch_source_set_event_handler(v12, v16);
      v13 = *(v7 + 1);
      v14 = dispatch_time(0, (a3 * 1000000000.0));
      dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, (a3 / 10.0 * 1000000000.0));
      dispatch_activate(*(v7 + 1));
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  return v7;
}

- (void)_cancelTimer
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
    v4 = self->_timer;
    self->_timer = 0;
  }
}

- (void)dealloc
{
  [(_UICarPlaySessionAccessRequest *)self _cancelTimer];
  v3.receiver = self;
  v3.super_class = _UICarPlaySessionAccessRequest;
  [(_UICarPlaySessionAccessRequest *)&v3 dealloc];
}

@end