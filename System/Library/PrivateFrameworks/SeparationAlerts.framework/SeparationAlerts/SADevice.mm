@interface SADevice
- (BOOL)isEqual:(id)a3;
- (BOOL)isReallyEqual:(id)a3;
- (NSString)description;
- (SADevice)initWithCoder:(id)a3;
- (SADevice)initWithDeviceUUID:(id)a3 groupIdentifier:(id)a4 macAddress:(id)a5 partIdentifier:(int64_t)a6 name:(id)a7 model:(id)a8 systemVersion:(id)a9 vendorId:(int64_t)a10 productId:(int64_t)a11 deviceType:(unint64_t)a12 notifyEnabled:(BOOL)a13 isAppleAudioAccessory:(BOOL)a14 date:(id)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5;
@end

@implementation SADevice

- (SADevice)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectForKey:@"SADeviceIdentifier"];
  v18 = [v3 decodeObjectForKey:@"SADeviceGroupIdentifier"];
  v17 = [v3 decodeIntegerForKey:@"SADevicePartIdentifier"];
  v16 = [v3 decodeObjectForKey:@"SADeviceName"];
  v4 = [v3 decodeObjectForKey:@"SADeviceModel"];
  v5 = [v3 decodeObjectForKey:@"SADeviceSystemVersion"];
  v6 = [v3 decodeIntegerForKey:@"SADeviceVendorId"];
  v7 = [v3 decodeIntegerForKey:@"SADeviceProductId"];
  v8 = [v3 decodeIntegerForKey:@"SADeviceType"];
  v9 = [v3 decodeBoolForKey:@"SADeviceNotifyEnabled"];
  v10 = [v3 decodeBoolForKey:@"SADeviceIsAppleAudioAccessory"];
  v11 = [v3 decodeObjectForKey:@"SADeviceDate"];
  v12 = [v3 decodeObjectForKey:@"SADeviceMacAddress"];

  BYTE1(v15) = v10;
  LOBYTE(v15) = v9;
  v13 = [(SADevice *)self initWithDeviceUUID:v19 groupIdentifier:v18 macAddress:v12 partIdentifier:v17 name:v16 model:v4 systemVersion:v5 vendorId:v6 productId:v7 deviceType:v8 notifyEnabled:v15 isAppleAudioAccessory:v11 date:?];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SADevice *)self identifier];
  [v4 encodeObject:v5 forKey:@"SADeviceIdentifier"];

  v6 = [(SADevice *)self groupIdentifier];
  [v4 encodeObject:v6 forKey:@"SADeviceGroupIdentifier"];

  [v4 encodeInteger:-[SADevice partIdentifier](self forKey:{"partIdentifier"), @"SADevicePartIdentifier"}];
  v7 = [(SADevice *)self name];
  [v4 encodeObject:v7 forKey:@"SADeviceName"];

  v8 = [(SADevice *)self model];
  [v4 encodeObject:v8 forKey:@"SADeviceModel"];

  v9 = [(SADevice *)self systemVersion];
  [v4 encodeObject:v9 forKey:@"SADeviceSystemVersion"];

  [v4 encodeInteger:-[SADevice vendorId](self forKey:{"vendorId"), @"SADeviceVendorId"}];
  [v4 encodeInteger:-[SADevice productId](self forKey:{"productId"), @"SADeviceProductId"}];
  [v4 encodeInteger:-[SADevice deviceType](self forKey:{"deviceType"), @"SADeviceType"}];
  [v4 encodeBool:-[SADevice notifyEnabled](self forKey:{"notifyEnabled"), @"SADeviceNotifyEnabled"}];
  [v4 encodeBool:-[SADevice isAppleAudioAccessory](self forKey:{"isAppleAudioAccessory"), @"SADeviceIsAppleAudioAccessory"}];
  v10 = [(SADevice *)self date];
  [v4 encodeObject:v10 forKey:@"SADeviceDate"];

  v11 = [(SADevice *)self macAddress];
  [v4 encodeObject:v11 forKey:@"SADeviceMacAddress"];
}

