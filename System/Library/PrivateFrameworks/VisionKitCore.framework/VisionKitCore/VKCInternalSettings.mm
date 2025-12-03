@interface VKCInternalSettings
+ (BOOL)BOOLForKey:(id)key withDefaultValue:(BOOL)value;
+ (NSUserDefaults)defaults;
+ (double)floatForKey:(id)key withDefaultValue:(double)value;
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
+ (id)settingsValueForKey:(id)key;
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

+ (id)settingsValueForKey:(id)key
{
  v4 = [key stringByAppendingString:@"SettingsValue"];
  v5 = NSSelectorFromString(v4);
  if (objc_opt_respondsToSelector())
  {
    v6 = [self performSelector:v5];
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
  disableAllLiveText = [self disableAllLiveText];

  return [v2 numberWithBool:disableAllLiveText];
}

+ (id)disableVisualIntelligenceSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  disableVisualIntelligence = [self disableVisualIntelligence];

  return [v2 numberWithBool:disableVisualIntelligence];
}

+ (id)logNormalizedVisibleRectProgressSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  logNormalizedVisibleRectProgress = [self logNormalizedVisibleRectProgress];

  return [v2 numberWithBool:logNormalizedVisibleRectProgress];
}

+ (id)isCGImageForMadEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  isCGImageForMadEnabled = [self isCGImageForMadEnabled];

  return [v2 numberWithBool:isCGImageForMadEnabled];
}

+ (id)bypassVIV2MinSizeWorkaroundSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  bypassVIV2MinSizeWorkaround = [self bypassVIV2MinSizeWorkaround];

  return [v2 numberWithBool:bypassVIV2MinSizeWorkaround];
}

+ (id)isOpticalFlowForTextEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  isOpticalFlowForTextEnabled = [self isOpticalFlowForTextEnabled];

  return [v2 numberWithBool:isOpticalFlowForTextEnabled];
}

+ (id)extraWindowPointTouchOffsetSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [self extraWindowPointTouchOffset];

  return [v2 numberWithDouble:?];
}

+ (id)debugMenuEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  debugMenuEnabled = [self debugMenuEnabled];

  return [v2 numberWithBool:debugMenuEnabled];
}

+ (id)inhibitVisualBIDISettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  inhibitVisualBIDI = [self inhibitVisualBIDI];

  return [v2 numberWithBool:inhibitVisualBIDI];
}

+ (id)visibleTextAreaButtonThresholdSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [self visibleTextAreaButtonThreshold];

  return [v2 numberWithDouble:?];
}

+ (id)alwaysShowTextSelectionBordersSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  alwaysShowTextSelectionBorders = [self alwaysShowTextSelectionBorders];

  return [v2 numberWithBool:alwaysShowTextSelectionBorders];
}

+ (id)overrideDeviceAvailabilitySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  overrideDeviceAvailability = [self overrideDeviceAvailability];

  return [v2 numberWithBool:overrideDeviceAvailability];
}

+ (id)isPerformingAutomatedTestSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  isPerformingAutomatedTest = [self isPerformingAutomatedTest];

  return [v2 numberWithBool:isPerformingAutomatedTest];
}

+ (id)subjectDragLiftDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [self subjectDragLiftDelay];

  return [v2 numberWithDouble:?];
}

+ (id)subjectDragCancellationDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [self subjectDragCancellationDelay];

  return [v2 numberWithDouble:?];
}

+ (id)subjectAutomaticAnalysisDelaySettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  [self subjectAutomaticAnalysisDelay];

  return [v2 numberWithDouble:?];
}

+ (id)addSubjectCropRectToPasteboardSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  addSubjectCropRectToPasteboard = [self addSubjectCropRectToPasteboard];

  return [v2 numberWithBool:addSubjectCropRectToPasteboard];
}

+ (id)shareHeicsCalloutEnabledSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  shareHeicsCalloutEnabled = [self shareHeicsCalloutEnabled];

  return [v2 numberWithBool:shareHeicsCalloutEnabled];
}

+ (id)localeFreeQRSupportSettingsValue
{
  v2 = MEMORY[0x1E696AD98];
  localeFreeQRSupport = [self localeFreeQRSupport];

  return [v2 numberWithBool:localeFreeQRSupport];
}

+ (BOOL)BOOLForKey:(id)key withDefaultValue:(BOOL)value
{
  v6 = [self defaultsKeyForKey:key];
  defaults = [self defaults];
  v8 = [defaults objectForKey:v6];

  if (v8)
  {
    value = [v8 BOOLValue];
  }

  return value;
}

+ (double)floatForKey:(id)key withDefaultValue:(double)value
{
  v6 = [self defaultsKeyForKey:key];
  defaults = [self defaults];
  v8 = [defaults objectForKey:v6];

  if (v8)
  {
    [v8 floatValue];
    value = v9;
  }

  return value;
}

@end