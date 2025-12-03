@interface RPDevice
- (RPDevice)init;
- (RPDevice)initWithCoder:(id)coder;
- (double)timeSinceLastActivityLevelChange;
- (id)descriptionWithLevel:(int)level;
- (unsigned)updateWithBonjourDevice:(id)device;
- (unsigned)updateWithMobileDevice:(id)device;
- (unsigned)updateWithSFDevice:(id)device changes:(unsigned int)changes;
- (void)_updateTXTDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithSystemInfo:(id)info;
- (void)updateWithWiFiDevice:(id)device changes:(unsigned int)changes;
@end

@implementation RPDevice

- (RPDevice)init
{
  v6.receiver = self;
  v6.super_class = RPDevice;
  v2 = [(RPDevice *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (RPDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = RPDevice;
  v5 = [(RPDevice *)&v17 init];
  if (v5)
  {
    v18 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_activityLevel = v18;
    }

    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v18;
    }

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    if ([v12 containsValueForKey:@"idsc"])
    {
      v5->_idsDeviceIdentifierConflict = [v12 decodeBoolForKey:@"idsc"];
    }

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_proximity = v18;
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v15 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  activityLevel = self->_activityLevel;
  v17 = coderCopy;
  if (activityLevel)
  {
    [coderCopy encodeInteger:activityLevel forKey:@"al"];
    coderCopy = v17;
  }

  activityLevelTimeStamp = self->_activityLevelTimeStamp;
  if (activityLevelTimeStamp)
  {
    [v17 encodeObject:activityLevelTimeStamp forKey:@"alts"];
    coderCopy = v17;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v17 encodeObject:accountID forKey:@"aid"];
    coderCopy = v17;
  }

  bleAuthTag = self->_bleAuthTag;
  if (bleAuthTag)
  {
    [v17 encodeObject:bleAuthTag forKey:@"atag"];
    coderCopy = v17;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v17 encodeObject:contactID forKey:@"cnid"];
    coderCopy = v17;
  }

  flags = self->_flags;
  if (flags)
  {
    [v17 encodeInt64:flags forKey:@"fl"];
    coderCopy = v17;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v17 encodeObject:identifier forKey:@"id"];
    coderCopy = v17;
  }

  idsDeviceIdentifier = self->_idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    [v17 encodeObject:idsDeviceIdentifier forKey:@"ids"];
    coderCopy = v17;
  }

  if (self->_idsDeviceIdentifierConflict)
  {
    [v17 encodeBool:1 forKey:@"idsc"];
    coderCopy = v17;
  }

  model = self->_model;
  if (model)
  {
    [v17 encodeObject:model forKey:@"md"];
    coderCopy = v17;
  }

  name = self->_name;
  if (name)
  {
    [v17 encodeObject:name forKey:@"nm"];
    coderCopy = v17;
  }

  proximity = self->_proximity;
  if (proximity)
  {
    [v17 encodeInteger:proximity forKey:@"px"];
    coderCopy = v17;
  }

  relativeLocation = self->_relativeLocation;
  if (relativeLocation)
  {
    [v17 encodeObject:relativeLocation forKey:@"rl"];
    coderCopy = v17;
  }
}

