@interface _UIActiveTimer
- (_UIActiveTimer)initWithDuration:(double)a3 updateHandler:(id)a4;
- (void)_tick:(id)a3;
- (void)invalidate;
@end

@implementation _UIActiveTimer

- (_UIActiveTimer)initWithDuration:(double)a3 updateHandler:(id)a4
{
  v6 = a4;
  v26.receiver = self;
  v26.super_class = _UIActiveTimer;
  v7 = [(_UIActiveTimer *)&v26 init];
  if (v7)
  {
    if (a3 <= 0.0)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __49___UIActiveTimer_initWithDuration_updateHandler___block_invoke_2;
      block[3] = &unk_1E70F0F78;
      v10 = &v22;
      v22 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v8 = CACurrentMediaTime();
      v9 = v7;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __49___UIActiveTimer_initWithDuration_updateHandler___block_invoke;
      aBlock[3] = &unk_1E71060F8;
      *&v25[1] = v8;
      *&v25[2] = a3;
      v10 = v25;
      v24 = v9;
      v25[0] = v6;
      v11 = _Block_copy(aBlock);
      updateHandler = v9->_updateHandler;
      v9->_updateHandler = v11;

      v13 = [objc_opt_self() mainScreen];
      v14 = [v13 displayLinkWithTarget:v9 selector:sel__tick_];
      displayLink = v9->_displayLink;
      v9->_displayLink = v14;

      v16 = v9->_displayLink;
      v17 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v16 addToRunLoop:v17 forMode:*MEMORY[0x1E695DA28]];

      v18 = v9->_displayLink;
      v19 = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v18 addToRunLoop:v19 forMode:@"UITrackingRunLoopMode"];
    }
  }

  return v7;
}

- (void)_tick:(id)a3
{
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    updateHandler[2]();
  }
}

- (void)invalidate
{
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

@end