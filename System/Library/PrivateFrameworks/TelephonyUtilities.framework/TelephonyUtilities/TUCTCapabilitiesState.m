@interface TUCTCapabilitiesState
+ (id)unarchivedObjectClasses;
+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCapabilitiesState:(id)a3;
- (BOOL)isProvisioningURLInvalid;
- (NSString)description;
- (TUCTCapabilitiesState)initWithCapabilityInfo:(id)a3;
- (TUCTCapabilitiesState)initWithCoder:(id)a3;
- (TUCTCapabilityInfo)ctCapabilityInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateProvisioningURL;
@end

@implementation TUCTCapabilitiesState

- (TUCTCapabilityInfo)ctCapabilityInfo
{
  v3 = objc_alloc_init(TUCTCapabilityInfo);
  v4 = [(TUCTCapabilitiesState *)self provisioningStatus];
  if (v4 <= 3)
  {
    [(TUCTCapabilityInfo *)v3 setProvisioningStatus:v4];
  }

  v5 = [(TUCTCapabilitiesState *)self provisioningURL];
  [(TUCTCapabilityInfo *)v3 setProvisioningURL:v5];

  v6 = [(TUCTCapabilitiesState *)self provisioningPostData];
  [(TUCTCapabilityInfo *)v3 setProvisioningPostData:v6];

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
  v6 = [(TUCTCapabilitiesState *)self provisioningURL];
  [v3 appendFormat:@" %@=%@", v5, v6];

  v7 = NSStringFromSelector(sel_provisioningPostData);
  v8 = [(TUCTCapabilitiesState *)self provisioningPostData];
  [v3 appendFormat:@" %@=%p", v7, v8];

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

- (TUCTCapabilitiesState)initWithCapabilityInfo:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TUCTCapabilitiesState;
  v5 = [(TUCTCapabilitiesState *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69652B8]];
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
        v10 = [v4 objectForKeyedSubscript:*MEMORY[0x1E69652E0]];
        v11 = [v10 objectForKeyedSubscript:*MEMORY[0x1E69654C8]];
        v12 = [v8 URLWithString:v11];
        provisioningURL = v5->_provisioningURL;
        v5->_provisioningURL = v12;

        v14 = [v4 objectForKeyedSubscript:v9];
        v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69654C0]];
        provisioningPostData = v5->_provisioningPostData;
        v5->_provisioningPostData = v15;

        v17 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965160]];
        v5->_supported = [v17 BOOLValue];

        v18 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965168]];
        v5->_enabled = [v18 BOOLValue];

        v19 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965528]];
        v5->_roamingSupported = [v19 BOOLValue];

        v20 = [v4 objectForKeyedSubscript:*MEMORY[0x1E6965530]];
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
  v2 = [(TUCTCapabilitiesState *)self provisioningURL];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)invalidateProvisioningURL
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  [(TUCTCapabilitiesState *)self setProvisioningURL:v3];
}

