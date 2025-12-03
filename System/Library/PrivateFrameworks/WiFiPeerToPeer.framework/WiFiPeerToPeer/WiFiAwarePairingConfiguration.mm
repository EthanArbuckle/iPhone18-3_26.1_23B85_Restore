@interface WiFiAwarePairingConfiguration
- (BOOL)isEqual:(id)equal;
- (WiFiAwarePairingConfiguration)initWithCoder:(id)coder;
- (WiFiAwarePairingConfiguration)initWithSupportedPairSetupMethods:(id)methods pairingCachingEnabled:(BOOL)enabled;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WiFiAwarePairingConfiguration

- (WiFiAwarePairingConfiguration)initWithSupportedPairSetupMethods:(id)methods pairingCachingEnabled:(BOOL)enabled
{
  methodsCopy = methods;
  v11.receiver = self;
  v11.super_class = WiFiAwarePairingConfiguration;
  v7 = [(WiFiAwarePairingConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [methodsCopy copy];
    supportedPairSetupMethods = v7->_supportedPairSetupMethods;
    v7->_supportedPairSetupMethods = v8;

    v7->_pairingCachingEnabled = enabled;
  }

  return v7;
}

- (WiFiAwarePairingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePairingConfiguration.pairingMethods"];
  if (v5)
  {
    self = -[WiFiAwarePairingConfiguration initWithSupportedPairSetupMethods:pairingCachingEnabled:pairingSetupMode:](self, "initWithSupportedPairSetupMethods:pairingCachingEnabled:pairingSetupMode:", v5, [coderCopy decodeBoolForKey:@"WiFiAwarePairingConfiguration.pairingCaching"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"WiFiAwarePairingConfiguration.pairingSetupMode"));
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedPairSetupMethods = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  [coderCopy encodeObject:supportedPairSetupMethods forKey:@"WiFiAwarePairingConfiguration.pairingMethods"];

  [coderCopy encodeBool:-[WiFiAwarePairingConfiguration pairingCachingEnabled](self forKey:{"pairingCachingEnabled"), @"WiFiAwarePairingConfiguration.pairingCaching"}];
  [coderCopy encodeInteger:-[WiFiAwarePairingConfiguration pairingSetupMode](self forKey:{"pairingSetupMode"), @"WiFiAwarePairingConfiguration.pairingSetupMode"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    v5 = 0;
    goto LABEL_10;
  }

  v5 = equalCopy;
  supportedPairSetupMethods = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  supportedPairSetupMethods2 = [(WiFiAwarePairingConfiguration *)v5 supportedPairSetupMethods];
  if ([supportedPairSetupMethods isEqualToArray:supportedPairSetupMethods2])
  {
    pairingCachingEnabled = [(WiFiAwarePairingConfiguration *)self pairingCachingEnabled];
    if (pairingCachingEnabled == [(WiFiAwarePairingConfiguration *)v5 pairingCachingEnabled])
    {
      pairingSetupMode = [(WiFiAwarePairingConfiguration *)self pairingSetupMode];
      pairingSetupMode2 = [(WiFiAwarePairingConfiguration *)v5 pairingSetupMode];

      if (pairingSetupMode != pairingSetupMode2)
      {
        goto LABEL_6;
      }

LABEL_8:
      v9 = 1;
      goto LABEL_10;
    }
  }

LABEL_6:
  v9 = 0;
LABEL_10:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WiFiAwarePairingConfiguration alloc];
  supportedPairSetupMethods = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  v6 = [(WiFiAwarePairingConfiguration *)v4 initWithSupportedPairSetupMethods:supportedPairSetupMethods pairingCachingEnabled:[(WiFiAwarePairingConfiguration *)self pairingCachingEnabled] pairingSetupMode:[(WiFiAwarePairingConfiguration *)self pairingSetupMode]];

  return v6;
}

- (id)description
{
  pairingSetupMode = [(WiFiAwarePairingConfiguration *)self pairingSetupMode];
  v4 = "ask for consent";
  if (pairingSetupMode != 1)
  {
    v4 = 0;
  }

  if (pairingSetupMode)
  {
    v5 = v4;
  }

  else
  {
    v5 = "auto-reply";
  }

  v6 = MEMORY[0x277CCACA8];
  supportedPairSetupMethods = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  v8 = WiFiAwarePairingMethodsString(supportedPairSetupMethods);
  pairingCachingEnabled = [(WiFiAwarePairingConfiguration *)self pairingCachingEnabled];
  v10 = "NO";
  if (pairingCachingEnabled)
  {
    v10 = "YES";
  }

  v11 = [v6 stringWithFormat:@"<WiFiAwarePairing supportedMethods=%@, caching=%s, setupMode=%s>", v8, v10, v5];

  return v11;
}

@end