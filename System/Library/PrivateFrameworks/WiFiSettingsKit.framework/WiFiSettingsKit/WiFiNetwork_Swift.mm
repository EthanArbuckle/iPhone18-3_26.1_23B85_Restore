@interface WiFiNetwork_Swift
- (BOOL)isEqual:(id)equal;
- (BOOL)isPreferred;
- (NSString)description;
- (NSString)name;
- (WiFiNetwork_Swift)init;
- (WiFiNetwork_Swift)initWithNetworkInfo:(id)info cwfNetworkProfiles:(id)profiles;
- (WiFiNetwork_Swift)initWithNetworkProfile:(id)profile;
- (WiFiNetwork_Swift)initWithSSID:(id)d securityType:(int64_t)type rssi:(double)rssi macAddress:(id)address;
- (double)rssi;
- (int64_t)hash;
- (void)setIsPreferred:(BOOL)preferred;
- (void)setRssi:(double)rssi;
@end

@implementation WiFiNetwork_Swift

- (NSString)name
{
  v2 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name);
  v3 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name + 8);

  v4 = sub_2741C7E3C();

  return v4;
}

- (double)rssi
{
  v3 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRssi:(double)rssi
{
  v5 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  *(self + v5) = rssi;
}

- (BOOL)isPreferred
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2741C6BEC();

  return v5;
}

- (void)setIsPreferred:(BOOL)preferred
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_2741C6BFC();
}

- (WiFiNetwork_Swift)initWithNetworkInfo:(id)info cwfNetworkProfiles:(id)profiles
{
  v5 = sub_2741C7D6C();
  if (profiles)
  {
    v6 = v5;
    sub_2740BA268(0, &qword_280937E20, 0x277D02B38);
    v7 = sub_2741C7FEC();
    v5 = v6;
  }

  else
  {
    v7 = 0;
  }

  return WiFiNetwork.init(networkInfo:cwfNetworkProfiles:)(v5, v7);
}

- (WiFiNetwork_Swift)initWithSSID:(id)d securityType:(int64_t)type rssi:(double)rssi macAddress:(id)address
{
  v9 = sub_2741C7E7C();
  if (address)
  {
    v11 = v9;
    v12 = v10;
    v13 = sub_2741C7E7C();
    v9 = v11;
    v15 = v14;
    v10 = v12;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  return WiFiNetwork.init(ssid:securityType:rssi:macAddress:)(v9, v10, type, v13, v15, rssi);
}

- (WiFiNetwork_Swift)initWithNetworkProfile:(id)profile
{
  profileCopy = profile;
  v4 = sub_274125B3C(profileCopy);

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  WiFiNetwork.description.getter();

  v3 = sub_2741C7E3C();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = WiFiNetwork.isEqual(_:)(v8);

  sub_2740B29E8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name);
  v3 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  selfCopy = self;
  v5 = MEMORY[0x2743E6010](v2, v3);

  return v5;
}

- (WiFiNetwork_Swift)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end