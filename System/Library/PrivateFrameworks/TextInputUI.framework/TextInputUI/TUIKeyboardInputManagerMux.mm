@interface TUIKeyboardInputManagerMux
+ (BOOL)instancesRespondToSelector:(SEL)selector;
+ (id)sharedInstance;
- (BOOL)_systemHasKbd;
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isKindOfClass:(Class)class;
- (BOOL)respondsToSelector:(SEL)selector;
- (TIKeyboardInputManagerToImplProtocol)implProxy;
- (TUICandidateInterceptor)candidateMultiplexer;
- (TUIKeyboardInputManagerMux)init;
- (TUIKeyboardInputManagerProviding)inputManagerProvider;
- (id)methodSignatureForSelector:(SEL)selector;
- (id)newSystemInputManagerWithImplProxy:(id)proxy;
- (void)addClient:(id)client;
- (void)forwardInvocation:(id)invocation;
- (void)processPayloadInfo:(id)info;
- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token;
- (void)pushCandidateResultSet:(id)set requestToken:(id)token;
- (void)removeAllClients;
- (void)removeClient:(id)client;
- (void)setResponseDelegate:(id)delegate;
- (void)setSystemInputManagerFromTextInputTraits:(id)traits autofillMode:(unint64_t)mode implProxy:(id)proxy;
- (void)updateClientResponseDelegatesWithDelegate:(id)delegate;
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

- (void)pushCandidateResultSet:(id)set requestToken:(id)token
{
  tokenCopy = token;
  setCopy = set;
  implProxy = [(TUIKeyboardInputManagerMux *)self implProxy];
  [implProxy pushCandidateResultSet:setCopy requestToken:tokenCopy];
}

- (void)pushAutocorrections:(id)autocorrections requestToken:(id)token
{
  autocorrectionsCopy = autocorrections;
  tokenCopy = token;
  candidateMultiplexer = [(TUIKeyboardInputManagerMux *)self candidateMultiplexer];
  v8 = [candidateMultiplexer willHandleDeliveryForCandidates:autocorrectionsCopy requestToken:tokenCopy];

  if ((v8 & 1) == 0)
  {
    implProxy = [(TUIKeyboardInputManagerMux *)self implProxy];
    [implProxy pushAutocorrections:autocorrectionsCopy requestToken:tokenCopy];
  }
}

- (void)processPayloadInfo:(id)info
{
  infoCopy = info;
  implProxy = [(TUIKeyboardInputManagerMux *)self implProxy];
  [implProxy processPayloadInfo:infoCopy];
}

- (void)forwardInvocation:(id)invocation
{
  v17 = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  [invocationCopy invokeWithTarget:self->_systemInputManager];
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
          v11 = [MEMORY[0x1E69D9608] untargetedInvocationWithInvocation:invocationCopy withCompletion:{0, v12}];
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

- (id)methodSignatureForSelector:(SEL)selector
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
    v6 = [MEMORY[0x1E69D9610] instanceMethodSignatureForSelector:selector];
  }

  v7 = v6;

  return v7;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  protocolCopy = protocol;
  v7.receiver = self;
  v7.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v7 conformsToProtocol:protocolCopy])
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69D9610] conformsToProtocol:protocolCopy];
  }

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)class isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = TUIKeyboardInputManagerMux;
  if ([(TUIKeyboardInputManagerMux *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:selector];
  }
}

- (void)setResponseDelegate:(id)delegate
{
  objc_storeStrong(&self->_responseDelegate, delegate);
  delegateCopy = delegate;
  [(TUIKeyboardInputManagerMux *)self updateClientResponseDelegatesWithDelegate:self->_responseDelegate];
}

