@interface TUCTCapabilityInfo
- (BOOL)isProvisioningURLInvalid;
- (NSString)description;
- (TUCTCapabilityInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)invalidateProvisioningURL;
@end

@implementation TUCTCapabilityInfo

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  provisioningStatus = [(TUCTCapabilityInfo *)self provisioningStatus];
  provisioningURL = [(TUCTCapabilityInfo *)self provisioningURL];
  provisioningPostData = [(TUCTCapabilityInfo *)self provisioningPostData];
  v8 = [v3 stringWithFormat:@"<%@ %p provisioningStatus=%d provisioningURL=%@ provisioningPostData=%p canEnable=%d isEnabled=%d>", v4, self, provisioningStatus, provisioningURL, provisioningPostData, -[TUCTCapabilityInfo canEnable](self, "canEnable"), -[TUCTCapabilityInfo isEnabled](self, "isEnabled")];

  return v8;
}

- (BOOL)isProvisioningURLInvalid
{
  provisioningURL = [(TUCTCapabilityInfo *)self provisioningURL];
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  v4 = [provisioningURL isEqual:v3];

  return v4;
}

- (void)invalidateProvisioningURL
{
  v3 = [MEMORY[0x1E695DFF8] URLWithString:@"__INVALID_PROVISIONING_URL__"];
  [(TUCTCapabilityInfo *)self setProvisioningURL:v3];
}

- (TUCTCapabilityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(TUCTCapabilityInfo *)self init];
  if (v5)
  {
    v5->_provisioningStatus = [coderCopy decodeInt32ForKey:@"provisioningStatus"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningURL"];
    provisioningURL = v5->_provisioningURL;
    v5->_provisioningURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningPostData"];
    provisioningPostData = v5->_provisioningPostData;
    v5->_provisioningPostData = v8;

    v5->_canEnable = [coderCopy decodeBoolForKey:@"canEnable"];
    v5->_enabled = [coderCopy decodeBoolForKey:@"enabled"];
    v5->_roamingEnabled = [coderCopy decodeBoolForKey:@"roamingEnabled"];
    v5->_canEnableRoaming = [coderCopy decodeBoolForKey:@"canEnableRoaming"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[TUCTCapabilityInfo provisioningStatus](self forKey:{"provisioningStatus"), @"provisioningStatus"}];
  provisioningURL = [(TUCTCapabilityInfo *)self provisioningURL];
  [coderCopy encodeObject:provisioningURL forKey:@"provisioningURL"];

  provisioningPostData = [(TUCTCapabilityInfo *)self provisioningPostData];
  [coderCopy encodeObject:provisioningPostData forKey:@"provisioningPostData"];

  [coderCopy encodeBool:-[TUCTCapabilityInfo canEnable](self forKey:{"canEnable"), @"canEnable"}];
  [coderCopy encodeBool:-[TUCTCapabilityInfo isEnabled](self forKey:{"isEnabled"), @"enabled"}];
  [coderCopy encodeBool:-[TUCTCapabilityInfo isRoamingEnabled](self forKey:{"isRoamingEnabled"), @"roamingEnabled"}];
  [coderCopy encodeBool:-[TUCTCapabilityInfo canEnableRoaming](self forKey:{"canEnableRoaming"), @"canEnableRoaming"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(TUCTCapabilityInfo *)self publiclyAccessibleCopyWithZone:zone];
  [v4 setProvisioningStatus:{-[TUCTCapabilityInfo provisioningStatus](self, "provisioningStatus")}];
  provisioningURL = [(TUCTCapabilityInfo *)self provisioningURL];
  [v4 setProvisioningURL:provisioningURL];

  provisioningPostData = [(TUCTCapabilityInfo *)self provisioningPostData];
  [v4 setProvisioningPostData:provisioningPostData];

  [v4 setEnabled:{-[TUCTCapabilityInfo isEnabled](self, "isEnabled")}];
  [v4 setCanEnable:{-[TUCTCapabilityInfo canEnable](self, "canEnable")}];
  return v4;
}

- (id)publiclyAccessibleCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCanEnable:{-[TUCTCapabilityInfo canEnable](self, "canEnable")}];
  [v4 setEnabled:{-[TUCTCapabilityInfo isEnabled](self, "isEnabled")}];
  [v4 setRoamingEnabled:{-[TUCTCapabilityInfo isRoamingEnabled](self, "isRoamingEnabled")}];
  [v4 setCanEnableRoaming:{-[TUCTCapabilityInfo canEnableRoaming](self, "canEnableRoaming")}];

  return v4;
}

@end