- (BOOL)isEqualToCapabilitiesState:(id)a3
{
  v4 = a3;
  v5 = [(TUCTCapabilitiesState *)self provisioningPostData];
  v6 = [v4 provisioningPostData];
  if (TUObjectsAreEqualOrNil(v5, v6) && (v7 = -[TUCTCapabilitiesState provisioningStatus](self, "provisioningStatus"), v7 == [v4 provisioningStatus]))
  {
    v8 = [(TUCTCapabilitiesState *)self provisioningURL];
    v9 = [v4 provisioningURL];
    if (TUObjectsAreEqualOrNil(v8, v9) && (v10 = -[TUCTCapabilitiesState isCurrentlyAvailable](self, "isCurrentlyAvailable"), v10 == [v4 isCurrentlyAvailable]) && (v11 = -[TUCTCapabilitiesState isEnabled](self, "isEnabled"), v11 == objc_msgSend(v4, "isEnabled")) && (v12 = -[TUCTCapabilitiesState isSupported](self, "isSupported"), v12 == objc_msgSend(v4, "isSupported")) && (v13 = -[TUCTCapabilitiesState isEmergencyCurrentlyAvailable](self, "isEmergencyCurrentlyAvailable"), v13 == objc_msgSend(v4, "isEmergencyCurrentlyAvailable")) && (v14 = -[TUCTCapabilitiesState isEmergencySupported](self, "isEmergencySupported"), v14 == objc_msgSend(v4, "isEmergencySupported")) && (v15 = -[TUCTCapabilitiesState isRoamingEnabled](self, "isRoamingEnabled"), v15 == objc_msgSend(v4, "isRoamingEnabled")))
    {
      v18 = [(TUCTCapabilitiesState *)self isRoamingSupported];
      v16 = v18 ^ [v4 isRoamingSupported] ^ 1;
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

- (TUCTCapabilitiesState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCTCapabilitiesState *)self init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_provisioningStatus);
    v5->_provisioningStatus = [v4 decodeInt32ForKey:v6];

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_provisioningURL);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    provisioningURL = v5->_provisioningURL;
    v5->_provisioningURL = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector(sel_provisioningPostData);
    v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
    provisioningPostData = v5->_provisioningPostData;
    v5->_provisioningPostData = v13;

    v15 = NSStringFromSelector(sel_isSupported);
    v5->_supported = [v4 decodeBoolForKey:v15];

    v16 = NSStringFromSelector(sel_isEnabled);
    v5->_enabled = [v4 decodeBoolForKey:v16];

    v17 = NSStringFromSelector(sel_isCurrentlyAvailable);
    v5->_currentlyAvailable = [v4 decodeBoolForKey:v17];

    v18 = NSStringFromSelector(sel_isRoamingEnabled);
    v5->_roamingEnabled = [v4 decodeBoolForKey:v18];

    v19 = NSStringFromSelector(sel_isRoamingSupported);
    v5->_roamingSupported = [v4 decodeBoolForKey:v19];

    v20 = NSStringFromSelector(sel_isEmergencySupported);
    v5->_emergencySupported = [v4 decodeBoolForKey:v20];

    v21 = NSStringFromSelector(sel_isEmergencyCurrentlyAvailable);
    v5->_emergencyCurrentlyAvailable = [v4 decodeBoolForKey:v21];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCTCapabilitiesState *)self provisioningStatus];
  v6 = NSStringFromSelector(sel_provisioningStatus);
  [v4 encodeInt32:v5 forKey:v6];

  v7 = [(TUCTCapabilitiesState *)self provisioningURL];
  v8 = NSStringFromSelector(sel_provisioningURL);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(TUCTCapabilitiesState *)self provisioningPostData];
  v10 = NSStringFromSelector(sel_provisioningPostData);
  [v4 encodeObject:v9 forKey:v10];

  v11 = [(TUCTCapabilitiesState *)self isSupported];
  v12 = NSStringFromSelector(sel_isSupported);
  [v4 encodeBool:v11 forKey:v12];

  v13 = [(TUCTCapabilitiesState *)self isEnabled];
  v14 = NSStringFromSelector(sel_isEnabled);
  [v4 encodeBool:v13 forKey:v14];

  v15 = [(TUCTCapabilitiesState *)self isCurrentlyAvailable];
  v16 = NSStringFromSelector(sel_isCurrentlyAvailable);
  [v4 encodeBool:v15 forKey:v16];

  v17 = [(TUCTCapabilitiesState *)self isRoamingEnabled];
  v18 = NSStringFromSelector(sel_isRoamingEnabled);
  [v4 encodeBool:v17 forKey:v18];

  v19 = [(TUCTCapabilitiesState *)self isRoamingSupported];
  v20 = NSStringFromSelector(sel_isRoamingSupported);
  [v4 encodeBool:v19 forKey:v20];

  v21 = [(TUCTCapabilitiesState *)self isEmergencySupported];
  v22 = NSStringFromSelector(sel_isEmergencySupported);
  [v4 encodeBool:v21 forKey:v22];

  v23 = [(TUCTCapabilitiesState *)self isEmergencyCurrentlyAvailable];
  v24 = NSStringFromSelector(sel_isEmergencyCurrentlyAvailable);
  [v4 encodeBool:v23 forKey:v24];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(TUCTCapabilitiesState *)self publiclyAccessibleCopyWithZone:?];
  v6 = [(TUCTCapabilitiesState *)self provisioningPostData];
  v7 = [v6 copyWithZone:a3];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  *(v5 + 16) = [(TUCTCapabilitiesState *)self provisioningStatus];
  v9 = [(TUCTCapabilitiesState *)self provisioningURL];
  v10 = [v9 copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (unint64_t)hash
{
  v3 = [(TUCTCapabilitiesState *)self provisioningPostData];
  v4 = [v3 hash];
  v5 = v4 ^ [(TUCTCapabilitiesState *)self provisioningStatus];
  v6 = [(TUCTCapabilitiesState *)self provisioningURL];
  v7 = v5 ^ [v6 hash];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TUCTCapabilitiesState *)self isEqualToCapabilitiesState:v4];
  }

  return v5;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

+ (id)unarchivedObjectFromData:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E696ACD0];
  v7 = a3;
  v8 = [a1 unarchivedObjectClasses];
  v9 = [v6 unarchivedObjectOfClasses:v8 fromData:v7 error:a4];

  return v9;
}

@end