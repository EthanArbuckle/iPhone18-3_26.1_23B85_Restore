@interface PUSlideshowSettings
+ (PUSlideshowSettings)sharedInstance;
+ (id)settingsControllerModule;
- (BOOL)transitionSettingsAreDefaults;
- (OKProducerPreset)currentPreset;
- (id)archiveValueForKey:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applyArchiveValue:(id)a3 forKey:(id)a4;
- (void)performPostSaveActions;
- (void)removeTransitionTimingCustomizationsFromUserDefaults;
- (void)restoreCurrentInteractiveTransitionValuesFromUserDefaults;
- (void)saveInteractiveSlideshowSettingsInUserDefaults;
- (void)setCurrentPreset:(id)a3;
- (void)setDefaultPresetTransitionValues;
- (void)setDefaultValues;
@end

@implementation PUSlideshowSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PUSlideshowSettings *)self setDefaultPresetTransitionValues];
  [(PUSlideshowSettings *)self setAllowUserInteractivity:1];
  [(PUSlideshowSettings *)self setSlideshowSettingsEnableFullscreenSupport:0];
}

- (void)setDefaultPresetTransitionValues
{
  v60 = *MEMORY[0x1E69E9840];
  currentPreset = self->_currentPreset;
  if (currentPreset)
  {
    [(OKProducerPreset *)currentPreset guidelines];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v4 = v58 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v56;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v56 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v55 + 1) + 8 * i);
          v10 = [v9 valueForKey:@"key"];
          v11 = [v10 isEqualToString:@"interactiveTransitionSettings"];

          if (v11)
          {
            v12 = [v9 valueForKey:@"value"];
            v13 = [v12 valueForKey:@"trackingBoxRadiusMinValue"];
            v14 = v13;
            if (v13)
            {
              [v13 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusMinValue:v15];
            }

            v16 = [v12 valueForKey:@"trackingBoxRadiusMaxValue"];
            v17 = v16;
            if (v16)
            {
              [v16 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusMaxValue:v18];
            }

            v19 = [v12 valueForKey:@"trackingBoxRadiusDefaultValue"];
            v20 = v19;
            if (v19)
            {
              [v19 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusDefaultValue:v21];
            }

            v22 = [v12 valueForKey:@"trackingBoxRadiusIncrementValue"];
            v23 = v22;
            if (v22)
            {
              [v22 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusIncrementValue:v24];
            }

            v25 = [v12 valueForKey:@"progressThresholdMinValue"];
            v26 = v25;
            if (v25)
            {
              [v25 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdMinValue:v27];
            }

            v28 = [v12 valueForKey:@"progressThresholdMaxValue"];
            v29 = v28;
            if (v28)
            {
              [v28 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdMaxValue:v30];
            }

            v54 = v14;
            v31 = [v12 valueForKey:@"progressThresholdDefaultValue"];
            v32 = v31;
            if (v31)
            {
              [v31 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdDefaultValue:v33];
            }

            v53 = v17;
            v34 = [v12 valueForKey:@"progressThresholdIncrementValue"];
            v35 = v34;
            if (v34)
            {
              [v34 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdIncrementValue:v36];
            }

            v52 = v20;
            v37 = [v12 valueForKey:@"velocityThresholdMinValue"];
            v38 = v37;
            if (v37)
            {
              [v37 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingMinValue:v39];
            }

            v50 = v29;
            v51 = v23;
            v40 = [v12 valueForKey:@"velocityThresholdMaxValue"];
            v41 = v40;
            if (v40)
            {
              [v40 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingMaxValue:v42];
            }

            v43 = v26;
            v44 = [v12 valueForKey:@"velocityThresholdDefaultValue"];
            v45 = v44;
            if (v44)
            {
              [v44 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue:v46];
            }

            v47 = [v12 valueForKey:@"velocityThresholdIncrementValue"];
            v48 = v47;
            if (v47)
            {
              [v47 floatValue];
              [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingIncrementValue:v49];
            }

            [(PUSlideshowSettings *)self restoreCurrentInteractiveTransitionValuesFromUserDefaults];
            return;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    [(PUSlideshowSettings *)self restoreCurrentInteractiveTransitionValuesFromUserDefaults];
  }

  [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusMinValue:0.100000001];
  [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusMaxValue:5.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusDefaultValue:3.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusIncrementValue:0.100000001];
  [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdMinValue:0.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdMaxValue:1.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdDefaultValue:0.300000012];
  [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdIncrementValue:0.0500000007];
  [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingMinValue:0.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingMaxValue:1000.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue:300.0];
  [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingIncrementValue:10.0];
}

