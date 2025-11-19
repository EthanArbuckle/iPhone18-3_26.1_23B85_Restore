@interface PICompositionController
+ (Class)adjustmentControllerClassForKey:(id)a3;
+ (id)_keyToIdentifierMap;
+ (id)photosSchema;
+ (id)schemaForKey:(id)a3;
+ (id)settingForAdjustmentKey:(id)a3 settingKey:(id)a4;
- (BOOL)dumpComposition;
- (BOOL)isEqual:(id)a3 forKeys:(id)a4 comparisonBlock:(id)a5;
- (BOOL)isEqual:(id)a3 forKeys:(id)a4 visualChangesOnly:(BOOL)a5;
- (Class)_adjustmentControllerClassForKey:(id)a3;
- (NUComposition)composition;
- (PIAdjustmentConstants)adjustmentConstants;
- (PICompositionController)initWithComposition:(id)a3;
- (PICompositionControllerDelegate)changeDelegate;
- (id)_adjustmentControllerForKey:(id)a3 creatingIfNecessary:(BOOL)a4 expectedClass:(Class)a5;
- (id)adjustmentControllerForKey:(id)a3;
- (id)adjustmentKeys;
- (id)autoLoopAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)availableKeys;
- (id)cinematicAudioAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)compositionKeys;
- (id)copyWithZone:(_NSZone *)a3;
- (id)cropAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)debugDescription;
- (id)definitionAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)depthAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)differingAdjustmentsWithComposition:(id)a3;
- (id)effect3DAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)effectAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)highResFusionAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)inpaintAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)livePhotoKeyFrameAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)noiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)orientationAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)portraitAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)portraitVideoAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)rawAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)rawNoiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)redEyeAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)retouchAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)semanticEnhanceAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)semanticStyleAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)sharpenAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)slomoAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)smartBWAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)smartColorAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)smartToneAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)trimAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)videoCrossfadeLoopAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)videoPosterFrameAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)videoStabilizeAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)vignetteAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (id)whiteBalanceAdjustmentControllerCreatingIfNecessary:(BOOL)a3;
- (int64_t)userOrientation;
- (void)_didAddAdjustment:(id)a3;
- (void)_didRemoveAdjustment:(id)a3;
- (void)_didUpdateAdjustment:(id)a3;
- (void)_didUpdateAdjustments:(id)a3;
- (void)addAdjustmentWithKey:(id)a3;
- (void)applyChangesFromCompositionController:(id)a3;
- (void)modifyAdjustmentWithKey:(id)a3 modificationBlock:(id)a4;
- (void)performChanges:(id)a3;
- (void)removeAdjustmentWithKey:(id)a3;
- (void)replaceAdjustment:(id)a3 withKey:(id)a4;
- (void)setChangeDelegate:(id)a3;
- (void)setSource:(id)a3 mediaType:(int64_t)a4;
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
  v8 = [(PICompositionController *)self composition];
  v30 = 0;
  v9 = [v7 dumpComposition:v8 toURL:v6 error:&v30];
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
      v15 = [v6 path];
      *buf = 138412290;
      v32 = v15;
      _os_log_impl(&dword_1C7694000, v14, OS_LOG_TYPE_INFO, "Successfully dumped composition to %@", buf, 0xCu);
    }

    v16 = [PICompositionSidecarData alloc];
    v17 = [(PICompositionController *)self composition];
    v18 = [(PICompositionSidecarData *)v16 initWithComposition:v17];

    if ([(PICompositionSidecarData *)v18 isEmpty])
    {
      v19 = 0;
    }

    else
    {
      v21 = [(PICompositionController *)self brushStrokeHistory];
      [(PICompositionSidecarData *)v18 setBrushStrokeHistory:v21];

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
          v26 = [v22 path];
          *buf = 138412290;
          v32 = v26;
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

- (void)setSource:(id)a3 mediaType:(int64_t)a4
{
  [(NUComposition *)self->_composition setObject:a3 forKeyedSubscript:@"source"];
  composition = self->_composition;

  [(NUComposition *)composition setMediaType:a4];
}

- (Class)_adjustmentControllerClassForKey:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() adjustmentControllerClassForKey:v4];
  WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
  v7 = WeakRetained;
  if (WeakRetained && self->_delegateFlags.hasClassForController)
  {
    v8 = [WeakRetained compositionController:self adjustmentControllerClassForKey:v4];
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
    v4 = [(PICompositionController *)self imageOrientation];
    v5 = 1;
    if ([v3 orientation] && v4)
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

- (id)differingAdjustmentsWithComposition:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PICompositionController *)self availableKeys];
  v15 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
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
        v13 = [(PICompositionController *)self isEqual:v4 forKeys:v12 visualChangesOnly:1];

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

