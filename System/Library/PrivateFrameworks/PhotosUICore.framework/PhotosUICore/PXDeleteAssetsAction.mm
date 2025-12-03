@interface PXDeleteAssetsAction
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXDeleteAssetsAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  assets = [(PXAssetsAction *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __36__PXDeleteAssetsAction_performUndo___block_invoke;
  v7[3] = &unk_1E774C648;
  v8 = assets;
  v6 = assets;
  [(PXDestructiveAssetsAction *)self performChanges:v7 completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  assets = [(PXAssetsAction *)self assets];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PXDeleteAssetsAction_performAction___block_invoke;
  v7[3] = &unk_1E774C648;
  v8 = assets;
  v6 = assets;
  [(PXDestructiveAssetsAction *)self performChanges:v7 completionHandler:actionCopy];
}

@end