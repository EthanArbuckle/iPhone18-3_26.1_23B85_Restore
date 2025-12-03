@interface PICompositionController
+ (Class)adjustmentControllerClassForKey:(id)key;
+ (id)_keyToIdentifierMap;
+ (id)photosSchema;
+ (id)schemaForKey:(id)key;
+ (id)settingForAdjustmentKey:(id)key settingKey:(id)settingKey;
- (BOOL)dumpComposition;
- (BOOL)isEqual:(id)equal forKeys:(id)keys comparisonBlock:(id)block;
- (BOOL)isEqual:(id)equal forKeys:(id)keys visualChangesOnly:(BOOL)only;
- (Class)_adjustmentControllerClassForKey:(id)key;
- (NUComposition)composition;
- (PIAdjustmentConstants)adjustmentConstants;
- (PICompositionController)initWithComposition:(id)composition;
- (PICompositionControllerDelegate)changeDelegate;
- (id)_adjustmentControllerForKey:(id)key creatingIfNecessary:(BOOL)necessary expectedClass:(Class)class;
- (id)adjustmentControllerForKey:(id)key;
- (id)adjustmentKeys;
- (id)autoLoopAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)availableKeys;
- (id)cinematicAudioAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)compositionKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (id)cropAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)debugDescription;
- (id)definitionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)depthAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)differingAdjustmentsWithComposition:(id)composition;
- (id)effect3DAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)effectAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)highResFusionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)inpaintAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)livePhotoKeyFrameAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)noiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)orientationAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)portraitAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)portraitVideoAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)rawAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)rawNoiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)redEyeAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)retouchAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)semanticEnhanceAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)semanticStyleAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)sharpenAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)slomoAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)smartBWAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)smartColorAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)smartToneAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)trimAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)videoCrossfadeLoopAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)videoPosterFrameAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)videoStabilizeAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)vignetteAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (id)whiteBalanceAdjustmentControllerCreatingIfNecessary:(BOOL)necessary;
- (int64_t)userOrientation;
- (void)_didAddAdjustment:(id)adjustment;
- (void)_didRemoveAdjustment:(id)adjustment;
- (void)_didUpdateAdjustment:(id)adjustment;
- (void)_didUpdateAdjustments:(id)adjustments;
- (void)addAdjustmentWithKey:(id)key;
- (void)applyChangesFromCompositionController:(id)controller;
- (void)modifyAdjustmentWithKey:(id)key modificationBlock:(id)block;
- (void)performChanges:(id)changes;
- (void)removeAdjustmentWithKey:(id)key;
- (void)replaceAdjustment:(id)adjustment withKey:(id)key;
- (void)setChangeDelegate:(id)delegate;
- (void)setSource:(id)source mediaType:(int64_t)type;
@end

@implementation PICompositionController

- (PICompositionControllerDelegate)changeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  return WeakRetained;
}

- (BOOL)dumpComposition
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = NSTemporaryDirectory();
  v5 = [v3 fileURLWithPath:v4 isDirectory:1];

  v6 = [v5 URLByAppendingPathComponent:@"PhotosComposition.plist"];
  v7 = MEMORY[0x1E69B3A18];
  composition = [(PICompositionController *)self composition];
  v30 = 0;
  v9 = [v7 dumpComposition:composition toURL:v6 error:&v30];
  v10 = v30;

  v11 = MEMORY[0x1E69B3D78];
  if (v9)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_353);
    }

    v12 = MEMORY[0x1E69B3D80];
    v13 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
    {
      v14 = v13;
      path = [v6 path];
      *buf = 138412290;
      v32 = path;
      _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, "Successfully dumped composition to %@", buf, 0xCu);
    }

    v16 = [PICompositionSidecarData alloc];
    composition2 = [(PICompositionController *)self composition];
    v18 = [(PICompositionSidecarData *)v16 initWithComposition:composition2];

    if ([(PICompositionSidecarData *)v18 isEmpty])
    {
      v19 = 0;
    }

    else
    {
      brushStrokeHistory = [(PICompositionController *)self brushStrokeHistory];
      [(PICompositionSidecarData *)v18 setBrushStrokeHistory:brushStrokeHistory];

      v22 = [v5 URLByAppendingPathComponent:@"PhotosCompositionSidecar.aar"];
      v29 = 0;
      v19 = [(PICompositionSidecarData *)v18 saveToURL:v22 error:&v29];
      v23 = v29;

      if (v19)
      {
        if (*v11 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_353);
        }

        v24 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_INFO))
        {
          v25 = v24;
          path2 = [v22 path];
          *buf = 138412290;
          v32 = path2;
          _os_log_impl(&dword_1C7694000, v25, OS_LOG_TYPE_INFO, "Successfully dumped composition sidecar data to %@", buf, 0xCu);
        }
      }

      else
      {
        if (*v11 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_353);
        }

        v27 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v32 = v23;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "Failed to dump composition sidecar data, error: %@", buf, 0xCu);
        }
      }

      v10 = v23;
    }
  }

  else
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_353);
    }

    v20 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v10;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Failed to dump composition, error: %@", buf, 0xCu);
    }

    v19 = 0;
  }

  return v19;
}

