@interface TIPreferencesControllerServiceHandler
- (BOOL)respondsToSelector:(SEL)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)forwardInvocation:(id)a3;
@end

@implementation TIPreferencesControllerServiceHandler

- (BOOL)respondsToSelector:(SEL)a3
{
  v5 = &unk_1EF7ED518;
  v6 = 1;
  if (!protocol_getMethodDescription(v5, a3, 1, 1).name)
  {
    v8.receiver = self;
    v8.super_class = TIPreferencesControllerServiceHandler;
    v6 = [(TIPreferencesControllerServiceHandler *)&v8 respondsToSelector:a3];
  }

  return v6;
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v5 = &unk_1EF7ED518;
  if (protocol_getMethodDescription(v5, a3, 1, 1).name)
  {
    v6 = +[TIPreferencesController sharedPreferencesController];
    v7 = [v6 methodSignatureForSelector:a3];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = TIPreferencesControllerServiceHandler;
    v7 = [(TIPreferencesControllerServiceHandler *)&v9 methodSignatureForSelector:a3];
  }

  return v7;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = &unk_1EF7ED518;
  if (protocol_getMethodDescription(v5, [v4 selector], 1, 1).name)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__TIPreferencesControllerServiceHandler_forwardInvocation___block_invoke;
    v6[3] = &unk_1E6F4D860;
    v7 = v4;
    TIDispatchSync(MEMORY[0x1E69E96A0], v6);
  }

  else
  {
    [v4 invokeWithTarget:self];
  }
}

void __59__TIPreferencesControllerServiceHandler_forwardInvocation___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[TIPreferencesController sharedPreferencesController];
  [v1 invokeWithTarget:v2];
}

@end