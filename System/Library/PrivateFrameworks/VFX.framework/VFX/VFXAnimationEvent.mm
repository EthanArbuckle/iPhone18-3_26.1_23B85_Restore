@interface VFXAnimationEvent
+ (id)animationEventWithKeyTime:(float)a3 block:(id)a4;
- (VFXAnimationEvent)init;
- (void)dealloc;
- (void)setEventBlock:(id)a3;
@end

@implementation VFXAnimationEvent

- (VFXAnimationEvent)init
{
  v3.receiver = self;
  v3.super_class = VFXAnimationEvent;
  return [(VFXAnimationEvent *)&v3 init];
}

- (void)dealloc
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    _Block_release(eventBlock);
  }

  v4.receiver = self;
  v4.super_class = VFXAnimationEvent;
  [(VFXAnimationEvent *)&v4 dealloc];
}

- (void)setEventBlock:(id)a3
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    _Block_release(eventBlock);
  }

  self->_eventBlock = _Block_copy(a3);
}

+ (id)animationEventWithKeyTime:(float)a3 block:(id)a4
{
  v6 = objc_alloc_init(a1);
  objc_msgSend_setTime_(v6, v7, v8, v9, a3);
  objc_msgSend_setEventBlock_(v6, v10, a4, v11);
  return v6;
}

@end