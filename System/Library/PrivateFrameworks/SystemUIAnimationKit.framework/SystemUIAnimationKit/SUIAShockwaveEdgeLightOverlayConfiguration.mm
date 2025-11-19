@interface SUIAShockwaveEdgeLightOverlayConfiguration
@end

@implementation SUIAShockwaveEdgeLightOverlayConfiguration

void __139___SUIAShockwaveEdgeLightOverlayConfiguration_edgeLightOverlayConfigurationForState_variant_normalizedStartLocation_settings_bounds_idiom___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [v10 valueForKeyPath:v8];
  [v11 setValue:v12 forKeyPath:v9];

  [v10 delayForApplicationOfKeypath:v8];
  [v11 _setDelay:v9 forApplicationOfKeypath:?];
  v13 = [v10 behaviorSettingsForKeypath:v8];

  [v11 _setBehaviorSettings:v13 forKeypath:v9];
}

@end