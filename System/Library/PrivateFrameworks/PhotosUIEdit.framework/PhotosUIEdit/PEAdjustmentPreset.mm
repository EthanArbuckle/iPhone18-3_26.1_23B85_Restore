@interface PEAdjustmentPreset
+ (void)sanitizeCompositionController:(id)controller;
- (BOOL)_isCinematicEditSource:(id)source;
- (BOOL)_isSpatialAudioEditSource:(id)source;
- (NUComposition)composition;
- (PEAdjustmentPreset)initWithCompositionController:(id)controller asset:(id)asset additionalSerializationEntries:(id)entries includeSidecar:(BOOL)sidecar;
- (PEAdjustmentPreset)initWithPropertyListDictionary:(id)dictionary;
- (id)_serializeCompositionController:(id)controller includeSidecar:(BOOL)sidecar;
- (id)analyticsPayload;
- (int64_t)autoType;
- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source completion:(id)completion;
- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source invalidAdjustmentKeys:(id)keys completion:(id)completion;
- (void)applyToLoadResult:(id)result completion:(id)completion;
@end

@implementation PEAdjustmentPreset

- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source invalidAdjustmentKeys:(id)keys completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  keysCopy = keys;
  completionCopy = completion;
  composition = [(PEAdjustmentPreset *)self composition];
  if (composition)
  {
    mediaType = [controllerCopy mediaType];
    source = [controllerCopy source];
    imageOrientation = [controllerCopy imageOrientation];
    v17 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:composition];
    [v17 setSource:source mediaType:mediaType];
    [v17 setImageOrientation:imageOrientation];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v18 = keysCopy;
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

    [controllerCopy applyChangesFromCompositionController:v17];
    v23 = PLPhotoEditGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 0;
      _os_log_impl(&dword_25E6E9000, v23, OS_LOG_TYPE_DEFAULT, "PEAdjustmentPreset applied edits to compositionController", v24, 2u);
    }

    completionCopy[2](completionCopy, 1);
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (void)applyToCompositionController:(id)controller asset:(id)asset editSource:(id)source completion:(id)completion
{
  controllerCopy = controller;
  assetCopy = asset;
  sourceCopy = source;
  completionCopy = completion;
  adjustmentConstants = [controllerCopy adjustmentConstants];
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (![(PEAdjustmentPreset *)self _isCinematicEditSource:sourceCopy])
  {
    pIPortraitVideoAdjustmentKey = [adjustmentConstants PIPortraitVideoAdjustmentKey];
    [v14 addObject:pIPortraitVideoAdjustmentKey];
  }

  if (([assetCopy mediaSubtypes] & 0x10) == 0)
  {
    pIDepthAdjustmentKey = [adjustmentConstants PIDepthAdjustmentKey];
    [v14 addObject:pIDepthAdjustmentKey];
  }

  if (![(PEAdjustmentPreset *)self _isSpatialAudioEditSource:sourceCopy])
  {
    [v14 addObject:*MEMORY[0x277D3A9E0]];
  }

  if (!+[PESupport assetCanRenderStyles:](PESupport, "assetCanRenderStyles:", assetCopy) || (v17 = MEMORY[0x277D3A970], [controllerCopy composition], v18 = objc_claimAutoreleasedReturnValue(), LOBYTE(v17) = objc_msgSend(v17, "canRenderStylesOnComposition:", v18), v18, (v17 & 1) == 0))
  {
    pISemanticStyleAdjustmentKey = [adjustmentConstants PISemanticStyleAdjustmentKey];
    [v14 addObject:pISemanticStyleAdjustmentKey];
  }

  [(PEAdjustmentPreset *)self applyToCompositionController:controllerCopy asset:assetCopy editSource:sourceCopy invalidAdjustmentKeys:v14 completion:completionCopy];
}

- (void)applyToLoadResult:(id)result completion:(id)completion
{
  completionCopy = completion;
  resultCopy = result;
  compositionController = [resultCopy compositionController];
  asset = [resultCopy asset];
  editSource = [resultCopy editSource];

  [(PEAdjustmentPreset *)self applyToCompositionController:compositionController asset:asset editSource:editSource completion:completionCopy];
}

