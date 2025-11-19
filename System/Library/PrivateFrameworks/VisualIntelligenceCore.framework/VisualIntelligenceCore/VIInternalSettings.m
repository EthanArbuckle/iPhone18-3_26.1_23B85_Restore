@interface VIInternalSettings
+ (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4;
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
+ (double)doubleForKey:(id)a3 defaultValue:(double)a4;
+ (id)defaultsKeyForKey:(id)a3;
+ (id)settingsValueForKey:(id)a3;
- (VIInternalSettings)init;
@end

@implementation VIInternalSettings

+ (BOOL)dumpDebugArtifacts
{
  v3 = sub_1D8B15940();
  LOBYTE(a1) = [a1 BOOLForKey:v3 defaultValue:0];

  return a1;
}

+ (BOOL)dumpExportedImagery
{
  v3 = sub_1D8B15940();
  LOBYTE(a1) = [a1 BOOLForKey:v3 defaultValue:0];

  return a1;
}

+ (BOOL)searchGlyphsMode
{
  v3 = sub_1D8B15940();
  LOBYTE(a1) = [a1 BOOLForKey:v3 defaultValue:0];

  return a1;
}

+ (BOOL)showTapToRadar
{
  v3 = sub_1D8B15940();
  LOBYTE(a1) = [a1 BOOLForKey:v3 defaultValue:1];

  return a1;
}

+ (BOOL)showDeveloperMenu
{
  v3 = sub_1D8B15940();
  LOBYTE(a1) = [a1 BOOLForKey:v3 defaultValue:0];

  return a1;
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
  [a1 BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)dumpDebugArtifactsSettingsValue
{
  v3 = sub_1D8B15940();
  [a1 BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)searchGlyphsModeSettingsValue
{
  v3 = sub_1D8B15940();
  [a1 BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)showTapToRadarSettingsValue
{
  v3 = sub_1D8B15940();
  [a1 BOOLForKey:v3 defaultValue:1];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (NSNumber)showDeveloperMenuSettingsValue
{
  v3 = sub_1D8B15940();
  [a1 BOOLForKey:v3 defaultValue:0];

  v4 = sub_1D8B15DF0();

  return v4;
}

+ (id)settingsValueForKey:(id)a3
{
  v3 = sub_1D8B15970();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = sub_1D89AE080(v3, v5);

  return v6;
}

+ (id)defaultsKeyForKey:(id)a3
{
  sub_1D8B15970();
  sub_1D89AE5D4();

  v3 = sub_1D8B15940();

  return v3;
}

+ (BOOL)BOOLForKey:(id)a3 defaultValue:(BOOL)a4
{
  v5 = sub_1D8B15970();
  v7 = v6;
  swift_getObjCClassMetadata();
  v8 = sub_1D89AE270(v5, v7, a4);

  return v8 & 1;
}

+ (double)doubleForKey:(id)a3 defaultValue:(double)a4
{
  sub_1D8B15970();
  swift_getObjCClassMetadata();
  v5 = sub_1D89AE418(a4);

  return v5;
}

@end