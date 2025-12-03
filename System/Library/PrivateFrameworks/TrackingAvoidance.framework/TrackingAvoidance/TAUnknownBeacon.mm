@interface TAUnknownBeacon
- (BOOL)isEqual:(id)equal;
- (TAUnknownBeacon)initWithBeaconUUID:(id)d address:(id)address deviceType:(unint64_t)type withAccessoryInfo:(id)info isPoshAccessory:(BOOL)accessory isFindMyNetwork:(BOOL)network;
- (TAUnknownBeacon)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)descriptionDictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TAUnknownBeacon

- (TAUnknownBeacon)initWithBeaconUUID:(id)d address:(id)address deviceType:(unint64_t)type withAccessoryInfo:(id)info isPoshAccessory:(BOOL)accessory isFindMyNetwork:(BOOL)network
{
  dCopy = d;
  addressCopy = address;
  infoCopy = info;
  v26.receiver = self;
  v26.super_class = TAUnknownBeacon;
  v17 = [(TAUnknownBeacon *)&v26 init];
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = 0;
  if (dCopy && addressCopy)
  {
    v19 = [dCopy copy];
    identifier = v17->_identifier;
    v17->_identifier = v19;

    v21 = [addressCopy copy];
    address = v17->_address;
    v17->_address = v21;

    v17->_deviceType = type;
    v23 = [infoCopy copy];
    accessoryInfo = v17->_accessoryInfo;
    v17->_accessoryInfo = v23;

    v17->_isPoshAccessory = accessory;
    v17->_isFindMyNetwork = network;
LABEL_5:
    v18 = v17;
  }

  return v18;
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
      v7 = equalCopy;
      identifier = [(TAUnknownBeacon *)self identifier];
      identifier2 = [(TAUnknownBeacon *)v7 identifier];
      if (identifier != identifier2)
      {
        identifier3 = [(TAUnknownBeacon *)self identifier];
        identifier4 = [(TAUnknownBeacon *)v7 identifier];
        if (![identifier3 isEqual:identifier4])
        {
          v10 = 0;
          goto LABEL_21;
        }
      }

      address = [(TAUnknownBeacon *)self address];
      address2 = [(TAUnknownBeacon *)v7 address];
      if (address != address2)
      {
        address3 = [(TAUnknownBeacon *)self address];
        address4 = [(TAUnknownBeacon *)v7 address];
        if (![address3 isEqual:?])
        {
          v10 = 0;
          goto LABEL_19;
        }

        v25 = address3;
      }

      deviceType = [(TAUnknownBeacon *)self deviceType];
      if (deviceType == [(TAUnknownBeacon *)v7 deviceType])
      {
        v24 = identifier4;
        accessoryInfo = [(TAUnknownBeacon *)self accessoryInfo];
        accessoryInfo2 = [(TAUnknownBeacon *)v7 accessoryInfo];
        v17 = accessoryInfo2;
        if (accessoryInfo == accessoryInfo2)
        {

          v10 = 1;
        }

        else
        {
          [(TAUnknownBeacon *)self accessoryInfo];
          v18 = v23 = identifier3;
          [(TAUnknownBeacon *)v7 accessoryInfo];
          v19 = v22 = accessoryInfo;
          v10 = [v18 isEqual:v19];

          identifier3 = v23;
        }

        v20 = address == address2;
        identifier4 = v24;
      }

      else
      {
        v10 = 0;
        v20 = address == address2;
      }

      address3 = v25;
      if (v20)
      {
LABEL_20:

        if (identifier == identifier2)
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
  selfCopy = self;
  v14[4] = *MEMORY[0x277D85DE8];
  v13[0] = @"TAUnknownBeaconIdentifier";
  identifier = [(TAUnknownBeacon *)self identifier];
  v4 = [identifier description];
  v14[0] = v4;
  v13[1] = @"TAUnknownBeaconAddress";
  address = [selfCopy address];
  v6 = [address description];
  v14[1] = v6;
  v13[2] = @"TAUnknownBeaconType";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(selfCopy, "deviceType")}];
  v14[2] = v7;
  v13[3] = @"TAUnknownBeaconAccessoryInfo";
  accessoryInfo = [selfCopy accessoryInfo];
  if (accessoryInfo)
  {
    selfCopy = [selfCopy accessoryInfo];
    descriptionDictionary = [selfCopy descriptionDictionary];
  }

  else
  {
    descriptionDictionary = &stru_287F632C0;
  }

  v14[3] = descriptionDictionary;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (accessoryInfo)
  {
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)description
{
  descriptionDictionary = [(TAUnknownBeacon *)self descriptionDictionary];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] JSONStringFromNSDictionary:descriptionDictionary error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      [(TAOutgoingRequests *)v6 description];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [TAUnknownBeacon instancesRespondToSelector:NSSelectorFromString(&cfstr_Initwithbeacon.isa)];
  v6 = [TAUnknownBeacon allocWithZone:zone];
  identifier = [(TAUnknownBeacon *)self identifier];
  address = [(TAUnknownBeacon *)self address];
  deviceType = [(TAUnknownBeacon *)self deviceType];
  accessoryInfo = [(TAUnknownBeacon *)self accessoryInfo];
  if (v5)
  {
    v11 = [(TAUnknownBeacon *)v6 initWithBeaconUUID:identifier address:address deviceType:deviceType withAccessoryInfo:accessoryInfo isPoshAccessory:[(TAUnknownBeacon *)self isPoshAccessory] isFindMyNetwork:[(TAUnknownBeacon *)self isFindMyNetwork]];
  }

  else
  {
    v11 = [(TAUnknownBeacon *)v6 initWithBeaconUUID:identifier address:address deviceType:deviceType withAccessoryInfo:accessoryInfo];
  }

  v12 = v11;

  return v12;
}

- (TAUnknownBeacon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = TAUnknownBeacon;
  v5 = [(TAUnknownBeacon *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"TAUnknownBeaconIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectForKey:@"TAUnknownBeaconAddress"];
    address = v5->_address;
    v5->_address = v8;

    v5->_deviceType = [coderCopy decodeIntegerForKey:@"TAUnknownBeaconType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TAUnknownBeaconAccessoryInfo"];
    accessoryInfo = v5->_accessoryInfo;
    v5->_accessoryInfo = v10;

    v5->_isPoshAccessory = [coderCopy decodeBoolForKey:@"TAUnknownBeaconIsPosh"];
    v5->_isFindMyNetwork = [coderCopy decodeBoolForKey:@"TAUnknownBeaconIsFindMyNetwork"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"TAUnknownBeaconIdentifier"];
  [coderCopy encodeObject:self->_address forKey:@"TAUnknownBeaconAddress"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"TAUnknownBeaconType"];
  [coderCopy encodeObject:self->_accessoryInfo forKey:@"TAUnknownBeaconAccessoryInfo"];
  [coderCopy encodeBool:self->_isPoshAccessory forKey:@"TAUnknownBeaconIsPosh"];
  [coderCopy encodeBool:self->_isFindMyNetwork forKey:@"TAUnknownBeaconIsFindMyNetwork"];
}

@end