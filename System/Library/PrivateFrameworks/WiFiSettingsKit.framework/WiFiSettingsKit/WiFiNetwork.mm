@interface WiFiNetwork
- (BOOL)isEqual:(id)a3;
- (WiFiNetwork)initWithNetworkInfo:(id)a3 cwfNetworkProfiles:(id)a4;
- (WiFiNetwork)initWithSSID:(id)a3 securityType:(int64_t)a4 rssi:(int64_t)a5 macAddress:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation WiFiNetwork

- (WiFiNetwork)initWithNetworkInfo:(id)a3 cwfNetworkProfiles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = WiFiNetwork;
  v8 = [(WiFiNetwork *)&v12 init];
  if (v8)
  {
    v9 = [[WiFiNetwork_Swift alloc] initWithNetworkInfo:v6 cwfNetworkProfiles:v7];
    wifiNetworkSwift = v8->_wifiNetworkSwift;
    v8->_wifiNetworkSwift = v9;
  }

  return v8;
}

- (WiFiNetwork)initWithSSID:(id)a3 securityType:(int64_t)a4 rssi:(int64_t)a5 macAddress:(id)a6
{
  v10 = a3;
  v11 = a6;
  v16.receiver = self;
  v16.super_class = WiFiNetwork;
  v12 = [(WiFiNetwork *)&v16 init];
  if (v12)
  {
    v13 = [[WiFiNetwork_Swift alloc] initWithSSID:v10 securityType:a4 rssi:v11 macAddress:a5];
    wifiNetworkSwift = v12->_wifiNetworkSwift;
    v12->_wifiNetworkSwift = v13;
  }

  return v12;
}

- (id)description
{
  v2 = [(WiFiNetwork *)self wifiNetworkSwift];
  v3 = [v2 description];

  return v3;
}

- (unint64_t)hash
{
  v2 = [(WiFiNetwork *)self wifiNetworkSwift];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(WiFiNetwork *)self wifiNetworkSwift];
  v6 = [v5 isEqual:v4];

  return v6;
}

@end