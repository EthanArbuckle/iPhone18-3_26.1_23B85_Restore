@interface PUCleanupCompositionAction
- (PUCleanupCompositionAction)initWithCompositionController:(id)a3 sourceComposition:(id)a4 previousBrushHistory:(id)a5;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PUCleanupCompositionAction

- (void)performRedo:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PUCleanupCompositionAction_performRedo___block_invoke;
  v7[3] = &unk_1E7B7F938;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PUCleanupCompositionAction;
  v5 = v4;
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

- (void)performUndo:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__PUCleanupCompositionAction_performUndo___block_invoke;
  v7[3] = &unk_1E7B7F938;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PUCleanupCompositionAction;
  v5 = v4;
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

- (PUCleanupCompositionAction)initWithCompositionController:(id)a3 sourceComposition:(id)a4 previousBrushHistory:(id)a5
{
  v12.receiver = self;
  v12.super_class = PUCleanupCompositionAction;
  v7 = a5;
  v8 = a3;
  v9 = [(PXEditAppliedCompositionAction *)&v12 initWithCompositionController:v8 sourceComposition:a4];
  [(PUCleanupCompositionAction *)v9 setBeforeBrushHistory:v7, v12.receiver, v12.super_class];

  v10 = [v8 brushStrokeHistory];

  [(PUCleanupCompositionAction *)v9 setAfterBrushHistory:v10];
  return v9;
}

@end