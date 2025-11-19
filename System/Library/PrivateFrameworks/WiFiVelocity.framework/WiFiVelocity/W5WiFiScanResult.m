@interface W5WiFiScanResult
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isAirPortBaseStation:(id *)a3 modelID:(char *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToScanResult:(id)a3;
- (BOOL)supportsSecurity:(int64_t)a3;
- (W5WiFiScanResult)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int)fastestSupportedPHYMode;
- (int64_t)strongestSupportedSecurity;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation W5WiFiScanResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5WiFiScanResult;
  [(W5WiFiScanResult *)&v3 dealloc];
}

- (BOOL)supportsSecurity:(int64_t)a3
{
  v5 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_288342168];
  v6 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_288342180];
  v7 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_288342198];
  v8 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_2883421B0];
  v9 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_2883421C8];
  v10 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_2883421E0];
  v11 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_2883421F8];
  v12 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_288342210];
  v13 = [(NSArray *)self->_supportedSecurityTypes containsObject:&unk_288342228];
  v14 = 0;
  switch(a3)
  {
    case 0:
      v14 = !v5 && !v13 && !v12 && !v6 && !v8 && !v10 && !v7 && !v9;
      break;
    case 1:
    case 8:
      v14 = v5;
      break;
    case 2:
      v14 = v6;
      break;
    case 3:
      v14 = v6 || v8;
      break;
    case 4:
      v14 = v8;
      break;
    case 5:
      v14 = v10 && !v8;
      break;
    case 6:
      v14 = v10 || v8;
      break;
    case 9:
      v14 = v7;
      break;
    case 10:
      v14 = v7 || v9;
      break;
    case 11:
      v14 = v9;
      break;
    case 12:
      v14 = v11;
      break;
    case 14:
      v14 = v12;
      break;
    case 15:
      v14 = v13;
      break;
    default:
      return v14;
  }

  return v14;
}

- (int64_t)strongestSupportedSecurity
{
  v2 = [(W5WiFiScanResult *)self supportedSecurityTypes];
  if ([(NSArray *)v2 containsObject:&unk_2883421F8])
  {
    return 12;
  }

  if ([(NSArray *)v2 containsObject:&unk_2883421C8])
  {
    return 11;
  }

  if ([(NSArray *)v2 containsObject:&unk_288342198])
  {
    return 9;
  }

  if ([(NSArray *)v2 containsObject:&unk_2883421E0])
  {
    return 5;
  }

  if ([(NSArray *)v2 containsObject:&unk_2883421B0])
  {
    return 4;
  }

  if ([(NSArray *)v2 containsObject:&unk_288342180])
  {
    return 2;
  }

  return [(NSArray *)v2 containsObject:&unk_288342168];
}

