@interface _UIViewServiceReplyControlTrampoline
- (void)_forwardInvocation:(id)a3 withIncomingReplyDispatchBlock:(id)a4;
@end

@implementation _UIViewServiceReplyControlTrampoline

- (void)_forwardInvocation:(id)a3 withIncomingReplyDispatchBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 methodSignature];
  if (![v8 numberOfArguments])
  {
    v28 = 0;
    goto LABEL_15;
  }

  v9 = 0;
  v10 = *MEMORY[0x1E695D940];
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    v12 = v11;
    v13 = [v8 getArgumentTypeAtIndex:v9];
    if (*v13 == 64 && v13[1] == 63)
    {
      v11 = v9;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      v14 = MEMORY[0x1E695DF30];
      v15 = [v6 debugDescription];
      [v14 raise:v10 format:{@"reply awaiting can only be used with methods that only have one block (failing invocation: %@)", v15}];
    }

    v11 = v12;
LABEL_8:
    ++v9;
  }

  while ([v8 numberOfArguments] > v9);
  v28 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v6 getArgument:&v28 atIndex:v11];
    if (v28)
    {
      v16 = [v6 methodSignature];
      v17 = [v16 methodReturnType];
      if (*v17 == 118)
      {
        v18 = v17[1];

        if (!v18)
        {
LABEL_19:
          v22 = [v28 copy];
          v23 = v28;
          v28 = v22;

          [v6 setArgument:&v28 atIndex:v11];
          v24 = v28;
          v25 = [v7 copy];
          objc_setAssociatedObject(v24, &_UIViewServiceIncomingReplyHandlerKey, v25, 0x301);

          v26 = self;
          v19 = &v26;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v20 = MEMORY[0x1E695DF30];
      v21 = [v6 debugDescription];
      [v20 raise:v10 format:{@"reply awaiting can't handle invocations with a reply handler which also return a value (failing invocation: %@)", v21}];

      goto LABEL_19;
    }
  }

LABEL_15:
  v27.receiver = self;
  v19 = &v27;
LABEL_16:
  v19->super_class = _UIViewServiceReplyControlTrampoline;
  [(objc_super *)v19 forwardInvocation:v6];
}

@end