- (id)descriptionWithLevel:(int)level
{
  NSAppendPrintF();
  v4 = 0;
  v5 = self->_identifier;
  v6 = self->_idsDeviceIdentifier;
  idsDeviceIdentifierConflict = self->_idsDeviceIdentifierConflict;
  if ([(NSString *)v6 isEqual:v5])
  {

    v8 = shouldPrintSensitiveData();
    v5 = 0;
  }

  else
  {
    v8 = shouldPrintSensitiveData();
    if (v5)
    {
      formatSensitiveData(", ID ", v8);
      NSAppendPrintF();
      v9 = v4;

      v4 = v9;
    }
  }

  if (v6)
  {
    formatSensitiveData(", IDS ", v8);
    NSAppendPrintF();
    v10 = v4;

    if (idsDeviceIdentifierConflict)
    {
      NSAppendPrintF();
      v4 = v10;
    }

    else
    {
      v4 = v10;
    }
  }

  name = self->_name;
  if (name)
  {
    v12 = name;
    formatSensitiveData(", Nm ", v8);
    NSAppendPrintF();
    v13 = v4;

    v4 = v13;
  }

  model = self->_model;
  if (model)
  {
    v15 = model;
    formatSensitiveData(", Md ", v8);
    NSAppendPrintF();
    v16 = v4;

    v4 = v16;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    v18 = accountID;
    formatSensitiveData(", AID ", v8);
    NSAppendPrintF();
    v19 = v4;

    v4 = v19;
  }

  udid = self->_udid;
  if (udid)
  {
    v21 = udid;
    formatSensitiveData(", UDID ", v8);
    NSAppendPrintF();
    v22 = v4;

    v4 = v22;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    v24 = contactID;
    formatSensitiveData(", CNID ", v8);
    NSAppendPrintF();
    v25 = v4;

    v4 = v25;
  }

  if (v8)
  {
    v26 = self->_wifiAddress;
    if ([(NSData *)v26 length]== 6)
    {
      [(NSData *)v26 bytes];
      NSAppendPrintF();
      v27 = v4;

      v4 = v27;
    }

    bleAuthTag = self->_bleAuthTag;
    if (bleAuthTag)
    {
      v47 = bleAuthTag;
      NSAppendPrintF();
      v29 = v4;

      v4 = v29;
    }

    bleDeviceAddress = self->_bleDeviceAddress;
    if (bleDeviceAddress)
    {
      v44 = bleDeviceAddress;
      NSAppendPrintF();
      v31 = v4;

      v4 = v31;
    }

    if (self->_proximity)
    {
      NSAppendPrintF();
      v33 = v4;

      v4 = v33;
    }

    relativeLocation = self->_relativeLocation;
    if (relativeLocation)
    {
      v45 = relativeLocation;
      NSAppendPrintF();
      v35 = v4;

      v4 = v35;
    }

    activityLevel = self->_activityLevel;
    if (activityLevel)
    {
      if (activityLevel <= 0xE)
      {
        v37 = off_1E7C939E0[activityLevel - 1];
      }

      NSAppendPrintF();
      v38 = v4;

      v4 = v38;
    }

    activityLevelTimeStamp = self->_activityLevelTimeStamp;
    if (activityLevelTimeStamp)
    {
      v46 = activityLevelTimeStamp;
      NSAppendPrintF();
      v40 = v4;

      v4 = v40;
    }
  }

  if (self->_flags)
  {
    NSAppendPrintF();
    v41 = v4;

    v4 = v41;
  }

  v42 = v4;

  return v4;
}

- (double)timeSinceLastActivityLevelChange
{
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_activityLevelTimeStamp];
  v5 = v4;

  return v5;
}

- (void)_updateTXTDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [dictionaryCopy bytes];
  [dictionaryCopy length];
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  while (TXTRecordGetNextItem())
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:0 length:0 encoding:4];
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:0 length:0 encoding:4];
      if (v7)
      {
        [v5 setObject:v7 forKeyedSubscript:v6];
      }
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v5];
  txtDictionary = self->_txtDictionary;
  self->_txtDictionary = v8;
}

