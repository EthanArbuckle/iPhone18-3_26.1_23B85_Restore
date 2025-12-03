@interface TPPeerStableInfo
+ (id)flexiblePolicyVersionFromPb:(id)pb;
+ (id)policySecretsFromPb:(id)pb;
- (BOOL)checkSignatureWithKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerStableInfo:(id)info;
- (BOOL)isInheritedAccount;
- (BOOL)supportsRepudiation;
- (NSData)data;
- (NSData)recoveryEncryptionPublicKey;
- (NSData)recoverySigningPublicKey;
- (NSData)sig;
- (NSDictionary)policySecrets;
- (NSString)deviceName;
- (NSString)osVersion;
- (NSString)serialNumber;
- (TPPBPeerStableInfoSetting)walrusSetting;
- (TPPBPeerStableInfoSetting)webAccess;
- (TPPBSecureElementIdentity)secureElementIdentity;
- (TPPeerStableInfo)initWithClock:(unint64_t)clock frozenPolicyVersion:(id)version flexiblePolicyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(int)views secureElementIdentity:(id)identity walrusSetting:(id)setting webAccess:(id)self0 deviceName:(id)self1 serialNumber:(id)self2 osVersion:(id)self3 signingKeyPair:(id)self4 recoverySigningPubKey:(id)self5 recoveryEncryptionPubKey:(id)self6 isInheritedAccount:(BOOL)self7 error:(id *)self8;
- (TPPeerStableInfo)initWithData:(id)data sig:(id)sig;
- (TPPeerStableInfo)initWithData:(id)data signingKeyPair:(id)pair error:(id *)error;
- (TPPolicyVersion)flexiblePolicyVersion;
- (TPPolicyVersion)frozenPolicyVersion;
- (id)bestPolicyVersion;
- (id)description;
- (id)dictionaryRepresentation;
- (id)pb;
- (int)syncUserControllableViews;
- (unint64_t)clock;
@end

@implementation TPPeerStableInfo

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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPeerStableInfo *)self isEqualToPeerStableInfo:equalCopy];
  }

  return v5;
}

- (id)bestPolicyVersion
{
  flexiblePolicyVersion = [(TPPeerStableInfo *)self flexiblePolicyVersion];
  v4 = flexiblePolicyVersion;
  if (flexiblePolicyVersion)
  {
    frozenPolicyVersion = flexiblePolicyVersion;
  }

  else
  {
    frozenPolicyVersion = [(TPPeerStableInfo *)self frozenPolicyVersion];
  }

  v6 = frozenPolicyVersion;

  return v6;
}

- (NSData)sig
{
  v2 = [(TPPeerStableInfo *)self tsd];
  v3 = [v2 sig];

  return v3;
}

- (NSData)data
{
  v2 = [(TPPeerStableInfo *)self tsd];
  data = [v2 data];

  return data;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  dictionaryRepresentation = [(TPPeerStableInfo *)self dictionaryRepresentation];
  v5 = [dictionaryRepresentation description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  dictionaryRepresentation = [v4 dictionaryRepresentation];

  objc_autoreleasePoolPop(v3);

  return dictionaryRepresentation;
}

- (BOOL)isEqualToPeerStableInfo:(id)info
{
  infoCopy = info;
  if (infoCopy == self)
  {
    v9 = 1;
  }

  else
  {
    data = [(TPPeerStableInfo *)self data];
    data2 = [(TPPeerStableInfo *)infoCopy data];
    if ([data isEqualToData:data2])
    {
      v7 = [(TPPeerStableInfo *)self sig];
      v8 = [(TPPeerStableInfo *)infoCopy sig];
      v9 = [v7 isEqualToData:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)checkSignatureWithKey:(id)key
{
  keyCopy = key;
  v5 = [(TPPeerStableInfo *)self tsd];
  v6 = [v5 checkSignatureWithKey:keyCopy];

  return v6;
}

- (BOOL)supportsRepudiation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  supportsRepudiation = [v4 supportsRepudiation];

  objc_autoreleasePoolPop(v3);
  return supportsRepudiation;
}

- (BOOL)isInheritedAccount
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  isInheritedAccount = [v4 isInheritedAccount];

  objc_autoreleasePoolPop(v3);
  return isInheritedAccount;
}

- (TPPBPeerStableInfoSetting)webAccess
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  webAccess = [v4 webAccess];

  objc_autoreleasePoolPop(v3);

  return webAccess;
}

- (TPPBPeerStableInfoSetting)walrusSetting
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  walrus = [v4 walrus];

  objc_autoreleasePoolPop(v3);

  return walrus;
}

