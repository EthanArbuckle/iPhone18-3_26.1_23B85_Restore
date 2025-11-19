@interface PXRecoverAssetsAction
- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4;
@end

@implementation PXRecoverAssetsAction

- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(PXAssetsAction *)self assets];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PXRecoverAssetsAction_executeWithUndoManager_completionHandler___block_invoke;
  v8[3] = &unk_1E774C648;
  v9 = v6;
  v7 = v6;
  [(PXPhotosAction *)self performChanges:v8 completionHandler:v5];
}

@end