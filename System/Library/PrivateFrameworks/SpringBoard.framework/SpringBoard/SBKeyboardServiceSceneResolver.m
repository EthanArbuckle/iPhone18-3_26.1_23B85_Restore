@interface SBKeyboardServiceSceneResolver
@end

@implementation SBKeyboardServiceSceneResolver

void __72___SBKeyboardServiceSceneResolver_sceneForSceneIdentityToken_inProcess___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v11 = a2;
  v6 = [v11 identityToken];
  if ([v6 isEqual:*(a1 + 32)])
  {
    v7 = [v11 clientHandle];
    v8 = [v7 processHandle];
    v9 = [v8 pid];
    v10 = *(a1 + 48);

    if (v9 == v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a3 = 1;
    }
  }

  else
  {
  }
}

@end