@interface UIAfterCACommitQueue
@end

@implementation UIAfterCACommitQueue

void __57___UIAfterCACommitQueue__enqueueCommitResponse_forPhase___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    atomic_compare_exchange_strong_explicit((v1 + 24), &v2, 1u, memory_order_relaxed, memory_order_relaxed);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___UIAfterCACommitQueue__enqueueCommitResponse_forPhase___block_invoke_2;
  block[3] = &unk_1E70F3590;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

@end