- (TPPBSecureElementIdentity)secureElementIdentity
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  secureElementIdentity = [v4 secureElementIdentity];

  objc_autoreleasePoolPop(v3);

  return secureElementIdentity;
}

- (int)syncUserControllableViews
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  userControllableViewStatus = [v4 userControllableViewStatus];

  objc_autoreleasePoolPop(v3);
  return userControllableViewStatus;
}

- (NSData)recoveryEncryptionPublicKey
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  recoveryEncryptionPublicKey = [v4 recoveryEncryptionPublicKey];
  pbToNullable = [recoveryEncryptionPublicKey pbToNullable];

  objc_autoreleasePoolPop(v3);

  return pbToNullable;
}

- (NSData)recoverySigningPublicKey
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  recoverySigningPublicKey = [v4 recoverySigningPublicKey];
  pbToNullable = [recoverySigningPublicKey pbToNullable];

  objc_autoreleasePoolPop(v3);

  return pbToNullable;
}

- (NSString)osVersion
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  osVersion = [v4 osVersion];

  objc_autoreleasePoolPop(v3);

  return osVersion;
}

- (NSString)serialNumber
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  serialNumber = [v4 serialNumber];
  pbToNullable = [serialNumber pbToNullable];

  objc_autoreleasePoolPop(v3);

  return pbToNullable;
}

- (NSString)deviceName
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  deviceName = [v4 deviceName];
  pbToNullable = [deviceName pbToNullable];

  objc_autoreleasePoolPop(v3);

  return pbToNullable;
}

- (NSDictionary)policySecrets
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [TPPeerStableInfo policySecretsFromPb:v4];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (TPPolicyVersion)flexiblePolicyVersion
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [TPPeerStableInfo flexiblePolicyVersionFromPb:v4];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (TPPolicyVersion)frozenPolicyVersion
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [TPPolicyVersion alloc];
  frozenPolicyVersion = [v4 frozenPolicyVersion];
  frozenPolicyHash = [v4 frozenPolicyHash];
  v8 = [(TPPolicyVersion *)v5 initWithVersion:frozenPolicyVersion hash:frozenPolicyHash];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (unint64_t)clock
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  clock = [v4 clock];

  objc_autoreleasePoolPop(v3);
  return clock;
}

- (id)pb
{
  v3 = [TPPBPeerStableInfo alloc];
  data = [(TPPeerStableInfo *)self data];
  v5 = [(TPPBPeerStableInfo *)v3 initWithData:data];

  return v5;
}