- (int)fastestSupportedPHYMode
{
  v3 = 256;
  if (![(W5WiFiScanResult *)self supportsPHYMode:256])
  {
    v3 = 128;
    if (![(W5WiFiScanResult *)self supportsPHYMode:128])
    {
      v3 = 16;
      if (![(W5WiFiScanResult *)self supportsPHYMode:16])
      {
        v3 = 2;
        if (![(W5WiFiScanResult *)self supportsPHYMode:2])
        {
          v3 = 8;
          if (![(W5WiFiScanResult *)self supportsPHYMode:8])
          {
            if ([(W5WiFiScanResult *)self supportsPHYMode:4])
            {
              return 4;
            }

            else
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return v3;
}

- (BOOL)isAirPortBaseStation:(id *)a3 modelID:(char *)a4
{
  v5 = [(W5WiFiScanResult *)self airPortBaseStationModelName:a3];
  if (a3 && v5)
  {
    *a3 = v5;
  }

  return a3 != 0;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  v4 = [(NSString *)[(W5WiFiScanResult *)self ssidString] redactedForWiFi];
  [(W5WiFiScanResult *)self ssid];
  [v3 appendFormat:@"SSID: %@ (%@)\n", v4, objc_msgSend(CWFHexadecimalStringFromData(), "redactedForWiFi")];
  [v3 appendFormat:@"BSSID %@\n", -[NSString redactedForWiFi](-[W5WiFiScanResult bssid](self, "bssid"), "redactedForWiFi")];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v5.receiver = self;
  v5.super_class = W5WiFiScanResult;
  if (-[W5WiFiScanResult conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([a3 isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a3 isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToScanResult:(id)a3
{
  if (!-[W5WiFiScanResult ssid](self, "ssid") && ![a3 ssid] || (v5 = -[NSData isEqualToData:](-[W5WiFiScanResult ssid](self, "ssid"), "isEqualToData:", objc_msgSend(a3, "ssid"))))
  {
    if (-[W5WiFiScanResult bssid](self, "bssid") || [a3 bssid])
    {
      v6 = [(W5WiFiScanResult *)self bssid];
      v7 = [a3 bssid];

      LOBYTE(v5) = [(NSString *)v6 isEqualToString:v7];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiScanResult *)self isEqualToScanResult:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5WiFiScanResult allocWithZone:?]];
  [(W5WiFiScanResult *)v4 setScanRecord:[(W5WiFiScanResult *)self scanRecord]];
  [(W5WiFiScanResult *)v4 setSsid:[(W5WiFiScanResult *)self ssid]];
  [(W5WiFiScanResult *)v4 setSsidString:[(W5WiFiScanResult *)self ssidString]];
  [(W5WiFiScanResult *)v4 setBssid:[(W5WiFiScanResult *)self bssid]];
  [(W5WiFiScanResult *)v4 setChannel:[(W5WiFiScanResult *)self channel]];
  [(W5WiFiScanResult *)v4 setCountryCode:[(W5WiFiScanResult *)self countryCode]];
  [(W5WiFiScanResult *)v4 setSupportedSecurityTypes:[(W5WiFiScanResult *)self supportedSecurityTypes]];
  [(W5WiFiScanResult *)v4 setSupportedPHYModes:[(W5WiFiScanResult *)self supportedPHYModes]];
  [(W5WiFiScanResult *)v4 setBeaconInterval:[(W5WiFiScanResult *)self beaconInterval]];
  [(W5WiFiScanResult *)v4 setRssi:[(W5WiFiScanResult *)self rssi]];
  [(W5WiFiScanResult *)v4 setNoise:[(W5WiFiScanResult *)self noise]];
  [(W5WiFiScanResult *)v4 setIsAppleSWAP:[(W5WiFiScanResult *)self isAppleSWAP]];
  [(W5WiFiScanResult *)v4 setIsPasspoint:[(W5WiFiScanResult *)self isPasspoint]];
  [(W5WiFiScanResult *)v4 setIsIBSS:[(W5WiFiScanResult *)self isIBSS]];
  [(W5WiFiScanResult *)v4 setIsPersonalHotspot:[(W5WiFiScanResult *)self isPersonalHotspot]];
  [(W5WiFiScanResult *)v4 setAirPortBaseStationModelName:[(W5WiFiScanResult *)self airPortBaseStationModelName]];
  [(W5WiFiScanResult *)v4 setSupportsWEPCipher:[(W5WiFiScanResult *)self supportsWEPCipher]];
  [(W5WiFiScanResult *)v4 setSupportsTKIPCipher:[(W5WiFiScanResult *)self supportsTKIPCipher]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_scanRecord forKey:@"_scanRecord"];
  [a3 encodeObject:self->_ssid forKey:@"_ssid"];
  [a3 encodeObject:self->_ssidString forKey:@"_ssidString"];
  [a3 encodeObject:self->_bssid forKey:@"_bssid"];
  [a3 encodeObject:self->_channel forKey:@"_channel"];
  [a3 encodeObject:self->_countryCode forKey:@"_countryCode"];
  [a3 encodeObject:self->_airPortBaseStationModelName forKey:@"_airPortBaseStationModelName"];
  [a3 encodeObject:self->_supportedSecurityTypes forKey:@"_supportedSecurityTypes"];
  [a3 encodeInteger:self->_rssi forKey:@"_rssi"];
  [a3 encodeInteger:self->_noise forKey:@"_noise"];
  [a3 encodeInteger:self->_beaconInterval forKey:@"_beaconInterval"];
  [a3 encodeBool:self->_isIBSS forKey:@"_isIBSS"];
  [a3 encodeBool:self->_isPasspoint forKey:@"_isPasspoint"];
  [a3 encodeBool:self->_isPersonalHotspot forKey:@"_isPersonalHotspot"];
  [a3 encodeBool:self->_isAppleSWAP forKey:@"_isAppleSWAP"];
  [a3 encodeInt:self->_supportedPHYModes forKey:@"_supportedPHYModes"];
  [a3 encodeBool:self->_supportsWEPCipher forKey:@"_supportsWEPCipher"];
  supportsTKIPCipher = self->_supportsTKIPCipher;

  [a3 encodeBool:supportsTKIPCipher forKey:@"_supportsTKIPCipher"];
}

- (W5WiFiScanResult)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = W5WiFiScanResult;
  v4 = [(W5WiFiScanResult *)&v8 init];
  if (v4)
  {
    v4->_scanRecord = [a3 decodePropertyListForKey:@"_scanRecord"];
    v4->_ssid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_ssid"];
    v4->_ssidString = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_ssidString"];
    v4->_bssid = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_bssid"];
    v4->_airPortBaseStationModelName = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_airPortBaseStationModelName"];
    v4->_countryCode = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    v4->_channel = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    v4->_rssi = [a3 decodeIntegerForKey:@"_rssi"];
    v4->_noise = [a3 decodeIntegerForKey:@"_noise"];
    v4->_beaconInterval = [a3 decodeIntegerForKey:@"_beaconInterval"];
    v4->_isIBSS = [a3 decodeBoolForKey:@"_isIBSS"];
    v4->_isPersonalHotspot = [a3 decodeBoolForKey:@"_isPersonalHotspot"];
    v4->_isPasspoint = [a3 decodeBoolForKey:@"_isPasspoint"];
    v4->_isAppleSWAP = [a3 decodeBoolForKey:@"_isAppleSWAP"];
    v4->_supportedPHYModes = [a3 decodeIntForKey:@"_supportedPHYModes"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_supportedSecurityTypes = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_supportedSecurityTypes"}];
    v4->_supportsWEPCipher = [a3 decodeBoolForKey:@"_supportsWEPCipher"];
    v4->_supportsTKIPCipher = [a3 decodeBoolForKey:@"_supportsTKIPCipher"];
  }

  return v4;
}

@end