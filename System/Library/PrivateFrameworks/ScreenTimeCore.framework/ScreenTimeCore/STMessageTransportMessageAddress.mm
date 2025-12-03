@interface STMessageTransportMessageAddress
+ (id)createPartialAddressFromMessageAddress:(id)address;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessageAddress:(id)address;
- (STMessageTransportMessageAddress)initWithCoder:(id)coder;
- (STMessageTransportMessageAddress)initWithUserDSID:(id)d deviceIdentifier:(id)identifier addressType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STMessageTransportMessageAddress

- (STMessageTransportMessageAddress)initWithUserDSID:(id)d deviceIdentifier:(id)identifier addressType:(int64_t)type
{
  v15.receiver = self;
  v15.super_class = STMessageTransportMessageAddress;
  identifierCopy = identifier;
  dCopy = d;
  v9 = [(STMessageTransportMessageAddress *)&v15 init];
  v10 = [dCopy copy];

  userDSID = v9->_userDSID;
  v9->_userDSID = v10;

  v12 = [identifierCopy copy];
  deviceIdentifier = v9->_deviceIdentifier;
  v9->_deviceIdentifier = v12;

  v9->_addressType = type;
  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  userDSID = [(STMessageTransportMessageAddress *)self userDSID];
  deviceIdentifier = [(STMessageTransportMessageAddress *)self deviceIdentifier];
  addressType = [(STMessageTransportMessageAddress *)self addressType];
  v7 = @"UserDevice";
  if (!addressType)
  {
    v7 = @"User";
  }

  v8 = [NSString stringWithFormat:@"<%@: {User: %@, Device: %@ Type: %@}>", v3, userDSID, deviceIdentifier, v7];

  return v8;
}

- (STMessageTransportMessageAddress)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userDSID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v7 = [coderCopy decodeIntegerForKey:@"addressType"];

  v8 = [(STMessageTransportMessageAddress *)self initWithUserDSID:v5 deviceIdentifier:v6 addressType:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  userDSID = self->_userDSID;
  coderCopy = coder;
  [coderCopy encodeObject:userDSID forKey:@"userDSID"];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [coderCopy encodeInteger:self->_addressType forKey:@"addressType"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  userDSID = self->_userDSID;
  deviceIdentifier = self->_deviceIdentifier;
  addressType = self->_addressType;

  return [v4 initWithUserDSID:userDSID deviceIdentifier:deviceIdentifier addressType:addressType];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportMessageAddress *)self isEqualToMessageAddress:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessageAddress:(id)address
{
  addressCopy = address;
  if (addressCopy == self)
  {
    v10 = 1;
  }

  else
  {
    deviceIdentifier = [(STMessageTransportMessageAddress *)self deviceIdentifier];
    deviceIdentifier2 = [(STMessageTransportMessageAddress *)addressCopy deviceIdentifier];
    addressType = [(STMessageTransportMessageAddress *)addressCopy addressType];
    if (addressType == [(STMessageTransportMessageAddress *)self addressType])
    {
      userDSID = [(STMessageTransportMessageAddress *)addressCopy userDSID];
      userDSID2 = [(STMessageTransportMessageAddress *)self userDSID];
      if ([userDSID isEqualToNumber:userDSID2])
      {
        if (deviceIdentifier | deviceIdentifier2)
        {
          v10 = [deviceIdentifier isEqualToString:deviceIdentifier2];
        }

        else
        {
          v10 = 1;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  addressType = [(STMessageTransportMessageAddress *)self addressType];
  userDSID = [(STMessageTransportMessageAddress *)self userDSID];
  v5 = [userDSID hash] ^ addressType;
  deviceIdentifier = [(STMessageTransportMessageAddress *)self deviceIdentifier];
  v7 = [deviceIdentifier hash];

  return v5 ^ v7;
}

+ (id)createPartialAddressFromMessageAddress:(id)address
{
  addressCopy = address;
  v4 = [STMessageTransportMessageAddress alloc];
  userDSID = [addressCopy userDSID];

  v6 = [(STMessageTransportMessageAddress *)v4 initWithUserDSID:userDSID];

  return v6;
}

@end