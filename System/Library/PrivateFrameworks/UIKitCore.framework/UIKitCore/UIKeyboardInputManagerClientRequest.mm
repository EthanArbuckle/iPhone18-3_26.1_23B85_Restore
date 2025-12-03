@interface UIKeyboardInputManagerClientRequest
+ (id)untargetedInvocationWithInvocation:(id)invocation withCompletion:(BOOL)completion;
- (NSInvocation)invocation;
- (UIKeyboardInputManagerClientRequest)initWithInvocation:(id)invocation;
@end

@implementation UIKeyboardInputManagerClientRequest

- (UIKeyboardInputManagerClientRequest)initWithInvocation:(id)invocation
{
  invocationCopy = invocation;
  v9.receiver = self;
  v9.super_class = UIKeyboardInputManagerClientRequest;
  v5 = [(UIKeyboardInputManagerClientRequest *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() untargetedInvocationWithInvocation:invocationCopy withCompletion:1];
    invocation = v5->_invocation;
    v5->_invocation = v6;

    [(NSInvocation *)v5->_invocation retainArguments];
  }

  return v5;
}

- (NSInvocation)invocation
{
  v3 = objc_opt_class();
  invocation = self->_invocation;

  return [v3 untargetedInvocationWithInvocation:invocation withCompletion:1];
}

+ (id)untargetedInvocationWithInvocation:(id)invocation withCompletion:(BOOL)completion
{
  v14[1] = *MEMORY[0x1E69E9840];
  invocationCopy = invocation;
  methodSignature = [invocationCopy methodSignature];
  v7 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:methodSignature];
  [v7 setSelector:{objc_msgSend(invocationCopy, "selector")}];
  v8 = v14 - (([methodSignature frameLength] + 15) & 0xFFFFFFFFFFFFFFF0);
  numberOfArguments = [methodSignature numberOfArguments];
  if (numberOfArguments >= 3)
  {
    v10 = numberOfArguments;
    for (i = 2; i != v10; ++i)
    {
      if (!completion)
      {
        v12 = [methodSignature getArgumentTypeAtIndex:i];
        if (*v12 == 64 && v12[1] == 63)
        {
          break;
        }
      }

      [invocationCopy getArgument:v8 atIndex:i];
      [v7 setArgument:v8 atIndex:i];
    }
  }

  return v7;
}

@end