- (void)encodeWithOSLogCoder:(id)a3 options:(unint64_t)a4 maxLength:(unint64_t)a5
{
  v8 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  [v8 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];

  objc_autoreleasePoolPop(v6);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = [SADevice allocWithZone:a3];
  v19 = [(SADevice *)self identifier];
  v18 = [(SADevice *)self groupIdentifier];
  v4 = [(SADevice *)self macAddress];
  v17 = [(SADevice *)self partIdentifier];
  v5 = [(SADevice *)self name];
  v6 = [(SADevice *)self model];
  v7 = [(SADevice *)self systemVersion];
  v8 = [(SADevice *)self vendorId];
  v9 = [(SADevice *)self productId];
  v10 = [(SADevice *)self deviceType];
  v11 = [(SADevice *)self notifyEnabled];
  v12 = [(SADevice *)self isAppleAudioAccessory];
  v13 = [(SADevice *)self date];
  BYTE1(v16) = v12;
  LOBYTE(v16) = v11;
  v14 = [(SADevice *)v20 initWithDeviceUUID:v19 groupIdentifier:v18 macAddress:v4 partIdentifier:v17 name:v5 model:v6 systemVersion:v7 vendorId:v8 productId:v9 deviceType:v10 notifyEnabled:v16 isAppleAudioAccessory:v13 date:?];

  return v14;
}

- (SADevice)initWithDeviceUUID:(id)a3 groupIdentifier:(id)a4 macAddress:(id)a5 partIdentifier:(int64_t)a6 name:(id)a7 model:(id)a8 systemVersion:(id)a9 vendorId:(int64_t)a10 productId:(int64_t)a11 deviceType:(unint64_t)a12 notifyEnabled:(BOOL)a13 isAppleAudioAccessory:(BOOL)a14 date:(id)a15
{
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a7;
  v25 = a8;
  v26 = a9;
  v27 = a15;
  v45.receiver = self;
  v45.super_class = SADevice;
  v28 = [(SADevice *)&v45 init];
  if (!v28)
  {
    goto LABEL_7;
  }

  v29 = 0;
  if (v21 && v25 && v26 && v27)
  {
    v30 = [v21 copy];
    identifier = v28->_identifier;
    v28->_identifier = v30;

    v32 = [v22 copy];
    groupIdentifier = v28->_groupIdentifier;
    v28->_groupIdentifier = v32;

    v34 = [v23 copy];
    macAddress = v28->_macAddress;
    v28->_macAddress = v34;

    v28->_partIdentifier = a6;
    v36 = [v24 copy];
    name = v28->_name;
    v28->_name = v36;

    v38 = [v25 copy];
    model = v28->_model;
    v28->_model = v38;

    v40 = [v26 copy];
    systemVersion = v28->_systemVersion;
    v28->_systemVersion = v40;

    v28->_vendorId = a10;
    v28->_productId = a11;
    v28->_deviceType = a12;
    v28->_notifyEnabled = a13;
    v28->_isAppleAudioAccessory = a14;
    v42 = [v27 copy];
    date = v28->_date;
    v28->_date = v42;

LABEL_7:
    v29 = v28;
  }

  return v29;
}

