@interface VIInternalSettings
+ (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value;
+ (BOOL)dumpDebugArtifacts;
+ (BOOL)dumpExportedImagery;
+ (BOOL)searchGlyphsMode;
+ (BOOL)showDeveloperMenu;
+ (BOOL)showTapToRadar;
+ (NSNumber)dumpDebugArtifactsSettingsValue;
+ (NSNumber)dumpExportedImagerySettingsValue;
+ (NSNumber)searchGlyphsModeSettingsValue;
+ (NSNumber)showDeveloperMenuSettingsValue;
+ (NSNumber)showTapToRadarSettingsValue;
+ (double)doubleForKey:(id)key defaultValue:(double)value;
+ (id)defaultsKeyForKey:(id)key;
+ (id)settingsValueForKey:(id)key;
- (VIInternalSettings)init;
@end

@implementation VIInternalSettings

+ (BOOL)dumpDebugArtifacts
{
  v3 = sub_1D8B15940();
  LOBYTE(self) = [self BOOLForKey:v3 defaultValue:0];

  return self;
}

+ (BOOL)dumpExportedImagery
{
  v3 = sub_1D8B15940();
  LOBYTE(self) = [self BOOLForKey:v3 defaultValue:0];

  return self;
}

+ (BOOL)searchGlyphsMode
{
  v3 = sub_1D8B15940();
  LOBYTE(self) = [self BOOLForKey:v3 defaultValue:0];

  return self;
}

+ (BOOL)showTapToRadar
{
  v3 = sub_1D8B15940();
  LOBYTE(self) = [self BOOLForKey:v3 defaultValue:1];

  return self;
}

+ (BOOL)showDeveloperMenu
{
  v3 = sub_1D8B15940();
  LOBYTE(self) = [self BOOLForKey:v3 defaultValue:0];

  return self;
}

- (VIInternalSettings)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InternalSettings();
  return [(VIInternalSettings *)&v3 init];
}

+ (NSNumber)dumpExportedImagerySettingsValue
{
  v3 = sub_1D8B15940();
  [self BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)dumpDebugArtifactsSettingsValue
{
  v3 = sub_1D8B15940();
  [self BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)searchGlyphsModeSettingsValue
{
  v3 = sub_1D8B15940();
  [self BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)showTapToRadarSettingsValue
{
  v3 = sub_1D8B15940();
  [self BOOLForKey:v3 defaultValue:1];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)showDeveloperMenuSettingsValue
{
  v3 = sub_1D8B15940();
  [self BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (id)settingsValueForKey:(id)key
{
  v3 = sub_1D8B15970();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1D89AE080(v3, v5);

  return v6;
}

+ (id)defaultsKeyForKey:(id)key
{
  sub_1D8B15970();
  sub_1D89AE5D4();

  v3 = sub_1D8B15940();

  return v3;
}

+ (BOOL)BOOLForKey:(id)key defaultValue:(BOOL)value
{
  v5 = sub_1D8B15970();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = sub_1D89AE270(v5, v7, value);

  return v8 & 1;
}

+ (double)doubleForKey:(id)key defaultValue:(double)value
{
  sub_1D8B15970();
  swift_getObjCClassMetadata();
  v5 = sub_1D89AE418(value);

  return v5;
}

@end