- (BOOL)isEqual:(id)a3 forKeys:(id)a4 comparisonBlock:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v8 = a4;
  v9 = a5;
  v30 = self->_composition;
  v29 = [objc_opt_class() _keyToIdentifierMap];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(PICompositionController *)self availableKeys];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    v27 = v8;
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
        v17 = [v31 objectForKeyedSubscript:v15];
        if (v16)
        {
          v18 = [v16 objectForKeyedSubscript:@"enabled"];
          v19 = [v18 BOOLValue];

          if ((v19 & 1) == 0)
          {

            v16 = 0;
          }
        }

        if (!v17)
        {
          goto LABEL_22;
        }

        v20 = [v17 objectForKeyedSubscript:@"enabled"];
        v21 = [v20 BOOLValue];

        if ((v21 & 1) == 0)
        {

LABEL_22:
          v17 = 0;
          v25 = v16 == 0;
LABEL_23:

          v8 = v27;
          goto LABEL_24;
        }

        if (!v16 || (v22 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{v15)), "initWithAdjustment:", v16}], objc_msgSend(v29, "objectForKeyedSubscript:", v15), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "setIdentifier:", v23), v23, v24 = v9[2](v9, v15, v22, v17), v22, (v24 & 1) == 0))
        {
          v25 = 0;
          goto LABEL_23;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      v25 = 1;
      v8 = v27;
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

- (BOOL)isEqual:(id)a3 forKeys:(id)a4 visualChangesOnly:(BOOL)a5
{
  v48 = a5;
  v62 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = self->_composition;
  v49 = [objc_opt_class() _keyToIdentifierMap];
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [(PICompositionController *)self availableKeys];
  }

  v47 = v8;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v10;
  v56 = [v11 countByEnumeratingWithState:&v57 objects:v61 count:16];
  if (!v56)
  {
    v51 = 1;
    goto LABEL_61;
  }

  v50 = self;
  v51 = 1;
  v54 = v7;
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
      v15 = [v7 objectForKeyedSubscript:v13];
      if ([v13 isEqualToString:@"source"] & 1) != 0 || (objc_msgSend(v13, "isEqualToString:", @"raw"))
      {
        goto LABEL_11;
      }

      if (![v13 isEqualToString:@"inpaintMasks"])
      {
        v20 = [v13 isEqualToString:@"mute"];
        v21 = [v13 isEqualToString:@"autoLoop"];
        v22 = [v13 isEqualToString:@"portraitVideo"];
        v23 = [v14 schema];
        v24 = [v23 settings];
        v25 = [v24 allKeys];
        v26 = [v25 containsObject:@"enabled"] & (v20 ^ 1) & ((v21 | v22) ^ 1);

        if (v26 == 1 && v14 != 0)
        {
          v28 = [v14 objectForKeyedSubscript:@"enabled"];
          v29 = [v28 BOOLValue];

          if ((v29 & 1) == 0)
          {

            v14 = 0;
          }
        }

        v9 = v53;
        v7 = v54;
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
          v32 = [v31 BOOLValue];

          if (v32)
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
              v35 = [v34 integerValue];
              v36 = [(PICompositionController *)v50 imageOrientation];

              if (v35 != v36)
              {
                goto LABEL_60;
              }

LABEL_11:

              goto LABEL_12;
            }

LABEL_50:
            v40 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](v50 _adjustmentControllerClassForKey:{v13)), "initWithAdjustment:", v14}];
            v41 = [v49 objectForKeyedSubscript:v13];
            [v40 setIdentifier:v41];

            LOBYTE(v41) = [v40 isEqual:v15 visualChangesOnly:v48];
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
          v38 = [v37 integerValue];
          v39 = [(PICompositionController *)v50 imageOrientation];

          if (!v33 || v38 != v39)
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
            v42 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](v50 _adjustmentControllerClassForKey:{v13)), "initWithAdjustment:", v15}];
            v43 = [v49 objectForKeyedSubscript:v13];
            [v42 setIdentifier:v43];

            v44 = [v42 isEqual:0 visualChangesOnly:v48];
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

