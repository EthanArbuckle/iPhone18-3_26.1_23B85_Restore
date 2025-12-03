@interface PERevertPreset
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PERevertPreset

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  v39 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  completionCopy = completion;
  contentEditingInput = [resultCopy contentEditingInput];
  if (contentEditingInput)
  {
    v36 = 0;
    v8 = [PESerializationUtility editSourceForContentEditingInput:contentEditingInput useEmbeddedPreview:0 error:&v36];
    v9 = v36;
    if (v8)
    {
      compositionController = [resultCopy compositionController];
      v35 = 0;
      v11 = [PESerializationUtility compositionControllerForContentEditingInput:contentEditingInput asShot:1 source:v8 error:&v35];
      v12 = v35;
      v13 = v12;
      if (v11)
      {
        v32 = v12;
        v33 = v9;
        adjustedSourceCompositionController = [resultCopy adjustedSourceCompositionController];
        v15 = adjustedSourceCompositionController;
        if (adjustedSourceCompositionController)
        {
          v16 = adjustedSourceCompositionController;
        }

        else
        {
          v16 = compositionController;
        }

        v34 = v16;

        imageURL = [resultCopy imageURL];
        if (imageURL)
        {
          v18 = objc_alloc(MEMORY[0x277D3B458]);
          imageURL2 = [resultCopy imageURL];
          v20 = [v18 initWithMediaURL:imageURL2 timeZoneLookup:0];
        }

        else
        {
          v20 = 0;
        }

        livePhoto = [contentEditingInput livePhoto];
        v25 = [PESupport repairedAsShotCompositionController:v11 forCurrentCompositionController:v34 isLivePhoto:livePhoto != 0 metadata:v20];

        [compositionController applyChangesFromCompositionController:v25];
        if (([MEMORY[0x277D3AC20] isIdentityCompositionController:compositionController] & 1) != 0 || (objc_msgSend(compositionController, "slomoAdjustmentController"), (v27 = objc_claimAutoreleasedReturnValue()) != 0) && (v28 = v27, objc_msgSend(compositionController, "slomoAdjustmentController"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "rate"), v31 = v30, v29, v28, v31 != 1.0))
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        completionCopy[2](completionCopy, v26);

        v13 = v32;
        v9 = v33;
      }

      else
      {
        v23 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v13;
          _os_log_impl(&dword_25E6E9000, v23, OS_LOG_TYPE_ERROR, "PERevertPreset failed to deserialize the as-shot adjustment data: %@", buf, 0xCu);
        }

        completionCopy[2](completionCopy, 0);
      }
    }

    else
    {
      v22 = PLPhotoEditGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&dword_25E6E9000, v22, OS_LOG_TYPE_ERROR, "PERevertPreset could not retrieve edit source from the contentEditingInput: %@", buf, 0xCu);
      }

      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    v21 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_25E6E9000, v21, OS_LOG_TYPE_ERROR, "PERevertPreset failed to find contentEditingInput", buf, 2u);
    }

    completionCopy[2](completionCopy, 0);
  }
}

@end