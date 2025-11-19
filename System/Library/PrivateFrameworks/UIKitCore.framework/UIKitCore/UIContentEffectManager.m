@interface UIContentEffectManager
@end

@implementation UIContentEffectManager

void __40___UIContentEffectManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4A2248;
  qword_1ED4A2248 = v0;

  v2 = objc_opt_new();
  v3 = *(qword_1ED4A2248 + 8);
  *(qword_1ED4A2248 + 8) = v2;
}

void __73___UIContentEffectManager_compatibleEffectForKey_descriptor_constructor___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  v9 = [v8 descriptor];
  canTransitionBetweenEffects = _canTransitionBetweenEffects(v9, *(a1 + 32));

  if (canTransitionBetweenEffects)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __73___UIContentEffectManager_compatibleEffectForKey_descriptor_constructor___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _stopManagingEffect:v3];
}

@end