@interface WiFiNetwork_Swift
- (BOOL)isEqual:(id)a3;
- (BOOL)isPreferred;
- (NSString)description;
- (NSString)name;
- (WiFiNetwork_Swift)init;
- (WiFiNetwork_Swift)initWithNetworkInfo:(id)a3 cwfNetworkProfiles:(id)a4;
- (WiFiNetwork_Swift)initWithNetworkProfile:(id)a3;
- (WiFiNetwork_Swift)initWithSSID:(id)a3 securityType:(int64_t)a4 rssi:(double)a5 macAddress:(id)a6;
- (double)rssi;
- (int64_t)hash;
- (void)setIsPreferred:(BOOL)a3;
- (void)setRssi:(double)a3;
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

- (void)setRssi:(double)a3
{
  v5 = OBJC_IVAR___WiFiNetwork_Swift_rssi;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isPreferred
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_2741C6BEC();

  return v5;
}

- (void)setIsPreferred:(BOOL)a3
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_2741C6BFC();
}

- (WiFiNetwork_Swift)initWithNetworkInfo:(id)a3 cwfNetworkProfiles:(id)a4
{
  v5 = sub_2741C7D6C();
  if (a4)
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

- (WiFiNetwork_Swift)initWithSSID:(id)a3 securityType:(int64_t)a4 rssi:(double)a5 macAddress:(id)a6
{
  v9 = sub_2741C7E7C();
  if (a6)
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

  return WiFiNetwork.init(ssid:securityType:rssi:macAddress:)(v9, v10, a4, v13, v15, a5);
}

- (WiFiNetwork_Swift)initWithNetworkProfile:(id)a3
{
  v3 = a3;
  v4 = sub_274125B3C(v3);

  return v4;
}

- (NSString)description
{
  v2 = self;
  WiFiNetwork.description.getter();

  v3 = sub_2741C7E3C();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_2741C83DC();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = WiFiNetwork.isEqual(_:)(v8);

  sub_2740B29E8(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name);
  v3 = *(self + OBJC_IVAR___WiFiNetwork_Swift_name + 8);
  v4 = self;
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