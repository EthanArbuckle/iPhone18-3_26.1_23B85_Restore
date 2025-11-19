@interface TUCTCapabilityInfo
- (BOOL)isProvisioningURLInvalid;
- (NSString)description;
- (TUCTCapabilityInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidateProvisioningURL;
@end

@implementation TUCTCapabilityInfo

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(TUCTCapabilityInfo *)self provisioningStatus];
  v6 = [(TUCTCapabilityInfo *)self provisioningURL];
  v7 = [(TUCTCapabilityInfo *)self provisioningPostData];
  v8 = [v3 stringWithFormat:@"<%@ %p provisioningStatus=%d provisioningURL=%@ provisioningPostData=%p canEnable=%d isEnabled=%d>", v4, self, v5, v6, v7, -[TUCTCapabilityInfo canEnable](self, "canEnable"), -[TUCTCapabilityInfo isEnabled](self, "isEnabled")];

  return v8;
}

- (BOOL)isProvisioningURLInvalid
{
  v2 = [(TUCTCapabilityInfo *)self provisioningURL];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)invalidateProvisioningURL
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  [(TUCTCapabilityInfo *)self setProvisioningURL:v3];
}

- (TUCTCapabilityInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TUCTCapabilityInfo *)self init];
  if (v5)
  {
    v5->_provisioningStatus = [v4 decodeInt32ForKey:@"provisioningStatus"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningURL"];
    provisioningURL = v5->_provisioningURL;
    v5->_provisioningURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningPostData"];
    provisioningPostData = v5->_provisioningPostData;
    v5->_provisioningPostData = v8;

    v5->_canEnable = [v4 decodeBoolForKey:@"canEnable"];
    v5->_enabled = [v4 decodeBoolForKey:@"enabled"];
    v5->_roamingEnabled = [v4 decodeBoolForKey:@"roamingEnabled"];
    v5->_canEnableRoaming = [v4 decodeBoolForKey:@"canEnableRoaming"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeInt32:-[TUCTCapabilityInfo provisioningStatus](self forKey:{"provisioningStatus"), @"provisioningStatus"}];
  v4 = [(TUCTCapabilityInfo *)self provisioningURL];
  [v6 encodeObject:v4 forKey:@"provisioningURL"];

  v5 = [(TUCTCapabilityInfo *)self provisioningPostData];
  [v6 encodeObject:v5 forKey:@"provisioningPostData"];

  [v6 encodeBool:-[TUCTCapabilityInfo canEnable](self forKey:{"canEnable"), @"canEnable"}];
  [v6 encodeBool:-[TUCTCapabilityInfo isEnabled](self forKey:{"isEnabled"), @"enabled"}];
  [v6 encodeBool:-[TUCTCapabilityInfo isRoamingEnabled](self forKey:{"isRoamingEnabled"), @"roamingEnabled"}];
  [v6 encodeBool:-[TUCTCapabilityInfo canEnableRoaming](self forKey:{"canEnableRoaming"), @"canEnableRoaming"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(TUCTCapabilityInfo *)self publiclyAccessibleCopyWithZone:a3];
  [v4 setProvisioningStatus:{-[TUCTCapabilityInfo provisioningStatus](self, "provisioningStatus")}];
  v5 = [(TUCTCapabilityInfo *)self provisioningURL];
  [v4 setProvisioningURL:v5];

  v6 = [(TUCTCapabilityInfo *)self provisioningPostData];
  [v4 setProvisioningPostData:v6];

  [v4 setEnabled:{-[TUCTCapabilityInfo isEnabled](self, "isEnabled")}];
  [v4 setCanEnable:{-[TUCTCapabilityInfo canEnable](self, "canEnable")}];
  return v4;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setCanEnable:{-[TUCTCapabilityInfo canEnable](self, "canEnable")}];
  [v4 setEnabled:{-[TUCTCapabilityInfo isEnabled](self, "isEnabled")}];
  [v4 setRoamingEnabled:{-[TUCTCapabilityInfo isRoamingEnabled](self, "isRoamingEnabled")}];
  [v4 setCanEnableRoaming:{-[TUCTCapabilityInfo canEnableRoaming](self, "canEnableRoaming")}];

  return v4;
}

@end