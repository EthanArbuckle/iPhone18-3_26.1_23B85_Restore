@interface TUNearbyConversationInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConversationInfo:(id)a3;
- (TUNearbyConversationInfo)initWithCoder:(id)a3;
- (TUNearbyConversationInfo)initWithConversationUUID:(id)a3 userProfileIdentifier:(id)a4 deviceHandle:(id)a5 avMode:(unint64_t)a6 supportedHandoffTypes:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TUNearbyConversationInfo

- (TUNearbyConversationInfo)initWithConversationUUID:(id)a3 userProfileIdentifier:(id)a4 deviceHandle:(id)a5 avMode:(unint64_t)a6 supportedHandoffTypes:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v26.receiver = self;
  v26.super_class = TUNearbyConversationInfo;
  v16 = [(TUNearbyConversationInfo *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    conversationUUID = v16->_conversationUUID;
    v16->_conversationUUID = v17;

    v19 = [v13 copy];
    userProfileIdentifier = v16->_userProfileIdentifier;
    v16->_userProfileIdentifier = v19;

    v21 = [v14 copy];
    deviceHandle = v16->_deviceHandle;
    v16->_deviceHandle = v21;

    v16->_avMode = a6;
    v23 = [v15 copy];
    supportedHandoffTypes = v16->_supportedHandoffTypes;
    v16->_supportedHandoffTypes = v23;
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p", v5, self];

  v7 = [(TUNearbyConversationInfo *)self conversationUUID];
  [v6 appendFormat:@" conversationUUID=%@", v7];

  v8 = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  [v6 appendFormat:@" userProfileIdentifier=%@", v8];

  v9 = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = [v9 description];
  [v6 appendFormat:@" deviceHandle=%@", v10];

  [v6 appendFormat:@" avMode=%lu", -[TUNearbyConversationInfo avMode](self, "avMode")];
  v11 = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  [v6 appendFormat:@" supportedHandoffTypes=%@", v11];

  [v6 appendString:@">"];
  v12 = [v6 copy];

  return v12;
}

- (TUNearbyConversationInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationUUID);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_userProfileIdentifier);
  v10 = [v4 decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_deviceHandle);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_avMode);
  v15 = [v4 decodeIntegerForKey:v14];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = NSStringFromSelector(sel_supportedHandoffTypes);
  v20 = [v4 decodeObjectOfClasses:v18 forKey:v19];

  v21 = [(TUNearbyConversationInfo *)self initWithConversationUUID:v7 userProfileIdentifier:v10 deviceHandle:v13 avMode:v15 supportedHandoffTypes:v20];
  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUNearbyConversationInfo *)self conversationUUID];
  v6 = NSStringFromSelector(sel_conversationUUID);
  [v4 encodeObject:v5 forKey:v6];

  v7 = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v8 = NSStringFromSelector(sel_userProfileIdentifier);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = NSStringFromSelector(sel_deviceHandle);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUNearbyConversationInfo *)self avMode];
  v12 = NSStringFromSelector(sel_avMode);
  [v4 encodeInteger:v11 forKey:v12];

  v14 = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v13 = NSStringFromSelector(sel_supportedHandoffTypes);
  [v4 encodeObject:v14 forKey:v13];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(TUNearbyConversationInfo *)self conversationUUID];
  v6 = [v5 copy];
  v7 = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v8 = [v7 copy];
  v9 = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = [v9 copy];
  v11 = [(TUNearbyConversationInfo *)self avMode];
  v12 = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v13 = [v12 copy];
  v14 = [v4 initWithConversationUUID:v6 userProfileIdentifier:v8 deviceHandle:v10 avMode:v11 supportedHandoffTypes:v13];

  return v14;
}

- (unint64_t)hash
{
  v3 = [(TUNearbyConversationInfo *)self conversationUUID];
  v4 = [v3 hash];
  v5 = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v6 = [v5 hash] ^ v4;
  v7 = [(TUNearbyConversationInfo *)self deviceHandle];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(TUNearbyConversationInfo *)self avMode];
  v10 = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v11 = [v10 hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUNearbyConversationInfo *)self isEqualToConversationInfo:v4];
  }

  return v5;
}

- (BOOL)isEqualToConversationInfo:(id)a3
{
  v4 = a3;
  v5 = [(TUNearbyConversationInfo *)self conversationUUID];
  v6 = [v4 conversationUUID];
  if ([v5 isEqual:v6])
  {
    v7 = [(TUNearbyConversationInfo *)self userProfileIdentifier];
    v8 = [v4 userProfileIdentifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(TUNearbyConversationInfo *)self deviceHandle];
      v10 = [v4 deviceHandle];
      if ([v9 isEquivalentToDeviceHandle:v10] && (v11 = -[TUNearbyConversationInfo avMode](self, "avMode"), v11 == objc_msgSend(v4, "avMode")))
      {
        v12 = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
        v13 = [v4 supportedHandoffTypes];
        v14 = [v12 isEqualToSet:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

@end