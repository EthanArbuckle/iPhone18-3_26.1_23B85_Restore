@interface UIKeyboardInputManagerMux
+ (BOOL)instancesRespondToSelector:(SEL)a3;
+ (id)sharedInstance;
- (BOOL)_systemHasKbd;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)hasSystemInputManager;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)addClient:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)removeAllClients;
- (void)removeClient:(id)a3;
- (void)setResponseDelegate:(id)a3;
- (void)setSystemInputManager:(id)a3;
- (void)setSystemInputManagerFromTextInputTraits:(id)a3 autofillMode:(unint64_t)a4 implProxy:(id)a5;
- (void)updateClientResponseDelegatesWithDelegate:(id)a3;
@end

@implementation UIKeyboardInputManagerMux

+ (id)sharedInstance
{
  if (qword_1ED49F410 != -1)
  {
    dispatch_once(&qword_1ED49F410, &__block_literal_global_385);
  }

  v3 = _MergedGlobals_1194;

  return v3;
}

void __43__UIKeyboardInputManagerMux_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(UIKeyboardInputManagerMux);
  v1 = _MergedGlobals_1194;
  _MergedGlobals_1194 = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = *(_MergedGlobals_1194 + 8);
  *(_MergedGlobals_1194 + 8) = v2;
}

- (BOOL)_systemHasKbd
{
  if (_systemHasKbd_onceToken != -1)
  {
    dispatch_once(&_systemHasKbd_onceToken, &__block_literal_global_115_2);
  }

  return _systemHasKbd__hasKbd;
}

void __42__UIKeyboardInputManagerMux__systemHasKbd__block_invoke()
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v0 = _TextInputBundlesRoot();
  v1 = [v0 stringByAppendingPathComponent:@"kbd"];
  _systemHasKbd__hasKbd = [v2 fileExistsAtPath:v1];
}

- (BOOL)hasSystemInputManager
{
  v2 = [(UIKeyboardInputManagerMux *)self systemInputManager];
  v3 = v2 != 0;

  return v3;
}

- (void)setSystemInputManagerFromTextInputTraits:(id)a3 autofillMode:(unint64_t)a4 implProxy:(id)a5
{
  v20 = a3;
  v8 = a5;
  if (([v20 isDevicePasscodeEntry] & 1) != 0 || objc_msgSend(v20, "isSecureTextEntry") && ((v11 = objc_msgSend(v20, "keyboardType"), v11 <= 0xB) && ((1 << v11) & 0x930) != 0 || v11 == 127) && a4 != 3)
  {
    v9 = [(UIKeyboardInputManagerMux *)self systemInputManager];
    v10 = [v9 isMemberOfClass:objc_opt_class()];

    if (v10)
    {
      goto LABEL_15;
    }

LABEL_13:
    v18 = objc_opt_new();
    goto LABEL_14;
  }

  v12 = [(UIKeyboardInputManagerMux *)self systemInputManager];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    goto LABEL_15;
  }

  [(UIKeyboardInputManagerMux *)self setSystemInputManager:0];
  v14 = +[UIKeyboardInputModeController sharedInputModeController];
  v15 = [v14 currentInputMode];
  v16 = +[UIKeyboardInputMode dictationInputMode];
  v17 = [v15 isEqual:v16];

  if (v17 || ![(UIKeyboardInputManagerMux *)self _systemHasKbd])
  {
    goto LABEL_13;
  }

  v18 = [[UIKeyboardInputManagerClient alloc] initWithImplProxy:v8];
LABEL_14:
  v19 = v18;
  [(UIKeyboardInputManagerMux *)self setSystemInputManager:v18];

LABEL_15:
}

- (void)setSystemInputManager:(id)a3
{
  v4 = a3;
  systemInputManager = self->_systemInputManager;
  self->_systemInputManager = v4;
  v7 = v4;
  v6 = systemInputManager;

  [(UIKeyboardInputManagerMux *)self removeClient:v6];
  [(UIKeyboardInputManagerMux *)self addClient:self->_systemInputManager];
}

- (void)addClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = [(NSMutableArray *)self->_clients containsObject:v4];
    v4 = v9;
    if ((v5 & 1) == 0)
    {
      [(NSMutableArray *)self->_clients addObject:v9];
      v6 = [v9 conformsToProtocol:&unk_1F0009C18];
      v4 = v9;
      if (v6)
      {
        v7 = [(UIKeyboardInputManagerMux *)self responseDelegate];
        [v9 setResponseDelegate:v7];

        v8 = [(UIKeyboardInputManagerMux *)self responseDelegate];
        [v8 _requestInputManagerSync];

        v4 = v9;
      }
    }
  }
}

- (void)removeClient:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    if ([v4 conformsToProtocol:&unk_1F0009C18])
    {
      [v5 setResponseDelegate:0];
    }

    [(NSMutableArray *)self->_clients removeObject:v5];
    v4 = v5;
  }
}

- (void)removeAllClients
{
  [(UIKeyboardInputManagerMux *)self setSystemInputManager:0];
  [(UIKeyboardInputManagerMux *)self updateClientResponseDelegatesWithDelegate:0];
  clients = self->_clients;

  [(NSMutableArray *)clients removeAllObjects];
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
        if ([v10 conformsToProtocol:{&unk_1F0009C18, v11}])
        {
          [v10 setResponseDelegate:v4];
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)setResponseDelegate:(id)a3
{
  objc_storeStrong(&self->_responseDelegate, a3);
  v5 = a3;
  [(UIKeyboardInputManagerMux *)self updateClientResponseDelegatesWithDelegate:self->_responseDelegate];
}

+ (BOOL)instancesRespondToSelector:(SEL)a3
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___UIKeyboardInputManagerMux;
  if (objc_msgSendSuper2(&v5, sel_instancesRespondToSelector_))
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerMux;
  if ([(UIKeyboardInputManagerMux *)&v5 respondsToSelector:?])
  {
    return 1;
  }

  else
  {
    return [MEMORY[0x1E69D9610] instancesRespondToSelector:a3];
  }
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = UIKeyboardInputManagerMux;
  if ([(UIKeyboardInputManagerMux *)&v5 isKindOfClass:?])
  {
    return 1;
  }

  else
  {
    return [(objc_class *)a3 isSubclassOfClass:objc_opt_class()];
  }
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = UIKeyboardInputManagerMux;
  if ([(UIKeyboardInputManagerMux *)&v7 conformsToProtocol:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [MEMORY[0x1E69D9610] conformsToProtocol:v4];
  }

  return v5;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v9.receiver = self;
  v9.super_class = UIKeyboardInputManagerMux;
  v4 = [(UIKeyboardInputManagerMux *)&v9 methodSignatureForSelector:?];
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

- (void)forwardInvocation:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(UIKeyboardInputManagerMux *)self systemInputManager];
  [v4 invokeWithTarget:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_clients;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(UIKeyboardInputManagerMux *)self systemInputManager];

        if (v11 != v12)
        {
          v13 = [UIKeyboardInputManagerClientRequest untargetedInvocationWithInvocation:v4 withCompletion:0];
          [v13 invokeWithTarget:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

@end