- (void)setSource:(id)source mediaType:(int64_t)type
{
  [(NUComposition *)self->_composition setObject:source forKeyedSubscript:@"source"];
  composition = self->_composition;

  [(NUComposition *)composition setMediaType:type];
}

- (Class)_adjustmentControllerClassForKey:(id)key
{
  v19 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = [objc_opt_class() adjustmentControllerClassForKey:keyCopy];
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
  v7 = WeakRetained;
  if (WeakRetained && self->_delegateFlags.hasClassForController)
  {
    v8 = [WeakRetained compositionController:self adjustmentControllerClassForKey:keyCopy];
    if (([(objc_class *)v8 isSubclassOfClass:v5]& 1) != 0)
    {
      v5 = v8;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_353);
      }

      v9 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v11 = NSStringFromClass(v8);
        v12 = NSStringFromClass(v5);
        v15 = 138412546;
        v16 = v11;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_1C7694000, v10, OS_LOG_TYPE_DEFAULT, "class %@ is not the correct type, its superclass should be %@", &v15, 0x16u);
      }
    }
  }

  v13 = v5;

  return v5;
}

- (int64_t)userOrientation
{
  v3 = [(PICompositionController *)self orientationAdjustmentControllerCreatingIfNecessary:0];
  if (v3)
  {
    imageOrientation = [(PICompositionController *)self imageOrientation];
    v5 = 1;
    if ([v3 orientation] && imageOrientation)
    {
      NUOrientationInverse();
      [v3 orientation];
      v5 = NUOrientationConcat();
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)differingAdjustmentsWithComposition:(id)composition
{
  v22 = *MEMORY[0x1E69E9840];
  compositionCopy = composition;
  availableKeys = [(PICompositionController *)self availableKeys];
  v15 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = availableKeys;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v20 = v11;
        v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
        v13 = [(PICompositionController *)self isEqual:compositionCopy forKeys:v12 visualChangesOnly:1];

        if (!v13)
        {
          [v15 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v8);
  }

  return v15;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NUComposition *)self->_composition debugDescription];
  v5 = [v3 stringWithFormat:@"PICompositionController(%p): %@", self, v4];

  return v5;
}

- (BOOL)isEqual:(id)equal forKeys:(id)keys comparisonBlock:(id)block
{
  v37 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  keysCopy = keys;
  blockCopy = block;
  v30 = self->_composition;
  _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
  if (keysCopy)
  {
    availableKeys = keysCopy;
  }

  else
  {
    availableKeys = [(PICompositionController *)self availableKeys];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = availableKeys;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v27 = keysCopy;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = [(NUComposition *)v30 objectForKeyedSubscript:v15, v27];
        v17 = [equalCopy objectForKeyedSubscript:v15];
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"enabled"];
          bOOLValue = [v18 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {

            v16 = 0;
          }
        }

        if (!v17)
        {
          goto LABEL_22;
        }

        v20 = [v17 objectForKeyedSubscript:@"enabled"];
        bOOLValue2 = [v20 BOOLValue];

        if ((bOOLValue2 & 1) == 0)
        {

LABEL_22:
          v17 = 0;
          v25 = v16 == 0;
LABEL_23:

          keysCopy = v27;
          goto LABEL_24;
        }

        if (!v16 || (v22 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{v15)), "initWithAdjustment:", v16}], objc_msgSend(_keyToIdentifierMap, "objectForKeyedSubscript:", v15), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "setIdentifier:", v23), v23, v24 = blockCopy[2](blockCopy, v15, v22, v17), v22, (v24 & 1) == 0))
        {
          v25 = 0;
          goto LABEL_23;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v25 = 1;
      keysCopy = v27;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v25 = 1;
  }

