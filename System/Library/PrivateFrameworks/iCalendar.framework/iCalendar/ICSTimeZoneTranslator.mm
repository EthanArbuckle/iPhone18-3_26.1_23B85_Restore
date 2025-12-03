@interface ICSTimeZoneTranslator
+ (id)timeZoneNameForNonstandardTimeZone:(id)zone;
@end

@implementation ICSTimeZoneTranslator

+ (id)timeZoneNameForNonstandardTimeZone:(id)zone
{
  v3 = timeZoneNameForNonstandardTimeZone__onceToken;
  zoneCopy = zone;
  if (v3 != -1)
  {
    +[ICSTimeZoneTranslator timeZoneNameForNonstandardTimeZone:];
  }

  v5 = [timeZoneNameForNonstandardTimeZone__nonstandardTimeZones objectForKeyedSubscript:zoneCopy];

  return v5;
}

void __60__ICSTimeZoneTranslator_timeZoneNameForNonstandardTimeZone___block_invoke()
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v0 = [v3 pathForResource:@"nonstandardTimeZones" ofType:@"plist"];
  v1 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v0];
  v2 = timeZoneNameForNonstandardTimeZone__nonstandardTimeZones;
  timeZoneNameForNonstandardTimeZone__nonstandardTimeZones = v1;
}

@end