- (TPPeerStableInfo)initWithData:(id)data signingKeyPair:(id)pair error:(id *)error
{
  pairCopy = pair;
  dataCopy = data;
  v10 = [[TPTypedSignedData alloc] initWithData:dataCopy key:pairCopy signatureTypeName:@"TPPB.PeerStableInfo" error:error];

  if (v10)
  {
    v15.receiver = self;
    v15.super_class = TPPeerStableInfo;
    v11 = [(TPPeerStableInfo *)&v15 init];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_tsd, v10);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TPPeerStableInfo)initWithData:(id)data sig:(id)sig
{
  dataCopy = data;
  sigCopy = sig;
  v8 = objc_autoreleasePoolPush();
  v9 = [[TPPBPeerStableInfo alloc] initWithData:dataCopy];

  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = TPPeerStableInfo;
    v10 = [(TPPeerStableInfo *)&v15 init];
    if (v10)
    {
      v11 = [[TPTypedSignedData alloc] initWithData:dataCopy sig:sigCopy signatureTypeName:@"TPPB.PeerStableInfo"];
      tsd = v10->_tsd;
      v10->_tsd = v11;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (TPPeerStableInfo)initWithClock:(unint64_t)clock frozenPolicyVersion:(id)version flexiblePolicyVersion:(id)policyVersion policySecrets:(id)secrets syncUserControllableViews:(int)views secureElementIdentity:(id)identity walrusSetting:(id)setting webAccess:(id)self0 deviceName:(id)self1 serialNumber:(id)self2 osVersion:(id)self3 signingKeyPair:(id)self4 recoverySigningPubKey:(id)self5 recoveryEncryptionPubKey:(id)self6 isInheritedAccount:(BOOL)self7 error:(id *)self8
{
  versionCopy = version;
  policyVersionCopy = policyVersion;
  secretsCopy = secrets;
  identityCopy = identity;
  settingCopy = setting;
  accessCopy = access;
  nameCopy = name;
  numberCopy = number;
  osVersionCopy = osVersion;
  pairCopy = pair;
  keyCopy = key;
  pubKeyCopy = pubKey;
  context = objc_autoreleasePoolPush();
  v27 = objc_alloc_init(TPPBPeerStableInfo);
  [(TPPBPeerStableInfo *)v27 setClock:clock];
  -[TPPBPeerStableInfo setFrozenPolicyVersion:](v27, "setFrozenPolicyVersion:", [versionCopy versionNumber]);
  policyHash = [versionCopy policyHash];
  [(TPPBPeerStableInfo *)v27 setFrozenPolicyHash:policyHash];

  -[TPPBPeerStableInfo setFlexiblePolicyVersion:](v27, "setFlexiblePolicyVersion:", [policyVersionCopy versionNumber]);
  policyHash2 = [policyVersionCopy policyHash];
  [(TPPBPeerStableInfo *)v27 setFlexiblePolicyHash:policyHash2];

  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(secretsCopy, "count")}];
  [(TPPBPeerStableInfo *)v27 setPolicySecrets:v30];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __283__TPPeerStableInfo_initWithClock_frozenPolicyVersion_flexiblePolicyVersion_policySecrets_syncUserControllableViews_secureElementIdentity_walrusSetting_webAccess_deviceName_serialNumber_osVersion_signingKeyPair_recoverySigningPubKey_recoveryEncryptionPubKey_isInheritedAccount_error___block_invoke;
  v45[3] = &unk_279DEDD08;
  v46 = v27;
  v31 = v27;
  [secretsCopy enumerateKeysAndObjectsUsingBlock:v45];
  [(TPPBPeerStableInfo *)v31 setDeviceName:nameCopy];
  [(TPPBPeerStableInfo *)v31 setUserControllableViewStatus:views];
  [(TPPBPeerStableInfo *)v31 setSerialNumber:numberCopy];
  [(TPPBPeerStableInfo *)v31 setOsVersion:osVersionCopy];
  [(TPPBPeerStableInfo *)v31 setRecoveryEncryptionPublicKey:pubKeyCopy];
  [(TPPBPeerStableInfo *)v31 setRecoverySigningPublicKey:keyCopy];
  [(TPPBPeerStableInfo *)v31 setSecureElementIdentity:identityCopy];
  [(TPPBPeerStableInfo *)v31 setWalrus:settingCopy];
  [(TPPBPeerStableInfo *)v31 setWebAccess:accessCopy];
  [(TPPBPeerStableInfo *)v31 setIsInheritedAccount:account];
  [(TPPBPeerStableInfo *)v31 setSupportsRepudiation:1];
  data = [(TPPBPeerStableInfo *)v31 data];

  objc_autoreleasePoolPop(context);
  v33 = [(TPPeerStableInfo *)self initWithData:data signingKeyPair:pairCopy error:error];

  return v33;
}

void __283__TPPeerStableInfo_initWithClock_frozenPolicyVersion_flexiblePolicyVersion_policySecrets_syncUserControllableViews_secureElementIdentity_walrusSetting_webAccess_deviceName_serialNumber_osVersion_signingKeyPair_recoverySigningPubKey_recoveryEncryptionPubKey_isInheritedAccount_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(TPPBPolicySecret);
  [(TPPBPolicySecret *)v8 setName:v6];

  [(TPPBPolicySecret *)v8 setSecret:v5];
  v7 = [*(a1 + 32) policySecrets];
  [v7 addObject:v8];
}

+ (id)policySecretsFromPb:(id)pb
{
  v24 = *MEMORY[0x277D85DE8];
  pbCopy = pb;
  policySecrets = [pbCopy policySecrets];
  v5 = [policySecrets count];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB38];
    policySecrets2 = [pbCopy policySecrets];
    v8 = [v6 dictionaryWithCapacity:{objc_msgSend(policySecrets2, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    policySecrets3 = [pbCopy policySecrets];
    v10 = [policySecrets3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(policySecrets3);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          secret = [v14 secret];
          name = [v14 name];
          [v8 setObject:secret forKeyedSubscript:name];
        }

        v11 = [policySecrets3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)flexiblePolicyVersionFromPb:(id)pb
{
  pbCopy = pb;
  flexiblePolicyHash = [pbCopy flexiblePolicyHash];
  if ([flexiblePolicyHash length] || objc_msgSend(pbCopy, "flexiblePolicyVersion"))
  {
    v5 = [TPPolicyVersion alloc];
    flexiblePolicyVersion = [pbCopy flexiblePolicyVersion];
    flexiblePolicyHash2 = [pbCopy flexiblePolicyHash];
    v8 = [(TPPolicyVersion *)v5 initWithVersion:flexiblePolicyVersion hash:flexiblePolicyHash2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end