LABEL_24:

  return v25;
}

- (BOOL)isEqual:(id)equal forKeys:(id)keys visualChangesOnly:(BOOL)only
{
  onlyCopy = only;
  v62 = *MEMORY[0x1E69E9840];
  equalCopy = equal;
  keysCopy = keys;
  v9 = self->_composition;
  _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
  if (keysCopy)
  {
    availableKeys = keysCopy;
  }

  else
  {
    availableKeys = [(PICompositionController *)self availableKeys];
  }

  v47 = keysCopy;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = availableKeys;
  v56 = [v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v56)
  {
    v51 = 1;
    goto LABEL_61;
  }

  selfCopy = self;
  v51 = 1;
  v54 = equalCopy;
  v55 = *v58;
  v52 = v11;
  v53 = v9;
  do
  {
    v12 = 0;
    do
    {
      if (*v58 != v55)
      {
        objc_enumerationMutation(v11);
      }

      v13 = *(*(&v57 + 1) + 8 * v12);
      v14 = [(NUComposition *)v9 objectForKeyedSubscript:v13, v47];
      v15 = [equalCopy objectForKeyedSubscript:v13];
      if ([v13 isEqualToString:@"source"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"raw"))
      {
        goto LABEL_11;
      }

      if (![v13 isEqualToString:@"inpaintMasks"])
      {
        v20 = [v13 isEqualToString:@"mute"];
        v21 = [v13 isEqualToString:@"autoLoop"];
        v22 = [v13 isEqualToString:@"portraitVideo"];
        schema = [v14 schema];
        settings = [schema settings];
        allKeys = [settings allKeys];
        v26 = [allKeys containsObject:@"enabled"] & (v20 ^ 1) & ((v21 | v22) ^ 1);

        if (v26 == 1 && v14 != 0)
        {
          v28 = [v14 objectForKeyedSubscript:@"enabled"];
          bOOLValue = [v28 BOOLValue];

          if ((bOOLValue & 1) == 0)
          {

            v14 = 0;
          }
        }

        v9 = v53;
        equalCopy = v54;
        v11 = v52;
        if (v15)
        {
          v30 = v26;
        }

        else
        {
          v30 = 0;
        }

        if (v30 == 1)
        {
          v31 = [v15 objectForKeyedSubscript:@"enabled"];
          bOOLValue2 = [v31 BOOLValue];

          if (bOOLValue2)
          {
            if (!v14)
            {
              if (([v13 isEqualToString:@"orientation"] & 1) == 0)
              {
                v14 = 0;
LABEL_60:

                v51 = 0;
                goto LABEL_61;
              }

LABEL_41:
              v34 = [v15 objectForKeyedSubscript:@"value"];
              integerValue = [v34 integerValue];
              imageOrientation = [(PICompositionController *)selfCopy imageOrientation];

              if (integerValue != imageOrientation)
              {
                goto LABEL_60;
              }

LABEL_11:

              goto LABEL_12;
            }

LABEL_50:
            v40 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](selfCopy _adjustmentControllerClassForKey:{v13)), "initWithAdjustment:", v14}];
            v41 = [_keyToIdentifierMap objectForKeyedSubscript:v13];
            [v40 setIdentifier:v41];

            LOBYTE(v41) = [v40 isEqual:v15 visualChangesOnly:onlyCopy];
            if ((v41 & 1) == 0)
            {
              goto LABEL_60;
            }

            goto LABEL_11;
          }

          if (!v14)
          {
            v15 = 0;
            goto LABEL_11;
          }

          v15 = 0;
          if (([v13 isEqualToString:@"orientation"] & 1) == 0)
          {
            goto LABEL_60;
          }

          v33 = 1;
LABEL_46:
          v37 = [v14 objectForKeyedSubscript:@"value"];
          integerValue2 = [v37 integerValue];
          imageOrientation2 = [(PICompositionController *)selfCopy imageOrientation];

          if (!v33 || integerValue2 != imageOrientation2)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        }

        v33 = v15 == 0;
        if (v33 == (v14 == 0))
        {
          if (v14)
          {
            goto LABEL_50;
          }

          if (v15)
          {
            v42 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](selfCopy _adjustmentControllerClassForKey:{v13)), "initWithAdjustment:", v15}];
            v43 = [_keyToIdentifierMap objectForKeyedSubscript:v13];
            [v42 setIdentifier:v43];

            v44 = [v42 isEqual:0 visualChangesOnly:onlyCopy];
            v14 = 0;
            if (!v44)
            {
              goto LABEL_60;
            }

            goto LABEL_11;
          }
        }

        else
        {
          if (([v13 isEqualToString:@"orientation"] & 1) == 0)
          {
            goto LABEL_60;
          }

          if (v14)
          {
            goto LABEL_46;
          }

          if (v15)
          {
            goto LABEL_41;
          }
        }

        v14 = 0;
        goto LABEL_11;
      }

      v16 = [(NUComposition *)v9 objectForKeyedSubscript:v13];
      v17 = [(NUComposition *)v9 objectForKeyedSubscript:v13];
      v18 = v17;
      if ((v16 != 0) != (v17 != 0) || v16 && v17 && ![v16 isEqualToArray:v17])
      {
        v19 = 0;
        v51 = 0;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        goto LABEL_61;
      }

