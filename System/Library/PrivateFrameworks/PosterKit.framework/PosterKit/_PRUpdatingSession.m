@interface _PRUpdatingSession
- (_PRUpdatingSession)initWithConnectionAssertion:(id)a3 errorHandler:(id)a4;
- (void)dealloc;
- (void)fireError:(id)a3;
- (void)invalidate;
- (void)noteSessionIsComplete;
@end

@implementation _PRUpdatingSession

- (_PRUpdatingSession)initWithConnectionAssertion:(id)a3 errorHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PRUpdatingSession;
  v9 = [(_PRUpdatingSession *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_connectionAssertion, a3);
    v11 = [v8 copy];
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

- (void)fireError:(id)a3
{
  v6 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_didFireCompletion)
  {
    errorHandlerBlock = v4->_errorHandlerBlock;
    if (v6 && errorHandlerBlock)
    {
      errorHandlerBlock[2]();
      errorHandlerBlock = v4->_errorHandlerBlock;
    }

    v4->_errorHandlerBlock = 0;

    [(BSInvalidatable *)v4->_connectionAssertion invalidate];
    v4->_didFireCompletion = 1;
  }

  objc_sync_exit(v4);
}

- (void)invalidate
{
  v3 = [MEMORY[0x1E696ABC0] pr_errorWithCode:5];
  [(_PRUpdatingSession *)self fireError:v3];
}

@end