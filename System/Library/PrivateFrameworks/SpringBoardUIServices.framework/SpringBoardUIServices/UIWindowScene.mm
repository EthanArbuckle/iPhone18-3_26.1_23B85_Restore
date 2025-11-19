@interface UIWindowScene
@end

@implementation UIWindowScene

void __105__UIWindowScene_SBSUIScreenSharingOverlaySceneSpecification__setSBSUI_preferredSystemRootLayerTransform___block_invoke(_OWORD *a1, void *a2)
{
  v3 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    __105__UIWindowScene_SBSUIScreenSharingOverlaySceneSpecification__setSBSUI_preferredSystemRootLayerTransform___block_invoke_cold_1(a1);
  }

  v4 = a1[4];
  v6[0] = a1[3];
  v6[1] = v4;
  v6[2] = a1[5];
  v5 = [MEMORY[0x1E696B098] valueWithCGAffineTransform:v6];
  [v3 setPreferredSystemRootTransform:v5];
}

void __73__UIWindowScene_SBSUIHearingTestModeAdditions__SBSUI_setHearingTestMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 setHearingTestMode:*(a1 + 32)];
  }
}

void __105__UIWindowScene_SBSUIScreenSharingOverlaySceneSpecification__setSBSUI_preferredSystemRootLayerTransform___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"SBSUIScreenSharingOverlaySceneSpecification.m" lineNumber:61 description:{@"*** setSBSUI_preferredSystemRootLayerTransform: is unavailable for this window scene. If this message surprises you, contact your friendly SBSUI engineer. ***"}];
}

@end