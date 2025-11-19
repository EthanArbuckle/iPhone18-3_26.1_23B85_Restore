@interface TUIKeyboardInputManagerMux
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)sharedInstance;
- (BOOL)_systemHasKbd;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (TIKeyboardInputManagerToImplProtocol)implProxy;
- (TUICandidateInterceptor)candidateMultiplexer;
- (TUIKeyboardInputManagerMux)init;
- (TUIKeyboardInputManagerProviding)inputManagerProvider;
- (id)methodSignatureForSelector:(SEL)a3;
- (id)newSystemInputManagerWithImplProxy:(id)a3;
- (void)addClient:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)processPayloadInfo:(id)a3;
- (void)pushAutocorrections:(id)a3 requestToken:(id)a4;
- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4;
- (void)removeAllClients;
- (void)removeClient:(id)a3;
- (void)setResponseDelegate:(id)a3;
- (void)setSystemInputManagerFromTextInputTraits:(id)a3 autofillMode:(unint64_t)a4 implProxy:(id)a5;
- (void)updateClientResponseDelegatesWithDelegate:(id)a3;
@end

@implementation TUIKeyboardInputManagerMux

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6795 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6795, &__block_literal_global_6796);
  }

  v3 = sharedInstance___instance;

  return v3;
}

- (TUICandidateInterceptor)candidateMultiplexer
{
  WeakRetained = objc_loadWeakRetained(&self->_candidateMultiplexer);

  return WeakRetained;
}

- (TUIKeyboardInputManagerProviding)inputManagerProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_inputManagerProvider);

  return WeakRetained;
}

uint64_t __44__TUIKeyboardInputManagerMux_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(TUIKeyboardInputManagerMux);

  return MEMORY[0x1EEE66BB8]();
}

- (TUIKeyboardInputManagerMux)init
{
  v6.receiver = self;
  v6.super_class = TUIKeyboardInputManagerMux;
  v2 = [(TUIKeyboardInputManagerMux *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    clients = v2->_clients;
    v2->_clients = v3;
  }

  return v2;
}

- (BOOL)_systemHasKbd
{
  if (_systemHasKbd_onceToken != -1)
  {
    dispatch_once(&_systemHasKbd_onceToken, &__block_literal_global_3);
  }

  return _systemHasKbd__hasKbd;
}

void __43__TUIKeyboardInputManagerMux__systemHasKbd__block_invoke()
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v0 = _TextInputBundlesRoot();
  v1 = [v0 stringByAppendingPathComponent:@"kbd"];
  _systemHasKbd__hasKbd = [v2 fileExistsAtPath:v1];
}

- (TIKeyboardInputManagerToImplProtocol)implProxy
{
  WeakRetained = objc_loadWeakRetained(&self->_implProxy);

  return WeakRetained;
}

- (void)pushCandidateResultSet:(id)a3 requestToken:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUIKeyboardInputManagerMux *)self implProxy];
  [v8 pushCandidateResultSet:v7 requestToken:v6];
}

- (void)pushAutocorrections:(id)a3 requestToken:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(TUIKeyboardInputManagerMux *)self candidateMultiplexer];
  v8 = [v7 willHandleDeliveryForCandidates:v10 requestToken:v6];

  if ((v8 & 1) == 0)
  {
    v9 = [(TUIKeyboardInputManagerMux *)self implProxy];
    [v9 pushAutocorrections:v10 requestToken:v6];
  }
}

- (void)processPayloadInfo:(id)a3
{
  v4 = a3;
  v5 = [(TUIKeyboardInputManagerMux *)self implProxy];
  [v5 processPayloadInfo:v4];
}

- (void)forwardInvocation:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [v4 invokeWithTarget:self->_systemInputManager];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (v10 != self->_systemInputManager)
        {
          v11 = [MEMORY[0x1E69D9608] untargetedInvocationWithInvocation:v4 withCompletion:{0, v12}];
          [v11 invokeWithTarget:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = TUIKeyboardInputManagerMux;
  v4 = [(TUIKeyboardInputManagerMux *)&v9 methodSignatureForSelector:?];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E69D9610] instanceMethodSignatureForSelector:a3];
  }

  v7 = v6;

  return v7;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69D9610] conformsToProtocol:v4];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

