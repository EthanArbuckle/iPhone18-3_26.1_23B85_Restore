@interface PUCleanupCompositionAction
- (PUCleanupCompositionAction)initWithCompositionController:(id)controller sourceComposition:(id)composition previousBrushHistory:(id)history;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PUCleanupCompositionAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PUCleanupCompositionAction_performRedo___block_invoke;
  v7[3] = &unk_1E7B7F938;
  v7[4] = self;
  v8 = redoCopy;
  v6.receiver = self;
  v6.super_class = PUCleanupCompositionAction;
  v5 = redoCopy;
  [(PXEditCompositionAction *)&v6 performRedo:v7];
}

void __42__PUCleanupCompositionAction_performRedo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) afterBrushHistory];
  v6 = [*(a1 + 32) compositionController];
  [v6 setBrushStrokeHistory:v5];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PUCleanupCompositionAction_performUndo___block_invoke;
  v7[3] = &unk_1E7B7F938;
  v7[4] = self;
  v8 = undoCopy;
  v6.receiver = self;
  v6.super_class = PUCleanupCompositionAction;
  v5 = undoCopy;
  [(PXEditCompositionAction *)&v6 performUndo:v7];
}

void __42__PUCleanupCompositionAction_performUndo___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [*(a1 + 32) beforeBrushHistory];
  v6 = [*(a1 + 32) compositionController];
  [v6 setBrushStrokeHistory:v5];

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

- (PUCleanupCompositionAction)initWithCompositionController:(id)controller sourceComposition:(id)composition previousBrushHistory:(id)history
{
  v12.receiver = self;
  v12.super_class = PUCleanupCompositionAction;
  historyCopy = history;
  controllerCopy = controller;
  v9 = [(PXEditAppliedCompositionAction *)&v12 initWithCompositionController:controllerCopy sourceComposition:composition];
  [(PUCleanupCompositionAction *)v9 setBeforeBrushHistory:historyCopy, v12.receiver, v12.super_class];

  brushStrokeHistory = [controllerCopy brushStrokeHistory];

  [(PUCleanupCompositionAction *)v9 setAfterBrushHistory:brushStrokeHistory];
  return v9;
}

@end