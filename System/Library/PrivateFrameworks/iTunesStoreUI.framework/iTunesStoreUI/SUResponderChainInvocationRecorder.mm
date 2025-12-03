@interface SUResponderChainInvocationRecorder
- (SUResponderChainInvocationRecorder)initWithTarget:(id)target protocol:(id)protocol;
- (id)_targetForSelector:(SEL)selector sender:(id)sender;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)invokeInvocation:(id)invocation;
@end

@implementation SUResponderChainInvocationRecorder

- (SUResponderChainInvocationRecorder)initWithTarget:(id)target protocol:(id)protocol
{
  result = [(ISInvocationRecorder *)self initWithTarget:target];
  if (result)
  {
    result->_protocol = protocol;
  }

  return result;
}

- (id)_targetForSelector:(SEL)selector sender:(id)sender
{
  for (i = *(&self->super.super.isa + *MEMORY[0x1E69E4820]); i; i = [i nextResponder])
  {
    if ([i canPerformAction:selector withSender:sender])
    {
      break;
    }
  }

  return i;
}

- (void)invokeInvocation:(id)invocation
{
  v8 = 0;
  methodSignature = [invocation methodSignature];
  if ([methodSignature numberOfArguments] >= 3)
  {
    v6 = [methodSignature getArgumentTypeAtIndex:2];
    if (v6)
    {
      if (*v6 == 64 && !v6[1])
      {
        [invocation getArgument:&v8 atIndex:2];
      }
    }
  }

  selector = [invocation selector];
  [invocation invokeWithTarget:{-[SUResponderChainInvocationRecorder _targetForSelector:sender:](self, "_targetForSelector:sender:", selector, v8)}];
}

- (id)methodSignatureForSelector:(SEL)selector
{
  v7.receiver = self;
  v7.super_class = SUResponderChainInvocationRecorder;
  result = [(ISInvocationRecorder *)&v7 methodSignatureForSelector:?];
  if (!result)
  {
    result = self->_protocol;
    if (result)
    {
      MethodDescription = protocol_getMethodDescription(result, selector, 1, 1);
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