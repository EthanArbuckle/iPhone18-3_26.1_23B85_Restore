@interface WiFiKeys
+ (NSString)BSSIDKey;
+ (NSString)DisplayNameKey;
+ (NSString)MACAddressKey;
+ (NSString)PreferredNetworkKey;
+ (NSString)RSSIKey;
+ (NSString)SSIDKey;
+ (NSString)SecurityTypeKey;
- (_TtC15WiFiSettingsKit8WiFiKeys)init;
@end

@implementation WiFiKeys

+ (NSString)SSIDKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)BSSIDKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)DisplayNameKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)SecurityTypeKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)RSSIKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)MACAddressKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

+ (NSString)PreferredNetworkKey
{
  v2 = sub_2741C7E3C();

  return v2;
}

- (_TtC15WiFiSettingsKit8WiFiKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for WiFiKeys();
  return [(WiFiKeys *)&v3 init];
}

@end