- (void)performChanges:(id)a3
{
  v10 = a3;
  transaction = self->_transaction;
  if (!transaction)
  {
    v5 = objc_alloc_init(_PICompositionControllerTransaction);
    v6 = self->_transaction;
    self->_transaction = v5;

    transaction = self->_transaction;
  }

  [(_PICompositionControllerTransaction *)transaction begin];
  v10[2]();
  if ([(_PICompositionControllerTransaction *)self->_transaction commit])
  {
    v7 = [(_PICompositionControllerTransaction *)self->_transaction changes];
    if ([v7 count] && self->_delegateFlags.hasDidUpdateMultiple)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
      [WeakRetained compositionController:self didUpdateAdjustments:v7];
    }

    v9 = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_didUpdateAdjustments:(id)a3
{
  v4 = a3;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = v4;
    transaction = [(_PICompositionControllerTransaction *)transaction didUpdateAdjustments:v4];
  }

  else
  {
    if (!self->_delegateFlags.hasDidUpdateMultiple)
    {
      goto LABEL_6;
    }

    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didUpdateAdjustments:v7];
  }

  v4 = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, v4);
}

- (void)applyChangesFromCompositionController:(id)a3
{
  v11 = a3;
  v4 = [v11 composition];
  v5 = [(PICompositionController *)self differingAdjustmentsWithComposition:v4];
  v6 = [v11 source];
  v7 = [(PICompositionController *)self source];
  v8 = [v6 isEqual:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [v5 arrayByAddingObject:@"source"];

    v5 = v9;
  }

  composition = self->_composition;
  self->_composition = v4;

  -[PICompositionController setImageOrientation:](self, "setImageOrientation:", [v11 imageOrientation]);
  if ([v5 count])
  {
    [(PICompositionController *)self _didUpdateAdjustments:v5];
  }
}

- (void)modifyAdjustmentWithKey:(id)a3 modificationBlock:(id)a4
{
  v16 = a3;
  if (a4)
  {
    v6 = a4;
    v7 = [objc_opt_class() _keyToIdentifierMap];
    v8 = [(NUComposition *)self->_composition objectForKeyedSubscript:v16];
    v9 = [v8 copy];

    if (!v9)
    {
      v10 = objc_alloc(MEMORY[0x1E69B3A98]);
      v11 = [v7 objectForKeyedSubscript:v16];
      v9 = [v10 initWithIdentifier:v11];

      [v9 reset];
    }

    v12 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{v16)), "initWithAdjustment:", v9}];
    v13 = [v7 objectForKeyedSubscript:v16];
    [v12 setIdentifier:v13];

    [v12 setContainingComposition:self->_composition];
    v6[2](v6, v12);

    v14 = [v12 adjustment];
    v15 = [v14 copy];
    [(NUComposition *)self->_composition setObject:v15 forKeyedSubscript:v16];

    [(PICompositionController *)self _didUpdateAdjustment:v16];
  }
}

