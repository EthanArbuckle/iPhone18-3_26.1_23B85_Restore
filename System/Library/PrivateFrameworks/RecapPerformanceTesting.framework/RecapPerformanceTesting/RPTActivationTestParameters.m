@interface RPTActivationTestParameters
- (RPTActivationTestParameters)initWithTestName:(id)a3 window:(id)a4 completionHandler:(id)a5;
- (id)composerBlock;
- (void)prepareWithComposer:(id)a3;
@end

@implementation RPTActivationTestParameters

- (RPTActivationTestParameters)initWithTestName:(id)a3 window:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = RPTActivationTestParameters;
  v11 = [(RPTActivationTestParameters *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(RPTActivationTestParameters *)v11 setTestName:v8];
    [(RPTActivationTestParameters *)v12 setWindow:v9];
    [(RPTActivationTestParameters *)v12 setCompletionHandler:v10];
  }

  return v12;
}

- (void)prepareWithComposer:(id)a3
{
  v4 = a3;
  v5 = [RPTActivationInteraction alloc];
  v6 = [(RPTActivationTestParameters *)self window];
  v7 = [(RPTActivationInteraction *)v5 initForAction:1 window:v6];

  [v7 invokeWithComposer:v4 duration:1.0];
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