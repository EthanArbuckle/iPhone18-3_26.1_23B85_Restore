@interface VFXAnimationEvent
+ (id)animationEventWithKeyTime:(float)time block:(id)block;
- (VFXAnimationEvent)init;
- (void)dealloc;
- (void)setEventBlock:(id)block;
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

- (void)setEventBlock:(id)block
{
  eventBlock = self->_eventBlock;
  if (eventBlock)
  {
    _Block_release(eventBlock);
  }

  self->_eventBlock = _Block_copy(block);
}

+ (id)animationEventWithKeyTime:(float)time block:(id)block
{
  v6 = objc_alloc_init(self);
  objc_msgSend_setTime_(v6, v7, v8, v9, time);
  objc_msgSend_setEventBlock_(v6, v10, block, v11);
  return v6;
}

@end