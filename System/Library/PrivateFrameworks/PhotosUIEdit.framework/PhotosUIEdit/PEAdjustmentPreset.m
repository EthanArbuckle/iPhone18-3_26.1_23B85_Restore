@interface PEAdjustmentPreset
+ (void)sanitizeCompositionController:(id)a3;
- (BOOL)_isCinematicEditSource:(id)a3;
- (BOOL)_isSpatialAudioEditSource:(id)a3;
- (NUComposition)composition;
- (PEAdjustmentPreset)initWithCompositionController:(id)a3 asset:(id)a4 additionalSerializationEntries:(id)a5 includeSidecar:(BOOL)a6;
- (PEAdjustmentPreset)initWithPropertyListDictionary:(id)a3;
- (id)_serializeCompositionController:(id)a3 includeSidecar:(BOOL)a4;
- (id)analyticsPayload;
- (int64_t)autoType;
- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 completion:(id)a6;
- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 invalidAdjustmentKeys:(id)a6 completion:(id)a7;
- (void)applyToLoadResult:(id)a3 completion:(id)a4;
@end

@implementation PEAdjustmentPreset

- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 invalidAdjustmentKeys:(id)a6 completion:(id)a7
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a7;
  v13 = [(PEAdjustmentPreset *)self composition];
  if (v13)
  {
    v14 = [v10 mediaType];
    v15 = [v10 source];
    v16 = [v10 imageOrientation];
    v17 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v13];
    [v17 setSource:v15 mediaType:v14];
    [v17 setImageOrientation:v16];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v17 removeAdjustmentWithKey:*(*(&v25 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v20);
    }

    [v10 applyChangesFromCompositionController:v17];
    v23 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 0;
      _os_log_impl(&dword_25E6E9000, v23, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPreset applied edits to compositionController", v24, 2u);
    }

    v12[2](v12, 1);
  }

  else
  {
    v12[2](v12, 0);
  }
}

- (void)applyToCompositionController:(id)a3 asset:(id)a4 editSource:(id)a5 completion:(id)a6
{
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v20 adjustmentConstants];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(PEAdjustmentPreset *)self _isCinematicEditSource:v11])
  {
    v15 = [v13 PIPortraitVideoAdjustmentKey];
    [v14 addObject:v15];
  }

  if (([v10 mediaSubtypes] & 0x10) == 0)
  {
    v16 = [v13 PIDepthAdjustmentKey];
    [v14 addObject:v16];
  }

  if (![(PEAdjustmentPreset *)self _isSpatialAudioEditSource:v11])
  {
    [v14 addObject:*MEMORY[0x277D3A9E0]];
  }

  if (!+[PESupport assetCanRenderStyles:](PESupport, "assetCanRenderStyles:", v10) || (v17 = MEMORY[0x277D3A970], [v20 composition], v18 = objc_claimAutoreleasedReturnValue(), LOBYTE(v17) = objc_msgSend(v17, "canRenderStylesOnComposition:", v18), v18, (v17 & 1) == 0))
  {
    v19 = [v13 PISemanticStyleAdjustmentKey];
    [v14 addObject:v19];
  }

  [(PEAdjustmentPreset *)self applyToCompositionController:v20 asset:v10 editSource:v11 invalidAdjustmentKeys:v14 completion:v12];
}

- (void)applyToLoadResult:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [v7 compositionController];
  v8 = [v7 asset];
  v9 = [v7 editSource];

  [(PEAdjustmentPreset *)self applyToCompositionController:v10 asset:v8 editSource:v9 completion:v6];
}

