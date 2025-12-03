@interface TUCTCapabilitiesState
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCapabilitiesState:(id)state;
- (BOOL)isProvisioningURLInvalid;
- (NSString)description;
- (TUCTCapabilitiesState)initWithCapabilityInfo:(id)info;
- (TUCTCapabilitiesState)initWithCoder:(id)coder;
- (TUCTCapabilityInfo)ctCapabilityInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateProvisioningURL;
@end

@implementation TUCTCapabilitiesState

- (TUCTCapabilityInfo)ctCapabilityInfo
{
  v3 = objc_alloc_init(TUCTCapabilityInfo);
  provisioningStatus = [(TUCTCapabilitiesState *)self provisioningStatus];
  if (provisioningStatus <= 3)
  {
    [(TUCTCapabilityInfo *)v3 setProvisioningStatus:provisioningStatus];
  }

  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  [(TUCTCapabilityInfo *)v3 setProvisioningURL:provisioningURL];

  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  [(TUCTCapabilityInfo *)v3 setProvisioningPostData:provisioningPostData];

  [(TUCTCapabilityInfo *)v3 setCanEnable:[(TUCTCapabilitiesState *)self isSupported]];
  [(TUCTCapabilityInfo *)v3 setEnabled:[(TUCTCapabilitiesState *)self isEnabled]];
  [(TUCTCapabilityInfo *)v3 setCanEnableRoaming:[(TUCTCapabilitiesState *)self isRoamingSupported]];
  [(TUCTCapabilityInfo *)v3 setRoamingEnabled:[(TUCTCapabilitiesState *)self isRoamingEnabled]];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = NSStringFromSelector(sel_provisioningStatus);
  [v3 appendFormat:@" %@=%d", v4, -[TUCTCapabilitiesState provisioningStatus](self, "provisioningStatus")];

  v5 = NSStringFromSelector(sel_provisioningURL);
  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  [v3 appendFormat:@" %@=%@", v5, provisioningURL];

  v7 = NSStringFromSelector(sel_provisioningPostData);
  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  [v3 appendFormat:@" %@=%p", v7, provisioningPostData];

  v9 = NSStringFromSelector(sel_isSupported);
  [v3 appendFormat:@" %@=%d", v9, -[TUCTCapabilitiesState isSupported](self, "isSupported")];

  v10 = NSStringFromSelector(sel_isEnabled);
  [v3 appendFormat:@" %@=%d", v10, -[TUCTCapabilitiesState isEnabled](self, "isEnabled")];

  v11 = NSStringFromSelector(sel_isCurrentlyAvailable);
  [v3 appendFormat:@" %@=%d", v11, -[TUCTCapabilitiesState isCurrentlyAvailable](self, "isCurrentlyAvailable")];

  v12 = NSStringFromSelector(sel_isRoamingSupported);
  [v3 appendFormat:@" %@=%d", v12, -[TUCTCapabilitiesState isRoamingSupported](self, "isRoamingSupported")];

  v13 = NSStringFromSelector(sel_isRoamingEnabled);
  [v3 appendFormat:@" %@=%d", v13, -[TUCTCapabilitiesState isRoamingEnabled](self, "isRoamingEnabled")];

  v14 = NSStringFromSelector(sel_isEmergencySupported);
  [v3 appendFormat:@" %@=%d", v14, -[TUCTCapabilitiesState isEmergencySupported](self, "isEmergencySupported")];

  v15 = NSStringFromSelector(sel_isEmergencyCurrentlyAvailable);
  [v3 appendFormat:@" %@=%d", v15, -[TUCTCapabilitiesState isEmergencyCurrentlyAvailable](self, "isEmergencyCurrentlyAvailable")];

  [v3 appendString:@">"];

  return v3;
}

- (TUCTCapabilitiesState)initWithCapabilityInfo:(id)info
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = TUCTCapabilitiesState;
  v5 = [(TUCTCapabilitiesState *)&v22 init];
  if (v5)
  {
    v6 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69652B8]];
    if ([v6 isEqualToString:*MEMORY[0x1E69652C8]])
    {
      v7 = 0;
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E69652C0]])
    {
      v7 = 1;
    }

    else if ([v6 isEqualToString:*MEMORY[0x1E69652D0]])
    {
      v7 = 2;
    }

    else
    {
      if (![v6 isEqualToString:*MEMORY[0x1E69652D8]])
      {
LABEL_11:
        v8 = MEMORY[0x1E695DFF8];
        v9 = *MEMORY[0x1E69652E0];
        v10 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E69652E0]];
        v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69654C8]];
        v12 = [v8 URLWithString:v11];
        provisioningURL = v5->_provisioningURL;
        v5->_provisioningURL = v12;

        v14 = [infoCopy objectForKeyedSubscript:v9];
        v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69654C0]];
        provisioningPostData = v5->_provisioningPostData;
        v5->_provisioningPostData = v15;

        v17 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6965160]];
        v5->_supported = [v17 BOOLValue];

        v18 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6965168]];
        v5->_enabled = [v18 BOOLValue];

        v19 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6965528]];
        v5->_roamingSupported = [v19 BOOLValue];

        v20 = [infoCopy objectForKeyedSubscript:*MEMORY[0x1E6965530]];
        v5->_roamingEnabled = [v20 BOOLValue];

        goto LABEL_12;
      }

      v7 = 3;
    }

    v5->_provisioningStatus = v7;
    goto LABEL_11;
  }

