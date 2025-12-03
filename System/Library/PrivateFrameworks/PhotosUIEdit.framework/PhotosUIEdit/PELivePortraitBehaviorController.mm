@interface PELivePortraitBehaviorController
- (BOOL)hasLivePortrait;
- (PELivePortraitBehaviorController)initWithAsset:(id)asset delegate:(id)delegate hasDepth:(BOOL)depth hasLive:(BOOL)live;
- (PELivePortraitBehaviorDelegate)delegate;
- (id)confirmationWarningStringForAction:(unint64_t)action compositionController:(id)controller;
- (void)applySideEffectsForAction:(unint64_t)action compositionController:(id)controller;
@end

@implementation PELivePortraitBehaviorController

- (PELivePortraitBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasLivePortrait
{
  hasDepth = [(PELivePortraitBehaviorController *)self hasDepth];
  if (hasDepth)
  {

    LOBYTE(hasDepth) = [(PELivePortraitBehaviorController *)self hasLive];
  }

  return hasDepth;
}

- (id)confirmationWarningStringForAction:(unint64_t)action compositionController:(id)controller
{
  v14[2] = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v7 = [controllerCopy copy];
  [(PELivePortraitBehaviorController *)self applySideEffectsForAction:action compositionController:v7];
  composition = [controllerCopy composition];

  v9 = [v7 differingAdjustmentsWithComposition:composition];

  if ([v9 containsObject:*MEMORY[0x277D3AA68]])
  {
    v10 = PELocalizedString(@"PELivePortraitBehaviorControllerWarningRemovingInpaintingTitle");
    v14[0] = v10;
    v11 = PELocalizedString(@"PELivePortraitBehaviorControllerWarningRemovingInpainting");
    v14[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)applySideEffectsForAction:(unint64_t)action compositionController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PELivePortraitBehaviorController *)self delegate];
  if (delegate)
  {
    depthAdjustmentController = [controllerCopy depthAdjustmentController];
    v37 = depthAdjustmentController;
    if (depthAdjustmentController)
    {
      enabled = [depthAdjustmentController enabled];
    }

    else
    {
      enabled = 0;
    }

    livePhotoKeyFrameAdjustmentController = [controllerCopy livePhotoKeyFrameAdjustmentController];
    autoLoopAdjustmentController = [controllerCopy autoLoopAdjustmentController];
    v36 = autoLoopAdjustmentController;
    if (autoLoopAdjustmentController)
    {
      flavor = [autoLoopAdjustmentController flavor];
      v12 = PIAutoLoopFlavorFromString();

      v13 = v12 != 0;
      v14 = v12 == 3;
      v15 = v12 != 0;
      if (v14)
      {
        v13 = 0;
      }

      v30 = v13;
    }

    else
    {
      v30 = 0;
      v15 = 0;
    }

    isLivePhotoVideoEnabled = [delegate isLivePhotoVideoEnabled];
    portraitAdjustmentController = [controllerCopy portraitAdjustmentController];
    enabled2 = [portraitAdjustmentController enabled];
    v35 = portraitAdjustmentController;
    if (enabled2)
    {
      kind = [portraitAdjustmentController kind];
      v20 = [MEMORY[0x277D3A938] isPortraitStageEffect:kind];
    }

    else
    {
      v20 = 0;
    }

    inpaintAdjustmentController = [controllerCopy inpaintAdjustmentController];
    operationCount = [inpaintAdjustmentController operationCount];
    retouchAdjustmentController = [controllerCopy retouchAdjustmentController];
    retouchStrokeCount = [retouchAdjustmentController retouchStrokeCount];
    v22 = retouchStrokeCount;
    if (action <= 3)
    {
      if (action - 2 < 2)
      {
        goto LABEL_27;
      }

      if (!action)
      {
        v23 = v30;
        if (!livePhotoKeyFrameAdjustmentController)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }

      if (action == 1)
      {
        if ((isLivePhotoVideoEnabled & enabled2) == 1)
        {
          v23 = [(PELivePortraitBehaviorController *)self changingPortraitLightingDisablesLive]| v20;
          if (!livePhotoKeyFrameAdjustmentController)
          {
LABEL_39:
            v29 = 0;
            if (!v15)
            {
              goto LABEL_47;
            }

            goto LABEL_46;
          }

LABEL_28:
          trimAdjustmentController = [controllerCopy trimAdjustmentController];
          if (trimAdjustmentController)
          {
            memset(&v40, 0, sizeof(v40));
            delegate2 = [(PELivePortraitBehaviorController *)self delegate];
            v28 = delegate2;
            if (delegate2)
            {
              [delegate2 unadjustedStillImageTime];
            }

            else
            {
              memset(&v40, 0, sizeof(v40));
            }

            [trimAdjustmentController startTime];
            time1 = v40;
            if (CMTimeCompare(&time1, &time2) < 0 || ([trimAdjustmentController endTime], time1 = v40, CMTimeCompare(&time1, &time2) >= 1))
            {
              [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3ABD0]];
            }
          }

          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA78]];
          v29 = (operationCount | v22) != 0;

          if (!v15)
          {
LABEL_47:
            if (v23)
            {
              [delegate setLivePhotoVideoEnabled:0];
            }

            if (!v29)
            {
              goto LABEL_51;
            }

LABEL_50:
            [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA68]];
            [controllerCopy removeAdjustmentWithKey:@"inpaintMasks"];
            [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AAC0]];
            goto LABEL_51;
          }

LABEL_46:
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3A9D0]];
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AAC0]];
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AAB8]];
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA60]];
          goto LABEL_47;
        }

LABEL_27:
        v23 = 0;
        if (!livePhotoKeyFrameAdjustmentController)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (action - 5 >= 2)
    {
      if (action != 4)
      {
        goto LABEL_51;
      }

      if ((enabled2 & 1) == 0)
      {
        if (!(operationCount | retouchStrokeCount))
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v24 = (operationCount | retouchStrokeCount) != 0;
      if (([(PELivePortraitBehaviorController *)self changingPortraitLightingDisablesLive]| v20))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = (operationCount | retouchStrokeCount) != 0;
      if (enabled)
      {
        [controllerCopy modifyAdjustmentWithKey:*MEMORY[0x277D3AA20] modificationBlock:&__block_literal_global_1807];
        portraitAdjustmentController2 = [controllerCopy portraitAdjustmentController];

        if (portraitAdjustmentController2)
        {
          [controllerCopy modifyAdjustmentWithKey:*MEMORY[0x277D3AA90] modificationBlock:&__block_literal_global_35];
          if ((enabled2 & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_36:
          [controllerCopy removeAdjustmentWithKey:*MEMORY[0x277D3AA90]];
          if (!v24)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      if (enabled2)
      {
        goto LABEL_36;
      }
    }

LABEL_25:
    if (!v24)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  _PFAssertContinueHandler();
LABEL_52:
}

- (PELivePortraitBehaviorController)initWithAsset:(id)asset delegate:(id)delegate hasDepth:(BOOL)depth hasLive:(BOOL)live
{
  assetCopy = asset;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = PELivePortraitBehaviorController;
  v13 = [(PELivePortraitBehaviorController *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, asset);
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v14->_hasDepth = depth;
    v14->_hasLive = live;
    v15 = v14;
  }

  return v14;
}

@end