@interface _UIViewServiceReplyControlTrampoline
- (void)_forwardInvocation:(id)invocation withIncomingReplyDispatchBlock:(id)block;
@end

@implementation _UIViewServiceReplyControlTrampoline

- (void)_forwardInvocation:(id)invocation withIncomingReplyDispatchBlock:(id)block
{
  invocationCopy = invocation;
  blockCopy = block;
  methodSignature = [invocationCopy methodSignature];
  if (![methodSignature numberOfArguments])
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
    v13 = [methodSignature getArgumentTypeAtIndex:v9];
    if (*v13 == 64 && v13[1] == 63)
    {
      v11 = v9;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_8;
      }

      v14 = MEMORY[0x1E695DF30];
      v15 = [invocationCopy debugDescription];
      [v14 raise:v10 format:{@"reply awaiting can only be used with methods that only have one block (failing invocation: %@)", v15}];
    }

    v11 = v12;
LABEL_8:
    ++v9;
  }

  while ([methodSignature numberOfArguments] > v9);
  v28 = 0;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [invocationCopy getArgument:&v28 atIndex:v11];
    if (v28)
    {
      methodSignature2 = [invocationCopy methodSignature];
      methodReturnType = [methodSignature2 methodReturnType];
      if (*methodReturnType == 118)
      {
        v18 = methodReturnType[1];

        if (!v18)
        {
LABEL_19:
          v22 = [v28 copy];
          v23 = v28;
          v28 = v22;

          [invocationCopy setArgument:&v28 atIndex:v11];
          v24 = v28;
          v25 = [blockCopy copy];
          objc_setAssociatedObject(v24, &_UIViewServiceIncomingReplyHandlerKey, v25, 0x301);

          selfCopy = self;
          v19 = &selfCopy;
          goto LABEL_16;
        }
      }

      else
      {
      }

      v20 = MEMORY[0x1E695DF30];
      v21 = [invocationCopy debugDescription];
      [v20 raise:v10 format:{@"reply awaiting can't handle invocations with a reply handler which also return a value (failing invocation: %@)", v21}];

      goto LABEL_19;
    }
  }

LABEL_15:
  v27.receiver = self;
  v19 = &v27;
LABEL_16:
  v19->super_class = _UIViewServiceReplyControlTrampoline;
  [(objc_super *)v19 forwardInvocation:invocationCopy];
}

@end