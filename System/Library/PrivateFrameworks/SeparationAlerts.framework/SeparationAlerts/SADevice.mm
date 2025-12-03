@interface SADevice
- (BOOL)isEqual:(id)equal;
- (BOOL)isReallyEqual:(id)equal;
- (NSString)description;
- (SADevice)initWithCoder:(id)coder;
- (SADevice)initWithDeviceUUID:(id)d groupIdentifier:(id)identifier macAddress:(id)address partIdentifier:(int64_t)partIdentifier name:(id)name model:(id)model systemVersion:(id)version vendorId:(int64_t)self0 productId:(int64_t)self1 deviceType:(unint64_t)self2 notifyEnabled:(BOOL)self3 isAppleAudioAccessory:(BOOL)self4 date:(id)self5;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length;
@end

@implementation SADevice

- (SADevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = [coderCopy decodeObjectForKey:@"SADeviceIdentifier"];
  v18 = [coderCopy decodeObjectForKey:@"SADeviceGroupIdentifier"];
  v17 = [coderCopy decodeIntegerForKey:@"SADevicePartIdentifier"];
  v16 = [coderCopy decodeObjectForKey:@"SADeviceName"];
  v4 = [coderCopy decodeObjectForKey:@"SADeviceModel"];
  v5 = [coderCopy decodeObjectForKey:@"SADeviceSystemVersion"];
  v6 = [coderCopy decodeIntegerForKey:@"SADeviceVendorId"];
  v7 = [coderCopy decodeIntegerForKey:@"SADeviceProductId"];
  v8 = [coderCopy decodeIntegerForKey:@"SADeviceType"];
  v9 = [coderCopy decodeBoolForKey:@"SADeviceNotifyEnabled"];
  v10 = [coderCopy decodeBoolForKey:@"SADeviceIsAppleAudioAccessory"];
  v11 = [coderCopy decodeObjectForKey:@"SADeviceDate"];
  v12 = [coderCopy decodeObjectForKey:@"SADeviceMacAddress"];

  BYTE1(v15) = v10;
  LOBYTE(v15) = v9;
  v13 = [(SADevice *)self initWithDeviceUUID:v19 groupIdentifier:v18 macAddress:v12 partIdentifier:v17 name:v16 model:v4 systemVersion:v5 vendorId:v6 productId:v7 deviceType:v8 notifyEnabled:v15 isAppleAudioAccessory:v11 date:?];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(SADevice *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"SADeviceIdentifier"];

  groupIdentifier = [(SADevice *)self groupIdentifier];
  [coderCopy encodeObject:groupIdentifier forKey:@"SADeviceGroupIdentifier"];

  [coderCopy encodeInteger:-[SADevice partIdentifier](self forKey:{"partIdentifier"), @"SADevicePartIdentifier"}];
  name = [(SADevice *)self name];
  [coderCopy encodeObject:name forKey:@"SADeviceName"];

  model = [(SADevice *)self model];
  [coderCopy encodeObject:model forKey:@"SADeviceModel"];

  systemVersion = [(SADevice *)self systemVersion];
  [coderCopy encodeObject:systemVersion forKey:@"SADeviceSystemVersion"];

  [coderCopy encodeInteger:-[SADevice vendorId](self forKey:{"vendorId"), @"SADeviceVendorId"}];
  [coderCopy encodeInteger:-[SADevice productId](self forKey:{"productId"), @"SADeviceProductId"}];
  [coderCopy encodeInteger:-[SADevice deviceType](self forKey:{"deviceType"), @"SADeviceType"}];
  [coderCopy encodeBool:-[SADevice notifyEnabled](self forKey:{"notifyEnabled"), @"SADeviceNotifyEnabled"}];
  [coderCopy encodeBool:-[SADevice isAppleAudioAccessory](self forKey:{"isAppleAudioAccessory"), @"SADeviceIsAppleAudioAccessory"}];
  date = [(SADevice *)self date];
  [coderCopy encodeObject:date forKey:@"SADeviceDate"];

  macAddress = [(SADevice *)self macAddress];
  [coderCopy encodeObject:macAddress forKey:@"SADeviceMacAddress"];
}