- (id)adjustmentControllerForKey:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _keyToIdentifierMap];
  v6 = [(NUComposition *)self->_composition objectForKeyedSubscript:v4];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [(NUComposition *)self->_composition objectForKeyedSubscript:v4];
    v8 = [v7 copy];

    v9 = [objc_alloc(-[PICompositionController _adjustmentControllerClassForKey:](self _adjustmentControllerClassForKey:{v4)), "initWithAdjustment:", v8}];
    v10 = [v5 objectForKeyedSubscript:v4];
    [v9 setIdentifier:v10];

    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_didRemoveAdjustment:(id)a3
{
  v4 = a3;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = v4;
    transaction = [(_PICompositionControllerTransaction *)transaction didRemoveAdjustment:v4];
  }

  else
  {
    if (!self->_delegateFlags.hasDidRemove)
    {
      goto LABEL_6;
    }

    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didRemoveAdjustment:v7];
  }

  v4 = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, v4);
}

- (void)removeAdjustmentWithKey:(id)a3
{
  v6 = a3;
  v4 = [(NUComposition *)self->_composition objectForKeyedSubscript:?];
  if (v4)
  {
    [(NUComposition *)self->_composition setObject:0 forKeyedSubscript:v6];
    if (self->_delegateFlags.hasDidRemove)
    {
      WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
      [WeakRetained compositionController:self didRemoveAdjustment:v6];
    }
  }
}

- (void)_didUpdateAdjustment:(id)a3
{
  v4 = a3;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = v4;
    transaction = [(_PICompositionControllerTransaction *)transaction didUpdateAdjustment:v4];
  }

  else
  {
    if (!self->_delegateFlags.hasDidUpdate)
    {
      goto LABEL_6;
    }

    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didUpdateAdjustment:v7];
  }

  v4 = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, v4);
}

- (void)replaceAdjustment:(id)a3 withKey:(id)a4
{
  v9 = a4;
  composition = self->_composition;
  v7 = a3;
  v8 = [(NUComposition *)composition objectForKeyedSubscript:v9];

  [(NUComposition *)self->_composition setObject:v7 forKeyedSubscript:v9];
  if (!v8)
  {
    [(PICompositionController *)self _didAddAdjustment:v9];
  }

  [(PICompositionController *)self _didUpdateAdjustment:v9];
}

- (void)_didAddAdjustment:(id)a3
{
  v4 = a3;
  transaction = self->_transaction;
  if (transaction)
  {
    v7 = v4;
    transaction = [(_PICompositionControllerTransaction *)transaction didAddAdjustment:v4];
  }

  else
  {
    if (!self->_delegateFlags.hasDidAdd)
    {
      goto LABEL_6;
    }

    v7 = v4;
    WeakRetained = objc_loadWeakRetained(&self->_changeDelegate);
    [WeakRetained compositionController:self didAddAdjustment:v7];
  }

  v4 = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](transaction, v4);
}

- (void)addAdjustmentWithKey:(id)a3
{
  v4 = a3;
  v10 = [objc_opt_class() _keyToIdentifierMap];
  v5 = MEMORY[0x1E69B3A98];
  v6 = self->_composition;
  v7 = [v5 alloc];
  v8 = [v10 objectForKeyedSubscript:v4];
  v9 = [v7 initWithIdentifier:v8];

  [v9 reset];
  [(NUComposition *)v6 setObject:v9 forKeyedSubscript:v4];

  [(PICompositionController *)self _didAddAdjustment:v4];
}