- (BOOL)_isSpatialAudioEditSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  v7 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CE63D8];
    videoURL = [sourceCopy videoURL];
    v6 = [v4 assetWithURL:videoURL];

    LOBYTE(videoURL) = [MEMORY[0x277D2D048] assetIsCinematicAudio:v6];
    if (videoURL)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_isCinematicEditSource:(id)source
{
  sourceCopy = source;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = MEMORY[0x277CE63D8];
    videoURL = [sourceCopy videoURL];
    v6 = [v4 assetWithURL:videoURL];

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

- (id)_serializeCompositionController:(id)controller includeSidecar:(BOOL)sidecar
{
  sidecarCopy = sidecar;
  v38 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (!controllerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PEEditAction.m" lineNumber:180 description:{@"Invalid parameter not satisfying: %@", @"compositionController"}];
  }

  composition = [controllerCopy composition];
  contents = [composition contents];

  if (!contents)
  {
    v15 = 0;
    goto LABEL_23;
  }

  smartToneAdjustmentController = [controllerCopy smartToneAdjustmentController];
  if ([smartToneAdjustmentController isAuto])
  {
    [smartToneAdjustmentController inputLight];
    v12 = v11;
    [smartToneAdjustmentController inputLightDefault];
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

  [objc_opt_class() sanitizeCompositionController:controllerCopy];
  v16 = MEMORY[0x277D3A898];
  composition2 = [controllerCopy composition];
  v35 = 0;
  v18 = [v16 adjustmentInformationForComposition:composition2 skipMetadata:1 error:&v35];
  v19 = v35;

  if (!v18)
  {
    dictionary = PLPhotoEditGetLog();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v37 = v19;
      _os_log_impl(&dword_25E6E9000, dictionary, OS_LOG_TYPE_ERROR, "PEAdjustmentPreset failed to serialize preset with error: %@", buf, 0xCu);
    }

    goto LABEL_21;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v21 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9B8]];
  [dictionary setObject:v21 forKey:@"PEAdjustmentPresetCompositionKey"];

  v22 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9C0]];
  [dictionary setObject:v22 forKey:@"PEAdjustmentPresetFormatIdentifierKey"];

  v23 = [v18 objectForKeyedSubscript:*MEMORY[0x277D3A9C8]];
  [dictionary setObject:v23 forKey:@"PEAdjustmentPresetFormatVersionKey"];

  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
  [dictionary setObject:v24 forKey:@"PEAdjustmentPresetAutoKey"];

  if (!sidecarCopy)
  {
    goto LABEL_15;
  }

  source = [controllerCopy source];

  if (!source)
  {
    goto LABEL_15;
  }

  v26 = objc_alloc(MEMORY[0x277D3A8A8]);
  composition3 = [controllerCopy composition];
  v28 = [v26 initWithComposition:composition3];

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

  [dictionary setObject:v29 forKeyedSubscript:@"PEAdjustmentPresetSidecarDataKey"];

LABEL_15:
  dictionary = dictionary;
  v15 = dictionary;
LABEL_22:

LABEL_23:

  return v15;
}

- (int64_t)autoType
{
  serializedDictionary = [(PEAdjustmentPreset *)self serializedDictionary];
  v3 = [serializedDictionary objectForKeyedSubscript:@"PEAdjustmentPresetAutoKey"];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (NUComposition)composition
{
  v25 = *MEMORY[0x277D85DE8];
  composition = self->_composition;
  if (composition)
  {
    goto LABEL_2;
  }

  serializedDictionary = [(PEAdjustmentPreset *)self serializedDictionary];
  v6 = [serializedDictionary objectForKeyedSubscript:@"PEAdjustmentPresetCompositionKey"];
  if (v6)
  {
    v7 = v6;
    v8 = [serializedDictionary objectForKeyedSubscript:@"PEAdjustmentPresetSidecarDataKey"];
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
    v13 = [serializedDictionary objectForKeyedSubscript:@"PEAdjustmentPresetFormatIdentifierKey"];
    v14 = [serializedDictionary objectForKeyedSubscript:@"PEAdjustmentPresetFormatVersionKey"];
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

- (PEAdjustmentPreset)initWithCompositionController:(id)controller asset:(id)asset additionalSerializationEntries:(id)entries includeSidecar:(BOOL)sidecar
{
  sidecarCopy = sidecar;
  assetCopy = asset;
  entriesCopy = entries;
  v12 = [controller copy];
  v13 = MEMORY[0x277CBEB38];
  v14 = [(PEAdjustmentPreset *)self _serializeCompositionController:v12 includeSidecar:sidecarCopy];
  v15 = [v13 dictionaryWithDictionary:v14];

  if (assetCopy)
  {
    uuid = [assetCopy uuid];
    [v15 setObject:uuid forKeyedSubscript:@"PEAdjustmentPresetSourceAssetUUIDKey"];
  }

  [v15 addEntriesFromDictionary:entriesCopy];
  v17 = [v15 copy];
  v18 = [(PEAdjustmentPreset *)self initWithPropertyListDictionary:v17];

  if (v18)
  {
    v19 = v18;
  }

  return v18;
}

- (PEAdjustmentPreset)initWithPropertyListDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PEAdjustmentPreset;
  v6 = [(PEAdjustmentPreset *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serializedDictionary, dictionary);
    v8 = v7;
  }

  return v7;
}

+ (void)sanitizeCompositionController:(id)controller
{
  controllerCopy = controller;
  depthAdjustmentController = [controllerCopy depthAdjustmentController];
  v5 = depthAdjustmentController;
  if (depthAdjustmentController)
  {
    [depthAdjustmentController aperture];
    if (v6 == 0.0)
    {
      depthInfo = [v5 depthInfo];
      v8 = [depthInfo objectForKey:*MEMORY[0x277D3AA28]];

      if (v8)
      {
        v9 = *MEMORY[0x277D3AA20];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke;
        v16[3] = &unk_279A30968;
        v17 = v8;
        [controllerCopy modifyAdjustmentWithKey:v9 modificationBlock:v16];
      }
    }

    focusRect = [v5 focusRect];

    if (!focusRect)
    {
      depthInfo2 = [v5 depthInfo];
      v12 = [depthInfo2 objectForKey:*MEMORY[0x277D3AA30]];

      if (v12)
      {
        v13 = *MEMORY[0x277D3AA20];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __52__PEAdjustmentPreset_sanitizeCompositionController___block_invoke_2;
        v14[3] = &unk_279A30968;
        v15 = v12;
        [controllerCopy modifyAdjustmentWithKey:v13 modificationBlock:v14];
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
  composition = [(PEAdjustmentPreset *)self composition];
  v3 = [objc_alloc(MEMORY[0x277D3A870]) initWithComposition:composition];
  v4 = [PEAnalyticsUtility analyticPayloadForCompositionController:v3];

  return v4;
}

@end