LABEL_12:
      ++v12;
    }

    while (v56 != v12);
    v45 = [v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
    v56 = v45;
  }

  while (v45);
LABEL_61:

  return v51 & 1;
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  transaction = self->_transaction;
  if (!transaction)
  {
    v5 = objc_alloc_init(_PICompositionControllerTransaction);
    v6 = self->_transaction;
    self->_transaction = v5;

    transaction = self->_transaction;
  }

  [(_PICompositionControllerTransaction *)transaction begin];
  changesCopy[2]();
  if ([(_PICompositionControllerTransaction *)self->_transaction commit])
  {
    changes = [(_PICompositionControllerTransaction *)self->_transaction changes];
    if ([changes count] && self->_delegateFlags.hasDidUpdateMultiple)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
      [WeakRetained compositionController:self didUpdateAdjustments:changes];
    }

    v9 = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_didUpdateAdjustments:(id)adjustments
{
  adjustmentsCopy = adjustments;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = adjustmentsCopy;
    transaction = [(_PICompositionControllerTransaction *)transaction didUpdateAdjustments:adjustmentsCopy];
  }

  else
  {
    if (!self->_delegateFlags.hasDidUpdateMultiple)
    {
      goto LABEL_6;
    }

    v7 = adjustmentsCopy;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didUpdateAdjustments:v7];
  }

  adjustmentsCopy = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, adjustmentsCopy);
}

- (void)applyChangesFromCompositionController:(id)controller
{
  controllerCopy = controller;
  composition = [controllerCopy composition];
  v5 = [(PICompositionController *)self differingAdjustmentsWithComposition:composition];
  source = [controllerCopy source];
  source2 = [(PICompositionController *)self source];
  v8 = [source isEqual:source2];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 arrayByAddingObject:@"source"];

    v5 = v9;
  }

  composition = self->_composition;
  self->_composition = composition;

  -[PICompositionController setImageOrientation:](self, "setImageOrientation:", [controllerCopy imageOrientation]);
  if ([v5 count])
  {
    [(PICompositionController *)self _didUpdateAdjustments:v5];
  }
}