- (id)availableKeys
{
  v3 = objc_opt_new();
  v4 = [(NUComposition *)self->_composition schema];
  v5 = [v4 contents];
  v6 = [v5 allKeys];

  [v3 addObjectsFromArray:v6];

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
  v4 = [(PICompositionController *)self compositionKeys];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (([v9 isEqualToString:@"source"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v4 = [(NUComposition *)self->_composition schema];
  v5 = [v4 contents];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NUComposition *)self->_composition objectForKeyedSubscript:v11];
        if (v12)
        {
          [v3 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)setChangeDelegate:(id)a3
{
  obj = a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithComposition:self->_composition];
  [v4 setImageOrientation:{-[PICompositionController imageOrientation](self, "imageOrientation")}];
  v5 = [(PICompositionController *)self brushStrokeHistory];
  v6 = [v5 copy];
  [v4 setBrushStrokeHistory:v6];

  return v4;
}

- (NUComposition)composition
{
  v2 = [(NUComposition *)self->_composition copy];

  return v2;
}

- (PICompositionController)initWithComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = PICompositionController;
  v3 = a3;
  v4 = [(PICompositionController *)&v8 init];
  v5 = [v3 copy];

  composition = v4->_composition;
  v4->_composition = v5;

  return v4;
}

+ (Class)adjustmentControllerClassForKey:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (([v3 isEqualToString:@"smartTone"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"smartColor") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"smartBlackAndWhite") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"cropStraighten") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"redEye") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"depthEffect") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"livePhotoKeyFrame") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"videoPosterFrame") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"trim") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"slomo") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"effect3D") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"portraitEffect") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"orientation") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"autoLoop") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"highResFusion") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"rawNoiseReduction") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"sharpen") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"whiteBalance") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"noiseReduction") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"definition") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"raw") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"vignette") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"videoStabilize") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"videoCrossfadeLoop") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"semanticEnhance") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"semanticStyle") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"portraitVideo") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"cinematicAudio") & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"retouch") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"inpaint"))
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
  block[4] = a1;
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

+ (id)settingForAdjustmentKey:(id)a3 settingKey:(id)a4
{
  v6 = a4;
  v7 = [a1 schemaForKey:a3];
  v8 = [v7 settings];
  v9 = [v8 objectForKeyedSubscript:v6];

  return v9;
}

+ (id)schemaForKey:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _keyToIdentifierMap];
  v5 = [v4 objectForKeyedSubscript:v3];

  if (v5)
  {
    v6 = [MEMORY[0x1E69B3CA8] sharedRegistry];
    v7 = [v6 schemaWithIdentifier:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)semanticStyleAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"semanticStyle" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)inpaintAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v4 = [(PICompositionController *)self _adjustmentControllerForKey:@"inpaint" creatingIfNecessary:a3 expectedClass:objc_opt_class()];
  v5 = [(PICompositionController *)self _internalComposition];
  [v4 setContainingComposition:v5];

  return v4;
}

- (id)retouchAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"retouch" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)cinematicAudioAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"cinematicAudio" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)portraitVideoAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"portraitVideo" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)semanticEnhanceAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"semanticEnhance" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)videoCrossfadeLoopAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoCrossfadeLoop" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)videoStabilizeAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoStabilize" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)vignetteAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"vignette" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)definitionAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"definition" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)noiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"noiseReduction" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)whiteBalanceAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"whiteBalance" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)sharpenAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"sharpen" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)rawNoiseReductionAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"rawNoiseReduction" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)rawAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"raw" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)highResFusionAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"highResFusion" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)autoLoopAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"autoLoop" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)orientationAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"orientation" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)portraitAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"portraitEffect" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)effect3DAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"effect3D" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)effectAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"effect" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)slomoAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"slomo" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)trimAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"trim" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)depthAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"depthEffect" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)videoPosterFrameAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"videoPosterFrame" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)livePhotoKeyFrameAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"livePhotoKeyFrame" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)redEyeAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"redEye" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)cropAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"cropStraighten" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)smartBWAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartBlackAndWhite" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)smartColorAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartColor" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)smartToneAdjustmentControllerCreatingIfNecessary:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_class();

  return [(PICompositionController *)self _adjustmentControllerForKey:@"smartTone" creatingIfNecessary:v3 expectedClass:v5];
}

- (id)_adjustmentControllerForKey:(id)a3 creatingIfNecessary:(BOOL)a4 expectedClass:(Class)a5
{
  v6 = a4;
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = [(PICompositionController *)self adjustmentControllerForKey:v8];
  if (!v9 && v6)
  {
    [(PICompositionController *)self addAdjustmentWithKey:v8];
    v9 = [(PICompositionController *)self adjustmentControllerForKey:v8];
  }

  if (v9 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = NUAssertLogger_22043();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Adjustment controller for key %@ is of class: %@, but was expected to be %@", v8, objc_opt_class(), a5];
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
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v19;
        v26 = 2114;
        v27 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
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