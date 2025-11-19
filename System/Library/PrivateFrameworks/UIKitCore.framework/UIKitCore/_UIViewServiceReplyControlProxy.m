@interface _UIViewServiceReplyControlProxy
+ (id)proxyWithTarget:(id)a3;
- (id)_awaitingReply;
- (id)_deliveringRepliesAsynchronously;
@end

@implementation _UIViewServiceReplyControlProxy

+ (id)proxyWithTarget:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UIViewServiceReplyControlProxy);
  target = v4->_target;
  v4->_target = v3;
  v6 = v3;

  v7 = objc_alloc_init(MEMORY[0x1E696AD10]);
  lock = v4->_lock;
  v4->_lock = v7;

  return v4;
}

- (id)_awaitingReply
{
  [(NSLock *)self->_lock lock];
  if (!self->_awaitingTrampoline)
  {
    v3 = [(_UITargetedProxy *)_UIViewServiceReplyAwaitingTrampoline proxyWithTarget:self->_target];
    awaitingTrampoline = self->_awaitingTrampoline;
    self->_awaitingTrampoline = v3;
  }

  [(NSLock *)self->_lock unlock];
  v5 = self->_awaitingTrampoline;

  return v5;
}

- (id)_deliveringRepliesAsynchronously
{
  [(NSLock *)self->_lock lock];
  if (!self->_controlTrampoline)
  {
    v3 = [(_UITargetedProxy *)_UIViewServiceReplyControlTrampoline proxyWithTarget:self->_target];
    controlTrampoline = self->_controlTrampoline;
    self->_controlTrampoline = v3;
  }

  [(NSLock *)self->_lock unlock];
  v5 = self->_controlTrampoline;

  return v5;
}

@end