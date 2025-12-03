@interface PTUISettingsController(PXSettingsSearch)
- (uint64_t)px_shouldPreventAnimations;
- (void)_pxswizzled_presentViewController:()PXSettingsSearch animated:completion:;
- (void)_pxswizzled_pushViewController:()PXSettingsSearch animated:;
- (void)px_performWithoutAnimations:()PXSettingsSearch completionHandler:;
- (void)px_setShouldPreventAnimations:()PXSettingsSearch;
@end

@implementation PTUISettingsController(PXSettingsSearch)

- (void)px_setShouldPreventAnimations:()PXSettingsSearch
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, sel_px_shouldPreventAnimations, v2, 1);
}

- (uint64_t)px_shouldPreventAnimations
{
  v1 = objc_getAssociatedObject(self, sel_px_shouldPreventAnimations);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)_pxswizzled_presentViewController:()PXSettingsSearch animated:completion:
{
  v8 = a5;
  v9 = a3;
  [self _pxswizzled_presentViewController:v9 animated:a4 & ~objc_msgSend(self completion:{"px_shouldPreventAnimations"), v8}];
}

- (void)_pxswizzled_pushViewController:()PXSettingsSearch animated:
{
  v6 = a3;
  [self _pxswizzled_pushViewController:v6 animated:{a4 & ~objc_msgSend(self, "px_shouldPreventAnimations")}];
}

- (void)px_performWithoutAnimations:()PXSettingsSearch completionHandler:
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__PTUISettingsController_PXSettingsSearch__px_performWithoutAnimations_completionHandler___block_invoke;
  block[3] = &unk_1E774C648;
  block[4] = self;
  v6 = px_performWithoutAnimations_completionHandler__onceToken;
  v7 = a4;
  v8 = a3;
  if (v6 != -1)
  {
    dispatch_once(&px_performWithoutAnimations_completionHandler__onceToken, block);
  }

  px_shouldPreventAnimations = [self px_shouldPreventAnimations];
  [self px_setShouldPreventAnimations:1];
  v8[2](v8);

  [self px_setShouldPreventAnimations:px_shouldPreventAnimations];
  v7[2](v7);
}

@end