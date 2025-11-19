@interface UIKeyboardLayerHostView
@end

@implementation UIKeyboardLayerHostView

void __47___UIKeyboardLayerHostView__updatePairingState__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setPresentedLayerTypes:{objc_msgSend(v4, "presentedLayerTypes") | 2}];
  v3 = [*(a1 + 32) currentPresentationContext];
  [v4 _setVisibilityPropagationEnabled:{objc_msgSend(v3, "_isVisibilityPropagationEnabled")}];

  [v4 setInheritsSecurity:{objc_msgSend(*(a1 + 32), "inheritsSecurity")}];
}

void __81___UIKeyboardLayerHostView__initWithLayer_owningScene_keyboardMatchingPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setKeyboardScene:v3];
}

uint64_t __67___UIKeyboardLayerHostView_initWithKeyboardProxyLayer_owningScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) proxiedKeyboardOwner];
    v4 = [v3 isEqual:WeakRetained[61]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __62___UIKeyboardLayerHostView_initWithKeyboardLayer_owningScene___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) identityToken];
    v4 = [v3 isEqual:WeakRetained[61]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __58___UIKeyboardLayerHostView_setCurrentPresentationContext___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 _setVisibilityPropagationEnabled:{objc_msgSend(v2, "_isVisibilityPropagationEnabled")}];
}

void __58___UIKeyboardLayerHostView_scene_didUpdateClientSettings___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePairingState];
}

@end