@interface WLKAppProxy
- (BOOL)isTVApp;
- (WLKAppProxy)initWithCoder:(id)a3;
- (WLKAppProxy)initWithDictionary:(id)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WLKAppProxy

- (WLKAppProxy)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16.receiver = self;
    v16.super_class = WLKAppProxy;
    v5 = [(WLKAppProxy *)&v16 init];
    if (v5)
    {
      v6 = [v4 wlk_stringForKey:@"WLKAppProxy.bundleIdentifier"];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v6;

      v8 = [v4 wlk_stringForKey:@"WLKAppProxy.version"];
      version = v5->_version;
      v5->_version = v8;

      v5->_isEntitled = [v4 wlk_BOOLForKey:@"WLKAppProxy.isEntitled" defaultValue:0];
      v5->_isBetaApp = [v4 wlk_BOOLForKey:@"WLKAppProxy.isBeta" defaultValue:0];
      v5->_isAppStoreVendable = [v4 wlk_BOOLForKey:@"WLKAppProxy.isAppStoreVendable" defaultValue:0];
      v5->_isSystemApp = [v4 wlk_BOOLForKey:@"WLKAppProxy.isSystem" defaultValue:0];
      v5->_supportsTVApp = [v4 wlk_BOOLForKey:@"WLKAppProxy.supportsTVApp" defaultValue:0];
      v10 = [v4 wlk_stringForKey:@"WLKAppProxy.subscriptionInfo"];
      subscriptionInfo = v5->_subscriptionInfo;
      v5->_subscriptionInfo = v10;

      v12 = [v4 wlk_numberForKey:@"WLKAppProxy.itemID"];
      itemID = v5->_itemID;
      v5->_itemID = v12;
    }

    self = v5;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_bundleIdentifier forKeyedSubscript:@"WLKAppProxy.bundleIdentifier"];
  [v3 setObject:self->_version forKeyedSubscript:@"WLKAppProxy.version"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEntitled];
  [v3 setObject:v4 forKeyedSubscript:@"WLKAppProxy.isEntitled"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBetaApp];
  [v3 setObject:v5 forKeyedSubscript:@"WLKAppProxy.isBeta"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAppStoreVendable];
  [v3 setObject:v6 forKeyedSubscript:@"WLKAppProxy.isAppStoreVendable"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSystemApp];
  [v3 setObject:v7 forKeyedSubscript:@"WLKAppProxy.isSystem"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsTVApp];
  [v3 setObject:v8 forKeyedSubscript:@"WLKAppProxy.supportsTVApp"];

  [v3 setObject:self->_subscriptionInfo forKeyedSubscript:@"WLKAppProxy.subscriptionInfo"];
  [v3 setObject:self->_itemID forKeyedSubscript:@"WLKAppProxy.itemID"];

  return v3;
}

- (BOOL)isTVApp
{
  v2 = [(WLKAppProxy *)self bundleIdentifier];
  if (v2)
  {
    v3 = WLKTVAppBundleID();
    v4 = [v2 isEqualToString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = WLKAppProxy;
  v4 = [(WLKAppProxy *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ %@", v4, self->_bundleIdentifier];

  return v5;
}

- (WLKAppProxy)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    v16.receiver = self;
    v16.super_class = WLKAppProxy;
    v5 = [(WLKAppProxy *)&v16 init];
    if (v5)
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.bundleIdentifier"];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v6;

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.version"];
      version = v5->_version;
      v5->_version = v8;

      v5->_isEntitled = [v4 decodeBoolForKey:@"WLKAppProxy.isEntitled"];
      v5->_isBetaApp = [v4 decodeBoolForKey:@"WLKAppProxy.isBeta"];
      v5->_isAppStoreVendable = [v4 decodeBoolForKey:@"WLKAppProxy.isAppStoreVendable"];
      v5->_isSystemApp = [v4 decodeBoolForKey:@"WLKAppProxy.isSystem"];
      v5->_supportsTVApp = [v4 decodeBoolForKey:@"WLKAppProxy.supportsTVApp"];
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.subscriptionInfo"];
      subscriptionInfo = v5->_subscriptionInfo;
      v5->_subscriptionInfo = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.itemID"];
      itemID = v5->_itemID;
      v5->_itemID = v12;
    }

    self = v5;
    v14 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    v14 = 0;
  }

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if (([v4 allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [v4 encodeObject:self->_bundleIdentifier forKey:@"WLKAppProxy.bundleIdentifier"];
  [v4 encodeObject:self->_version forKey:@"WLKAppProxy.version"];
  [v4 encodeBool:self->_isEntitled forKey:@"WLKAppProxy.isEntitled"];
  [v4 encodeBool:self->_isBetaApp forKey:@"WLKAppProxy.isBeta"];
  [v4 encodeBool:self->_isAppStoreVendable forKey:@"WLKAppProxy.isAppStoreVendable"];
  [v4 encodeBool:self->_isSystemApp forKey:@"WLKAppProxy.isSystem"];
  [v4 encodeBool:self->_supportsTVApp forKey:@"WLKAppProxy.supportsTVApp"];
  [v4 encodeObject:self->_subscriptionInfo forKey:@"WLKAppProxy.subscriptionInfo"];
  [v4 encodeObject:self->_itemID forKey:@"WLKAppProxy.itemID"];
}

@end