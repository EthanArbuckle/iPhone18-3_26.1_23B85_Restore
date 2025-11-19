@interface SubcompletionGenerator
@end

@implementation SubcompletionGenerator

id ___SubcompletionGenerator_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained SBC2GroupCompletionAnimationDidBegin:v3];

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    ___SubcompletionGenerator_block_invoke_cold_1();
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___SubcompletionGenerator_block_invoke_2;
  v10[3] = &unk_1E80805C0;
  objc_copyWeak(v15, (a1 + 72));
  v11 = v3;
  v5 = *(a1 + 56);
  v15[1] = *(a1 + 80);
  v6 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v13 = v5;
  v14 = v6;
  v12 = *(a1 + 32);
  v7 = v3;
  v8 = MEMORY[0x1BFB4D9B0](v10);

  objc_destroyWeak(v15);

  return v8;
}

void ___SubcompletionGenerator_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  [WeakRetained SBC2GroupCompletionAnimationDidComplete:*(a1 + 32) finished:a2 retargeted:a3];
  *(*(*(a1 + 48) + 8) + 24) &= a2;
  *(*(*(a1 + 56) + 8) + 24) |= a3;
  if (!--*(*(*(a1 + 64) + 8) + 24))
  {
    if (*(a1 + 88))
    {
      v7 = [MEMORY[0x1E695DFD0] mainRunLoop];
      v8 = [v7 getCFRunLoop];

      v9 = *MEMORY[0x1E695E8E0];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___SubcompletionGenerator_block_invoke_3;
      block[3] = &unk_1E8080598;
      v12 = *(a1 + 64);
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      CFRunLoopPerformBlock(v8, v9, block);
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
      (*(*(a1 + 40) + 16))();
    }
  }
}

void *___SubcompletionGenerator_block_invoke_3(void *result)
{
  if (!*(*(result[5] + 8) + 24))
  {
    *(*(result[6] + 8) + 24) = 1;
    return (*(result[4] + 16))(result[4], *(*(result[7] + 8) + 24), *(*(result[8] + 8) + 24));
  }

  return result;
}

void ___SubcompletionGenerator_block_invoke_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"SBC2CompletionGenerator _SubcompletionGenerator(__strong SBC2CompletionBlock, SBC2GroupCompletionOptions, __strong id<SBC2GroupCompletionDelegate>)_block_invoke"}];
  [v1 handleFailureInFunction:v0 file:@"UIView+SBFFluidBehaviorSettings.m" lineNumber:120 description:{@"Final completion already fired! Did you capture subcompletionGenerator and invoke it later? Don't, call it immediately and capture the subcompletion it generates. (It's marked NS_NOESCAPE, but ObjC doesn't flag capturing no capture blocks yet, <rdar://problem/19886775>.)"}];
}

@end