- (void)encodeWithOSLogCoder:(id)coder options:(unint64_t)options maxLength:(unint64_t)length
{
  coderCopy = coder;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [coderCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = [SADevice allocWithZone:zone];
  identifier = [(SADevice *)self identifier];
  groupIdentifier = [(SADevice *)self groupIdentifier];
  macAddress = [(SADevice *)self macAddress];
  partIdentifier = [(SADevice *)self partIdentifier];
  name = [(SADevice *)self name];
  model = [(SADevice *)self model];
  systemVersion = [(SADevice *)self systemVersion];
  vendorId = [(SADevice *)self vendorId];
  productId = [(SADevice *)self productId];
  deviceType = [(SADevice *)self deviceType];
  notifyEnabled = [(SADevice *)self notifyEnabled];
  isAppleAudioAccessory = [(SADevice *)self isAppleAudioAccessory];
  date = [(SADevice *)self date];
  BYTE1(v16) = isAppleAudioAccessory;
  LOBYTE(v16) = notifyEnabled;
  v14 = [(SADevice *)v20 initWithDeviceUUID:identifier groupIdentifier:groupIdentifier macAddress:macAddress partIdentifier:partIdentifier name:name model:model systemVersion:systemVersion vendorId:vendorId productId:productId deviceType:deviceType notifyEnabled:v16 isAppleAudioAccessory:date date:?];

  return v14;
}

- (SADevice)initWithDeviceUUID:(id)d groupIdentifier:(id)identifier macAddress:(id)address partIdentifier:(int64_t)partIdentifier name:(id)name model:(id)model systemVersion:(id)version vendorId:(int64_t)self0 productId:(int64_t)self1 deviceType:(unint64_t)self2 notifyEnabled:(BOOL)self3 isAppleAudioAccessory:(BOOL)self4 date:(id)self5
{
  dCopy = d;
  identifierCopy = identifier;
  addressCopy = address;
  nameCopy = name;
  modelCopy = model;
  versionCopy = version;
  dateCopy = date;
  v45.receiver = self;
  v45.super_class = SADevice;
  v28 = [(SADevice *)&v45 init];
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = 0;
  if (dCopy && modelCopy && versionCopy && dateCopy)
  {
    v30 = [dCopy copy];
    identifier = v28->_identifier;
    v28->_identifier = v30;

    v32 = [identifierCopy copy];
    groupIdentifier = v28->_groupIdentifier;
    v28->_groupIdentifier = v32;

    v34 = [addressCopy copy];
    macAddress = v28->_macAddress;
    v28->_macAddress = v34;

    v28->_partIdentifier = partIdentifier;
    v36 = [nameCopy copy];
    name = v28->_name;
    v28->_name = v36;

    v38 = [modelCopy copy];
    model = v28->_model;
    v28->_model = v38;

    v40 = [versionCopy copy];
    systemVersion = v28->_systemVersion;
    v28->_systemVersion = v40;

    v28->_vendorId = id;
    v28->_productId = productId;
    v28->_deviceType = type;
    v28->_notifyEnabled = enabled;
    v28->_isAppleAudioAccessory = accessory;
    v42 = [dateCopy copy];
    date = v28->_date;
    v28->_date = v42;

LABEL_7:
    v29 = v28;
  }

  return v29;
}

- (BOOL)isReallyEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = equalCopy;
      identifier = [(SADevice *)self identifier];
      identifier2 = [(SADevice *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(SADevice *)self identifier];
        identifier4 = [(SADevice *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          LOBYTE(v10) = 0;
          goto LABEL_35;
        }
      }

      groupIdentifier = [(SADevice *)self groupIdentifier];
      groupIdentifier2 = [(SADevice *)v7 groupIdentifier];
      if (groupIdentifier != groupIdentifier2)
      {
        groupIdentifier3 = [(SADevice *)self groupIdentifier];
        groupIdentifier4 = [(SADevice *)v7 groupIdentifier];
        if (![groupIdentifier3 isEqual:?])
        {
          LOBYTE(v10) = 0;
          goto LABEL_33;
        }

        v43 = groupIdentifier3;
      }

      partIdentifier = [(SADevice *)self partIdentifier];
      if (partIdentifier == [(SADevice *)v7 partIdentifier])
      {
        name = [(SADevice *)self name];
        [(SADevice *)v7 name];
        v41 = identifier3;
        v42 = name;
        v40 = v39 = identifier4;
        v16 = name == v40;
        groupIdentifier3 = v43;
        if (v16)
        {
          v37 = identifier;
          v38 = groupIdentifier2;
        }

        else
        {
          v33 = groupIdentifier;
          name2 = [(SADevice *)self name];
          name3 = [(SADevice *)v7 name];
          v36 = name2;
          if (![name2 isEqual:?])
          {
            LOBYTE(v10) = 0;
            v29 = v42;
            v30 = v40;
            groupIdentifier = v33;
            goto LABEL_32;
          }

          v37 = identifier;
          v38 = groupIdentifier2;
          groupIdentifier = v33;
        }

        model = [(SADevice *)self model];
        model2 = [(SADevice *)v7 model];
        if ([model isEqualToString:model2])
        {
          v32 = model2;
          v34 = model;
          systemVersion = [(SADevice *)self systemVersion];
          systemVersion2 = [(SADevice *)v7 systemVersion];
          v22 = systemVersion;
          v23 = systemVersion;
          v24 = systemVersion2;
          if ([v23 isEqualToString:systemVersion2])
          {
            vendorId = [(SADevice *)self vendorId];
            if (vendorId == [(SADevice *)v7 vendorId]&& (v26 = [(SADevice *)self productId], v26 == [(SADevice *)v7 productId]) && (v27 = [(SADevice *)self deviceType], v27 == [(SADevice *)v7 deviceType]))
            {
              notifyEnabled = [(SADevice *)self notifyEnabled];
              v10 = notifyEnabled ^ [(SADevice *)v7 notifyEnabled]^ 1;
            }

            else
            {
              LOBYTE(v10) = 0;
            }

            groupIdentifier3 = v43;
          }

          else
          {
            LOBYTE(v10) = 0;
          }
        }

        else
        {

          LOBYTE(v10) = 0;
        }

        v29 = v42;
        v30 = v40;
        identifier = v37;
        groupIdentifier2 = v38;
        if (v42 == v40)
        {

          if (groupIdentifier != v38)
          {
          }

          identifier3 = v41;
          identifier4 = v39;
          if (v37 == identifier2)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_32:

        identifier3 = v41;
        identifier4 = v39;
        if (groupIdentifier == groupIdentifier2)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      LOBYTE(v10) = 0;
      groupIdentifier3 = v43;
      if (groupIdentifier == groupIdentifier2)
      {
LABEL_34:

        if (identifier == identifier2)
        {
LABEL_36:

          goto LABEL_37;
        }

LABEL_35:

        goto LABEL_36;
      }

LABEL_33:

      goto LABEL_34;
    }

    LOBYTE(v10) = 0;
  }

LABEL_37:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SADevice *)self identifier];
      identifier2 = [(SADevice *)v5 identifier];
      if (identifier == identifier2)
      {
        v10 = 1;
      }

      else
      {
        identifier3 = [(SADevice *)self identifier];
        identifier4 = [(SADevice *)v5 identifier];
        v10 = [identifier3 isEqual:identifier4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)descriptionDictionary
{
  v34[13] = *MEMORY[0x277D85DE8];
  v33[0] = @"EventType";
  v3 = objc_opt_class();
  v32 = NSStringFromClass(v3);
  v34[0] = v32;
  v33[1] = @"SADeviceIdentifier";
  identifier = [(SADevice *)self identifier];
  v30 = [identifier description];
  v34[1] = v30;
  v33[2] = @"SADeviceGroupIdentifier";
  groupIdentifier = [(SADevice *)self groupIdentifier];
  if (groupIdentifier)
  {
    groupIdentifier2 = [(SADevice *)self groupIdentifier];
    v5 = [groupIdentifier2 description];
  }

  else
  {
    v5 = &stru_287709218;
  }

  v24 = v5;
  v34[2] = v5;
  v33[3] = @"SADeviceMacAddress";
  macAddress = [(SADevice *)self macAddress];
  v29 = groupIdentifier;
  if (macAddress)
  {
    macAddress2 = [(SADevice *)self macAddress];
  }

  else
  {
    macAddress2 = &stru_287709218;
  }

  v23 = macAddress2;
  v34[3] = macAddress2;
  v33[4] = @"SADevicePartIdentifier";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SADevice partIdentifier](self, "partIdentifier")}];
  v34[4] = v27;
  v33[5] = @"SADeviceName";
  name = [(SADevice *)self name];
  if (name)
  {
    name2 = [(SADevice *)self name];
    v8 = [name2 description];
  }

  else
  {
    v8 = &stru_287709218;
  }

  v22 = v8;
  v34[5] = v8;
  v33[6] = @"SADeviceModel";
  model = [(SADevice *)self model];
  v9 = [model description];
  v34[6] = v9;
  v33[7] = @"SADeviceSystemVersion";
  systemVersion = [(SADevice *)self systemVersion];
  v11 = [systemVersion description];
  v34[7] = v11;
  v33[8] = @"SADeviceVendorId";
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SADevice vendorId](self, "vendorId")}];
  v34[8] = v12;
  v33[9] = @"SADeviceProductId";
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SADevice productId](self, "productId")}];
  v34[9] = v13;
  v33[10] = @"SADeviceType";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SADevice deviceType](self, "deviceType")}];
  v34[10] = v14;
  v33[11] = @"SADeviceNotifyEnabled";
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[SADevice notifyEnabled](self, "notifyEnabled")}];
  v34[11] = v15;
  v33[12] = @"SADeviceDate";
  date = [(SADevice *)self date];
  getDateString = [date getDateString];
  v34[12] = getDateString;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:13];

  if (name)
  {
  }

  if (macAddress)
  {
  }

  if (v29)
  {
  }

  v18 = *MEMORY[0x277D85DE8];

  return v25;
}

- (NSString)description
{
  descriptionDictionary = [(SADevice *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    string = v4;
  }

  v8 = string;

  return v8;
}

@end