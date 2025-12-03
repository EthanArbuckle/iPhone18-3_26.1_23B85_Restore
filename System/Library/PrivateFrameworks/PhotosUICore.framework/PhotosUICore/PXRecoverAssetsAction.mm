@interface PXRecoverAssetsAction
- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler;
@end

@implementation PXRecoverAssetsAction

- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler
{
  handlerCopy = handler;
  assets = [(PXAssetsAction *)self assets];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXRecoverAssetsAction_executeWithUndoManager_completionHandler___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = assets;
  v7 = assets;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:handlerCopy];
}

@end