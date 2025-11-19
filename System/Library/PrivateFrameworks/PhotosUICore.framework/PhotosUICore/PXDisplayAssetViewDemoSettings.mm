@interface PXDisplayAssetViewDemoSettings
+ (PXDisplayAssetViewDemoSettings)sharedInstance;
+ (id)transientProperties;
- (NSArray)audioIdentifiersToHighlight;
- (NSArray)humanActionIdentifiersToHighlight;
- (NSArray)personLocalIdentifiersToHighlight;
- (NSArray)sceneIdentifiersToHighlight;
- (NSArray)stringsToHighlight;
- (void)setDefaultValues;
@end

@implementation PXDisplayAssetViewDemoSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetViewDemoSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXDisplayAssetViewDemoSettings *)self setPreferredDynamicRange:2];
  [(PXDisplayAssetViewDemoSettings *)self setAllowsTextSelection:0];
  [(PXDisplayAssetViewDemoSettings *)self setStringToHighlight:0];
  [(PXDisplayAssetViewDemoSettings *)self setSceneIdentifiersToHighlightString:0];
  [(PXDisplayAssetViewDemoSettings *)self setAudioIdentifiersToHighlightString:0];
  [(PXDisplayAssetViewDemoSettings *)self setHumanActionIdentifiersToHighlightString:0];
  [(PXDisplayAssetViewDemoSettings *)self setShowDummyTimeRangeHighlight:0];
}

- (NSArray)personLocalIdentifiersToHighlight
{
  v2 = [(PXDisplayAssetViewDemoSettings *)self personLocalIdentifiersToHighlightString];
  v3 = [v2 componentsSeparatedByString:{@", "}];

  return v3;
}

- (NSArray)humanActionIdentifiersToHighlight
{
  [(PXDisplayAssetViewDemoSettings *)self humanActionIdentifiersToHighlightString];
  [objc_claimAutoreleasedReturnValue() componentsSeparatedByString:{@", "}];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

uint64_t __67__PXDisplayAssetViewDemoSettings_humanActionIdentifiersToHighlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (NSArray)audioIdentifiersToHighlight
{
  [(PXDisplayAssetViewDemoSettings *)self audioIdentifiersToHighlightString];
  [objc_claimAutoreleasedReturnValue() componentsSeparatedByString:{@", "}];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

uint64_t __61__PXDisplayAssetViewDemoSettings_audioIdentifiersToHighlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (NSArray)sceneIdentifiersToHighlight
{
  [(PXDisplayAssetViewDemoSettings *)self sceneIdentifiersToHighlightString];
  [objc_claimAutoreleasedReturnValue() componentsSeparatedByString:{@", "}];
  objc_claimAutoreleasedReturnValue();
  PXMap();
}

uint64_t __61__PXDisplayAssetViewDemoSettings_sceneIdentifiersToHighlight__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 integerValue];

  return [v2 numberWithInteger:v3];
}

- (NSArray)stringsToHighlight
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(PXDisplayAssetViewDemoSettings *)self stringToHighlight];
  if ([v2 length])
  {
    v5[0] = v2;
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)transientProperties
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__PXDisplayAssetViewDemoSettings_transientProperties__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transientProperties_onceToken_85882 != -1)
  {
    dispatch_once(&transientProperties_onceToken_85882, block);
  }

  v2 = transientProperties_transientProperties_85883;

  return v2;
}

void __53__PXDisplayAssetViewDemoSettings_transientProperties__block_invoke(uint64_t a1)
{
  v11[5] = *MEMORY[0x1E69E9840];
  v10.receiver = *(a1 + 32);
  v10.super_class = &OBJC_METACLASS___PXDisplayAssetViewDemoSettings;
  v1 = objc_msgSendSuper2(&v10, sel_transientProperties);
  v2 = NSStringFromSelector(sel_stringsToHighlight);
  v11[0] = v2;
  v3 = NSStringFromSelector(sel_sceneIdentifiersToHighlight);
  v11[1] = v3;
  v4 = NSStringFromSelector(sel_audioIdentifiersToHighlight);
  v11[2] = v4;
  v5 = NSStringFromSelector(sel_humanActionIdentifiersToHighlight);
  v11[3] = v5;
  v6 = NSStringFromSelector(sel_personLocalIdentifiersToHighlight);
  v11[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  v8 = [v1 setByAddingObjectsFromArray:v7];
  v9 = transientProperties_transientProperties_85883;
  transientProperties_transientProperties_85883 = v8;
}

+ (PXDisplayAssetViewDemoSettings)sharedInstance
{
  if (sharedInstance_onceToken_85890 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_85890, &__block_literal_global_85891);
  }

  v3 = sharedInstance_sharedInstance_85892;

  return v3;
}

void __48__PXDisplayAssetViewDemoSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 assetViewDemoSettings];
  v1 = sharedInstance_sharedInstance_85892;
  sharedInstance_sharedInstance_85892 = v0;
}

@end