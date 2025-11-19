@interface STMessageTransportMessageAddress
+ (id)createPartialAddressFromMessageAddress:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessageAddress:(id)a3;
- (STMessageTransportMessageAddress)initWithCoder:(id)a3;
- (STMessageTransportMessageAddress)initWithUserDSID:(id)a3 deviceIdentifier:(id)a4 addressType:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STMessageTransportMessageAddress

- (STMessageTransportMessageAddress)initWithUserDSID:(id)a3 deviceIdentifier:(id)a4 addressType:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = STMessageTransportMessageAddress;
  v7 = a4;
  v8 = a3;
  v9 = [(STMessageTransportMessageAddress *)&v15 init];
  v10 = [v8 copy];

  userDSID = v9->_userDSID;
  v9->_userDSID = v10;

  v12 = [v7 copy];
  deviceIdentifier = v9->_deviceIdentifier;
  v9->_deviceIdentifier = v12;

  v9->_addressType = a5;
  return v9;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(STMessageTransportMessageAddress *)self userDSID];
  v5 = [(STMessageTransportMessageAddress *)self deviceIdentifier];
  v6 = [(STMessageTransportMessageAddress *)self addressType];
  v7 = @"UserDevice";
  if (!v6)
  {
    v7 = @"User";
  }

  v8 = [NSString stringWithFormat:@"<%@: {User: %@, Device: %@ Type: %@}>", v3, v4, v5, v7];

  return v8;
}

- (STMessageTransportMessageAddress)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userDSID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
  v7 = [v4 decodeIntegerForKey:@"addressType"];

  v8 = [(STMessageTransportMessageAddress *)self initWithUserDSID:v5 deviceIdentifier:v6 addressType:v7];
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  userDSID = self->_userDSID;
  v5 = a3;
  [v5 encodeObject:userDSID forKey:@"userDSID"];
  [v5 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
  [v5 encodeInteger:self->_addressType forKey:@"addressType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  userDSID = self->_userDSID;
  deviceIdentifier = self->_deviceIdentifier;
  addressType = self->_addressType;

  return [v4 initWithUserDSID:userDSID deviceIdentifier:deviceIdentifier addressType:addressType];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(STMessageTransportMessageAddress *)self isEqualToMessageAddress:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isEqualToMessageAddress:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = [(STMessageTransportMessageAddress *)self deviceIdentifier];
    v6 = [(STMessageTransportMessageAddress *)v4 deviceIdentifier];
    v7 = [(STMessageTransportMessageAddress *)v4 addressType];
    if (v7 == [(STMessageTransportMessageAddress *)self addressType])
    {
      v8 = [(STMessageTransportMessageAddress *)v4 userDSID];
      v9 = [(STMessageTransportMessageAddress *)self userDSID];
      if ([v8 isEqualToNumber:v9])
      {
        if (v5 | v6)
        {
          v10 = [v5 isEqualToString:v6];
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
  v3 = [(STMessageTransportMessageAddress *)self addressType];
  v4 = [(STMessageTransportMessageAddress *)self userDSID];
  v5 = [v4 hash] ^ v3;
  v6 = [(STMessageTransportMessageAddress *)self deviceIdentifier];
  v7 = [v6 hash];

  return v5 ^ v7;
}

+ (id)createPartialAddressFromMessageAddress:(id)a3
{
  v3 = a3;
  v4 = [STMessageTransportMessageAddress alloc];
  v5 = [v3 userDSID];

  v6 = [(STMessageTransportMessageAddress *)v4 initWithUserDSID:v5];

  return v6;
}

@end