- (void)modifyAdjustmentWithKey:(id)key modificationBlock:(id)block
{
  keyCopy = key;
  if (block)
  {
    blockCopy = block;
    _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
    v8 = [(NUComposition *)self->_composition objectForKeyedSubscript:keyCopy];
    v9 = [v8 copy];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69B3A98]);
      v11 = [_keyToIdentifierMap objectForKeyedSubscript:keyCopy];
      v9 = [v10 initWithIdentifier:v11];

      [v9 reset];
    }

    v12 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{keyCopy)), "initWithAdjustment:", v9}];
    v13 = [_keyToIdentifierMap objectForKeyedSubscript:keyCopy];
    [v12 setIdentifier:v13];

    [v12 setContainingComposition:self->_composition];
    blockCopy[2](blockCopy, v12);

    adjustment = [v12 adjustment];
    v15 = [adjustment copy];
    [(NUComposition *)self->_composition setObject:v15 forKeyedSubscript:keyCopy];

    [(PICompositionController *)self _didUpdateAdjustment:keyCopy];
  }
}

- (id)adjustmentControllerForKey:(id)key
{
  keyCopy = key;
  _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
  v6 = [(NUComposition *)self->_composition objectForKeyedSubscript:keyCopy];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(NUComposition *)self->_composition objectForKeyedSubscript:keyCopy];
    v8 = [v7 copy];

    v9 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{keyCopy)), "initWithAdjustment:", v8}];
    v10 = [_keyToIdentifierMap objectForKeyedSubscript:keyCopy];
    [v9 setIdentifier:v10];

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_didRemoveAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = adjustmentCopy;
    transaction = [(_PICompositionControllerTransaction *)transaction didRemoveAdjustment:adjustmentCopy];
  }

  else
  {
    if (!self->_delegateFlags.hasDidRemove)
    {
      goto LABEL_6;
    }

    v7 = adjustmentCopy;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didRemoveAdjustment:v7];
  }

  adjustmentCopy = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, adjustmentCopy);
}

- (void)removeAdjustmentWithKey:(id)key
{
  keyCopy = key;
  v4 = [(NUComposition *)self->_composition objectForKeyedSubscript:?];
  if (v4)
  {
    [(NUComposition *)self->_composition setObject:0 forKeyedSubscript:keyCopy];
    if (self->_delegateFlags.hasDidRemove)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
      [WeakRetained compositionController:self didRemoveAdjustment:keyCopy];
    }
  }
}

- (void)_didUpdateAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = adjustmentCopy;
    transaction = [(_PICompositionControllerTransaction *)transaction didUpdateAdjustment:adjustmentCopy];
  }

  else
  {
    if (!self->_delegateFlags.hasDidUpdate)
    {
      goto LABEL_6;
    }

    v7 = adjustmentCopy;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didUpdateAdjustment:v7];
  }

  adjustmentCopy = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, adjustmentCopy);
}

- (void)replaceAdjustment:(id)adjustment withKey:(id)key
{
  keyCopy = key;
  composition = self->_composition;
  adjustmentCopy = adjustment;
  v8 = [(NUComposition *)composition objectForKeyedSubscript:keyCopy];

  [(NUComposition *)self->_composition setObject:adjustmentCopy forKeyedSubscript:keyCopy];
  if (!v8)
  {
    [(PICompositionController *)self _didAddAdjustment:keyCopy];
  }

  [(PICompositionController *)self _didUpdateAdjustment:keyCopy];
}

- (void)_didAddAdjustment:(id)adjustment
{
  adjustmentCopy = adjustment;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = adjustmentCopy;
    transaction = [(_PICompositionControllerTransaction *)transaction didAddAdjustment:adjustmentCopy];
  }

  else
  {
    if (!self->_delegateFlags.hasDidAdd)
    {
      goto LABEL_6;
    }

    v7 = adjustmentCopy;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didAddAdjustment:v7];
  }

  adjustmentCopy = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, adjustmentCopy);
}

