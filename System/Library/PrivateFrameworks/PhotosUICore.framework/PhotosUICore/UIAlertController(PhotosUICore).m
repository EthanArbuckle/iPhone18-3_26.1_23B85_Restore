@interface UIAlertController(PhotosUICore)
+ (void)px_showDebugAlertInKeyWindowWithMessage:()PhotosUICore;
- (uint64_t)px_shouldForceAlertStyle;
- (void)setPx_shouldForceAlertStyle:()PhotosUICore;
@end

@implementation UIAlertController(PhotosUICore)

- (uint64_t)px_shouldForceAlertStyle
{
  v1 = objc_getAssociatedObject(a1, PXShouldForceAlertStyleKey);
  v2 = [v1 BOOLValue];

  return v2;
}

- (void)setPx_shouldForceAlertStyle:()PhotosUICore
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:?];
  objc_setAssociatedObject(a1, PXShouldForceAlertStyleKey, v2, 1);
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

  v7 = [MEMORY[0x1E69DC668] sharedApplication];
  v8 = [v7 px_firstKeyWindow];
  v9 = [v8 rootViewController];
  [v9 presentViewController:v4 animated:1 completion:0];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

@end