@interface _PRUpdatingSession
- (_PRUpdatingSession)initWithConnectionAssertion:(id)assertion errorHandler:(id)handler;
- (void)dealloc;
- (void)fireError:(id)error;
- (void)invalidate;
- (void)noteSessionIsComplete;
@end

@implementation _PRUpdatingSession

- (_PRUpdatingSession)initWithConnectionAssertion:(id)assertion errorHandler:(id)handler
{
  assertionCopy = assertion;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = _PRUpdatingSession;
  v9 = [(_PRUpdatingSession *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionAssertion, assertion);
    v11 = [handlerCopy copy];
    errorHandlerBlock = v10->_errorHandlerBlock;
    v10->_errorHandlerBlock = v11;
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:3];
  [(_PRUpdatingSession *)self fireError:v3];

  v4.receiver = self;
  v4.super_class = _PRUpdatingSession;
  [(_PRUpdatingSession *)&v4 dealloc];
}

- (void)noteSessionIsComplete
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_didFireCompletion)
  {
    obj->_didFireCompletion = 1;
    errorHandlerBlock = obj->_errorHandlerBlock;
    obj->_errorHandlerBlock = 0;

    [(BSInvalidatable *)obj->_connectionAssertion invalidate];
    connectionAssertion = obj->_connectionAssertion;
    obj->_connectionAssertion = 0;
  }

  objc_sync_exit(obj);
}

- (void)fireError:(id)error
{
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_didFireCompletion)
  {
    errorHandlerBlock = selfCopy->_errorHandlerBlock;
    if (errorCopy && errorHandlerBlock)
    {
      errorHandlerBlock[2]();
      errorHandlerBlock = selfCopy->_errorHandlerBlock;
    }

    selfCopy->_errorHandlerBlock = 0;

    [(BSInvalidatable *)selfCopy->_connectionAssertion invalidate];
    selfCopy->_didFireCompletion = 1;
  }

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:5];
  [(_PRUpdatingSession *)self fireError:v3];
}

@end