- (void)saveInteractiveSlideshowSettingsInUserDefaults
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 valueForKey:@"InteractiveSlideshowTransitionSettings"];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  v6 = [v5 valueForKey:@"interactiveTransitionFineTuneSettings"];
  v7 = [v6 mutableCopy];

  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    [v5 setValue:v7 forKey:@"interactiveTransitionFineTuneSettings"];
  }

  if (self->_currentPreset && ![(PUSlideshowSettings *)self transitionSettingsAreDefaults])
  {
    v8 = [(OKProducerPreset *)self->_currentPreset uniqueIdentifier];
    v13[0] = @"interactiveTransitionFingerTrackingBoxRadiusCurrentValueAsNumber";
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interactiveTransitionFingerTrackingBoxRadiusDefaultValue];
    v14[0] = v9;
    v13[1] = @"interactiveTransitionProgressThresholdCurrentValueAsNumber";
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interactiveTransitionProgressThresholdDefaultValue];
    v14[1] = v10;
    v13[2] = @"interactiveTransitionVelocityThresholdForAlwaysFinishingCurrentValueAsNumber";
    v11 = [MEMORY[0x1E696AD98] numberWithDouble:self->_interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue];
    v14[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

    [v7 setValue:v12 forKey:v8];
    [v5 setValue:v7 forKey:@"interactiveTransitionFineTuneSettings"];
    [v3 setObject:v5 forKey:@"InteractiveSlideshowTransitionSettings"];

    [v3 synchronize];
  }
}

- (BOOL)transitionSettingsAreDefaults
{
  v36 = *MEMORY[0x1E69E9840];
  currentPreset = self->_currentPreset;
  if (!currentPreset)
  {
    return 1;
  }

  [(OKProducerPreset *)currentPreset guidelines];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = @"key";
    v6 = *v32;
    v28 = 1;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v31 + 1) + 8 * i);
        v9 = [v8 valueForKey:v5];
        v10 = [v9 isEqualToString:@"interactiveTransitionSettings"];

        if (v10)
        {
          v11 = v5;
          v12 = [v8 valueForKey:@"value"];
          v13 = [v12 valueForKey:@"trackingBoxRadiusDefaultValue"];
          v14 = v13;
          if (v13)
          {
            interactiveTransitionFingerTrackingBoxRadiusDefaultValue = self->_interactiveTransitionFingerTrackingBoxRadiusDefaultValue;
            [v13 floatValue];
            if (interactiveTransitionFingerTrackingBoxRadiusDefaultValue != v16)
            {
              goto LABEL_23;
            }
          }

          v17 = [v12 valueForKey:@"progressThresholdDefaultValue"];
          v18 = v17;
          if (v17)
          {
            interactiveTransitionProgressThresholdDefaultValue = self->_interactiveTransitionProgressThresholdDefaultValue;
            [v17 floatValue];
            if (interactiveTransitionProgressThresholdDefaultValue != v20)
            {

LABEL_23:
              v28 = 0;
              goto LABEL_24;
            }
          }

          v21 = [v12 valueForKey:@"velocityThresholdDefaultValue"];
          v22 = v21;
          if (!v21 || (interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue = self->_interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue, [v21 floatValue], interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue == v24))
          {
            v25 = 1;
          }

          else
          {
            v25 = 0;
            v28 = 0;
          }

          v5 = v11;
          if (!v25)
          {
            goto LABEL_24;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = 1;
  }

LABEL_24:

  return v28;
}

