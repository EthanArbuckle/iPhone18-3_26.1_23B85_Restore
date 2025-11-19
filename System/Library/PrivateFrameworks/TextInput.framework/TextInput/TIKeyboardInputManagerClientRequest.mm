@interface TIKeyboardInputManagerClientRequest
+ (id)untargetedInvocationWithInvocation:(id)a3 withCompletion:(BOOL)a4;
- (NSInvocation)invocation;
- (TIKeyboardInputManagerClientRequest)initWithInvocation:(id)a3;
@end

@implementation TIKeyboardInputManagerClientRequest

- (NSInvocation)invocation
{
  v3 = objc_opt_class();
  invocation = self->_invocation;

  return [v3 untargetedInvocationWithInvocation:invocation withCompletion:1];
}

- (TIKeyboardInputManagerClientRequest)initWithInvocation:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TIKeyboardInputManagerClientRequest;
  v5 = [(TIKeyboardInputManagerClientRequest *)&v9 init];
  if (v5)
  {
    v6 = [objc_opt_class() untargetedInvocationWithInvocation:v4 withCompletion:1];
    invocation = v5->_invocation;
    v5->_invocation = v6;

    [(NSInvocation *)v5->_invocation retainArguments];
  }

  return v5;
}

+ (id)untargetedInvocationWithInvocation:(id)a3 withCompletion:(BOOL)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 methodSignature];
  v7 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:v6];
  [v7 setSelector:{objc_msgSend(v5, "selector")}];
  v8 = v14 - (([v6 frameLength] + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [v6 numberOfArguments];
  if (v9 >= 3)
  {
    v10 = v9;
    for (i = 2; i != v10; ++i)
    {
      if (!a4)
      {
        v12 = [v6 getArgumentTypeAtIndex:i];
        if (*v12 == 64 && v12[1] == 63)
        {
          break;
        }
      }

      [v5 getArgument:v8 atIndex:i];
      [v7 setArgument:v8 atIndex:i];
    }
  }

  return v7;
}

@end