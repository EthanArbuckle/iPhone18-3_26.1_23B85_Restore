@interface WFHotspotDevice
- (BOOL)_isEqualToHotspotDevice:(id)a3;
- (BOOL)_isEqualToNetwork:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEquivalentRecord:(id)a3;
- (NSString)description;
- (WFHotspotDevice)init;
- (WFHotspotDevice)initWithHotspotDevice:(id)a3;
- (id)hotspotBatteryLife;
- (id)hotspotCellularProtocol;
- (id)hotspotSignalStrength;
- (id)title;
- (unint64_t)hash;
- (unint64_t)signalBars;
@end

@implementation WFHotspotDevice

- (WFHotspotDevice)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-[WFHotspotDevice init] unavailable" userInfo:0];
  objc_exception_throw(v2);
}

- (NSString)description
{
  v2 = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFHotspotDevice *)self _isEqualToHotspotDevice:v4];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(WFHotspotDevice *)self _isEqualToNetwork:v4];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)_isEqualToHotspotDevice:(id)a3
{
  v4 = a3;
  v5 = [(WFHotspotDevice *)self ssid];
  v6 = [v4 ssid];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(WFHotspotDevice *)self hotspotDevice];
    v8 = [v7 deviceIdentifier];
    v9 = [v4 hotspotDevice];
    v10 = [v9 deviceIdentifier];
    if ([v8 isEqualToString:v10])
    {
      v20 = [(WFHotspotDevice *)self hotspotDevice];
      v19 = [v20 signalStrength];
      v11 = [v19 integerValue];
      v18 = [v4 hotspotDevice];
      v12 = [v18 signalStrength];
      if (v11 == [v12 integerValue])
      {
        v17 = [(WFHotspotDevice *)self hotspotDevice];
        v13 = [v17 networkType];
        v14 = [v4 hotspotDevice];
        v15 = v13 == [v14 networkType];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_isEqualToNetwork:(id)a3
{
  v4 = a3;
  v5 = [(WFHotspotDevice *)self ssid];
  v6 = [v4 ssid];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(WFHotspotDevice *)self securityMode];
    if (v7 == [v4 securityMode])
    {

LABEL_7:
      v8 = 1;
      goto LABEL_8;
    }

    v9 = [v4 iOSHotspot];

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(WFHotspotDevice *)self hotspotDevice];
  v4 = [v3 deviceIdentifier];
  v5 = [v4 hash];
  v6 = [(WFHotspotDevice *)self securityMode]^ v5;
  v7 = [(WFHotspotDevice *)self hotspotDevice];
  v8 = [v7 signalStrength];
  v9 = v6 ^ [v8 integerValue];
  v10 = [(WFHotspotDevice *)self hotspotDevice];
  v11 = [v10 networkType];

  return v9 ^ v11;
}

- (id)title
{
  v2 = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [v2 deviceName];

  return v3;
}

- (id)hotspotBatteryLife
{
  v2 = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [v2 batteryLife];

  return v3;
}

- (id)hotspotSignalStrength
{
  v2 = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [v2 signalStrength];

  return v3;
}

- (id)hotspotCellularProtocol
{
  v2 = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [v2 cellularProtocolString];

  return v3;
}

- (unint64_t)signalBars
{
  [(WFHotspotDevice *)self scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (BOOL)isEquivalentRecord:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(WFHotspotDevice *)self ssid];
    v7 = [v5 ssid];
    if ([v6 isEqualToString:v7])
    {
      v8 = [(WFHotspotDevice *)self uniqueIdentifier];
      v9 = v8 == [v5 uniqueIdentifier];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFHotspotDevice)initWithHotspotDevice:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WFHotspotDevice;
  v6 = [(WFHotspotDevice *)&v13 init];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    objc_storeStrong(&v6->_hotspotDevice, a3);
    v8 = [(SFRemoteHotspotDevice *)v7->_hotspotDevice deviceName];
    if ([v8 length] >= 0x21)
    {
      v9 = [v8 substringWithRange:{0, 32}];

      v8 = v9;
    }

    v10 = [v8 copy];
    ssid = v7->_ssid;
    v7->_ssid = v10;
  }

  else
  {
    ssid = v6;
    v7 = 0;
  }

  return v7;
}

@end