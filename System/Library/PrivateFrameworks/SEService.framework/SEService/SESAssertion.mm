@interface SESAssertion
- (SESAssertion)initWithKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier;
- (id)proxy;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)invalidate;
- (void)setProxy:(id)proxy;
@end

@implementation SESAssertion

- (SESAssertion)initWithKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier
{
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  v12.receiver = self;
  v12.super_class = SESAssertion;
  v9 = [(SESAssertion *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_keyIdentifier, identifier);
    objc_storeStrong(&v10->_appletIdentifier, appletIdentifier);
  }

  return v10;
}

- (void)dealloc
{
  [(SESAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = SESAssertion;
  [(SESAssertion *)&v3 dealloc];
}

- (void)invalidate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [(SESAssertion *)self synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __26__SESAssertion_invalidate__block_invoke_505;
  v5[3] = &unk_1E82D0CA8;
  v5[4] = &v6;
  [v2 invalidate:v5];

  if ((v7[3] & 1) == 0)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_ERROR, "XPC failed: [SESAssertion invalidate]", v4, 2u);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void __26__SESAssertion_invalidate__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = SESDefaultLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_ERROR, "%@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __26__SESAssertion_invalidate__block_invoke_505(uint64_t a1, char a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v5)
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)proxy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_proxy;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setProxy:(id)proxy
{
  proxyCopy = proxy;
  obj = self;
  objc_sync_enter(obj);
  proxy = obj->_proxy;
  obj->_proxy = proxyCopy;

  objc_sync_exit(obj);
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  proxy = [(SESAssertion *)self proxy];
  v6 = [proxy synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  if (!v6)
  {
    v7 = SESDefaultLogObject();
    v8 = *MEMORY[0x1E69E5148];
    v9 = SESCreateAndLogError();
    handlerCopy[2](handlerCopy, v9);
  }

  return v6;
}

@end