- (void)restoreCurrentInteractiveTransitionValuesFromUserDefaults
{
  if (self->_currentPreset)
  {
    v17 = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [v17 valueForKey:@"InteractiveSlideshowTransitionSettings"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 valueForKey:@"interactiveTransitionFineTuneSettings"];
      v6 = [(OKProducerPreset *)self->_currentPreset uniqueIdentifier];
      v7 = [v5 objectForKey:v6];

      if (v7)
      {
        v8 = [v7 valueForKey:@"interactiveTransitionFingerTrackingBoxRadiusCurrentValueAsNumber"];
        v9 = v8;
        if (v8)
        {
          [v8 floatValue];
          [(PUSlideshowSettings *)self setInteractiveTransitionFingerTrackingBoxRadiusDefaultValue:v10];
        }

        v11 = [v7 valueForKey:@"interactiveTransitionProgressThresholdCurrentValueAsNumber"];
        v12 = v11;
        if (v11)
        {
          [v11 floatValue];
          [(PUSlideshowSettings *)self setInteractiveTransitionProgressThresholdDefaultValue:v13];
        }

        v14 = [v7 valueForKey:@"interactiveTransitionVelocityThresholdForAlwaysFinishingCurrentValueAsNumber"];
        v15 = v14;
        if (v14)
        {
          [v14 floatValue];
          [(PUSlideshowSettings *)self setInteractiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue:v16];
        }
      }
    }
  }
}

- (void)removeTransitionTimingCustomizationsFromUserDefaults
{
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v4 valueForKey:@"InteractiveSlideshowTransitionSettings"];
  v3 = [v2 mutableCopy];

  if (v3)
  {
    [v3 removeObjectForKey:@"interactiveTransitionFineTuneSettings"];
    [v4 setValue:v3 forKey:@"InteractiveSlideshowTransitionSettings"];
    [v4 synchronize];
  }
}

- (OKProducerPreset)currentPreset
{
  if (!self->_currentPreset)
  {
    if (self->_currentPresetUniqueIdentifier)
    {
      goto LABEL_6;
    }

    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 valueForKey:@"InteractiveSlideshowTransitionSettings"];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 objectForKey:@"LastUsedPresetIdentifier"];
      currentPresetUniqueIdentifier = self->_currentPresetUniqueIdentifier;
      self->_currentPresetUniqueIdentifier = v6;
    }

    if (self->_currentPresetUniqueIdentifier)
    {
LABEL_6:
      v16 = 0;
      v17 = &v16;
      v18 = 0x2050000000;
      v8 = getOKProducerPresetsManagerClass_softClass_81122;
      v19 = getOKProducerPresetsManagerClass_softClass_81122;
      if (!getOKProducerPresetsManagerClass_softClass_81122)
      {
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __getOKProducerPresetsManagerClass_block_invoke_81123;
        v15[3] = &unk_1E7B800F0;
        v15[4] = &v16;
        __getOKProducerPresetsManagerClass_block_invoke_81123(v15);
        v8 = v17[3];
      }

      v9 = v8;
      _Block_object_dispose(&v16, 8);
      v10 = [v8 defaultManager];
      v11 = [v10 presetForUniqueIdentifier:self->_currentPresetUniqueIdentifier];
      currentPreset = self->_currentPreset;
      self->_currentPreset = v11;

      [(PUSlideshowSettings *)self setDefaultPresetTransitionValues];
    }
  }

  v13 = self->_currentPreset;

  return v13;
}

