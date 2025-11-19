@interface WFSpotlightSettingsClient
+ (WFSpotlightSettingsClient)shared;
- (BOOL)isSpotlightEnabledForBundleIdentifier:(id)a3;
@end

@implementation WFSpotlightSettingsClient

+ (WFSpotlightSettingsClient)shared
{
  v2 = static SpotlightSettingsClient.shared.getter();

  return v2;
}

- (BOOL)isSpotlightEnabledForBundleIdentifier:(id)a3
{
  v4 = sub_231158E58();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = SpotlightSettingsClient.isSpotlightEnabled(for:)(v8);

  return v4 & 1;
}

@end