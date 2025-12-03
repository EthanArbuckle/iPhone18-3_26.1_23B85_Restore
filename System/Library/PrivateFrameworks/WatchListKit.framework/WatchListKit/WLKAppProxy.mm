@interface WLKAppProxy
- (BOOL)isTVApp;
- (WLKAppProxy)initWithCoder:(id)coder;
- (WLKAppProxy)initWithDictionary:(id)dictionary;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKAppProxy

- (WLKAppProxy)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v16.receiver = self;
    v16.super_class = WLKAppProxy;
    v5 = [(WLKAppProxy *)&v16 init];
    if (v5)
    {
      v6 = [dictionaryCopy wlk_stringForKey:@"WLKAppProxy.bundleIdentifier"];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v6;

      v8 = [dictionaryCopy wlk_stringForKey:@"WLKAppProxy.version"];
      version = v5->_version;
      v5->_version = v8;

      v5->_isEntitled = [dictionaryCopy wlk_BOOLForKey:@"WLKAppProxy.isEntitled" defaultValue:0];
      v5->_isBetaApp = [dictionaryCopy wlk_BOOLForKey:@"WLKAppProxy.isBeta" defaultValue:0];
      v5->_isAppStoreVendable = [dictionaryCopy wlk_BOOLForKey:@"WLKAppProxy.isAppStoreVendable" defaultValue:0];
      v5->_isSystemApp = [dictionaryCopy wlk_BOOLForKey:@"WLKAppProxy.isSystem" defaultValue:0];
      v5->_supportsTVApp = [dictionaryCopy wlk_BOOLForKey:@"WLKAppProxy.supportsTVApp" defaultValue:0];
      v10 = [dictionaryCopy wlk_stringForKey:@"WLKAppProxy.subscriptionInfo"];
      subscriptionInfo = v5->_subscriptionInfo;
      v5->_subscriptionInfo = v10;

      v12 = [dictionaryCopy wlk_numberForKey:@"WLKAppProxy.itemID"];
      itemID = v5->_itemID;
      v5->_itemID = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:self->_bundleIdentifier forKeyedSubscript:@"WLKAppProxy.bundleIdentifier"];
  [dictionary setObject:self->_version forKeyedSubscript:@"WLKAppProxy.version"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEntitled];
  [dictionary setObject:v4 forKeyedSubscript:@"WLKAppProxy.isEntitled"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_isBetaApp];
  [dictionary setObject:v5 forKeyedSubscript:@"WLKAppProxy.isBeta"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAppStoreVendable];
  [dictionary setObject:v6 forKeyedSubscript:@"WLKAppProxy.isAppStoreVendable"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSystemApp];
  [dictionary setObject:v7 forKeyedSubscript:@"WLKAppProxy.isSystem"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsTVApp];
  [dictionary setObject:v8 forKeyedSubscript:@"WLKAppProxy.supportsTVApp"];

  [dictionary setObject:self->_subscriptionInfo forKeyedSubscript:@"WLKAppProxy.subscriptionInfo"];
  [dictionary setObject:self->_itemID forKeyedSubscript:@"WLKAppProxy.itemID"];

  return dictionary;
}

- (BOOL)isTVApp
{
  bundleIdentifier = [(WLKAppProxy *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v3 = WLKTVAppBundleID();
    v4 = [bundleIdentifier isEqualToString:v3];
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

- (WLKAppProxy)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    v16.receiver = self;
    v16.super_class = WLKAppProxy;
    v5 = [(WLKAppProxy *)&v16 init];
    if (v5)
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.bundleIdentifier"];
      bundleIdentifier = v5->_bundleIdentifier;
      v5->_bundleIdentifier = v6;

      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.version"];
      version = v5->_version;
      v5->_version = v8;

      v5->_isEntitled = [coderCopy decodeBoolForKey:@"WLKAppProxy.isEntitled"];
      v5->_isBetaApp = [coderCopy decodeBoolForKey:@"WLKAppProxy.isBeta"];
      v5->_isAppStoreVendable = [coderCopy decodeBoolForKey:@"WLKAppProxy.isAppStoreVendable"];
      v5->_isSystemApp = [coderCopy decodeBoolForKey:@"WLKAppProxy.isSystem"];
      v5->_supportsTVApp = [coderCopy decodeBoolForKey:@"WLKAppProxy.supportsTVApp"];
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.subscriptionInfo"];
      subscriptionInfo = v5->_subscriptionInfo;
      v5->_subscriptionInfo = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"WLKAppProxy.itemID"];
      itemID = v5->_itemID;
      v5->_itemID = v12;
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"WLKAppProxy.bundleIdentifier"];
  [coderCopy encodeObject:self->_version forKey:@"WLKAppProxy.version"];
  [coderCopy encodeBool:self->_isEntitled forKey:@"WLKAppProxy.isEntitled"];
  [coderCopy encodeBool:self->_isBetaApp forKey:@"WLKAppProxy.isBeta"];
  [coderCopy encodeBool:self->_isAppStoreVendable forKey:@"WLKAppProxy.isAppStoreVendable"];
  [coderCopy encodeBool:self->_isSystemApp forKey:@"WLKAppProxy.isSystem"];
  [coderCopy encodeBool:self->_supportsTVApp forKey:@"WLKAppProxy.supportsTVApp"];
  [coderCopy encodeObject:self->_subscriptionInfo forKey:@"WLKAppProxy.subscriptionInfo"];
  [coderCopy encodeObject:self->_itemID forKey:@"WLKAppProxy.itemID"];
}

@end