LABEL_12:

  return v5;
}

- (BOOL)isProvisioningURLInvalid
{
  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  v4 = [provisioningURL isEqual:v3];

  return v4;
}

- (void)invalidateProvisioningURL
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  [(TUCTCapabilitiesState *)self setProvisioningURL:v3];
}

- (BOOL)isEqualToCapabilitiesState:(id)state
{
  stateCopy = state;
  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  provisioningPostData2 = [stateCopy provisioningPostData];
  if (TUObjectsAreEqualOrNil(provisioningPostData, provisioningPostData2) && (v7 = -[TUCTCapabilitiesState provisioningStatus](self, "provisioningStatus"), v7 == [stateCopy provisioningStatus]))
  {
    provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
    provisioningURL2 = [stateCopy provisioningURL];
    if (TUObjectsAreEqualOrNil(provisioningURL, provisioningURL2) && (v10 = -[TUCTCapabilitiesState isCurrentlyAvailable](self, "isCurrentlyAvailable"), v10 == [stateCopy isCurrentlyAvailable]) && (v11 = -[TUCTCapabilitiesState isEnabled](self, "isEnabled"), v11 == objc_msgSend(stateCopy, "isEnabled")) && (v12 = -[TUCTCapabilitiesState isSupported](self, "isSupported"), v12 == objc_msgSend(stateCopy, "isSupported")) && (v13 = -[TUCTCapabilitiesState isEmergencyCurrentlyAvailable](self, "isEmergencyCurrentlyAvailable"), v13 == objc_msgSend(stateCopy, "isEmergencyCurrentlyAvailable")) && (v14 = -[TUCTCapabilitiesState isEmergencySupported](self, "isEmergencySupported"), v14 == objc_msgSend(stateCopy, "isEmergencySupported")) && (v15 = -[TUCTCapabilitiesState isRoamingEnabled](self, "isRoamingEnabled"), v15 == objc_msgSend(stateCopy, "isRoamingEnabled")))
    {
      isRoamingSupported = [(TUCTCapabilitiesState *)self isRoamingSupported];
      v16 = isRoamingSupported ^ [stateCopy isRoamingSupported] ^ 1;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (TUCTCapabilitiesState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCTCapabilitiesState *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_provisioningStatus);
    v5->_provisioningStatus = [coderCopy decodeInt32ForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_provisioningURL);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    provisioningURL = v5->_provisioningURL;
    v5->_provisioningURL = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_provisioningPostData);
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    provisioningPostData = v5->_provisioningPostData;
    v5->_provisioningPostData = v13;

    v15 = NSStringFromSelector(sel_isSupported);
    v5->_supported = [coderCopy decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_isEnabled);
    v5->_enabled = [coderCopy decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_isCurrentlyAvailable);
    v5->_currentlyAvailable = [coderCopy decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_isRoamingEnabled);
    v5->_roamingEnabled = [coderCopy decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_isRoamingSupported);
    v5->_roamingSupported = [coderCopy decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_isEmergencySupported);
    v5->_emergencySupported = [coderCopy decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isEmergencyCurrentlyAvailable);
    v5->_emergencyCurrentlyAvailable = [coderCopy decodeBoolForKey:v21];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  provisioningStatus = [(TUCTCapabilitiesState *)self provisioningStatus];
  v6 = NSStringFromSelector(sel_provisioningStatus);
  [coderCopy encodeInt32:provisioningStatus forKey:v6];

  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  v8 = NSStringFromSelector(sel_provisioningURL);
  [coderCopy encodeObject:provisioningURL forKey:v8];

  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  v10 = NSStringFromSelector(sel_provisioningPostData);
  [coderCopy encodeObject:provisioningPostData forKey:v10];

  isSupported = [(TUCTCapabilitiesState *)self isSupported];
  v12 = NSStringFromSelector(sel_isSupported);
  [coderCopy encodeBool:isSupported forKey:v12];

  isEnabled = [(TUCTCapabilitiesState *)self isEnabled];
  v14 = NSStringFromSelector(sel_isEnabled);
  [coderCopy encodeBool:isEnabled forKey:v14];

  isCurrentlyAvailable = [(TUCTCapabilitiesState *)self isCurrentlyAvailable];
  v16 = NSStringFromSelector(sel_isCurrentlyAvailable);
  [coderCopy encodeBool:isCurrentlyAvailable forKey:v16];

  isRoamingEnabled = [(TUCTCapabilitiesState *)self isRoamingEnabled];
  v18 = NSStringFromSelector(sel_isRoamingEnabled);
  [coderCopy encodeBool:isRoamingEnabled forKey:v18];

  isRoamingSupported = [(TUCTCapabilitiesState *)self isRoamingSupported];
  v20 = NSStringFromSelector(sel_isRoamingSupported);
  [coderCopy encodeBool:isRoamingSupported forKey:v20];

  isEmergencySupported = [(TUCTCapabilitiesState *)self isEmergencySupported];
  v22 = NSStringFromSelector(sel_isEmergencySupported);
  [coderCopy encodeBool:isEmergencySupported forKey:v22];

  isEmergencyCurrentlyAvailable = [(TUCTCapabilitiesState *)self isEmergencyCurrentlyAvailable];
  v24 = NSStringFromSelector(sel_isEmergencyCurrentlyAvailable);
  [coderCopy encodeBool:isEmergencyCurrentlyAvailable forKey:v24];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [(TUCTCapabilitiesState *)self publiclyAccessibleCopyWithZone:?];
  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  v7 = [provisioningPostData copyWithZone:zone];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  *(v5 + 16) = [(TUCTCapabilitiesState *)self provisioningStatus];
  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  v10 = [provisioningURL copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (unint64_t)hash
{
  provisioningPostData = [(TUCTCapabilitiesState *)self provisioningPostData];
  v4 = [provisioningPostData hash];
  v5 = v4 ^ [(TUCTCapabilitiesState *)self provisioningStatus];
  provisioningURL = [(TUCTCapabilitiesState *)self provisioningURL];
  v7 = v5 ^ [provisioningURL hash];
  if ([(TUCTCapabilitiesState *)self isCurrentlyAvailable])
  {
    v8 = 1231;
  }

  else
  {
    v8 = 1237;
  }

  if ([(TUCTCapabilitiesState *)self isEnabled])
  {
    v9 = 1231;
  }

  else
  {
    v9 = 1237;
  }

  v10 = v7 ^ v8 ^ v9;
  if ([(TUCTCapabilitiesState *)self isSupported])
  {
    v11 = 1231;
  }

  else
  {
    v11 = 1237;
  }

  if ([(TUCTCapabilitiesState *)self isEmergencyCurrentlyAvailable])
  {
    v12 = 1231;
  }

  else
  {
    v12 = 1237;
  }

  v13 = v11 ^ v12;
  if ([(TUCTCapabilitiesState *)self isEmergencySupported])
  {
    v14 = 1231;
  }

  else
  {
    v14 = 1237;
  }

  v15 = v10 ^ v13 ^ v14;
  if ([(TUCTCapabilitiesState *)self isRoamingEnabled])
  {
    v16 = 1231;
  }

  else
  {
    v16 = 1237;
  }

  if ([(TUCTCapabilitiesState *)self isRoamingSupported])
  {
    v17 = 1231;
  }

  else
  {
    v17 = 1237;
  }

  v18 = v16 ^ v17;

  return v15 ^ v18;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCTCapabilitiesState *)self isEqualToCapabilitiesState:equalCopy];
  }

  return v5;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setSupported:{-[TUCTCapabilitiesState isSupported](self, "isSupported")}];
  [v4 setEnabled:{-[TUCTCapabilitiesState isEnabled](self, "isEnabled")}];
  [v4 setCurrentlyAvailable:{-[TUCTCapabilitiesState isCurrentlyAvailable](self, "isCurrentlyAvailable")}];
  [v4 setRoamingSupported:{-[TUCTCapabilitiesState isRoamingSupported](self, "isRoamingSupported")}];
  [v4 setRoamingEnabled:{-[TUCTCapabilitiesState isRoamingEnabled](self, "isRoamingEnabled")}];
  [v4 setEmergencySupported:{-[TUCTCapabilitiesState isEmergencySupported](self, "isEmergencySupported")}];
  [v4 setEmergencyCurrentlyAvailable:{-[TUCTCapabilitiesState isEmergencyCurrentlyAvailable](self, "isEmergencyCurrentlyAvailable")}];

  return v4;
}

+ (id)unarchivedObjectClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

+ (id)unarchivedObjectFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  unarchivedObjectClasses = [self unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:unarchivedObjectClasses fromData:dataCopy error:error];

  return v9;
}

@end