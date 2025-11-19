@interface PXEditAdjustmentAction
+ (id)muteToggleActionWithCompositionController:(id)a3 isLoopingVideo:(BOOL)a4;
- (PXEditAdjustmentAction)init;
- (PXEditAdjustmentAction)initWithCompositionController:(id)a3 adjustmentKey:(id)a4 targetValue:(id)a5;
- (void)performAction:(id)a3;
@end

@implementation PXEditAdjustmentAction

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXEditCompositionAction *)self compositionController];
  v6 = [v5 composition];
  sourceComposition = self->_sourceComposition;
  self->_sourceComposition = v6;

  adjustmentKey = self->_adjustmentKey;
  if (self->_targetValue)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PXEditAdjustmentAction_performAction___block_invoke;
    v11[3] = &unk_1E77371F8;
    v11[4] = self;
    [v5 modifyAdjustmentWithKey:adjustmentKey modificationBlock:v11];
  }

  else
  {
    [v5 removeAdjustmentWithKey:adjustmentKey];
  }

  v9 = [v5 composition];
  targetComposition = self->_targetComposition;
  self->_targetComposition = v9;

  v4[2](v4, 1, 0);
}

void __40__PXEditAdjustmentAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = a2;
  [v3 setEnabled:{objc_msgSend(v2, "BOOLValue")}];
}

- (PXEditAdjustmentAction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXEditAdjustmentAction.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXEditAdjustmentAction init]"}];

  abort();
}

- (PXEditAdjustmentAction)initWithCompositionController:(id)a3 adjustmentKey:(id)a4 targetValue:(id)a5
{
  v8 = a4;
  v9 = a5;
  v14.receiver = self;
  v14.super_class = PXEditAdjustmentAction;
  v10 = [(PXEditCompositionAction *)&v14 initWithCompositionController:a3];
  if (v10)
  {
    v11 = [v8 copy];
    adjustmentKey = v10->_adjustmentKey;
    v10->_adjustmentKey = v11;

    objc_storeStrong(&v10->_targetValue, a5);
  }

  return v10;
}

+ (id)muteToggleActionWithCompositionController:(id)a3 isLoopingVideo:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 adjustmentConstants];
  v8 = [v7 PIMuteAdjustmentKey];

  v9 = [v6 adjustmentControllerForKey:v8];
  v10 = v9;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_6;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v9, "enabled")}];
  v12 = v11;
  if (!v11 || [v11 BOOLValue])
  {
LABEL_6:
    v14 = [v12 BOOLValue];
    v13 = MEMORY[0x1E695E110];
    if (v14)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v15 = MEMORY[0x1E695E118];
  if (v4)
  {
    v15 = v13;
  }

  v13 = v15;
LABEL_10:
  v16 = [[a1 alloc] initWithCompositionController:v6 adjustmentKey:v8 targetValue:v13];
  if ([v13 BOOLValue])
  {
    v17 = @"PXLivePhotoMuteAction";
  }

  else
  {
    v17 = @"PXLivePhotoUnmuteAction";
  }

  [v16 setActionNameLocalizationKey:v17];

  return v16;
}

@end