- (void)updateClientResponseDelegatesWithDelegate:(id)delegate
{
  v16 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
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
          [v10 setResponseDelegate:delegateCopy];
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

- (void)removeClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    v6 = clientCopy;
    if ([clientCopy conformsToProtocol:&unk_1F04340B0])
    {
      [v6 setResponseDelegate:0];
    }

    clients = [(TUIKeyboardInputManagerMux *)self clients];
    [clients removeObject:v6];

    clientCopy = v6;
  }
}

- (void)addClient:(id)client
{
  clientCopy = client;
  if (clientCopy)
  {
    clients = [(TUIKeyboardInputManagerMux *)self clients];
    v5 = [clients containsObject:clientCopy];

    if ((v5 & 1) == 0)
    {
      clients2 = [(TUIKeyboardInputManagerMux *)self clients];
      [clients2 addObject:clientCopy];

      if ([clientCopy conformsToProtocol:&unk_1F04340B0])
      {
        responseDelegate = [(TUIKeyboardInputManagerMux *)self responseDelegate];
        [clientCopy setResponseDelegate:responseDelegate];

        responseDelegate2 = [(TUIKeyboardInputManagerMux *)self responseDelegate];
        [responseDelegate2 _requestInputManagerSync];
      }
    }
  }
}

- (void)setSystemInputManagerFromTextInputTraits:(id)traits autofillMode:(unint64_t)mode implProxy:(id)proxy
{
  traitsCopy = traits;
  proxyCopy = proxy;
  if (objc_opt_respondsToSelector())
  {
    keyboardSuggestionOptions = [traitsCopy keyboardSuggestionOptions];
    candidateMultiplexer = [(TUIKeyboardInputManagerMux *)self candidateMultiplexer];
    [candidateMultiplexer setKeyboardSuggestionOptions:keyboardSuggestionOptions];
  }

  if ([traitsCopy isDevicePasscodeEntry])
  {
    v11 = 1;
  }

  else if ([traitsCopy isSecureTextEntry])
  {
    [traitsCopy keyboardType];
    IsNumberPad = UIKeyboardTypeIsNumberPad();
    if (mode == 3)
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

  inputManagerProvider = [(TUIKeyboardInputManagerMux *)self inputManagerProvider];
  v14 = inputManagerProvider;
  if (inputManagerProvider)
  {
    selfCopy = inputManagerProvider;
  }

  else
  {
    selfCopy = self;
  }

  v16 = selfCopy;

  if (!v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_22;
    }

    systemInputManager = self->_systemInputManager;
    self->_systemInputManager = 0;

    mEMORY[0x1E69DCBF0] = [MEMORY[0x1E69DCBF0] sharedInputModeController];
    currentInputMode = [mEMORY[0x1E69DCBF0] currentInputMode];
    dictationInputMode = [MEMORY[0x1E69DCBE8] dictationInputMode];
    v21 = [currentInputMode isEqual:dictationInputMode];

    if (!v21 && [(TUIKeyboardInputManagerMux *)v16 _systemHasKbd])
    {
      objc_storeWeak(&self->_implProxy, proxyCopy);
      newInputManagerStub = [(TUIKeyboardInputManagerMux *)v16 newSystemInputManagerWithImplProxy:self];
LABEL_21:
      v23 = self->_systemInputManager;
      self->_systemInputManager = newInputManagerStub;

      goto LABEL_22;
    }

LABEL_20:
    objc_storeWeak(&self->_implProxy, 0);
    newInputManagerStub = [(TUIKeyboardInputManagerMux *)v16 newInputManagerStub];
    goto LABEL_21;
  }

  if (([(TIKeyboardInputManager *)self->_systemInputManager isMemberOfClass:objc_opt_class()]& 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_22:
}

- (id)newSystemInputManagerWithImplProxy:(id)proxy
{
  v3 = MEMORY[0x1E69D9600];
  proxyCopy = proxy;
  v5 = [[v3 alloc] initWithImplProxy:proxyCopy];

  return v5;
}

+ (BOOL)instancesRespondToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___TUIKeyboardInputManagerMux;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:selector];
  }
}

@end