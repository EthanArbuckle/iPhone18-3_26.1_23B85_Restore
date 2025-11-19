@interface UIWindow(PXImageModulationManager)
- (PXImageModulationManager)px_imageModulationManager;
@end

@implementation UIWindow(PXImageModulationManager)

- (PXImageModulationManager)px_imageModulationManager
{
  v2 = objc_getAssociatedObject(a1, modulationManagerKey);
  v3 = [a1 rootViewController];
  if (!v2)
  {
    v4 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    v5 = [PXImageModulationManager alloc];
    v6 = [a1 screen];
    v2 = [(PXImageModulationManager *)v5 initWithRootViewController:v3 mainScreen:v6 == v4];

    objc_setAssociatedObject(a1, modulationManagerKey, v2, 1);
    objc_initWeak(&location, a1);
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *MEMORY[0x1E69DE7C8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__UIWindow_PXImageModulationManager__px_imageModulationManager__block_invoke;
    v11[3] = &unk_1E7747200;
    objc_copyWeak(&v12, &location);
    v9 = [v7 addObserverForName:v8 object:a1 queue:0 usingBlock:v11];

    objc_setAssociatedObject(a1, px_imageModulationManager_resignKeyObserverKey, v9, 1);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v2;
}

@end