- (void)addAdjustmentWithKey:(id)key
{
  keyCopy = key;
  _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
  v5 = MEMORY[0x1E69B3A98];
  v6 = self->_composition;
  v7 = [v5 alloc];
  v8 = [_keyToIdentifierMap objectForKeyedSubscript:keyCopy];
  v9 = [v7 initWithIdentifier:v8];

  [v9 reset];
  [(NUComposition *)v6 setObject:v9 forKeyedSubscript:keyCopy];

  [(PICompositionController *)self _didAddAdjustment:keyCopy];
}

- (id)availableKeys
{
  v3 = objc_opt_new();
  schema = [(NUComposition *)self->_composition schema];
  contents = [schema contents];
  allKeys = [contents allKeys];

  [v3 addObjectsFromArray:allKeys];

  return v3;
}

- (id)adjustmentKeys
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  compositionKeys = [(PICompositionController *)self compositionKeys];
  v5 = [compositionKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(compositionKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isEqualToString:@"source"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [compositionKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)compositionKeys
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  schema = [(NUComposition *)self->_composition schema];
  contents = [schema contents];
  allKeys = [contents allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NUComposition *)self->_composition objectForKeyedSubscript:v11];
        if (v12)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)setChangeDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);

  if (WeakRetained != obj)
  {
    self->_delegateFlags.hasDidAdd = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.hasDidRemove = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.hasDidUpdate = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.hasDidUpdateMultiple = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.hasClassForController = objc_opt_respondsToSelector() & 1;
    objc_storeWeak(&self->_changeDelegate, obj);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_alloc(objc_opt_class()) initWithComposition:self->_composition];
  [v4 setImageOrientation:{-[PICompositionController imageOrientation](self, "imageOrientation")}];
  brushStrokeHistory = [(PICompositionController *)self brushStrokeHistory];
  v6 = [brushStrokeHistory copy];
  [v4 setBrushStrokeHistory:v6];

  return v4;
}

- (NUComposition)composition
{
  v2 = [(NUComposition *)self->_composition copy];

  return v2;
}

- (PICompositionController)initWithComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = PICompositionController;
  compositionCopy = composition;
  v4 = [(PICompositionController *)&v8 init];
  v5 = [compositionCopy copy];

  composition = v4->_composition;
  v4->_composition = v5;

  return v4;
}

+ (Class)adjustmentControllerClassForKey:(id)key
{
  keyCopy = key;
  v4 = objc_opt_class();
  if (([keyCopy isEqualToString:@"smartTone"] & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"smartColor") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"smartBlackAndWhite") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cropStraighten") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"redEye") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"depthEffect") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"livePhotoKeyFrame") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"videoPosterFrame") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"trim") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"slomo") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"effect") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"effect3D") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"portraitEffect") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"orientation") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"autoLoop") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"highResFusion") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"rawNoiseReduction") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"sharpen") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"whiteBalance") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"noiseReduction") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"definition") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"raw") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"vignette") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"videoStabilize") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"videoCrossfadeLoop") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"semanticEnhance") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"semanticStyle") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"portraitVideo") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"cinematicAudio") & 1) != 0 || (objc_msgSend(keyCopy, "isEqualToString:", @"retouch") & 1) != 0 || objc_msgSend(keyCopy, "isEqualToString:", @"inpaint"))
  {
    v4 = objc_opt_class();
  }

  v5 = v4;

  return v4;
}

+ (id)_keyToIdentifierMap
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__PICompositionController__keyToIdentifierMap__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_keyToIdentifierMap_onceToken != -1)
  {
    dispatch_once(&_keyToIdentifierMap_onceToken, block);
  }

  v2 = _keyToIdentifierMap_identifierMap;

  return v2;
}

void __46__PICompositionController__keyToIdentifierMap__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) photosSchema];
  v2 = objc_opt_new();
  v3 = [v1 contents];
  v4 = [v3 allKeys];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [v1 contents];
        v12 = [v11 objectForKeyedSubscript:v10];
        [v2 setObject:v12 forKeyedSubscript:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v13 = _keyToIdentifierMap_identifierMap;
  _keyToIdentifierMap_identifierMap = v2;
}

+ (id)photosSchema
{
  if (photosSchema_onceToken != -1)
  {
    dispatch_once(&photosSchema_onceToken, &__block_literal_global_1865);
  }

  v3 = photosSchema_photosSchema;

  return v3;
}

