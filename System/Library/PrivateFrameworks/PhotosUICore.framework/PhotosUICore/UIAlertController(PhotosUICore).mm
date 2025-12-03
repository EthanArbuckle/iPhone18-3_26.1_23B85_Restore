@interface UIAlertController(PhotosUICore)
+ (void)px_showDebugAlertInKeyWindowWithMessage:()PhotosUICore;
- (uint64_t)px_shouldForceAlertStyle;
- (void)setPx_shouldForceAlertStyle:()PhotosUICore;
@end

@implementation UIAlertController(PhotosUICore)

- (uint64_t)px_shouldForceAlertStyle
{
  v1 = objc_getAssociatedObject(self, PXShouldForceAlertStyleKey);
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

- (void)setPx_shouldForceAlertStyle:()PhotosUICore
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(self, PXShouldForceAlertStyleKey, v2, 1);
}

+ (void)px_showDebugAlertInKeyWindowWithMessage:()PhotosUICore
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC650] alertControllerWithTitle:@"Debug UI" message:v3 preferredStyle:1];
  objc_initWeak(&location, v4);
  v5 = MEMORY[0x1E69DC648];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __75__UIAlertController_PhotosUICore__px_showDebugAlertInKeyWindowWithMessage___block_invoke;
  v13 = &unk_1E773D838;
  objc_copyWeak(&v14, &location);
  v6 = [v5 actionWithTitle:@"OK" style:0 handler:&v10];
  [v4 addAction:{v6, v10, v11, v12, v13}];

  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  px_firstKeyWindow = [mEMORY[0x1E69DC668] px_firstKeyWindow];
  rootViewController = [px_firstKeyWindow rootViewController];
  [rootViewController presentViewController:v4 animated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end