@interface PUHidePhotosActionController
- (PUHidePhotosActionController)initWithAssets:(id)assets undoManager:(id)manager;
- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)handler;
- (void)performActionWithCompletionHandler:(id)handler;
@end

@implementation PUHidePhotosActionController

- (void)performActionWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  action = self->_action;
  undoManager = [(PUHidePhotosActionController *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUHidePhotosActionController_performActionWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7B7C940;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(PXHideAssetsAction *)action executeWithUndoManager:undoManager completionHandler:v8];
}

- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(PXHideAssetsAction *)self->_action isHidden])
  {
    assets = [(PUHidePhotosActionController *)self assets];
    v6 = PLSuffixForItems();
    v21 = assets;
    if ([assets count] == 1)
    {
      v7 = [@"HIDE_CONFIRMATION_MESSAGE_" stringByAppendingString:v6];
      v8 = PULocalizedString(v7);

      v9 = [@"HIDE_BUTTON_TITLE_" stringByAppendingString:v6];
      v10 = PULocalizedString(v9);
    }

    else
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HIDE_CONFIRMATION_MESSAGE_%@S", v6];
      v8 = PULocalizedString(v12);

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HIDE_BUTTON_TITLE_%@S", v6];
      v13 = PULocalizedString(v9);
      v10 = PULocalizedStringWithValidatedFormat(v13, @"%lu");
    }

    v14 = PULocalizedString(@"CANCEL");
    v11 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v8 message:0 preferredStyle:0];
    v15 = MEMORY[0x1E69DC648];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke;
    v24[3] = &unk_1E7B80980;
    v16 = handlerCopy;
    v25 = v16;
    v17 = [v15 actionWithTitle:v10 style:2 handler:v24];
    [v11 addAction:v17];

    v18 = MEMORY[0x1E69DC648];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke_2;
    v22[3] = &unk_1E7B80980;
    v23 = v16;
    v19 = [v18 actionWithTitle:v14 style:1 handler:v22];
    [v11 addAction:v19];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

uint64_t __96__PUHidePhotosActionController_alertControllerForTogglingAssetsVisibilityWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (PUHidePhotosActionController)initWithAssets:(id)assets undoManager:(id)manager
{
  assetsCopy = assets;
  managerCopy = manager;
  v9 = [objc_alloc(MEMORY[0x1E69C35E8]) initWithAssets:assetsCopy];
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = PUHidePhotosActionController;
    v10 = [(PUHidePhotosActionController *)&v14 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_action, v9);
      objc_storeStrong(p_isa + 2, assets);
      objc_storeStrong(p_isa + 3, manager);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end