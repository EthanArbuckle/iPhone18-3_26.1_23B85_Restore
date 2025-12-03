@interface _UIQueueingProxy
+ (id)proxyWithTarget:(id)target shouldSuspendInvocationBlock:(id)block;
- (BOOL)bypassSuspensionForSynchronousReply;
- (BOOL)respondsToSelector:(SEL)selector;
- (id)description;
- (void)_dispatchSuspendedMessages;
- (void)forwardInvocation:(id)invocation;
- (void)removeAllEnqueuedInvocations;
- (void)resume;
- (void)setBypassSuspensionForSynchronousReply:(BOOL)reply;
- (void)suspend;
@end

@implementation _UIQueueingProxy

+ (id)proxyWithTarget:(id)target shouldSuspendInvocationBlock:(id)block
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS____UIQueueingProxy;
  blockCopy = block;
  v6 = objc_msgSendSuper2(&v12, sel_proxyWithTarget_, target);
  array = [MEMORY[0x1E695DF70] array];
  v8 = v6[4];
  v6[4] = array;

  v9 = [blockCopy copy];
  v10 = v6[5];
  v6[5] = v9;

  return v6;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  os_unfair_lock_lock(&self->_lock);
  if (self->_suspensionCount && ((shouldSuspendInvocationBlock = self->_shouldSuspendInvocationBlock) == 0 ? (v6 = 1) : (v6 = shouldSuspendInvocationBlock[2](shouldSuspendInvocationBlock, invocationCopy)), !self->_bypassSuspension && v6))
  {
    [invocationCopy retainArguments];
    [(NSMutableArray *)self->_queuedInvocations addObject:invocationCopy];
    os_unfair_lock_unlock(&self->_lock);
    methodSignature = [invocationCopy methodSignature];
    methodReturnType = [methodSignature methodReturnType];
    if (*methodReturnType == 118)
    {
      v9 = methodReturnType[1];

      if (!v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = MEMORY[0x1E695DF30];
    v11 = *MEMORY[0x1E695D940];
    v12 = NSStringFromSelector([invocationCopy selector]);
    [v10 raise:v11 format:{@"%@ can only handle messages which do not have a return value when it is suspended. (%@)", self, v12}];
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v13.receiver = self;
    v13.super_class = _UIQueueingProxy;
    [(_UITargetedProxy *)&v13 forwardInvocation:invocationCopy];
  }

LABEL_13:
}

- (void)suspend
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_suspensionCount;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_dispatchSuspendedMessages
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_queuedInvocations copy];
  [(NSMutableArray *)self->_queuedInvocations removeAllObjects];
  os_unfair_lock_unlock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10.receiver = self;
        v10.super_class = _UIQueueingProxy;
        [(_UITargetedProxy *)&v10 forwardInvocation:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)resume
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_suspensionCount - 1;
  self->_suspensionCount = v3;
  os_unfair_lock_unlock(&self->_lock);
  if (!v3)
  {

    [(_UIQueueingProxy *)self _dispatchSuspendedMessages];
  }
}

- (BOOL)bypassSuspensionForSynchronousReply
{
  os_unfair_lock_lock(&self->_lock);
  bypassSuspension = self->_bypassSuspension;
  os_unfair_lock_unlock(&self->_lock);
  return bypassSuspension;
}

- (void)setBypassSuspensionForSynchronousReply:(BOOL)reply
{
  os_unfair_lock_lock(&self->_lock);
  self->_bypassSuspension = reply;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeAllEnqueuedInvocations
{
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableArray *)self->_queuedInvocations removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)respondsToSelector:(SEL)selector
{
  _target = [(_UITargetedProxy *)self _target];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _target = [(_UITargetedProxy *)self _target];
  v7 = [v3 stringWithFormat:@"<%@: %p target: %@; suspension count: %ld>", v5, self, _target, self->_suspensionCount];;

  return v7;
}

@end