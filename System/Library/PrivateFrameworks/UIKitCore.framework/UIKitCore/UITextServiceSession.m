@interface UITextServiceSession
@end

@implementation UITextServiceSession

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v1 = _MergedGlobals_1336;
  _MergedGlobals_1336 = v0;
}

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained dismissCompletionHandler];

  if (v3)
  {
    v3[2]();
  }

  [*(a1 + 32) _endSession];
}

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 string];

  [WeakRetained replaceRange:v4 withText:v5];
}

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 string];

  [WeakRetained replaceSelectedText:v4 withText:v5];
}

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 string];

  [WeakRetained replaceText:v4 withText:v5];
}

void __56___UITextServiceSession_showServiceForType_withContext___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v5 = [v3 string];

  [WeakRetained replaceText:v4 withText:v5];
}

@end