- (BOOL)_isSpatialAudioEditSource:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CE63D8];
    v5 = [v3 videoURL];
    v6 = [v4 assetWithURL:v5];

    LOBYTE(v5) = [MEMORY[0x277D2D048] assetIsCinematicAudio:v6];
    if (v5)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_isCinematicEditSource:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CE63D8];
    v5 = [v3 videoURL];
    v6 = [v4 assetWithURL:v5];

    if ([MEMORY[0x277D3A860] assetIsCinematicVideo:v6])
    {
      v7 = [MEMORY[0x277D3A860] currentSystemCanRenderAsset:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_serializeCompositionController:(id)a3 includeSidecar:(BOOL)a4
{
  v4 = a4;
  v38 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v33 = [MEMORY[0x277CCA890] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PEEditAction.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  v8 = [v7 composition];
  v9 = [v8 contents];

  if (!v9)
  {
    v15 = 0;
    goto LABEL_23;
  }

  v10 = [v7 smartToneAdjustmentController];
  if ([v10 isAuto])
  {
    [v10 inputLight];
    v12 = v11;
    [v10 inputLightDefault];
    if (vabdd_f64(v12, v13) > 0.001)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }
  }

  else
  {
    v14 = 0;
  }

  [objc_opt_class() sanitizeCompositionController:v7];
  v16 = MEMORY[0x277D3A898];
  v17 = [v7 composition];
  v35 = 0;
  v18 = [v16 adjustmentInformationForComposition:v17 skipMetadata:1 error:&v35];
  v19 = v35;

  if (!v18)
  {
    v20 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v19;
      _os_log_impl(&dword_25E6E9000, v20, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to serialize preset with error: %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  v20 = [MEMORY[0x277CBEB38] dictionary];
  v21 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9B8]];
  [v20 setObject:v21 forKey:@"PEAdjustmentPresetCompositionKey"];

  v22 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9C0]];
  [v20 setObject:v22 forKey:@"PEAdjustmentPresetFormatIdentifierKey"];

  v23 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9C8]];
  [v20 setObject:v23 forKey:@"PEAdjustmentPresetFormatVersionKey"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  [v20 setObject:v24 forKey:@"PEAdjustmentPresetAutoKey"];

  if (!v4)
  {
    goto LABEL_15;
  }

  v25 = [v7 source];

  if (!v25)
  {
    goto LABEL_15;
  }

  v26 = objc_alloc(MEMORY[0x277D3A8A8]);
  v27 = [v7 composition];
  v28 = [v26 initWithComposition:v27];

  v34 = 0;
  v29 = [v28 serialize:&v34];
  v30 = v34;
  if (!v29)
  {
    v31 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v30;
      _os_log_impl(&dword_25E6E9000, v31, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to serialize sidecar data, error: %@", buf, 0xCu);
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  [v20 setObject:v29 forKeyedSubscript:@"PEAdjustmentPresetSidecarDataKey"];

LABEL_15:
  v20 = v20;
  v15 = v20;
LABEL_22:

LABEL_23:

  return v15;
}

- (int64_t)autoType
{
  v2 = [(PEAdjustmentPreset *)self serializedDictionary];
  v3 = [v2 objectForKeyedSubscript:@"PEAdjustmentPresetAutoKey"];

  v4 = [v3 integerValue];
  return v4;
}

- (NUComposition)composition
{
  v25 = *MEMORY[0x277D85DE8];
  composition = self->_composition;
  if (composition)
  {
    goto LABEL_2;
  }

  v5 = [(PEAdjustmentPreset *)self serializedDictionary];
  v6 = [v5 objectForKeyedSubscript:@"PEAdjustmentPresetCompositionKey"];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 objectForKeyedSubscript:@"PEAdjustmentPresetSidecarDataKey"];
    if (v8)
    {
      v22 = 0;
      v9 = [MEMORY[0x277D3A8A8] loadFromDictionary:v8 error:&v22];
      v10 = v22;
      v11 = v10;
      if (!v9)
      {
        v19 = PLPhotoEditGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v11;
          _os_log_impl(&dword_25E6E9000, v19, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to load composition sidecar data, error: %@", buf, 0xCu);
        }

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v9 = 0;
    }

    v12 = MEMORY[0x277D3A898];
    v13 = [v5 objectForKeyedSubscript:@"PEAdjustmentPresetFormatIdentifierKey"];
    v14 = [v5 objectForKeyedSubscript:@"PEAdjustmentPresetFormatVersionKey"];
    v21 = 0;
    v15 = [v12 deserializeCompositionFromData:v7 formatIdentifier:v13 formatVersion:v14 sidecarData:v9 error:&v21];
    v16 = v21;
    v17 = self->_composition;
    self->_composition = v15;

    if (self->_composition)
    {

      composition = self->_composition;
LABEL_2:
      v3 = composition;
      goto LABEL_18;
    }

    v18 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_25E6E9000, v18, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to find composition with error: %@", buf, 0xCu);
    }

    goto LABEL_16;
  }

LABEL_17:

  v3 = 0;
LABEL_18:

  return v3;
}

- (PEAdjustmentPreset)initWithCompositionController:(id)a3 asset:(id)a4 additionalSerializationEntries:(id)a5 includeSidecar:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  v12 = [a3 copy];
  v13 = MEMORY[0x277CBEB38];
  v14 = [(PEAdjustmentPreset *)self _serializeCompositionController:v12 includeSidecar:v6];
  v15 = [v13 dictionaryWithDictionary:v14];

  if (v10)
  {
    v16 = [v10 uuid];
    [v15 setObject:v16 forKeyedSubscript:@"PEAdjustmentPresetSourceAssetUUIDKey"];
  }

  [v15 addEntriesFromDictionary:v11];
  v17 = [v15 copy];
  v18 = [(PEAdjustmentPreset *)self initWithPropertyListDictionary:v17];

  if (v18)
  {
    v19 = v18;
  }

  return v18;
}

- (PEAdjustmentPreset)initWithPropertyListDictionary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = PEAdjustmentPreset;
  v6 = [(PEAdjustmentPreset *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedDictionary, a3);
    v8 = v7;
  }

  return v7;
}

+ (void)sanitizeCompositionController:(id)a3
{
  v3 = a3;
  v4 = [v3 depthAdjustmentController];
  v5 = v4;
  if (v4)
  {
    [v4 aperture];
    if (v6 == 0.0)
    {
      v7 = [v5 depthInfo];
      v8 = [v7 objectForKey:*MEMORY[0x277D3AA28]];

      if (v8)
      {
        v9 = *MEMORY[0x277D3AA20];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke;
        v16[3] = &unk_279A30968;
        v17 = v8;
        [v3 modifyAdjustmentWithKey:v9 modificationBlock:v16];
      }
    }

    v10 = [v5 focusRect];

    if (!v10)
    {
      v11 = [v5 depthInfo];
      v12 = [v11 objectForKey:*MEMORY[0x277D3AA30]];

      if (v12)
      {
        v13 = *MEMORY[0x277D3AA20];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke_2;
        v14[3] = &unk_279A30968;
        v15 = v12;
        [v3 modifyAdjustmentWithKey:v13 modificationBlock:v14];
      }
    }
  }
}

void __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v2 floatValue];
  [v4 setAperture:v3];
}

void __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 copy];
  [v3 setFocusRect:v4];
}

- (id)analyticsPayload
{
  v2 = [(PEAdjustmentPreset *)self composition];
  v3 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:v2];
  v4 = [PEAnalyticsUtility analyticPayloadForCompositionController:v3];

  return v4;
}

@end