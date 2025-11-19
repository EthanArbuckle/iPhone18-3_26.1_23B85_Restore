@interface WiFiAwarePairingConfiguration
- (BOOL)isEqual:(id)a3;
- (WiFiAwarePairingConfiguration)initWithCoder:(id)a3;
- (WiFiAwarePairingConfiguration)initWithSupportedPairSetupMethods:(id)a3 pairingCachingEnabled:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WiFiAwarePairingConfiguration

- (WiFiAwarePairingConfiguration)initWithSupportedPairSetupMethods:(id)a3 pairingCachingEnabled:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = WiFiAwarePairingConfiguration;
  v7 = [(WiFiAwarePairingConfiguration *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    supportedPairSetupMethods = v7->_supportedPairSetupMethods;
    v7->_supportedPairSetupMethods = v8;

    v7->_pairingCachingEnabled = a4;
  }

  return v7;
}

- (WiFiAwarePairingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"WiFiAwarePairingConfiguration.pairingMethods"];
  if (v5)
  {
    self = -[WiFiAwarePairingConfiguration initWithSupportedPairSetupMethods:pairingCachingEnabled:pairingSetupMode:](self, "initWithSupportedPairSetupMethods:pairingCachingEnabled:pairingSetupMode:", v5, [v4 decodeBoolForKey:@"WiFiAwarePairingConfiguration.pairingCaching"], objc_msgSend(v4, "decodeIntegerForKey:", @"WiFiAwarePairingConfiguration.pairingSetupMode"));
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  [v5 encodeObject:v4 forKey:@"WiFiAwarePairingConfiguration.pairingMethods"];

  [v5 encodeBool:-[WiFiAwarePairingConfiguration pairingCachingEnabled](self forKey:{"pairingCachingEnabled"), @"WiFiAwarePairingConfiguration.pairingCaching"}];
  [v5 encodeInteger:-[WiFiAwarePairingConfiguration pairingSetupMode](self forKey:{"pairingSetupMode"), @"WiFiAwarePairingConfiguration.pairingSetupMode"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
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

  v5 = v4;
  v6 = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  v7 = [(WiFiAwarePairingConfiguration *)v5 supportedPairSetupMethods];
  if ([v6 isEqualToArray:v7])
  {
    v8 = [(WiFiAwarePairingConfiguration *)self pairingCachingEnabled];
    if (v8 == [(WiFiAwarePairingConfiguration *)v5 pairingCachingEnabled])
    {
      v11 = [(WiFiAwarePairingConfiguration *)self pairingSetupMode];
      v12 = [(WiFiAwarePairingConfiguration *)v5 pairingSetupMode];

      if (v11 != v12)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WiFiAwarePairingConfiguration alloc];
  v5 = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  v6 = [(WiFiAwarePairingConfiguration *)v4 initWithSupportedPairSetupMethods:v5 pairingCachingEnabled:[(WiFiAwarePairingConfiguration *)self pairingCachingEnabled] pairingSetupMode:[(WiFiAwarePairingConfiguration *)self pairingSetupMode]];

  return v6;
}

- (id)description
{
  v3 = [(WiFiAwarePairingConfiguration *)self pairingSetupMode];
  v4 = "ask for consent";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = "auto-reply";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(WiFiAwarePairingConfiguration *)self supportedPairSetupMethods];
  v8 = WiFiAwarePairingMethodsString(v7);
  v9 = [(WiFiAwarePairingConfiguration *)self pairingCachingEnabled];
  v10 = "NO";
  if (v9)
  {
    v10 = "YES";
  }

  v11 = [v6 stringWithFormat:@"<WiFiAwarePairing supportedMethods=%@, caching=%s, setupMode=%s>", v8, v10, v5];

  return v11;
}

@end