@interface UIContentViewAnimationStateUpdatingLayer
@end

@implementation UIContentViewAnimationStateUpdatingLayer

void __94___UIContentViewAnimationStateUpdatingLayer_layerForView_withUpdateHandler_completionHandler___block_invoke(uint64_t a1, int a2, double a3)
{
  *(*(*(a1 + 48) + 8) + 24) = a3 <= 0.5;
  v5 = *(*(a1 + 56) + 8);
  v6 = *(*(*(a1 + 48) + 8) + 24);
  if (*(v5 + 24) != v6 || a2 != 0)
  {
    v16 = v3;
    v17 = v4;
    v8 = a2;
    *(v5 + 24) = v6;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __94___UIContentViewAnimationStateUpdatingLayer_layerForView_withUpdateHandler_completionHandler___block_invoke_2;
    block[3] = &unk_1E7129DF0;
    v13 = *(a1 + 32);
    v15 = v8;
    v11 = *(a1 + 40);
    v10 = v11;
    v14 = v11;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __94___UIContentViewAnimationStateUpdatingLayer_layerForView_withUpdateHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(a1 + 56) == 1)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  return result;
}

@end