@interface PEGlobalSettings
+ (id)globalSettings;
+ (id)sharedSettings;
+ (void)injectSettings:(id)settings;
- (BOOL)existingBoolValueForKey:(id)key withDefaultValue:(BOOL)value;
- (PEGlobalSettings)init;
- (PESettings)injectedSettings;
- (double)existingFloatValueForKey:(id)key withDefaultValue:(double)value;
- (int64_t)existingIntegerValueForKey:(id)key withDefaultValue:(int64_t)value;
- (void)_setInitialValues;
@end

@implementation PEGlobalSettings

+ (id)globalSettings
{
  if (globalSettings_onceToken != -1)
  {
    dispatch_once(&globalSettings_onceToken, &__block_literal_global);
  }

  v3 = globalSettings_sharedGlobalInstance;

  return v3;
}

uint64_t __34__PEGlobalSettings_globalSettings__block_invoke()
{
  globalSettings_sharedGlobalInstance = objc_alloc_init(PEGlobalSettings);

  return MEMORY[0x2821F96F8]();
}

- (PEGlobalSettings)init
{
  v5.receiver = self;
  v5.super_class = PEGlobalSettings;
  v2 = [(PEGlobalSettings *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PEGlobalSettings *)v2 _setInitialValues];
  }

  return v3;
}

