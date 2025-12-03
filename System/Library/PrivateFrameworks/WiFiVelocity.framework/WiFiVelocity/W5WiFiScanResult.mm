@interface W5WiFiScanResult
- (BOOL)conformsToProtocol:(id)protocol;
- (BOOL)isAirPortBaseStation:(id *)station modelID:(char *)d;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToScanResult:(id)result;
- (BOOL)supportsSecurity:(int64_t)security;
- (W5WiFiScanResult)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int)fastestSupportedPHYMode;
- (int64_t)strongestSupportedSecurity;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation W5WiFiScanResult

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = W5WiFiScanResult;
  [(W5WiFiScanResult *)&v3 dealloc];
}

- (BOOL)supportsSecurity:(int64_t)security
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
  switch(security)
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
  supportedSecurityTypes = [(W5WiFiScanResult *)self supportedSecurityTypes];
  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_2883421F8])
  {
    return 12;
  }

  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_2883421C8])
  {
    return 11;
  }

  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_288342198])
  {
    return 9;
  }

  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_2883421E0])
  {
    return 5;
  }

  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_2883421B0])
  {
    return 4;
  }

  if ([(NSArray *)supportedSecurityTypes containsObject:&unk_288342180])
  {
    return 2;
  }

  return [(NSArray *)supportedSecurityTypes containsObject:&unk_288342168];
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

- (BOOL)isAirPortBaseStation:(id *)station modelID:(char *)d
{
  v5 = [(W5WiFiScanResult *)self airPortBaseStationModelName:station];
  if (station && v5)
  {
    *station = v5;
  }

  return station != 0;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithCapacity:0];
  redactedForWiFi = [(NSString *)[(W5WiFiScanResult *)self ssidString] redactedForWiFi];
  [(W5WiFiScanResult *)self ssid];
  [v3 appendFormat:@"SSID: %@ (%@)\n", redactedForWiFi, objc_msgSend(CWFHexadecimalStringFromData(), "redactedForWiFi")];
  [v3 appendFormat:@"BSSID %@\n", -[NSString redactedForWiFi](-[W5WiFiScanResult bssid](self, "bssid"), "redactedForWiFi")];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)conformsToProtocol:(id)protocol
{
  v5.receiver = self;
  v5.super_class = W5WiFiScanResult;
  if (-[W5WiFiScanResult conformsToProtocol:](&v5, sel_conformsToProtocol_) || ([protocol isEqual:&unk_288343878] & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [protocol isEqual:&unk_2883436F0];
  }
}

- (BOOL)isEqualToScanResult:(id)result
{
  if (!-[W5WiFiScanResult ssid](self, "ssid") && ![result ssid] || (v5 = -[NSData isEqualToData:](-[W5WiFiScanResult ssid](self, "ssid"), "isEqualToData:", objc_msgSend(result, "ssid"))))
  {
    if (-[W5WiFiScanResult bssid](self, "bssid") || [result bssid])
    {
      bssid = [(W5WiFiScanResult *)self bssid];
      bssid2 = [result bssid];

      LOBYTE(v5) = [(NSString *)bssid isEqualToString:bssid2];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5WiFiScanResult *)self isEqualToScanResult:equal];
}

- (id)copyWithZone:(_NSZone *)zone
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

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_scanRecord forKey:@"_scanRecord"];
  [coder encodeObject:self->_ssid forKey:@"_ssid"];
  [coder encodeObject:self->_ssidString forKey:@"_ssidString"];
  [coder encodeObject:self->_bssid forKey:@"_bssid"];
  [coder encodeObject:self->_channel forKey:@"_channel"];
  [coder encodeObject:self->_countryCode forKey:@"_countryCode"];
  [coder encodeObject:self->_airPortBaseStationModelName forKey:@"_airPortBaseStationModelName"];
  [coder encodeObject:self->_supportedSecurityTypes forKey:@"_supportedSecurityTypes"];
  [coder encodeInteger:self->_rssi forKey:@"_rssi"];
  [coder encodeInteger:self->_noise forKey:@"_noise"];
  [coder encodeInteger:self->_beaconInterval forKey:@"_beaconInterval"];
  [coder encodeBool:self->_isIBSS forKey:@"_isIBSS"];
  [coder encodeBool:self->_isPasspoint forKey:@"_isPasspoint"];
  [coder encodeBool:self->_isPersonalHotspot forKey:@"_isPersonalHotspot"];
  [coder encodeBool:self->_isAppleSWAP forKey:@"_isAppleSWAP"];
  [coder encodeInt:self->_supportedPHYModes forKey:@"_supportedPHYModes"];
  [coder encodeBool:self->_supportsWEPCipher forKey:@"_supportsWEPCipher"];
  supportsTKIPCipher = self->_supportsTKIPCipher;

  [coder encodeBool:supportsTKIPCipher forKey:@"_supportsTKIPCipher"];
}

- (W5WiFiScanResult)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = W5WiFiScanResult;
  v4 = [(W5WiFiScanResult *)&v8 init];
  if (v4)
  {
    v4->_scanRecord = [coder decodePropertyListForKey:@"_scanRecord"];
    v4->_ssid = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_ssid"];
    v4->_ssidString = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_ssidString"];
    v4->_bssid = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_bssid"];
    v4->_airPortBaseStationModelName = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_airPortBaseStationModelName"];
    v4->_countryCode = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_countryCode"];
    v4->_channel = [coder decodeObjectOfClass:objc_opt_class() forKey:@"_channel"];
    v4->_rssi = [coder decodeIntegerForKey:@"_rssi"];
    v4->_noise = [coder decodeIntegerForKey:@"_noise"];
    v4->_beaconInterval = [coder decodeIntegerForKey:@"_beaconInterval"];
    v4->_isIBSS = [coder decodeBoolForKey:@"_isIBSS"];
    v4->_isPersonalHotspot = [coder decodeBoolForKey:@"_isPersonalHotspot"];
    v4->_isPasspoint = [coder decodeBoolForKey:@"_isPasspoint"];
    v4->_isAppleSWAP = [coder decodeBoolForKey:@"_isAppleSWAP"];
    v4->_supportedPHYModes = [coder decodeIntForKey:@"_supportedPHYModes"];
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v4->_supportedSecurityTypes = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"_supportedSecurityTypes"}];
    v4->_supportsWEPCipher = [coder decodeBoolForKey:@"_supportsWEPCipher"];
    v4->_supportsTKIPCipher = [coder decodeBoolForKey:@"_supportsTKIPCipher"];
  }

  return v4;
}

@end