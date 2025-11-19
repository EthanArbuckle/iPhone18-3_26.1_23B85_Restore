@interface PXSolariumSettings
+ (PXSolariumSettings)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXSolariumSettings

+ (PXSolariumSettings)sharedInstance
{
  if (sharedInstance_onceToken_254880 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_254880, &__block_literal_global_254881);
  }

  v3 = sharedInstance_sharedInstance_254882;

  return v3;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXSolariumSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXSolariumSettings *)self setPinCollectionsTabTitle:0];
  [(PXSolariumSettings *)self setUseNewSearch:MEMORY[0x1A590D320]([(PXSolariumSettings *)self setPinSearchTabTitle:1])];
  [(PXSolariumSettings *)self setEnableAdaptiveDarkBiasInGrid:1];
  [(PXSolariumSettings *)self setEnableAdaptiveDarkBiasInEdit:0];
  [(PXSolariumSettings *)self setDisableInfoButtonMonochromaticWorkaround:0];
  [(PXSolariumSettings *)self setUseNewMainViewLayout:MEMORY[0x1A590D320]([(PXSolariumSettings *)self setEnableStatusBarsHiddenFromCameraPadOneUp:1])];
  [(PXSolariumSettings *)self setShowShelvesOrderResetButton:0];
  [(PXSolariumSettings *)self setOneShelfExpandingMovementAnimationType:1];
  [(PXSolariumSettings *)self setOneShelfExpandingMovementAnimationDuration:0.3];
  [(PXSolariumSettings *)self setOneShelfExpandingMovementAnimationDelay:0.0];
  [(PXSolariumSettings *)self setOneShelfExpandingOpacityAnimationType:1];
  [(PXSolariumSettings *)self setOneShelfExpandingOpacityAnimationDuration:0.15];
  [(PXSolariumSettings *)self setOneShelfExpandingOpacityAnimationDelay:0.0];
  [(PXSolariumSettings *)self setOneShelfCollapsingMovementAnimationType:1];
  [(PXSolariumSettings *)self setOneShelfCollapsingMovementAnimationDuration:0.3];
  [(PXSolariumSettings *)self setOneShelfCollapsingMovementAnimationDelay:0.0];
  [(PXSolariumSettings *)self setOneShelfCollapsingOpacityAnimationType:1];
  [(PXSolariumSettings *)self setOneShelfCollapsingOpacityAnimationDuration:0.15];
  [(PXSolariumSettings *)self setOneShelfCollapsingOpacityAnimationDelay:0.0];
  [(PXSolariumSettings *)self setAllShelvesExpandingMovementAnimationType:3];
  [(PXSolariumSettings *)self setAllShelvesExpandingMovementAnimationDuration:0.5];
  [(PXSolariumSettings *)self setAllShelvesExpandingMovementAnimationDelay:0.0];
  [(PXSolariumSettings *)self setAllShelvesExpandingOpacityAnimationType:3];
  [(PXSolariumSettings *)self setAllShelvesExpandingOpacityAnimationDuration:0.5];
  [(PXSolariumSettings *)self setAllShelvesExpandingOpacityAnimationDelay:0.0];
  [(PXSolariumSettings *)self setAllShelvesCollapsingMovementAnimationType:3];
  [(PXSolariumSettings *)self setAllShelvesCollapsingMovementAnimationDuration:0.5];
  [(PXSolariumSettings *)self setAllShelvesCollapsingMovementAnimationDelay:0.0];
  [(PXSolariumSettings *)self setAllShelvesCollapsingOpacityAnimationType:3];
  [(PXSolariumSettings *)self setAllShelvesCollapsingOpacityAnimationDuration:0.5];
  [(PXSolariumSettings *)self setAllShelvesCollapsingOpacityAnimationDelay:0.0];
}

void __36__PXSolariumSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 solariumSettings];
  v1 = sharedInstance_sharedInstance_254882;
  sharedInstance_sharedInstance_254882 = v0;
}

@end