- (void)_setInitialValues
{
  [(PEGlobalSettings *)self setTargetPointsFillStrategy:0];
  v3 = MEMORY[0x277CCACA8];
  v4 = NSStringFromSelector(sel_cleanupLassoDistance);
  uppercaseString = [v4 uppercaseString];
  v6 = [v3 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString];
  [(PEGlobalSettings *)self existingFloatValueForKey:v6 withDefaultValue:36.0];
  [(PEGlobalSettings *)self setCleanupLassoDistance:?];

  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(sel_cleanupLassoHeadTailFraction);
  uppercaseString2 = [v8 uppercaseString];
  v10 = [v7 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString2];
  [(PEGlobalSettings *)self existingFloatValueForKey:v10 withDefaultValue:0.1];
  [(PEGlobalSettings *)self setCleanupLassoHeadTailFraction:?];

  v11 = MEMORY[0x277CCACA8];
  v12 = NSStringFromSelector(sel_cleanupLassoHeadTailMaxLength);
  uppercaseString3 = [v12 uppercaseString];
  v14 = [v11 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString3];
  [(PEGlobalSettings *)self existingFloatValueForKey:v14 withDefaultValue:80.0];
  [(PEGlobalSettings *)self setCleanupLassoHeadTailMaxLength:?];

  v15 = MEMORY[0x277CCACA8];
  v16 = NSStringFromSelector(sel_cleanupFilledCoverageRatio);
  uppercaseString4 = [v16 uppercaseString];
  v18 = [v15 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString4];
  [(PEGlobalSettings *)self existingFloatValueForKey:v18 withDefaultValue:0.01];
  [(PEGlobalSettings *)self setCleanupFilledCoverageRatio:?];

  v19 = MEMORY[0x277CCACA8];
  v20 = NSStringFromSelector(sel_cleanupShortStrokeLengthThreshold);
  uppercaseString5 = [v20 uppercaseString];
  v22 = [v19 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString5];
  [(PEGlobalSettings *)self existingFloatValueForKey:v22 withDefaultValue:60.0];
  [(PEGlobalSettings *)self setCleanupShortStrokeLengthThreshold:?];

  v23 = MEMORY[0x277CCACA8];
  v24 = NSStringFromSelector(sel_cleanupShortStrokeAngleThreshold);
  uppercaseString6 = [v24 uppercaseString];
  v26 = [v23 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString6];
  [(PEGlobalSettings *)self existingFloatValueForKey:v26 withDefaultValue:270.0];
  [(PEGlobalSettings *)self setCleanupShortStrokeAngleThreshold:?];

  v27 = MEMORY[0x277CCACA8];
  v28 = NSStringFromSelector(sel_retouchTargetPointCoverageThreshold);
  uppercaseString7 = [v28 uppercaseString];
  v30 = [v27 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString7];
  [(PEGlobalSettings *)self existingFloatValueForKey:v30 withDefaultValue:0.4];
  [(PEGlobalSettings *)self setRetouchTargetPointCoverageThreshold:?];

  v31 = MEMORY[0x277CCACA8];
  v32 = NSStringFromSelector(sel_skipOnDemandSegmentationOnFaces);
  uppercaseString8 = [v32 uppercaseString];
  v34 = [v31 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString8];
  [(PEGlobalSettings *)self setSkipOnDemandSegmentationOnFaces:[(PEGlobalSettings *)self existingBoolValueForKey:v34 withDefaultValue:0]];

  v35 = MEMORY[0x277CCACA8];
  v36 = NSStringFromSelector(sel_retouchStrokeIntersectionPercentage);
  uppercaseString9 = [v36 uppercaseString];
  v38 = [v35 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString9];
  [(PEGlobalSettings *)self existingFloatValueForKey:v38 withDefaultValue:12.0];
  [(PEGlobalSettings *)self setRetouchStrokeIntersectionPercentage:?];

  v39 = MEMORY[0x277CCACA8];
  v40 = NSStringFromSelector(sel_subjectExclusionMaskHitRadiusForPencilTouch);
  uppercaseString10 = [v40 uppercaseString];
  v42 = [v39 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString10];
  [(PEGlobalSettings *)self existingFloatValueForKey:v42 withDefaultValue:2.0];
  [(PEGlobalSettings *)self setSubjectExclusionMaskHitRadiusForPencilTouch:?];

  v43 = MEMORY[0x277CCACA8];
  v44 = NSStringFromSelector(sel_subjectExclusionMaskHitRadiusForDirectTouch);
  uppercaseString11 = [v44 uppercaseString];
  v46 = [v43 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString11];
  [(PEGlobalSettings *)self existingFloatValueForKey:v46 withDefaultValue:4.0];
  [(PEGlobalSettings *)self setSubjectExclusionMaskHitRadiusForDirectTouch:?];

  v47 = MEMORY[0x277CCACA8];
  v48 = NSStringFromSelector(sel_retouchDefaultModeBrushSizeDefault);
  uppercaseString12 = [v48 uppercaseString];
  v50 = [v47 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString12];
  [(PEGlobalSettings *)self existingFloatValueForKey:v50 withDefaultValue:10.0];
  [(PEGlobalSettings *)self setRetouchDefaultModeBrushSizeDefault:?];

  v51 = MEMORY[0x277CCACA8];
  v54 = NSStringFromSelector(sel_retouchShowsDefaultModeSlider);
  uppercaseString13 = [v54 uppercaseString];
  v53 = [v51 stringWithFormat:@"PE_SETTINGS_%@", uppercaseString13];
  [(PEGlobalSettings *)self setRetouchShowsDefaultModeSlider:[(PEGlobalSettings *)self existingBoolValueForKey:v53 withDefaultValue:0]];
}

- (PESettings)injectedSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_injectedSettings);

  return WeakRetained;
}

- (int64_t)existingIntegerValueForKey:(id)key withDefaultValue:(int64_t)value
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:keyCopy];

  if (v7)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    value = [standardUserDefaults2 integerForKey:keyCopy];
  }

  return value;
}

- (double)existingFloatValueForKey:(id)key withDefaultValue:(double)value
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:keyCopy];

  if (v7)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 floatForKey:keyCopy];
    value = v9;
  }

  return value;
}

- (BOOL)existingBoolValueForKey:(id)key withDefaultValue:(BOOL)value
{
  keyCopy = key;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults objectForKey:keyCopy];

  if (v7)
  {
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    value = [standardUserDefaults2 BOOLForKey:keyCopy];
  }

  return value;
}

+ (void)injectSettings:(id)settings
{
  settingsCopy = settings;
  v4 = +[PEGlobalSettings globalSettings];
  [v4 setInjectedSettings:settingsCopy];
}

+ (id)sharedSettings
{
  v2 = +[PEGlobalSettings globalSettings];
  injectedSettings = [v2 injectedSettings];

  return injectedSettings;
}

@end