@interface UIPointerInteractionAssistant
@end

@implementation UIPointerInteractionAssistant

BOOL __91___UIPointerInteractionAssistant__updatePointerInteractionForSubtree_suppressInteractions___block_invoke(uint64_t a1, void *a2)
{
  v3 = _assistedButtonForView(a2);
  v4 = v3;
  if (v3)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = *(a1 + 32);
LABEL_6:
      [v4 _setProxyPointerInteraction:v5];
      goto LABEL_7;
    }

    v6 = [v3 _proxyPointerInteraction];
    v7 = *(a1 + 32);

    if (v6 == v7)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

LABEL_7:

  return v4 == 0;
}

void __52___UIPointerInteractionAssistant__assistantForView___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained(v7 + 1);

    if (WeakRetained)
    {
      if ([(UIView *)WeakRetained _containsView:?])
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
        *a4 = 1;
      }
    }
  }
}

void __84___UIPointerInteractionAssistant_pointerInteraction_regionForRequest_defaultRegion___block_invoke(uint64_t *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(v8 + 1);
    v11 = WeakRetained;
    if (WeakRetained && [(UIView *)WeakRetained _containsView:?])
    {
      objc_storeStrong((*(a1[5] + 8) + 40), a3);
      objc_storeStrong((*(a1[6] + 8) + 40), a2);
      *a4 = 1;
    }
  }

  else
  {
    v11 = 0;
  }
}

@end