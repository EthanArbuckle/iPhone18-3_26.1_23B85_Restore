@interface RPTWaitTestParameters
- (RPTWaitTestParameters)initWithTestName:(id)a3 wait:(double)a4 completionHandler:(id)a5;
- (id)composerBlock;
@end

@implementation RPTWaitTestParameters

- (RPTWaitTestParameters)initWithTestName:(id)a3 wait:(double)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = RPTWaitTestParameters;
  v10 = [(RPTWaitTestParameters *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [(RPTWaitTestParameters *)v10 setTestName:v8];
    v11->_waitDuration = a4;
    v12 = [v9 copy];
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v12;
  }

  return v11;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__RPTWaitTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF38A8;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __38__RPTWaitTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 waitDuration];
  [v3 advanceTime:?];
}

@end