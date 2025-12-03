@interface SWURLSchemeHandlerSession
- (BOOL)isEqual:(id)equal;
- (SWURLSchemeHandlerSession)initWithStartCallback:(id)callback endCallback:(id)endCallback;
- (void)endSessionForHandler:(id)handler withTask:(id)task;
- (void)startSessionForHandler:(id)handler withTask:(id)task;
@end

@implementation SWURLSchemeHandlerSession

- (SWURLSchemeHandlerSession)initWithStartCallback:(id)callback endCallback:(id)endCallback
{
  callbackCopy = callback;
  endCallbackCopy = endCallback;
  v19.receiver = self;
  v19.super_class = SWURLSchemeHandlerSession;
  v8 = [(SWURLSchemeHandlerSession *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v9 UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = uUIDString;

    v12 = MEMORY[0x1DA6FDA60](callbackCopy);
    startCallbackBlock = v8->_startCallbackBlock;
    v8->_startCallbackBlock = v12;

    v14 = MEMORY[0x1DA6FDA60](endCallbackCopy);
    endCallbackBlock = v8->_endCallbackBlock;
    v8->_endCallbackBlock = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackingTasks = v8->_trackingTasks;
    v8->_trackingTasks = v16;
  }

  return v8;
}

- (void)startSessionForHandler:(id)handler withTask:(id)task
{
  handlerCopy = handler;
  taskCopy = task;
  trackingTasks = [(SWURLSchemeHandlerSession *)self trackingTasks];
  v8 = [trackingTasks containsObject:taskCopy];

  if ((v8 & 1) == 0)
  {
    trackingTasks2 = [(SWURLSchemeHandlerSession *)self trackingTasks];
    [trackingTasks2 addObject:taskCopy];

    startCallbackBlock = [(SWURLSchemeHandlerSession *)self startCallbackBlock];
    (startCallbackBlock)[2](startCallbackBlock, handlerCopy);
  }
}

- (void)endSessionForHandler:(id)handler withTask:(id)task
{
  handlerCopy = handler;
  taskCopy = task;
  trackingTasks = [(SWURLSchemeHandlerSession *)self trackingTasks];
  v8 = [trackingTasks containsObject:taskCopy];

  if (v8)
  {
    trackingTasks2 = [(SWURLSchemeHandlerSession *)self trackingTasks];
    [trackingTasks2 removeObject:taskCopy];

    endCallbackBlock = [(SWURLSchemeHandlerSession *)self endCallbackBlock];
    (endCallbackBlock)[2](endCallbackBlock, handlerCopy);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SWURLSchemeHandlerSession *)self identifier];
      identifier2 = [(SWURLSchemeHandlerSession *)v5 identifier];

      v8 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end