- (void)setResponseDelegate:(id)a3
{
  objc_storeStrong(&self->_responseDelegate, a3);
  v5 = a3;
  [(TUIKeyboardInputManagerMux *)self updateClientResponseDelegatesWithDelegate:self->_responseDelegate];
}

- (void)updateClientResponseDelegatesWithDelegate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_clients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 conformsToProtocol:{&unk_1F04340B0, v11}])
        {
          [v10 setResponseDelegate:v4];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)removeAllClients
{
  systemInputManager = self->_systemInputManager;
  self->_systemInputManager = 0;

  [(TUIKeyboardInputManagerMux *)self updateClientResponseDelegatesWithDelegate:0];
  clients = self->_clients;

  [(NSMutableArray *)clients removeAllObjects];
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 conformsToProtocol:&unk_1F04340B0])
    {
      [v6 setResponseDelegate:0];
    }

    v5 = [(TUIKeyboardInputManagerMux *)self clients];
    [v5 removeObject:v6];

    v4 = v6;
  }
}

- (void)addClient:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(TUIKeyboardInputManagerMux *)self clients];
    v5 = [v4 containsObject:v9];

    if ((v5 & 1) == 0)
    {
      v6 = [(TUIKeyboardInputManagerMux *)self clients];
      [v6 addObject:v9];

      if ([v9 conformsToProtocol:&unk_1F04340B0])
      {
        v7 = [(TUIKeyboardInputManagerMux *)self responseDelegate];
        [v9 setResponseDelegate:v7];

        v8 = [(TUIKeyboardInputManagerMux *)self responseDelegate];
        [v8 _requestInputManagerSync];
      }
    }
  }
}

- (void)setSystemInputManagerFromTextInputTraits:(id)a3 autofillMode:(unint64_t)a4 implProxy:(id)a5
{
  v24 = a3;
  v8 = a5;
  if (objc_opt_respondsToSelector())
  {
    v9 = [v24 keyboardSuggestionOptions];
    v10 = [(TUIKeyboardInputManagerMux *)self candidateMultiplexer];
    [v10 setKeyboardSuggestionOptions:v9];
  }

  if ([v24 isDevicePasscodeEntry])
  {
    v11 = 1;
  }

  else if ([v24 isSecureTextEntry])
  {
    [v24 keyboardType];
    IsNumberPad = UIKeyboardTypeIsNumberPad();
    if (a4 == 3)
    {
      v11 = 0;
    }

    else
    {
      v11 = IsNumberPad;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = [(TUIKeyboardInputManagerMux *)self inputManagerProvider];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = self;
  }

  v16 = v15;

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_22;
    }

    systemInputManager = self->_systemInputManager;
    self->_systemInputManager = 0;

    v18 = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    v19 = [v18 currentInputMode];
    v20 = [MEMORY[0x1E69DCBE8] dictationInputMode];
    v21 = [v19 isEqual:v20];

    if (!v21 && [(TUIKeyboardInputManagerMux *)v16 _systemHasKbd])
    {
      objc_storeWeak(&self->_implProxy, v8);
      v22 = [(TUIKeyboardInputManagerMux *)v16 newSystemInputManagerWithImplProxy:self];
LABEL_21:
      v23 = self->_systemInputManager;
      self->_systemInputManager = v22;

      goto LABEL_22;
    }

LABEL_20:
    objc_storeWeak(&self->_implProxy, 0);
    v22 = [(TUIKeyboardInputManagerMux *)v16 newInputManagerStub];
    goto LABEL_21;
  }

  if (([(TIKeyboardInputManager *)self->_systemInputManager isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
}

- (id)newSystemInputManagerWithImplProxy:(id)a3
{
  v3 = MEMORY[0x1E69D9600];
  v4 = a3;
  v5 = [[v3 alloc] initWithImplProxy:v4];

  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___TUIKeyboardInputManagerMux;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

@end