@interface SWURLSchemeHandlerSession
- (BOOL)isEqual:(id)a3;
- (SWURLSchemeHandlerSession)initWithStartCallback:(id)a3 endCallback:(id)a4;
- (void)endSessionForHandler:(id)a3 withTask:(id)a4;
- (void)startSessionForHandler:(id)a3 withTask:(id)a4;
@end

@implementation SWURLSchemeHandlerSession

- (SWURLSchemeHandlerSession)initWithStartCallback:(id)a3 endCallback:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = SWURLSchemeHandlerSession;
  v8 = [(SWURLSchemeHandlerSession *)&v19 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    v10 = [v9 UUIDString];
    identifier = v8->_identifier;
    v8->_identifier = v10;

    v12 = MEMORY[0x1DA6FDA60](v6);
    startCallbackBlock = v8->_startCallbackBlock;
    v8->_startCallbackBlock = v12;

    v14 = MEMORY[0x1DA6FDA60](v7);
    endCallbackBlock = v8->_endCallbackBlock;
    v8->_endCallbackBlock = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    trackingTasks = v8->_trackingTasks;
    v8->_trackingTasks = v16;
  }

  return v8;
}

- (void)startSessionForHandler:(id)a3 withTask:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SWURLSchemeHandlerSession *)self trackingTasks];
  v8 = [v7 containsObject:v6];

  if ((v8 & 1) == 0)
  {
    v9 = [(SWURLSchemeHandlerSession *)self trackingTasks];
    [v9 addObject:v6];

    v10 = [(SWURLSchemeHandlerSession *)self startCallbackBlock];
    (v10)[2](v10, v11);
  }
}

- (void)endSessionForHandler:(id)a3 withTask:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(SWURLSchemeHandlerSession *)self trackingTasks];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = [(SWURLSchemeHandlerSession *)self trackingTasks];
    [v9 removeObject:v6];

    v10 = [(SWURLSchemeHandlerSession *)self endCallbackBlock];
    (v10)[2](v10, v11);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SWURLSchemeHandlerSession *)self identifier];
      v7 = [(SWURLSchemeHandlerSession *)v5 identifier];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end