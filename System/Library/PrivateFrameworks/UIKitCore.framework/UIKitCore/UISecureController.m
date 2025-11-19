@interface UISecureController
@end

@implementation UISecureController

void __65___UISecureController__synchronousRemoteObjectProxyWithSelector___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if ([v8 conformsToProtocol:&unk_1F016C570])
  {
    v3 = [v8 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_127];
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = v8;
    v5 = *(v6 + 40);
    *(v6 + 40) = v7;
  }
}

void __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_UISecureController *)WeakRetained _updateSizeSpec:a2 intrinsicContentSize:a3];
}

void __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_3;
  v4[3] = &unk_1E71006A0;
  objc_copyWeak(&v6, (a1 + 48));
  v5 = *(a1 + 40);
  [v2 getIntrinsicContentSizeForSpec:v3 reply:v4];

  objc_destroyWeak(&v6);
}

void __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_3(uint64_t a1, double a2, double a3)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_4;
  v6[3] = &unk_1E71006C8;
  objc_copyWeak(v8, (a1 + 40));
  v7 = *(a1 + 32);
  v8[1] = *&a2;
  v8[2] = *&a3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);

  objc_destroyWeak(v8);
}

void __66___UISecureController_slotView_shouldSetFinalContentForStyle_tag___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(_UISecureController *)WeakRetained _updateSizeSpec:*(a1 + 48) intrinsicContentSize:*(a1 + 56)];
}

@end