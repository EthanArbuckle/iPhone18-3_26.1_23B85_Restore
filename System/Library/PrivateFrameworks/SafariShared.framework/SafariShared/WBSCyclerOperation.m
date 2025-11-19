@interface WBSCyclerOperation
- (WBSCyclerOperation)initWithMaximumNumberOfAttempts:(unint64_t)a3 backoffRatio:(float)a4;
- (void)executeWithResultHandler:(id)a3;
@end

@implementation WBSCyclerOperation

- (WBSCyclerOperation)initWithMaximumNumberOfAttempts:(unint64_t)a3 backoffRatio:(float)a4
{
  v10.receiver = self;
  v10.super_class = WBSCyclerOperation;
  v6 = [(WBSCyclerOperation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_numberOfRemainingAttempts = a3;
    v6->_backoffRatio = a4;
    v8 = v6;
  }

  return v7;
}

- (void)executeWithResultHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__WBSCyclerOperation_executeWithResultHandler___block_invoke;
  v6[3] = &unk_1E7FB81B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __47__WBSCyclerOperation_executeWithResultHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 21) = 1;
  v2 = dispatch_time(0, (*(*(a1 + 32) + 32) * 1000000000.0));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_2;
  v4[3] = &unk_1E7FB81B8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_after(v2, MEMORY[0x1E69E96A0], v4);
}

void __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_3;
  v4[3] = &unk_1E7FC5238;
  v4[4] = v2;
  v5 = v1;
  (*(v3 + 16))(v3, v4);
}

void __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_3(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_4;
  block[3] = &unk_1E7FC5210;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = a2;
  v4 = v2;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __47__WBSCyclerOperation_executeWithResultHandler___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 21) = 0;
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    *(v1 + 20) = 1;
  }

  else
  {
    v2 = *(v1 + 8) - 1;
    *(v1 + 8) = v2;
    v3 = *(a1 + 32);
    if (v2)
    {
      v4 = *(v3 + 32);
      if (v4 == 0.0)
      {
        v5 = *(v3 + 16);
      }

      else
      {
        v5 = v4 * *(v3 + 16);
      }

      *(v3 + 32) = v5;
    }

    else
    {
      *(v3 + 20) = 1;
    }
  }

  return (*(*(a1 + 40) + 16))();
}

@end