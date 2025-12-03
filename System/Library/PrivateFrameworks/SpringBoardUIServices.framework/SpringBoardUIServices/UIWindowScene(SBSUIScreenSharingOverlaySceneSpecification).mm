@interface UIWindowScene(SBSUIScreenSharingOverlaySceneSpecification)
- (void)SBSUI_preferredSystemRootLayerTransform;
- (void)setSBSUI_preferredSystemRootLayerTransform:()SBSUIScreenSharingOverlaySceneSpecification;
@end

@implementation UIWindowScene(SBSUIScreenSharingOverlaySceneSpecification)

- (void)SBSUI_preferredSystemRootLayerTransform
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSUIScreenSharingOverlaySceneSpecification.m" lineNumber:54 description:{@"*** SBSUI_preferredSystemRootLayerTransform is unavailable for this window scene. If this message surprises you, contact your friendly SBSUI engineer. ***"}];
}

- (void)setSBSUI_preferredSystemRootLayerTransform:()SBSUIScreenSharingOverlaySceneSpecification
{
  _FBSScene = [self _FBSScene];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__UIWindowScene_SBSUIScreenSharingOverlaySceneSpecification__setSBSUI_preferredSystemRootLayerTransform___block_invoke;
  v8[3] = &unk_1E789E2D0;
  v8[4] = self;
  v8[5] = a2;
  v7 = a3[1];
  v9 = *a3;
  v10 = v7;
  v11 = a3[2];
  [_FBSScene updateClientSettings:v8];
}

@end