@interface PXRestoreAssetsAction
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXRestoreAssetsAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__PXRestoreAssetsAction_performUndo___block_invoke;
  v7[3] = &unk_1E774C648;
  v8 = v5;
  v6 = v5;
  [(PXDestructiveAssetsAction *)self performChanges:v7 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXAssetsAction *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PXRestoreAssetsAction_performAction___block_invoke;
  v7[3] = &unk_1E774C648;
  v8 = v5;
  v6 = v5;
  [(PXDestructiveAssetsAction *)self performChanges:v7 completionHandler:v4];
}

@end