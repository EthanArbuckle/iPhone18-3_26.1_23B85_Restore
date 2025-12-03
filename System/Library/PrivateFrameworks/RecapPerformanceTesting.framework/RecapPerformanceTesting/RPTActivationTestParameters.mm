@interface RPTActivationTestParameters
- (RPTActivationTestParameters)initWithTestName:(id)name window:(id)window completionHandler:(id)handler;
- (id)composerBlock;
- (void)prepareWithComposer:(id)composer;
@end

@implementation RPTActivationTestParameters

- (RPTActivationTestParameters)initWithTestName:(id)name window:(id)window completionHandler:(id)handler
{
  nameCopy = name;
  windowCopy = window;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = RPTActivationTestParameters;
  v11 = [(RPTActivationTestParameters *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(RPTActivationTestParameters *)v11 setTestName:nameCopy];
    [(RPTActivationTestParameters *)v12 setWindow:windowCopy];
    [(RPTActivationTestParameters *)v12 setCompletionHandler:handlerCopy];
  }

  return v12;
}

- (void)prepareWithComposer:(id)composer
{
  composerCopy = composer;
  v5 = [RPTActivationInteraction alloc];
  window = [(RPTActivationTestParameters *)self window];
  v7 = [(RPTActivationInteraction *)v5 initForAction:1 window:window];

  [v7 invokeWithComposer:composerCopy duration:1.0];
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__RPTActivationTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __44__RPTActivationTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [RPTActivationInteraction alloc];
  v4 = [*(a1 + 32) window];
  v5 = [(RPTActivationInteraction *)v3 initForAction:0 window:v4];

  v6 = +[RPTSettings processEnvironment];
  v7 = [v6 activationIterationCount];

  if (v7 >= 2)
  {
    do
    {
      [v5 invokeWithComposer:v9 duration:1.0];
      v8 = [v5 reversedInteraction];
      [v8 invokeWithComposer:v9 duration:1.0];

      --v7;
    }

    while (v7);
  }

  else
  {
    [v5 invokeWithComposer:v9 duration:1.0];
  }
}

@end