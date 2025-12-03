@interface WiFiNetwork
- (BOOL)isEqual:(id)equal;
- (WiFiNetwork)initWithNetworkInfo:(id)info cwfNetworkProfiles:(id)profiles;
- (WiFiNetwork)initWithSSID:(id)d securityType:(int64_t)type rssi:(int64_t)rssi macAddress:(id)address;
- (id)description;
- (unint64_t)hash;
@end

@implementation WiFiNetwork

- (WiFiNetwork)initWithNetworkInfo:(id)info cwfNetworkProfiles:(id)profiles
{
  infoCopy = info;
  profilesCopy = profiles;
  v12.receiver = self;
  v12.super_class = WiFiNetwork;
  v8 = [(WiFiNetwork *)&v12 init];
  if (v8)
  {
    v9 = [[WiFiNetwork_Swift alloc] initWithNetworkInfo:infoCopy cwfNetworkProfiles:profilesCopy];
    wifiNetworkSwift = v8->_wifiNetworkSwift;
    v8->_wifiNetworkSwift = v9;
  }

  return v8;
}

- (WiFiNetwork)initWithSSID:(id)d securityType:(int64_t)type rssi:(int64_t)rssi macAddress:(id)address
{
  dCopy = d;
  addressCopy = address;
  v16.receiver = self;
  v16.super_class = WiFiNetwork;
  v12 = [(WiFiNetwork *)&v16 init];
  if (v12)
  {
    v13 = [[WiFiNetwork_Swift alloc] initWithSSID:dCopy securityType:type rssi:addressCopy macAddress:rssi];
    wifiNetworkSwift = v12->_wifiNetworkSwift;
    v12->_wifiNetworkSwift = v13;
  }

  return v12;
}

- (id)description
{
  wifiNetworkSwift = [(WiFiNetwork *)self wifiNetworkSwift];
  v3 = [wifiNetworkSwift description];

  return v3;
}

- (unint64_t)hash
{
  wifiNetworkSwift = [(WiFiNetwork *)self wifiNetworkSwift];
  v3 = [wifiNetworkSwift hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  wifiNetworkSwift = [(WiFiNetwork *)self wifiNetworkSwift];
  v6 = [wifiNetworkSwift isEqual:equalCopy];

  return v6;
}

@end