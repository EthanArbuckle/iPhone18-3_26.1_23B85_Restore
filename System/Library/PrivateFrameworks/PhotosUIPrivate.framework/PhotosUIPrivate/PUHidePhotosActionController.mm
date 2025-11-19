@interface PUHidePhotosActionController
- (PUHidePhotosActionController)initWithAssets:(id)a3 undoManager:(id)a4;
- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)a3;
- (void)performActionWithCompletionHandler:(id)a3;
@end

@implementation PUHidePhotosActionController

- (void)performActionWithCompletionHandler:(id)a3
{
  v4 = a3;
  action = self->_action;
  v6 = [(PUHidePhotosActionController *)self undoManager];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67__PUHidePhotosActionController_performActionWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7B7C940;
  v9 = v4;
  v7 = v4;
  [(PXHideAssetsAction *)action executeWithUndoManager:v6 completionHandler:v8];
}

- (id)alertControllerForTogglingAssetsVisibilityWithCompletionHandler:(id)a3
{
  v4 = a3;
  if ([(PXHideAssetsAction *)self->_action isHidden])
  {
    v5 = [(PUHidePhotosActionController *)self assets];
    v6 = PLSuffixForItems();
    v21 = v5;
    if ([v5 count] == 1)
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
    v16 = v4;
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

- (PUHidePhotosActionController)initWithAssets:(id)a3 undoManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [objc_alloc(MEMORY[0x1E69C35E8]) initWithAssets:v7];
  if (v9)
  {
    v14.receiver = self;
    v14.super_class = PUHidePhotosActionController;
    v10 = [(PUHidePhotosActionController *)&v14 init];
    p_isa = &v10->super.isa;
    if (v10)
    {
      objc_storeStrong(&v10->_action, v9);
      objc_storeStrong(p_isa + 2, a3);
      objc_storeStrong(p_isa + 3, a4);
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end