- (unsigned)updateWithBonjourDevice:(id)device
{
  deviceCopy = device;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (self->_deviceActionType == Int64Ranged)
  {
    v6 = 0;
  }

  else
  {
    self->_deviceActionType = Int64Ranged;
    v6 = 2;
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  v8 = v7;
  if (v7)
  {
    name = self->_name;
    v10 = v7;
    v11 = name;
    v12 = v11;
    if (v10 == v11)
    {

      goto LABEL_13;
    }

    if (v11)
    {
      v13 = [(NSString *)v10 isEqual:v11];

      if (v13)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_name, v8);
    v6 = 2;
  }

LABEL_13:
  CFDataGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  v15 = v14;
  if (v14)
  {
    v16 = self->_name;
    v17 = v14;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (v18)
      {
        v20 = [(NSString *)v17 isEqual:v18];

        if (v20)
        {
          goto LABEL_21;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_txtData, v15);
      [(RPDevice *)self _updateTXTDictionary:v17];
      v6 = 2;
    }
  }

LABEL_21:

  return v6;
}

- (unsigned)updateWithMobileDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_mobileDevice, device);
  internalModel = [deviceCopy internalModel];
  v7 = internalModel;
  if (internalModel && ([internalModel isEqual:self->_model] & 1) == 0)
  {
    objc_storeStrong(&self->_model, v7);
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  name = [deviceCopy name];

  if (name && ([name isEqual:self->_name] & 1) == 0)
  {
    objc_storeStrong(&self->_name, name);
    v8 = 2;
  }

  if ([deviceCopy paired])
  {
    v10 = 20;
  }

  else
  {
    v10 = 10;
  }

  if (v10 != self->_systemPairState)
  {
    self->_systemPairState = v10;
    v8 = 2;
  }

  udid = [deviceCopy udid];

  if (udid && ([udid isEqual:self->_udid] & 1) == 0)
  {
    objc_storeStrong(&self->_udid, udid);
    v8 = 2;
  }

  v18 = 0;
  wifiAddress = [deviceCopy wifiAddress];

  if (wifiAddress)
  {
    CFGetHardwareAddress();
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v17 length:6];

    if (v14)
    {
      wifiAddress = self->_wifiAddress;
      p_wifiAddress = &self->_wifiAddress;
      if (([v14 isEqual:wifiAddress] & 1) == 0)
      {
        objc_storeStrong(p_wifiAddress, v14);
        v8 = 2;
      }
    }
  }

  return v8;
}

