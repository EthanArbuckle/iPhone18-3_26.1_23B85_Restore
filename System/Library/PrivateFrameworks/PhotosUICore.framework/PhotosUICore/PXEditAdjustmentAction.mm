@interface PXEditAdjustmentAction
+ (id)muteToggleActionWithCompositionController:(id)controller isLoopingVideo:(BOOL)video;
- (PXEditAdjustmentAction)init;
- (PXEditAdjustmentAction)initWithCompositionController:(id)controller adjustmentKey:(id)key targetValue:(id)value;
- (void)performAction:(id)action;
@end

@implementation PXEditAdjustmentAction

- (void)performAction:(id)action
{
  actionCopy = action;
  compositionController = [(PXEditCompositionAction *)self compositionController];
  composition = [compositionController composition];
  sourceComposition = self->_sourceComposition;
  self->_sourceComposition = composition;

  adjustmentKey = self->_adjustmentKey;
  if (self->_targetValue)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __40__PXEditAdjustmentAction_performAction___block_invoke;
    v11[3] = &unk_1E77371F8;
    v11[4] = self;
    [compositionController modifyAdjustmentWithKey:adjustmentKey modificationBlock:v11];
  }

  else
  {
    [compositionController removeAdjustmentWithKey:adjustmentKey];
  }

  composition2 = [compositionController composition];
  targetComposition = self->_targetComposition;
  self->_targetComposition = composition2;

  actionCopy[2](actionCopy, 1, 0);
}

void __40__PXEditAdjustmentAction_performAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 104);
  v3 = a2;
  [v3 setEnabled:{objc_msgSend(v2, "BOOLValue")}];
}

- (PXEditAdjustmentAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditAdjustmentAction.m" lineNumber:61 description:{@"%s is not available as initializer", "-[PXEditAdjustmentAction init]"}];

  abort();
}

- (PXEditAdjustmentAction)initWithCompositionController:(id)controller adjustmentKey:(id)key targetValue:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v14.receiver = self;
  v14.super_class = PXEditAdjustmentAction;
  v10 = [(PXEditCompositionAction *)&v14 initWithCompositionController:controller];
  if (v10)
  {
    v11 = [keyCopy copy];
    adjustmentKey = v10->_adjustmentKey;
    v10->_adjustmentKey = v11;

    objc_storeStrong(&v10->_targetValue, value);
  }

  return v10;
}

+ (id)muteToggleActionWithCompositionController:(id)controller isLoopingVideo:(BOOL)video
{
  videoCopy = video;
  controllerCopy = controller;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  pIMuteAdjustmentKey = [adjustmentConstants PIMuteAdjustmentKey];

  v9 = [controllerCopy adjustmentControllerForKey:pIMuteAdjustmentKey];
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
    bOOLValue = [v12 BOOLValue];
    v13 = MEMORY[0x1E695E110];
    if (bOOLValue)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:
  v15 = MEMORY[0x1E695E118];
  if (videoCopy)
  {
    v15 = v13;
  }

  v13 = v15;
LABEL_10:
  v16 = [[self alloc] initWithCompositionController:controllerCopy adjustmentKey:pIMuteAdjustmentKey targetValue:v13];
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