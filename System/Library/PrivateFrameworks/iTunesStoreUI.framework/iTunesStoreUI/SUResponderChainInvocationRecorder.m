@interface SUResponderChainInvocationRecorder
- (SUResponderChainInvocationRecorder)initWithTarget:(id)a3 protocol:(id)a4;
- (id)_targetForSelector:(SEL)a3 sender:(id)a4;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)invokeInvocation:(id)a3;
@end

@implementation SUResponderChainInvocationRecorder

- (SUResponderChainInvocationRecorder)initWithTarget:(id)a3 protocol:(id)a4
{
  result = [(ISInvocationRecorder *)self initWithTarget:a3];
  if (result)
  {
    result->_protocol = a4;
  }

  return result;
}

- (id)_targetForSelector:(SEL)a3 sender:(id)a4
{
  for (i = *(&self->super.super.isa + *MEMORY[0x1E69E4820]); i; i = [i nextResponder])
  {
    if ([i canPerformAction:a3 withSender:a4])
    {
      break;
    }
  }

  return i;
}

- (void)invokeInvocation:(id)a3
{
  v8 = 0;
  v5 = [a3 methodSignature];
  if ([v5 numberOfArguments] >= 3)
  {
    v6 = [v5 getArgumentTypeAtIndex:2];
    if (v6)
    {
      if (*v6 == 64 && !v6[1])
      {
        [a3 getArgument:&v8 atIndex:2];
      }
    }
  }

  v7 = [a3 selector];
  [a3 invokeWithTarget:{-[SUResponderChainInvocationRecorder _targetForSelector:sender:](self, "_targetForSelector:sender:", v7, v8)}];
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v7.receiver = self;
  v7.super_class = SUResponderChainInvocationRecorder;
  result = [(ISInvocationRecorder *)&v7 methodSignatureForSelector:?];
  if (!result)
  {
    result = self->_protocol;
    if (result)
    {
      MethodDescription = protocol_getMethodDescription(result, a3, 1, 1);
      result = MethodDescription.name;
      if (MethodDescription.name)
      {
        return [MEMORY[0x1E695DF68] signatureWithObjCTypes:MethodDescription.types];
      }
    }
  }

  return result;
}

@end