void __39__PICompositionController_photosSchema__block_invoke()
{
  v3 = +[PISchema registeredPhotosSchemaIdentifier];
  v0 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v1 = [v0 schemaWithIdentifier:v3];
  v2 = photosSchema_photosSchema;
  photosSchema_photosSchema = v1;
}

+ (id)settingForAdjustmentKey:(id)key settingKey:(id)settingKey
{
  settingKeyCopy = settingKey;
  v7 = [self schemaForKey:key];
  settings = [v7 settings];
  v9 = [settings objectForKeyedSubscript:settingKeyCopy];

  return v9;
}

+ (id)schemaForKey:(id)key
{
  keyCopy = key;
  _keyToIdentifierMap = [objc_opt_class() _keyToIdentifierMap];
  v5 = [_keyToIdentifierMap objectForKeyedSubscript:keyCopy];

  if (v5)
  {
    mEMORY[0x1E69B3CA8] = [MEMORY[0x1E69B3CA8] sharedRegistry];
    v7 = [mEMORY[0x1E69B3CA8] schemaWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)semanticStyleAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"semanticStyle" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)inpaintAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  v4 = [(PICompositionController *)self _adjustmentControllerForKey:@"inpaint" creatingIfNecessary:necessary expectedClass:objc_opt_class()];
  _internalComposition = [(PICompositionController *)self _internalComposition];
  [v4 setContainingComposition:_internalComposition];

  return v4;
}

- (id)retouchAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"retouch" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)cinematicAudioAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"cinematicAudio" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)portraitVideoAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"portraitVideo" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)semanticEnhanceAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"semanticEnhance" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)videoCrossfadeLoopAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoCrossfadeLoop" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)videoStabilizeAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoStabilize" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)vignetteAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"vignette" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)definitionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"definition" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)noiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"noiseReduction" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)whiteBalanceAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"whiteBalance" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)sharpenAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"sharpen" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)rawNoiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"rawNoiseReduction" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)rawAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"raw" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)highResFusionAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"highResFusion" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)autoLoopAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"autoLoop" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)orientationAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"orientation" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)portraitAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"portraitEffect" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)effect3DAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"effect3D" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)effectAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"effect" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)slomoAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"slomo" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)trimAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"trim" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)depthAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"depthEffect" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)videoPosterFrameAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoPosterFrame" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)livePhotoKeyFrameAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"livePhotoKeyFrame" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)redEyeAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"redEye" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)cropAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"cropStraighten" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)smartBWAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartBlackAndWhite" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)smartColorAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartColor" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)smartToneAdjustmentControllerCreatingIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartTone" creatingIfNecessary:necessaryCopy expectedClass:v5];
}

- (id)_adjustmentControllerForKey:(id)key creatingIfNecessary:(BOOL)necessary expectedClass:(Class)class
{
  necessaryCopy = necessary;
  v28 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [(PICompositionController *)self adjustmentControllerForKey:keyCopy];
  if (!v9 && necessaryCopy)
  {
    [(PICompositionController *)self addAdjustmentWithKey:keyCopy];
    v9 = [(PICompositionController *)self adjustmentControllerForKey:keyCopy];
  }

  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = NUAssertLogger_22043();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adjustment controller for key %@ is of class: %@, but was expected to be %@", keyCopy, objc_opt_class(), class];
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_22043();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        callStackSymbols = [v20 callStackSymbols];
        v23 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    objc_opt_class();
    _NUAssertFailHandler();
  }

  return v9;
}

- (PIAdjustmentConstants)adjustmentConstants
{
  if (adjustmentConstants_onceToken != -1)
  {
    dispatch_once(&adjustmentConstants_onceToken, &__block_literal_global_22056);
  }

  v3 = adjustmentConstants_constants;

  return v3;
}

uint64_t __68__PICompositionController_AdjustmentExtensions__adjustmentConstants__block_invoke()
{
  v0 = +[PIPhotoEditHelper adjustmentConstants];
  v1 = adjustmentConstants_constants;
  adjustmentConstants_constants = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end