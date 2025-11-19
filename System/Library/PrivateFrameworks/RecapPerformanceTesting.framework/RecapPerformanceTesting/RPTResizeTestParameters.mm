@interface RPTResizeTestParameters
- (CGSize)maximumWindowSize;
- (CGSize)minimumWindowSize;
- (RPTResizeTestParameters)initWithTestName:(id)a3 window:(id)a4 completionHandler:(id)a5;
- (id)composerBlock;
- (void)prepareWithComposer:(id)a3;
@end

@implementation RPTResizeTestParameters

- (void)prepareWithComposer:(id)a3
{
  v4 = [(RPTResizeTestParameters *)self window];
  [(RPTResizeTestParameters *)self minimumWindowSize];
  [v4 _rpt_moveToSafeTopLeftOfScreemVisibleFrameAndResize:?];
}

- (RPTResizeTestParameters)initWithTestName:(id)a3 window:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = RPTResizeTestParameters;
  v12 = [(RPTResizeTestParameters *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_testName, a3);
    objc_storeStrong(&v13->_window, a4);
    [v10 _rpt_safeVisibleFrameOfScreen];
    v13->_minimumWindowSize = xmmword_261A287C0;
    v16 = 1200.0;
    if (v14 <= 1200.0)
    {
      v16 = v14;
    }

    v17 = 800.0;
    if (v15 <= 800.0)
    {
      v17 = v15;
    }

    v13->_maximumWindowSize.width = v16;
    v13->_maximumWindowSize.height = v17;
    v18 = MEMORY[0x2667162B0](v11);
    completionHandler = v13->_completionHandler;
    v13->_completionHandler = v18;

    v20 = [RPTCoordinateSpaceConverter converterFromWindow:v10];
    conversion = v13->_conversion;
    v13->_conversion = v20;
  }

  return v13;
}

- (id)composerBlock
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__RPTResizeTestParameters_composerBlock__block_invoke;
  v4[3] = &unk_279AF3858;
  v4[4] = self;
  v2 = MEMORY[0x2667162B0](v4, a2);

  return v2;
}

void __40__RPTResizeTestParameters_composerBlock__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [RPTResizeInteraction alloc];
  v5 = [*(a1 + 32) window];
  [*(a1 + 32) maximumWindowSize];
  v6 = [(RPTResizeInteraction *)v4 initWithWindow:v5 destinationSize:?];

  v7 = [*(a1 + 32) conversion];
  [(RPTResizeInteraction *)v6 setConversion:v7];

  [(RPTResizeInteraction *)v6 setShouldLift:0];
  [(RPTResizeInteraction *)v6 invokeWithComposer:v3 duration:1.0];
  v14[2] = xmmword_261A287F8;
  v14[3] = unk_261A28808;
  v14[4] = xmmword_261A28818;
  v14[0] = xmmword_261A287D8;
  v14[1] = unk_261A287E8;
  std::vector<double>::vector[abi:nn200100](&v12, v14, 0xAuLL);
  v8 = v12;
  v9 = v13;
  if (v12 != v13)
  {
    do
    {
      v10 = [(RPTResizeInteraction *)v6 reversedInteraction];
      v11 = [v10 interactionByScalingBy:fabs(*v8)];

      v6 = v11;
      [(RPTResizeInteraction *)v11 setShouldPress:0];
      [(RPTResizeInteraction *)v11 setShouldLift:0];
      if (*v8 < 0.0)
      {
        [(RPTResizeInteraction *)v11 setShouldLift:1, *v8];
      }

      [(RPTResizeInteraction *)v11 invokeWithComposer:v3 duration:1.0];
      ++v8;
    }

    while (v8 != v9);
    v8 = v12;
  }

  if (v8)
  {
    v13 = v8;
    operator delete(v8);
  }
}

- (CGSize)minimumWindowSize
{
  width = self->_minimumWindowSize.width;
  height = self->_minimumWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maximumWindowSize
{
  width = self->_maximumWindowSize.width;
  height = self->_maximumWindowSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end