@interface WFHotspotDevice
- (BOOL)_isEqualToHotspotDevice:(id)device;
- (BOOL)_isEqualToNetwork:(id)network;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalentRecord:(id)record;
- (NSString)description;
- (WFHotspotDevice)init;
- (WFHotspotDevice)initWithHotspotDevice:(id)device;
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
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  v3 = [hotspotDevice description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(WFHotspotDevice *)self _isEqualToHotspotDevice:equalCopy];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = [(WFHotspotDevice *)self _isEqualToNetwork:equalCopy];
  }

  v6 = v5;
LABEL_7:

  return v6;
}

- (BOOL)_isEqualToHotspotDevice:(id)device
{
  deviceCopy = device;
  ssid = [(WFHotspotDevice *)self ssid];
  ssid2 = [deviceCopy ssid];
  if ([ssid isEqualToString:ssid2])
  {
    hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
    deviceIdentifier = [hotspotDevice deviceIdentifier];
    hotspotDevice2 = [deviceCopy hotspotDevice];
    deviceIdentifier2 = [hotspotDevice2 deviceIdentifier];
    if ([deviceIdentifier isEqualToString:deviceIdentifier2])
    {
      hotspotDevice3 = [(WFHotspotDevice *)self hotspotDevice];
      signalStrength = [hotspotDevice3 signalStrength];
      integerValue = [signalStrength integerValue];
      hotspotDevice4 = [deviceCopy hotspotDevice];
      signalStrength2 = [hotspotDevice4 signalStrength];
      if (integerValue == [signalStrength2 integerValue])
      {
        hotspotDevice5 = [(WFHotspotDevice *)self hotspotDevice];
        networkType = [hotspotDevice5 networkType];
        hotspotDevice6 = [deviceCopy hotspotDevice];
        v15 = networkType == [hotspotDevice6 networkType];
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

- (BOOL)_isEqualToNetwork:(id)network
{
  networkCopy = network;
  ssid = [(WFHotspotDevice *)self ssid];
  ssid2 = [networkCopy ssid];
  if ([ssid isEqualToString:ssid2])
  {
    securityMode = [(WFHotspotDevice *)self securityMode];
    if (securityMode == [networkCopy securityMode])
    {

LABEL_7:
      v8 = 1;
      goto LABEL_8;
    }

    iOSHotspot = [networkCopy iOSHotspot];

    if (iOSHotspot)
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
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  deviceIdentifier = [hotspotDevice deviceIdentifier];
  v5 = [deviceIdentifier hash];
  v6 = [(WFHotspotDevice *)self securityMode]^ v5;
  hotspotDevice2 = [(WFHotspotDevice *)self hotspotDevice];
  signalStrength = [hotspotDevice2 signalStrength];
  v9 = v6 ^ [signalStrength integerValue];
  hotspotDevice3 = [(WFHotspotDevice *)self hotspotDevice];
  networkType = [hotspotDevice3 networkType];

  return v9 ^ networkType;
}

- (id)title
{
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  deviceName = [hotspotDevice deviceName];

  return deviceName;
}

- (id)hotspotBatteryLife
{
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  batteryLife = [hotspotDevice batteryLife];

  return batteryLife;
}

- (id)hotspotSignalStrength
{
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  signalStrength = [hotspotDevice signalStrength];

  return signalStrength;
}

- (id)hotspotCellularProtocol
{
  hotspotDevice = [(WFHotspotDevice *)self hotspotDevice];
  cellularProtocolString = [hotspotDevice cellularProtocolString];

  return cellularProtocolString;
}

- (unint64_t)signalBars
{
  [(WFHotspotDevice *)self scaledRSSI];

  return WFSignalBarsFromScaledRSSI();
}

- (BOOL)isEquivalentRecord:(id)record
{
  recordCopy = record;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = recordCopy;
    ssid = [(WFHotspotDevice *)self ssid];
    ssid2 = [v5 ssid];
    if ([ssid isEqualToString:ssid2])
    {
      uniqueIdentifier = [(WFHotspotDevice *)self uniqueIdentifier];
      v9 = uniqueIdentifier == [v5 uniqueIdentifier];
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

- (WFHotspotDevice)initWithHotspotDevice:(id)device
{
  deviceCopy = device;
  v13.receiver = self;
  v13.super_class = WFHotspotDevice;
  v6 = [(WFHotspotDevice *)&v13 init];
  v7 = v6;
  deviceName = 0;
  if (deviceCopy && v6)
  {
    objc_storeStrong(&v6->_hotspotDevice, device);
    deviceName = [(SFRemoteHotspotDevice *)v7->_hotspotDevice deviceName];
    if ([deviceName length] >= 0x21)
    {
      v9 = [deviceName substringWithRange:{0, 32}];

      deviceName = v9;
    }

    v10 = [deviceName copy];
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