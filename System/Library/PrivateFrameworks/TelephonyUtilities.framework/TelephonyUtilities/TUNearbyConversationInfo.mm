@interface TUNearbyConversationInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConversationInfo:(id)info;
- (TUNearbyConversationInfo)initWithCoder:(id)coder;
- (TUNearbyConversationInfo)initWithConversationUUID:(id)d userProfileIdentifier:(id)identifier deviceHandle:(id)handle avMode:(unint64_t)mode supportedHandoffTypes:(id)types;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TUNearbyConversationInfo

- (TUNearbyConversationInfo)initWithConversationUUID:(id)d userProfileIdentifier:(id)identifier deviceHandle:(id)handle avMode:(unint64_t)mode supportedHandoffTypes:(id)types
{
  dCopy = d;
  identifierCopy = identifier;
  handleCopy = handle;
  typesCopy = types;
  v26.receiver = self;
  v26.super_class = TUNearbyConversationInfo;
  v16 = [(TUNearbyConversationInfo *)&v26 init];
  if (v16)
  {
    v17 = [dCopy copy];
    conversationUUID = v16->_conversationUUID;
    v16->_conversationUUID = v17;

    v19 = [identifierCopy copy];
    userProfileIdentifier = v16->_userProfileIdentifier;
    v16->_userProfileIdentifier = v19;

    v21 = [handleCopy copy];
    deviceHandle = v16->_deviceHandle;
    v16->_deviceHandle = v21;

    v16->_avMode = mode;
    v23 = [typesCopy copy];
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

  conversationUUID = [(TUNearbyConversationInfo *)self conversationUUID];
  [v6 appendFormat:@" conversationUUID=%@", conversationUUID];

  userProfileIdentifier = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  [v6 appendFormat:@" userProfileIdentifier=%@", userProfileIdentifier];

  deviceHandle = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = [deviceHandle description];
  [v6 appendFormat:@" deviceHandle=%@", v10];

  [v6 appendFormat:@" avMode=%lu", -[TUNearbyConversationInfo avMode](self, "avMode")];
  supportedHandoffTypes = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  [v6 appendFormat:@" supportedHandoffTypes=%@", supportedHandoffTypes];

  [v6 appendString:@">"];
  v12 = [v6 copy];

  return v12;
}

- (TUNearbyConversationInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_conversationUUID);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_userProfileIdentifier);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_deviceHandle);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = NSStringFromSelector(sel_avMode);
  v15 = [coderCopy decodeIntegerForKey:v14];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = NSStringFromSelector(sel_supportedHandoffTypes);
  v20 = [coderCopy decodeObjectOfClasses:v18 forKey:v19];

  v21 = [(TUNearbyConversationInfo *)self initWithConversationUUID:v7 userProfileIdentifier:v10 deviceHandle:v13 avMode:v15 supportedHandoffTypes:v20];
  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  conversationUUID = [(TUNearbyConversationInfo *)self conversationUUID];
  v6 = NSStringFromSelector(sel_conversationUUID);
  [coderCopy encodeObject:conversationUUID forKey:v6];

  userProfileIdentifier = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v8 = NSStringFromSelector(sel_userProfileIdentifier);
  [coderCopy encodeObject:userProfileIdentifier forKey:v8];

  deviceHandle = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = NSStringFromSelector(sel_deviceHandle);
  [coderCopy encodeObject:deviceHandle forKey:v10];

  avMode = [(TUNearbyConversationInfo *)self avMode];
  v12 = NSStringFromSelector(sel_avMode);
  [coderCopy encodeInteger:avMode forKey:v12];

  supportedHandoffTypes = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v13 = NSStringFromSelector(sel_supportedHandoffTypes);
  [coderCopy encodeObject:supportedHandoffTypes forKey:v13];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  conversationUUID = [(TUNearbyConversationInfo *)self conversationUUID];
  v6 = [conversationUUID copy];
  userProfileIdentifier = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v8 = [userProfileIdentifier copy];
  deviceHandle = [(TUNearbyConversationInfo *)self deviceHandle];
  v10 = [deviceHandle copy];
  avMode = [(TUNearbyConversationInfo *)self avMode];
  supportedHandoffTypes = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v13 = [supportedHandoffTypes copy];
  v14 = [v4 initWithConversationUUID:v6 userProfileIdentifier:v8 deviceHandle:v10 avMode:avMode supportedHandoffTypes:v13];

  return v14;
}

- (unint64_t)hash
{
  conversationUUID = [(TUNearbyConversationInfo *)self conversationUUID];
  v4 = [conversationUUID hash];
  userProfileIdentifier = [(TUNearbyConversationInfo *)self userProfileIdentifier];
  v6 = [userProfileIdentifier hash] ^ v4;
  deviceHandle = [(TUNearbyConversationInfo *)self deviceHandle];
  v8 = [deviceHandle hash];
  v9 = v6 ^ v8 ^ [(TUNearbyConversationInfo *)self avMode];
  supportedHandoffTypes = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
  v11 = [supportedHandoffTypes hash];

  return v9 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUNearbyConversationInfo *)self isEqualToConversationInfo:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConversationInfo:(id)info
{
  infoCopy = info;
  conversationUUID = [(TUNearbyConversationInfo *)self conversationUUID];
  conversationUUID2 = [infoCopy conversationUUID];
  if ([conversationUUID isEqual:conversationUUID2])
  {
    userProfileIdentifier = [(TUNearbyConversationInfo *)self userProfileIdentifier];
    userProfileIdentifier2 = [infoCopy userProfileIdentifier];
    if ([userProfileIdentifier isEqualToString:userProfileIdentifier2])
    {
      deviceHandle = [(TUNearbyConversationInfo *)self deviceHandle];
      deviceHandle2 = [infoCopy deviceHandle];
      if ([deviceHandle isEquivalentToDeviceHandle:deviceHandle2] && (v11 = -[TUNearbyConversationInfo avMode](self, "avMode"), v11 == objc_msgSend(infoCopy, "avMode")))
      {
        supportedHandoffTypes = [(TUNearbyConversationInfo *)self supportedHandoffTypes];
        supportedHandoffTypes2 = [infoCopy supportedHandoffTypes];
        v14 = [supportedHandoffTypes isEqualToSet:supportedHandoffTypes2];
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