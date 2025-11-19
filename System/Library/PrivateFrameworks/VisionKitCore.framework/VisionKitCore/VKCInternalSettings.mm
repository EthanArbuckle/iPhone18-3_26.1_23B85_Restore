@interface VKCInternalSettings
+ (BOOL)BOOLForKey:(id)a3 withDefaultValue:(BOOL)a4;
+ (NSUserDefaults)defaults;
+ (double)floatForKey:(id)a3 withDefaultValue:(double)a4;
+ (id)addSubjectCropRectToPasteboardSettingsValue;
+ (id)alwaysShowTextSelectionBordersSettingsValue;
+ (id)bypassVIV2MinSizeWorkaroundSettingsValue;
+ (id)debugMenuEnabledSettingsValue;
+ (id)disableAllLiveTextSettingsValue;
+ (id)disableVisualIntelligenceSettingsValue;
+ (id)extraWindowPointTouchOffsetSettingsValue;
+ (id)inhibitVisualBIDISettingsValue;
+ (id)isCGImageForMadEnabledSettingsValue;
+ (id)isOpticalFlowForTextEnabledSettingsValue;
+ (id)isPerformingAutomatedTestSettingsValue;
+ (id)localeFreeQRSupportSettingsValue;
+ (id)logNormalizedVisibleRectProgressSettingsValue;
+ (id)overrideDeviceAvailabilitySettingsValue;
+ (id)settingsValueForKey:(id)a3;
+ (id)shareHeicsCalloutEnabledSettingsValue;
+ (id)subjectAutomaticAnalysisDelaySettingsValue;
+ (id)subjectDragCancellationDelaySettingsValue;
+ (id)subjectDragLiftDelaySettingsValue;
+ (id)visibleTextAreaButtonThresholdSettingsValue;
@end

@implementation VKCInternalSettings

+ (NSUserDefaults)defaults
{
  if (defaults_onceToken != -1)
  {
    +[VKCInternalSettings defaults];
  }

  v3 = defaults_sDefaults;

  return v3;
}

void __31__VKCInternalSettings_defaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.VisionKit.InternalSettings"];
  v1 = defaults_sDefaults;
  defaults_sDefaults = v0;
}

+ (id)settingsValueForKey:(id)a3
{
  v4 = [a3 stringByAppendingString:@"SettingsValue"];
  v5 = NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [a1 performSelector:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)disableAllLiveTextSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disableAllLiveText];

  return [v2 numberWithBool:v3];
}

+ (id)disableVisualIntelligenceSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 disableVisualIntelligence];

  return [v2 numberWithBool:v3];
}

+ (id)logNormalizedVisibleRectProgressSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 logNormalizedVisibleRectProgress];

  return [v2 numberWithBool:v3];
}

+ (id)isCGImageForMadEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 isCGImageForMadEnabled];

  return [v2 numberWithBool:v3];
}

+ (id)bypassVIV2MinSizeWorkaroundSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 bypassVIV2MinSizeWorkaround];

  return [v2 numberWithBool:v3];
}

+ (id)isOpticalFlowForTextEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 isOpticalFlowForTextEnabled];

  return [v2 numberWithBool:v3];
}

+ (id)extraWindowPointTouchOffsetSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 extraWindowPointTouchOffset];

  return [v2 numberWithDouble:?];
}

+ (id)debugMenuEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 debugMenuEnabled];

  return [v2 numberWithBool:v3];
}

+ (id)inhibitVisualBIDISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 inhibitVisualBIDI];

  return [v2 numberWithBool:v3];
}

+ (id)visibleTextAreaButtonThresholdSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 visibleTextAreaButtonThreshold];

  return [v2 numberWithDouble:?];
}

+ (id)alwaysShowTextSelectionBordersSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 alwaysShowTextSelectionBorders];

  return [v2 numberWithBool:v3];
}

+ (id)overrideDeviceAvailabilitySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 overrideDeviceAvailability];

  return [v2 numberWithBool:v3];
}

+ (id)isPerformingAutomatedTestSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 isPerformingAutomatedTest];

  return [v2 numberWithBool:v3];
}

+ (id)subjectDragLiftDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 subjectDragLiftDelay];

  return [v2 numberWithDouble:?];
}

+ (id)subjectDragCancellationDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 subjectDragCancellationDelay];

  return [v2 numberWithDouble:?];
}

+ (id)subjectAutomaticAnalysisDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [a1 subjectAutomaticAnalysisDelay];

  return [v2 numberWithDouble:?];
}

+ (id)addSubjectCropRectToPasteboardSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 addSubjectCropRectToPasteboard];

  return [v2 numberWithBool:v3];
}

+ (id)shareHeicsCalloutEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 shareHeicsCalloutEnabled];

  return [v2 numberWithBool:v3];
}

+ (id)localeFreeQRSupportSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a1 localeFreeQRSupport];

  return [v2 numberWithBool:v3];
}

+ (BOOL)BOOLForKey:(id)a3 withDefaultValue:(BOOL)a4
{
  v6 = [a1 defaultsKeyForKey:a3];
  v7 = [a1 defaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    a4 = [v8 BOOLValue];
  }

  return a4;
}

+ (double)floatForKey:(id)a3 withDefaultValue:(double)a4
{
  v6 = [a1 defaultsKeyForKey:a3];
  v7 = [a1 defaults];
  v8 = [v7 objectForKey:v6];

  if (v8)
  {
    [v8 floatValue];
    a4 = v9;
  }

  return a4;
}

@end