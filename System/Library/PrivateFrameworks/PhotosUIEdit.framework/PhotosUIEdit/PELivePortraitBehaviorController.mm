@interface PELivePortraitBehaviorController
- (BOOL)hasLivePortrait;
- (PELivePortraitBehaviorController)initWithAsset:(id)a3 delegate:(id)a4 hasDepth:(BOOL)a5 hasLive:(BOOL)a6;
- (PELivePortraitBehaviorDelegate)delegate;
- (id)confirmationWarningStringForAction:(unint64_t)a3 compositionController:(id)a4;
- (void)applySideEffectsForAction:(unint64_t)a3 compositionController:(id)a4;
@end

@implementation PELivePortraitBehaviorController

- (PELivePortraitBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)hasLivePortrait
{
  v3 = [(PELivePortraitBehaviorController *)self hasDepth];
  if (v3)
  {

    LOBYTE(v3) = [(PELivePortraitBehaviorController *)self hasLive];
  }

  return v3;
}

- (id)confirmationWarningStringForAction:(unint64_t)a3 compositionController:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [v6 copy];
  [(PELivePortraitBehaviorController *)self applySideEffectsForAction:a3 compositionController:v7];
  v8 = [v6 composition];

  v9 = [v7 differingAdjustmentsWithComposition:v8];

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

- (void)applySideEffectsForAction:(unint64_t)a3 compositionController:(id)a4
{
  v6 = a4;
  v7 = [(PELivePortraitBehaviorController *)self delegate];
  if (v7)
  {
    v8 = [v6 depthAdjustmentController];
    v37 = v8;
    if (v8)
    {
      v31 = [v8 enabled];
    }

    else
    {
      v31 = 0;
    }

    v9 = [v6 livePhotoKeyFrameAdjustmentController];
    v10 = [v6 autoLoopAdjustmentController];
    v36 = v10;
    if (v10)
    {
      v11 = [v10 flavor];
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

    v16 = [v7 isLivePhotoVideoEnabled];
    v17 = [v6 portraitAdjustmentController];
    v18 = [v17 enabled];
    v35 = v17;
    if (v18)
    {
      v19 = [v17 kind];
      v20 = [MEMORY[0x277D3A938] isPortraitStageEffect:v19];
    }

    else
    {
      v20 = 0;
    }

    v34 = [v6 inpaintAdjustmentController];
    v32 = [v34 operationCount];
    v33 = [v6 retouchAdjustmentController];
    v21 = [v33 retouchStrokeCount];
    v22 = v21;
    if (a3 <= 3)
    {
      if (a3 - 2 < 2)
      {
        goto LABEL_27;
      }

      if (!a3)
      {
        v23 = v30;
        if (!v9)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }

      if (a3 == 1)
      {
        if ((v16 & v18) == 1)
        {
          v23 = [(PELivePortraitBehaviorController *)self changingPortraitLightingDisablesLive]| v20;
          if (!v9)
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
          v26 = [v6 trimAdjustmentController];
          if (v26)
          {
            memset(&v40, 0, sizeof(v40));
            v27 = [(PELivePortraitBehaviorController *)self delegate];
            v28 = v27;
            if (v27)
            {
              [v27 unadjustedStillImageTime];
            }

            else
            {
              memset(&v40, 0, sizeof(v40));
            }

            [v26 startTime];
            time1 = v40;
            if (CMTimeCompare(&time1, &time2) < 0 || ([v26 endTime], time1 = v40, CMTimeCompare(&time1, &time2) >= 1))
            {
              [v6 removeAdjustmentWithKey:*MEMORY[0x277D3ABD0]];
            }
          }

          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AA78]];
          v29 = (v32 | v22) != 0;

          if (!v15)
          {
LABEL_47:
            if (v23)
            {
              [v7 setLivePhotoVideoEnabled:0];
            }

            if (!v29)
            {
              goto LABEL_51;
            }

LABEL_50:
            [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AA68]];
            [v6 removeAdjustmentWithKey:@"inpaintMasks"];
            [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AAC0]];
            goto LABEL_51;
          }

LABEL_46:
          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3A9D0]];
          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AAC0]];
          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AAB8]];
          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AA60]];
          goto LABEL_47;
        }

LABEL_27:
        v23 = 0;
        if (!v9)
        {
          goto LABEL_39;
        }

        goto LABEL_28;
      }

LABEL_51:

      goto LABEL_52;
    }

    if (a3 - 5 >= 2)
    {
      if (a3 != 4)
      {
        goto LABEL_51;
      }

      if ((v18 & 1) == 0)
      {
        if (!(v32 | v21))
        {
          goto LABEL_51;
        }

        goto LABEL_50;
      }

      v24 = (v32 | v21) != 0;
      if (([(PELivePortraitBehaviorController *)self changingPortraitLightingDisablesLive]| v20))
      {
        goto LABEL_36;
      }
    }

    else
    {
      v24 = (v32 | v21) != 0;
      if (v31)
      {
        [v6 modifyAdjustmentWithKey:*MEMORY[0x277D3AA20] modificationBlock:&__block_literal_global_1807];
        v25 = [v6 portraitAdjustmentController];

        if (v25)
        {
          [v6 modifyAdjustmentWithKey:*MEMORY[0x277D3AA90] modificationBlock:&__block_literal_global_35];
          if ((v18 & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_36:
          [v6 removeAdjustmentWithKey:*MEMORY[0x277D3AA90]];
          if (!v24)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }
      }

      if (v18)
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

- (PELivePortraitBehaviorController)initWithAsset:(id)a3 delegate:(id)a4 hasDepth:(BOOL)a5 hasLive:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = PELivePortraitBehaviorController;
  v13 = [(PELivePortraitBehaviorController *)&v17 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_asset, a3);
    objc_storeWeak(&v14->_delegate, v12);
    v14->_hasDepth = a5;
    v14->_hasLive = a6;
    v15 = v14;
  }

  return v14;
}

@end