- (void)setCurrentPreset:(id)a3
{
  v10 = a3;
  if (self->_currentPreset != v10)
  {
    objc_storeStrong(&self->_currentPreset, a3);
    v5 = [(OKProducerPreset *)self->_currentPreset uniqueIdentifier];
    currentPresetUniqueIdentifier = self->_currentPresetUniqueIdentifier;
    self->_currentPresetUniqueIdentifier = v5;

    if (self->_currentPresetUniqueIdentifier)
    {
      v7 = [MEMORY[0x1E695E000] standardUserDefaults];
      v8 = [v7 valueForKey:@"InteractiveSlideshowTransitionSettings"];
      v9 = [v8 mutableCopy];

      if (!v9)
      {
        v9 = [MEMORY[0x1E695DF90] dictionary];
      }

      [(PUSlideshowSettings *)self setDefaultPresetTransitionValues];
      [v9 setObject:self->_currentPresetUniqueIdentifier forKey:@"LastUsedPresetIdentifier"];
      [v7 setObject:v9 forKey:@"InteractiveSlideshowTransitionSettings"];
      [v7 synchronize];
    }
  }
}

- (id)archiveValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"currentPreset"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = PUSlideshowSettings;
    v5 = [(PXSettings *)&v7 archiveValueForKey:v4];
  }

  return v5;
}

- (void)applyArchiveValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v7 hasPrefix:@"currentPreset"] & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = PUSlideshowSettings;
    [(PXSettings *)&v8 applyArchiveValue:v6 forKey:v7];
  }
}

- (void)performPostSaveActions
{
  v3.receiver = self;
  v3.super_class = PUSlideshowSettings;
  [(PXSettings *)&v3 performPostSaveActions];
  [(PUSlideshowSettings *)self saveInteractiveSlideshowSettingsInUserDefaults];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PUSlideshowSettings;
  v4 = [(PTSettings *)&v6 copyWithZone:a3];
  objc_storeStrong(v4 + 12, self->_currentPreset);
  objc_storeStrong(v4 + 25, self->_currentPresetUniqueIdentifier);
  return v4;
}