- (BOOL)isReallyEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(SADevice *)self identifier];
      v9 = [(SADevice *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(SADevice *)self identifier];
        v4 = [(SADevice *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          LOBYTE(v10) = 0;
          goto LABEL_35;
        }
      }

      v11 = [(SADevice *)self groupIdentifier];
      v12 = [(SADevice *)v7 groupIdentifier];
      if (v11 != v12)
      {
        v13 = [(SADevice *)self groupIdentifier];
        v44 = [(SADevice *)v7 groupIdentifier];
        if (![v13 isEqual:?])
        {
          LOBYTE(v10) = 0;
          goto LABEL_33;
        }

        v43 = v13;
      }

      v14 = [(SADevice *)self partIdentifier];
      if (v14 == [(SADevice *)v7 partIdentifier])
      {
        v15 = [(SADevice *)self name];
        [(SADevice *)v7 name];
        v41 = v3;
        v42 = v15;
        v40 = v39 = v4;
        v16 = v15 == v40;
        v13 = v43;
        if (v16)
        {
          v37 = v8;
          v38 = v12;
        }

        else
        {
          v33 = v11;
          v17 = [(SADevice *)self name];
          v35 = [(SADevice *)v7 name];
          v36 = v17;
          if (![v17 isEqual:?])
          {
            LOBYTE(v10) = 0;
            v29 = v42;
            v30 = v40;
            v11 = v33;
            goto LABEL_32;
          }

          v37 = v8;
          v38 = v12;
          v11 = v33;
        }

        v18 = [(SADevice *)self model];
        v19 = [(SADevice *)v7 model];
        if ([v18 isEqualToString:v19])
        {
          v32 = v19;
          v34 = v18;
          v20 = [(SADevice *)self systemVersion];
          v21 = [(SADevice *)v7 systemVersion];
          v22 = v20;
          v23 = v20;
          v24 = v21;
          if ([v23 isEqualToString:v21])
          {
            v25 = [(SADevice *)self vendorId];
            if (v25 == [(SADevice *)v7 vendorId]&& (v26 = [(SADevice *)self productId], v26 == [(SADevice *)v7 productId]) && (v27 = [(SADevice *)self deviceType], v27 == [(SADevice *)v7 deviceType]))
            {
              v28 = [(SADevice *)self notifyEnabled];
              v10 = v28 ^ [(SADevice *)v7 notifyEnabled]^ 1;
            }

            else
            {
              LOBYTE(v10) = 0;
            }

            v13 = v43;
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
        v8 = v37;
        v12 = v38;
        if (v42 == v40)
        {

          if (v11 != v38)
          {
          }

          v3 = v41;
          v4 = v39;
          if (v37 == v9)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }

LABEL_32:

        v3 = v41;
        v4 = v39;
        if (v11 == v12)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      LOBYTE(v10) = 0;
      v13 = v43;
      if (v11 == v12)
      {
LABEL_34:

        if (v8 == v9)
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SADevice *)self identifier];
      v7 = [(SADevice *)v5 identifier];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(SADevice *)self identifier];
        v9 = [(SADevice *)v5 identifier];
        v10 = [v8 isEqual:v9];
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
  v31 = [(SADevice *)self identifier];
  v30 = [v31 description];
  v34[1] = v30;
  v33[2] = @"SADeviceGroupIdentifier";
  v4 = [(SADevice *)self groupIdentifier];
  if (v4)
  {
    v21 = [(SADevice *)self groupIdentifier];
    v5 = [v21 description];
  }

  else
  {
    v5 = &stru_287709218;
  }

  v24 = v5;
  v34[2] = v5;
  v33[3] = @"SADeviceMacAddress";
  v28 = [(SADevice *)self macAddress];
  v29 = v4;
  if (v28)
  {
    v6 = [(SADevice *)self macAddress];
  }

  else
  {
    v6 = &stru_287709218;
  }

  v23 = v6;
  v34[3] = v6;
  v33[4] = @"SADevicePartIdentifier";
  v27 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SADevice partIdentifier](self, "partIdentifier")}];
  v34[4] = v27;
  v33[5] = @"SADeviceName";
  v7 = [(SADevice *)self name];
  if (v7)
  {
    v20 = [(SADevice *)self name];
    v8 = [v20 description];
  }

  else
  {
    v8 = &stru_287709218;
  }

  v22 = v8;
  v34[5] = v8;
  v33[6] = @"SADeviceModel";
  v26 = [(SADevice *)self model];
  v9 = [v26 description];
  v34[6] = v9;
  v33[7] = @"SADeviceSystemVersion";
  v10 = [(SADevice *)self systemVersion];
  v11 = [v10 description];
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
  v16 = [(SADevice *)self date];
  v17 = [v16 getDateString];
  v34[12] = v17;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:13];

  if (v7)
  {
  }

  if (v28)
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
  v3 = [(SADevice *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      [(SAConnectionEvent *)v6 description];
    }

    v7 = [MEMORY[0x277CCACA8] string];
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v8;
}

@end