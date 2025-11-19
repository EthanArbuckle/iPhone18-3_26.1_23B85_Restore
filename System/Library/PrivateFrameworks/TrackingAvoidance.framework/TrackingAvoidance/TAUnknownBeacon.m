@interface TAUnknownBeacon
- (BOOL)isEqual:(id)a3;
- (TAUnknownBeacon)initWithBeaconUUID:(id)a3 address:(id)a4 deviceType:(unint64_t)a5 withAccessoryInfo:(id)a6 isPoshAccessory:(BOOL)a7 isFindMyNetwork:(BOOL)a8;
- (TAUnknownBeacon)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TAUnknownBeacon

- (TAUnknownBeacon)initWithBeaconUUID:(id)a3 address:(id)a4 deviceType:(unint64_t)a5 withAccessoryInfo:(id)a6 isPoshAccessory:(BOOL)a7 isFindMyNetwork:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v26.receiver = self;
  v26.super_class = TAUnknownBeacon;
  v17 = [(TAUnknownBeacon *)&v26 init];
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = 0;
  if (v14 && v15)
  {
    v19 = [v14 copy];
    identifier = v17->_identifier;
    v17->_identifier = v19;

    v21 = [v15 copy];
    address = v17->_address;
    v17->_address = v21;

    v17->_deviceType = a5;
    v23 = [v16 copy];
    accessoryInfo = v17->_accessoryInfo;
    v17->_accessoryInfo = v23;

    v17->_isPoshAccessory = a7;
    v17->_isFindMyNetwork = a8;
LABEL_5:
    v18 = v17;
  }

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(TAUnknownBeacon *)self identifier];
      v9 = [(TAUnknownBeacon *)v7 identifier];
      if (v8 != v9)
      {
        v3 = [(TAUnknownBeacon *)self identifier];
        v4 = [(TAUnknownBeacon *)v7 identifier];
        if (![v3 isEqual:v4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      v11 = [(TAUnknownBeacon *)self address];
      v12 = [(TAUnknownBeacon *)v7 address];
      if (v11 != v12)
      {
        v13 = [(TAUnknownBeacon *)self address];
        v26 = [(TAUnknownBeacon *)v7 address];
        if (![v13 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = v13;
      }

      v14 = [(TAUnknownBeacon *)self deviceType];
      if (v14 == [(TAUnknownBeacon *)v7 deviceType])
      {
        v24 = v4;
        v15 = [(TAUnknownBeacon *)self accessoryInfo];
        v16 = [(TAUnknownBeacon *)v7 accessoryInfo];
        v17 = v16;
        if (v15 == v16)
        {

          v10 = 1;
        }

        else
        {
          [(TAUnknownBeacon *)self accessoryInfo];
          v18 = v23 = v3;
          [(TAUnknownBeacon *)v7 accessoryInfo];
          v19 = v22 = v15;
          v10 = [v18 isEqual:v19];

          v3 = v23;
        }

        v20 = v11 == v12;
        v4 = v24;
      }

      else
      {
        v10 = 0;
        v20 = v11 == v12;
      }

      v13 = v25;
      if (v20)
      {
LABEL_20:

        if (v8 == v9)
        {
LABEL_22:

          goto LABEL_23;
        }

LABEL_21:

        goto LABEL_22;
      }

LABEL_19:

      goto LABEL_20;
    }

    v10 = 0;
  }

LABEL_23:

  return v10;
}

- (id)descriptionDictionary
{
  v2 = self;
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"TAUnknownBeaconIdentifier";
  v3 = [(TAUnknownBeacon *)self identifier];
  v4 = [v3 description];
  v14[0] = v4;
  v13[1] = @"TAUnknownBeaconAddress";
  v5 = [v2 address];
  v6 = [v5 description];
  v14[1] = v6;
  v13[2] = @"TAUnknownBeaconType";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "deviceType")}];
  v14[2] = v7;
  v13[3] = @"TAUnknownBeaconAccessoryInfo";
  v8 = [v2 accessoryInfo];
  if (v8)
  {
    v2 = [v2 accessoryInfo];
    v9 = [v2 descriptionDictionary];
  }

  else
  {
    v9 = &stru_287F632C0;
  }

  v14[3] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (v8)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  v3 = [(TAUnknownBeacon *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:v3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [TAUnknownBeacon instancesRespondToSelector:NSSelectorFromString(&cfstr_Initwithbeacon.isa)];
  v6 = [TAUnknownBeacon allocWithZone:a3];
  v7 = [(TAUnknownBeacon *)self identifier];
  v8 = [(TAUnknownBeacon *)self address];
  v9 = [(TAUnknownBeacon *)self deviceType];
  v10 = [(TAUnknownBeacon *)self accessoryInfo];
  if (v5)
  {
    v11 = [(TAUnknownBeacon *)v6 initWithBeaconUUID:v7 address:v8 deviceType:v9 withAccessoryInfo:v10 isPoshAccessory:[(TAUnknownBeacon *)self isPoshAccessory] isFindMyNetwork:[(TAUnknownBeacon *)self isFindMyNetwork]];
  }

  else
  {
    v11 = [(TAUnknownBeacon *)v6 initWithBeaconUUID:v7 address:v8 deviceType:v9 withAccessoryInfo:v10];
  }

  v12 = v11;

  return v12;
}

- (TAUnknownBeacon)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TAUnknownBeacon;
  v5 = [(TAUnknownBeacon *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"TAUnknownBeaconIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectForKey:@"TAUnknownBeaconAddress"];
    address = v5->_address;
    v5->_address = v8;

    v5->_deviceType = [v4 decodeIntegerForKey:@"TAUnknownBeaconType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TAUnknownBeaconAccessoryInfo"];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v10;

    v5->_isPoshAccessory = [v4 decodeBoolForKey:@"TAUnknownBeaconIsPosh"];
    v5->_isFindMyNetwork = [v4 decodeBoolForKey:@"TAUnknownBeaconIsFindMyNetwork"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"TAUnknownBeaconIdentifier"];
  [v5 encodeObject:self->_address forKey:@"TAUnknownBeaconAddress"];
  [v5 encodeInteger:self->_deviceType forKey:@"TAUnknownBeaconType"];
  [v5 encodeObject:self->_accessoryInfo forKey:@"TAUnknownBeaconAccessoryInfo"];
  [v5 encodeBool:self->_isPoshAccessory forKey:@"TAUnknownBeaconIsPosh"];
  [v5 encodeBool:self->_isFindMyNetwork forKey:@"TAUnknownBeaconIsFindMyNetwork"];
}

@end