+ (id)settingsControllerModule
{
  v73[4] = *MEMORY[0x1E69E9840];
  v2 = +[PUSlideshowSettings sharedInstance];
  [v2 restoreCurrentInteractiveTransitionValuesFromUserDefaults];

  v3 = +[PUSlideshowSettings sharedInstance];
  v4 = [v3 currentPreset];

  v5 = 0x1E69C6000uLL;
  v6 = 0x1E69C6000uLL;
  if (v4)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = +[PUSlideshowSettings sharedInstance];
    v9 = [v8 currentPreset];
    v10 = [v9 localizedName];
    v67 = [v7 stringWithFormat:@"Features (%@)", v10];

    v65 = MEMORY[0x1E69C6638];
    v62 = [MEMORY[0x1E69C66A8] rowWithTitle:@"User Interactivity" valueKeyPath:@"allowUserInteractivity"];
    v73[0] = v62;
    v57 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Transition valueKeyPath:{tracking box radius", @"interactiveTransitionFingerTrackingBoxRadiusDefaultValue"}];
    v64 = +[PUSlideshowSettings sharedInstance];
    [v64 interactiveTransitionFingerTrackingBoxRadiusMinValue];
    v12 = v11;
    v63 = +[PUSlideshowSettings sharedInstance];
    [v63 interactiveTransitionFingerTrackingBoxRadiusMaxValue];
    v60 = [v57 minValue:v12 maxValue:v13];
    v61 = +[PUSlideshowSettings sharedInstance];
    [v61 interactiveTransitionFingerTrackingBoxRadiusIncrementValue];
    v59 = [v60 pu_increment:?];
    v58 = [v59 conditionFormat:@"allowUserInteractivity != 0"];
    v73[1] = v58;
    v55 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Transition valueKeyPath:{progress thr", @"interactiveTransitionProgressThresholdDefaultValue"}];
    v56 = +[PUSlideshowSettings sharedInstance];
    [v56 interactiveTransitionProgressThresholdMinValue];
    v15 = v14;
    v54 = +[PUSlideshowSettings sharedInstance];
    [v54 interactiveTransitionProgressThresholdMaxValue];
    v52 = [v55 minValue:v15 maxValue:v16];
    v53 = +[PUSlideshowSettings sharedInstance];
    [v53 interactiveTransitionProgressThresholdIncrementValue];
    v51 = [v52 pu_increment:?];
    v17 = [v51 conditionFormat:@"allowUserInteractivity != 0"];
    v73[2] = v17;
    v18 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Transition valueKeyPath:{velocity thr 4 always finishing", @"interactiveTransitionVelocityThresholdForAlwaysFinishingDefaultValue"}];
    v19 = +[PUSlideshowSettings sharedInstance];
    [v19 interactiveTransitionVelocityThresholdForAlwaysFinishingMinValue];
    v21 = v20;
    v22 = +[PUSlideshowSettings sharedInstance];
    [v22 interactiveTransitionVelocityThresholdForAlwaysFinishingMaxValue];
    v24 = [v18 minValue:v21 maxValue:v23];
    v25 = +[PUSlideshowSettings sharedInstance];
    [v25 interactiveTransitionVelocityThresholdForAlwaysFinishingIncrementValue];
    v26 = [v24 pu_increment:?];
    v27 = [v26 conditionFormat:@"allowUserInteractivity != 0"];
    v73[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
    v66 = [v65 sectionWithRows:v28 title:v67];

    v6 = 0x1E69C6000;
    v29 = v57;

    v30 = v62;
    v5 = 0x1E69C6000;
  }

  else
  {
    v31 = MEMORY[0x1E69C6638];
    v30 = [MEMORY[0x1E69C66A8] rowWithTitle:@"User Interactivity" valueKeyPath:@"allowUserInteractivity"];
    v72 = v30;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v72 count:1];
    v67 = @"Features";
    v66 = [v31 sectionWithRows:v29 title:?];
  }

  v32 = *(v5 + 1592);
  v33 = [*(v6 + 1704) rowWithTitle:@"Fullscreen support" valueKeyPath:@"slideshowSettingsEnableFullscreenSupport"];
  v71 = v33;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
  v35 = [v32 sectionWithRows:v34 title:@"Presentation Settings"];

  v36 = [MEMORY[0x1E69C6658] actionWithHandler:&__block_literal_global_128];
  v37 = *(v5 + 1592);
  v38 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Reset Transition Timing Customizations" action:v36];
  v70 = v38;
  v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v70 count:1];
  v40 = [v37 sectionWithRows:v39];

  v41 = *(v5 + 1592);
  v42 = MEMORY[0x1E69C65E8];
  v43 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v44 = [v42 rowWithTitle:@"Restore Defaults" action:v43];
  v69 = v44;
  v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v69 count:1];
  v46 = [v41 sectionWithRows:v45];

  v47 = *(v5 + 1592);
  v68[0] = v66;
  v68[1] = v35;
  v68[2] = v40;
  v68[3] = v46;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:4];
  v49 = [v47 moduleWithTitle:@"One Up" contents:v48];

  return v49;
}

uint64_t __47__PUSlideshowSettings_settingsControllerModule__block_invoke()
{
  v0 = +[PUSlideshowSettings sharedInstance];
  [v0 removeTransitionTimingCustomizationsFromUserDefaults];

  v1 = +[PUSlideshowSettings sharedInstance];
  [v1 setDefaultPresetTransitionValues];

  return 1;
}

+ (PUSlideshowSettings)sharedInstance
{
  if (sharedInstance_onceToken_81212 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_81212, &__block_literal_global_81213);
  }

  v3 = sharedInstance_sharedInstance_81214;

  return v3;
}

void __37__PUSlideshowSettings_sharedInstance__block_invoke()
{
  v2 = +[PURootSettings sharedInstance];
  v0 = [v2 slideshowSettings];
  v1 = sharedInstance_sharedInstance_81214;
  sharedInstance_sharedInstance_81214 = v0;
}

@end