- (unsigned)updateWithSFDevice:(id)device changes:(unsigned int)changes
{
  changesCopy = changes;
  deviceCopy = device;
  bleDevice = [deviceCopy bleDevice];
  objc_storeStrong(&self->_bleDevice, device);
  if ((changesCopy & 9) == 0)
  {
    v9 = 0;
    if ((changesCopy & 2) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_94;
  }

  advertisementFields = [bleDevice advertisementFields];
  if (self->_accountID)
  {
    v9 = 0;
  }

  else
  {
    accountID = [deviceCopy accountID];
    if (accountID)
    {
      objc_storeStrong(&self->_accountID, accountID);
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }
  }

  bleDevice2 = [deviceCopy bleDevice];
  decryptedActivityLevel = [bleDevice2 decryptedActivityLevel];
  if (decryptedActivityLevel != 16 && self->_activityLevel != decryptedActivityLevel)
  {
    self->_activityLevel = decryptedActivityLevel;
    date = [MEMORY[0x1E695DF00] date];
    activityLevelTimeStamp = self->_activityLevelTimeStamp;
    self->_activityLevelTimeStamp = date;

    v9 = 2;
  }

  advertisementData = [bleDevice advertisementData];
  v15 = advertisementData;
  if (advertisementData)
  {
    bleAdvertisementData = self->_bleAdvertisementData;
    v17 = advertisementData;
    v18 = bleAdvertisementData;
    v19 = v18;
    if (v17 == v18)
    {

      goto LABEL_21;
    }

    if (v18)
    {
      v20 = [(NSData *)v17 isEqual:v18];

      if (v20)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_bleAdvertisementData, v15);
    v9 |= 1u;
  }

LABEL_21:
  CFDataGetTypeID();
  v21 = CFDictionaryGetTypedValue();

  if (!v21)
  {
    goto LABEL_29;
  }

  bleDeviceAddress = self->_bleDeviceAddress;
  v23 = v21;
  v24 = bleDeviceAddress;
  v25 = v24;
  if (v23 == v24)
  {

    goto LABEL_29;
  }

  if (!v24)
  {

    goto LABEL_28;
  }

  v26 = [(NSData *)v23 isEqual:v24];

  if ((v26 & 1) == 0)
  {
LABEL_28:
    objc_storeStrong(&self->_bleDeviceAddress, v21);
    v9 |= 2u;
  }

LABEL_29:
  CFDataGetTypeID();
  v27 = CFDictionaryGetTypedValue();

  if (!v27)
  {
    goto LABEL_37;
  }

  bleAuthTag = self->_bleAuthTag;
  v29 = v27;
  v30 = bleAuthTag;
  v31 = v30;
  if (v29 == v30)
  {

    goto LABEL_37;
  }

  if (!v30)
  {

    goto LABEL_36;
  }

  v32 = [(NSData *)v29 isEqual:v30];

  if ((v32 & 1) == 0)
  {
LABEL_36:
    objc_storeStrong(&self->_bleAuthTag, v27);
    v9 |= 2u;
  }

LABEL_37:
  if (!self->_contactID)
  {
    contactIdentifier = [deviceCopy contactIdentifier];
    if (contactIdentifier)
    {
      objc_storeStrong(&self->_contactID, contactIdentifier);
      v9 |= 2u;
    }
  }

  deviceActionType = [deviceCopy deviceActionType];
  if (deviceActionType != self->_deviceActionType)
  {
    self->_deviceActionType = deviceActionType;
    v9 |= 2u;
  }

  flags = self->_flags;
  deviceFlags = [deviceCopy deviceFlags];
  v37 = (deviceFlags >> 3) & 1 | (2 * (deviceFlags & 1));
  if ((deviceFlags & 0x10) != 0)
  {
    v38 = 36;
  }

  else
  {
    v38 = 4;
  }

  if ((deviceFlags & 0x10) != 0)
  {
    v39 = 1536;
  }

  else
  {
    v39 = 512;
  }

  if ((deviceFlags & 0x10) != 0)
  {
    v40 = 192;
  }

  else
  {
    v40 = 64;
  }

  if ((deviceFlags & 0x10) != 0)
  {
    v41 = 24576;
  }

  else
  {
    v41 = 0x2000;
  }

  if ((deviceFlags & 0x10) != 0)
  {
    v42 = 98304;
  }

  else
  {
    v42 = 0x8000;
  }

  if ((deviceFlags & 2) != 0)
  {
    v37 |= deviceFlags & 0x10 | 8;
  }

  v43 = v37 | v38 & ((deviceFlags << 29) >> 31) | v39 & ((deviceFlags << 21) >> 31) | v40 & ((deviceFlags << 25) >> 31);
  v44 = (16 * deviceFlags) & 0x800 | (((deviceFlags >> 5) & 1) << 8) | v41 & ((deviceFlags << 17) >> 31) | v42 & (deviceFlags >> 15) | v43;
  if ((v43 & 0x24D) == 0)
  {
    v44 |= 0x1000u;
  }

  if (v44 != flags)
  {
    self->_flags = v44;
    v9 |= 2u;
  }

  if (!self->_idsDeviceIdentifier)
  {
    idsIdentifier = [deviceCopy idsIdentifier];
    if (idsIdentifier)
    {
      objc_storeStrong(&self->_idsDeviceIdentifier, idsIdentifier);
      v9 |= 2u;
    }
  }

  idsIdentifierConflict = [deviceCopy idsIdentifierConflict];
  if (self->_idsDeviceIdentifierConflict != idsIdentifierConflict)
  {
    self->_idsDeviceIdentifierConflict = idsIdentifierConflict;
    v9 |= 2u;
  }

  if (CFDictionaryGetInt64())
  {
    v47 = 20;
  }

  else
  {
    v47 = 10;
  }

  if (v47 != self->_blePairState)
  {
    self->_blePairState = v47;
    v9 |= 2u;
  }

  needsSetup = [deviceCopy needsSetup];
  if (self->_needsSetup != needsSetup)
  {
    self->_needsSetup = needsSetup;
    v9 |= 2u;
  }

  model = [deviceCopy model];

  if (model)
  {
    model = self->_model;
    v51 = model;
    v52 = model;
    v53 = v52;
    if (v51 == v52)
    {

      goto LABEL_85;
    }

    if (v52)
    {
      v54 = [(NSString *)v51 isEqual:v52];

      if (v54)
      {
        goto LABEL_85;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_model, model);
    v9 |= 2u;
  }

LABEL_85:
  name = [deviceCopy name];

  if (!name)
  {
    goto LABEL_93;
  }

  name = self->_name;
  v57 = name;
  v58 = name;
  v59 = v58;
  if (v57 == v58)
  {

    goto LABEL_93;
  }

  if (!v58)
  {

    goto LABEL_92;
  }

  v60 = [(NSString *)v57 isEqual:v58];

  if ((v60 & 1) == 0)
  {
LABEL_92:
    objc_storeStrong(&self->_name, name);
    v9 |= 0x10u;
  }

LABEL_93:

  if ((changesCopy & 2) == 0)
  {
    goto LABEL_104;
  }

LABEL_94:
  distance = [deviceCopy distance];
  if (distance >= 0x15)
  {
    v62 = 30;
  }

  else
  {
    v62 = 20;
  }

  if (distance >= 11)
  {
    v63 = v62;
  }

  else
  {
    v63 = 10;
  }

  if (!distance)
  {
    v63 = 0;
  }

  if (v63 != self->_proximity)
  {
    self->_proximity = v63;
    v9 |= 0x80u;
  }

LABEL_104:
  if ((changesCopy & 4) != 0)
  {
    rssi = [bleDevice rssi];
    if (self->_rawRSSI != rssi)
    {
      self->_rawRSSI = rssi;
      v9 |= 0x20u;
    }

    smoothedRSSI = [bleDevice smoothedRSSI];
    if (self->_smoothedRSSI != smoothedRSSI)
    {
      self->_smoothedRSSI = smoothedRSSI;
      v9 |= 0x20u;
    }
  }

  return v9;
}

- (void)updateWithSystemInfo:(id)info
{
  infoCopy = info;
  v4 = NSDictionaryGetNSUUID();
  if (v4)
  {
    objc_storeStrong(&self->_pairingIdentifier, v4);
  }

  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    objc_storeStrong(&self->_name, v5);
  }

  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();

  if (v6)
  {
    objc_storeStrong(&self->_model, v6);
  }
}

- (void)updateWithWiFiDevice:(id)device changes:(unsigned int)changes
{
  deviceCopy = device;
  bssid = [deviceCopy bssid];
  if (bssid)
  {
    objc_storeStrong(&self->_wifiBSSID, bssid);
  }

  deviceIEDeviceID = [deviceCopy deviceIEDeviceID];

  if (deviceIEDeviceID)
  {
    objc_storeStrong(&self->_wifiDeviceIEDeviceID, deviceIEDeviceID);
  }

  self->_wifiDeviceIEFlags = [deviceCopy deviceIEFlags];
  deviceIEName = [deviceCopy deviceIEName];

  if (deviceIEName)
  {
    objc_storeStrong(&self->_wifiDeviceIEName, deviceIEName);
  }

  ieData = [deviceCopy ieData];

  if (ieData)
  {
    objc_storeStrong(&self->_wifiIEData, ieData);
  }

  platformObject = [deviceCopy platformObject];

  if (platformObject)
  {
    objc_storeStrong(&self->_wifiPlatformObject, platformObject);
  }

  ssid = [deviceCopy ssid];

  if (ssid)
  {
    objc_storeStrong(&self->_wifiSSID, ssid);
  }
}

@end