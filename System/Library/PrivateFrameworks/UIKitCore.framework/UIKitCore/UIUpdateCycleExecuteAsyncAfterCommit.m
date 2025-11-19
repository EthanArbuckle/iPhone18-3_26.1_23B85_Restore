@interface UIUpdateCycleExecuteAsyncAfterCommit
@end

@implementation UIUpdateCycleExecuteAsyncAfterCommit

void ___UIUpdateCycleExecuteAsyncAfterCommit_block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E6979518] currentState])
  {
    v2 = UIApp;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___UIUpdateCycleExecuteAsyncAfterCommit_block_invoke_2;
    v5[3] = &unk_1E70F37C0;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v2 _performBlockAfterCATransactionCommits:v5];
  }

  else
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    dispatch_async(v3, v4);
  }
}

@end