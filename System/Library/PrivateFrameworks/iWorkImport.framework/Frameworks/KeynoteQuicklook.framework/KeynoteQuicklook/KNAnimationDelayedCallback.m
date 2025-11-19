@interface KNAnimationDelayedCallback
- (KNAnimationDelayedCallback)initWithBlock:(id)a3 delay:(double)a4;
- (KNAnimationDelayedCallback)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5 delay:(double)a6;
- (void)cancel;
- (void)p_performSelectorOnTarget;
- (void)run;
@end

@implementation KNAnimationDelayedCallback

- (KNAnimationDelayedCallback)initWithTarget:(id)a3 selector:(SEL)a4 object:(id)a5 delay:(double)a6
{
  v11 = a3;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = KNAnimationDelayedCallback;
  v13 = [(KNAnimationDelayedCallback *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_target, a3);
    if (a4)
    {
      v15 = a4;
    }

    else
    {
      v15 = 0;
    }

    v14->_selector = v15;
    objc_storeStrong(&v14->_object, a5);
    v14->_delay = a6;
  }

  return v14;
}

- (KNAnimationDelayedCallback)initWithBlock:(id)a3 delay:(double)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = KNAnimationDelayedCallback;
  v9 = [(KNAnimationDelayedCallback *)&v13 init];
  if (v9)
  {
    v10 = objc_msgSend_copy(v6, v7, v8);
    block = v9->_block;
    v9->_block = v10;

    v9->_delay = a4;
  }

  return v9;
}

- (void)p_performSelectorOnTarget
{
  selector = self->_selector;
  target = self->_target;
  if (selector)
  {
    objc_msgSend_performSelector_withObject_(target, a2, selector, self->_object);
  }

  else
  {
    objc_msgSend_performSelector_withObject_(target, a2, 0, self->_object);
  }

  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = *(completionHandler + 2);

    v6();
  }
}

- (void)run
{
  self->_startTime = CACurrentMediaTime();
  if (self->_block)
  {
    v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    sourceTimer = self->_sourceTimer;
    self->_sourceTimer = v4;

    v6 = self->_sourceTimer;
    v7 = dispatch_time(0, (self->_delay * 1000000000.0));
    dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0);
    v8 = self->_sourceTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_275D7CD28;
    handler[3] = &unk_27A697B20;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_sourceTimer);
  }

  else
  {
    delay = self->_delay;

    objc_msgSend_performSelector_withObject_afterDelay_(self, v3, sel_p_performSelectorOnTarget, 0, delay);
  }
}

- (void)cancel
{
  if (self->_block)
  {
    dispatch_source_cancel(self->_sourceTimer);
  }

  else
  {
    MEMORY[0x2821F9670](MEMORY[0x277D82BB8], sel_cancelPreviousPerformRequestsWithTarget_selector_object_, self);
  }
}

@end