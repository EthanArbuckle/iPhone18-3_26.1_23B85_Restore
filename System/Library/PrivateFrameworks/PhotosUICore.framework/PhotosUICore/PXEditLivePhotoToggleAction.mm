@interface PXEditLivePhotoToggleAction
- (BOOL)_isLoopingVideo;
- (PXEditLivePhotoToggleAction)initWithCompositionController:(id)controller livePhotoModel:(id)model;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXEditLivePhotoToggleAction

- (void)performRedo:(id)redo
{
  livePhotoModel = self->_livePhotoModel;
  redoCopy = redo;
  [(PXEditLivePhotoModel *)self->_livePhotoModel setVideoEnabled:[(PXEditLivePhotoModel *)livePhotoModel isVideoEnabled]^ 1];
  v6.receiver = self;
  v6.super_class = PXEditLivePhotoToggleAction;
  [(PXEditCompositionAction *)&v6 performRedo:redoCopy];
}

- (void)performUndo:(id)undo
{
  livePhotoModel = self->_livePhotoModel;
  undoCopy = undo;
  [(PXEditLivePhotoModel *)self->_livePhotoModel setVideoEnabled:[(PXEditLivePhotoModel *)livePhotoModel isVideoEnabled]^ 1];
  v6.receiver = self;
  v6.super_class = PXEditLivePhotoToggleAction;
  [(PXEditCompositionAction *)&v6 performUndo:undoCopy];
}

- (BOOL)_isLoopingVideo
{
  compositionController = [(PXEditCompositionAction *)self compositionController];
  autoLoopAdjustmentController = [compositionController autoLoopAdjustmentController];

  if (autoLoopAdjustmentController)
  {
    flavor = [autoLoopAdjustmentController flavor];
    v5 = PIAutoLoopFlavorFromString();

    v6 = (v5 - 1) < 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)performAction:(id)action
{
  actionCopy = action;
  compositionController = [(PXEditCompositionAction *)self compositionController];
  composition = [compositionController composition];
  sourceComposition = self->_sourceComposition;
  self->_sourceComposition = composition;

  isVideoEnabled = [(PXEditLivePhotoModel *)self->_livePhotoModel isVideoEnabled];
  if ([(PXEditLivePhotoToggleAction *)self _isLoopingVideo])
  {
    adjustmentConstants = [compositionController adjustmentConstants];
    pIAutoLoopAdjustmentKey = [adjustmentConstants PIAutoLoopAdjustmentKey];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__PXEditLivePhotoToggleAction_performAction___block_invoke;
    v13[3] = &__block_descriptor_33_e40_v16__0__PIAutoLoopAdjustmentController_8l;
    v14 = isVideoEnabled;
    [compositionController modifyAdjustmentWithKey:pIAutoLoopAdjustmentKey modificationBlock:v13];
  }

  composition2 = [compositionController composition];
  targetComposition = self->_targetComposition;
  self->_targetComposition = composition2;

  [(PXEditLivePhotoModel *)self->_livePhotoModel setVideoEnabled:isVideoEnabled ^ 1u];
  actionCopy[2](actionCopy, 1, 0);
}

- (PXEditLivePhotoToggleAction)initWithCompositionController:(id)controller livePhotoModel:(id)model
{
  modelCopy = model;
  v11.receiver = self;
  v11.super_class = PXEditLivePhotoToggleAction;
  v8 = [(PXEditCompositionAction *)&v11 initWithCompositionController:controller];
  if (v8)
  {
    if ([modelCopy isVideoEnabled])
    {
      v9 = @"PXLivePhotoDisableAction";
    }

    else
    {
      v9 = @"PXLivePhotoEnableAction";
    }

    [(PXEditCompositionAction *)v8 setActionNameLocalizationKey:v9];
    objc_storeStrong(&v8->_livePhotoModel, model);
  }

  return v8;
}

@end