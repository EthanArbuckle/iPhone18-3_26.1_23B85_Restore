@interface PERevertPreset
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
@end

@implementation PERevertPreset

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 contentEditingInput];
  if (v7)
  {
    v36 = 0;
    v8 = [PESerializationUtility editSourceForContentEditingInput:v7 useEmbeddedPreview:0 error:&v36];
    v9 = v36;
    if (v8)
    {
      v10 = [v5 compositionController];
      v35 = 0;
      v11 = [PESerializationUtility compositionControllerForContentEditingInput:v7 asShot:1 source:v8 error:&v35];
      v12 = v35;
      v13 = v12;
      if (v11)
      {
        v32 = v12;
        v33 = v9;
        v14 = [v5 adjustedSourceCompositionController];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v10;
        }

        v34 = v16;

        v17 = [v5 imageURL];
        if (v17)
        {
          v18 = objc_alloc(MEMORY[0x277D3B458]);
          v19 = [v5 imageURL];
          v20 = [v18 initWithMediaURL:v19 timeZoneLookup:0];
        }

        else
        {
          v20 = 0;
        }

        v24 = [v7 livePhoto];
        v25 = [PESupport repairedAsShotCompositionController:v11 forCurrentCompositionController:v34 isLivePhoto:v24 != 0 metadata:v20];

        [v10 applyChangesFromCompositionController:v25];
        if (([MEMORY[0x277D3AC20] isIdentityCompositionController:v10] & 1) != 0 || (objc_msgSend(v10, "slomoAdjustmentController"), (v27 = objc_claimAutoreleasedReturnValue()) != 0) && (v28 = v27, objc_msgSend(v10, "slomoAdjustmentController"), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "rate"), v31 = v30, v29, v28, v31 != 1.0))
        {
          v26 = 2;
        }

        else
        {
          v26 = 1;
        }

        v6[2](v6, v26);

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

        v6[2](v6, 0);
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

      v6[2](v6, 0);
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

    v6[2](v6, 0);
  }
}

@end