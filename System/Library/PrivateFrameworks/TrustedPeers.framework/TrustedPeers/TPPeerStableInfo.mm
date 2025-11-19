@interface TPPeerStableInfo
+ (id)flexiblePolicyVersionFromPb:(id)a3;
+ (id)policySecretsFromPb:(id)a3;
- (BOOL)checkSignatureWithKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPeerStableInfo:(id)a3;
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
- (TPPeerStableInfo)initWithClock:(unint64_t)a3 frozenPolicyVersion:(id)a4 flexiblePolicyVersion:(id)a5 policySecrets:(id)a6 syncUserControllableViews:(int)a7 secureElementIdentity:(id)a8 walrusSetting:(id)a9 webAccess:(id)a10 deviceName:(id)a11 serialNumber:(id)a12 osVersion:(id)a13 signingKeyPair:(id)a14 recoverySigningPubKey:(id)a15 recoveryEncryptionPubKey:(id)a16 isInheritedAccount:(BOOL)a17 error:(id *)a18;
- (TPPeerStableInfo)initWithData:(id)a3 sig:(id)a4;
- (TPPeerStableInfo)initWithData:(id)a3 signingKeyPair:(id)a4 error:(id *)a5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPPeerStableInfo *)self isEqualToPeerStableInfo:v4];
  }

  return v5;
}

- (id)bestPolicyVersion
{
  v3 = [(TPPeerStableInfo *)self flexiblePolicyVersion];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(TPPeerStableInfo *)self frozenPolicyVersion];
  }

  v6 = v5;

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
  v3 = [v2 data];

  return v3;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self dictionaryRepresentation];
  v5 = [v4 description];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 dictionaryRepresentation];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (BOOL)isEqualToPeerStableInfo:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(TPPeerStableInfo *)self data];
    v6 = [(TPPeerStableInfo *)v4 data];
    if ([v5 isEqualToData:v6])
    {
      v7 = [(TPPeerStableInfo *)self sig];
      v8 = [(TPPeerStableInfo *)v4 sig];
      v9 = [v7 isEqualToData:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)checkSignatureWithKey:(id)a3
{
  v4 = a3;
  v5 = [(TPPeerStableInfo *)self tsd];
  v6 = [v5 checkSignatureWithKey:v4];

  return v6;
}

- (BOOL)supportsRepudiation
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 supportsRepudiation];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (BOOL)isInheritedAccount
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 isInheritedAccount];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (TPPBPeerStableInfoSetting)webAccess
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 webAccess];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (TPPBPeerStableInfoSetting)walrusSetting
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 walrus];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (TPPBSecureElementIdentity)secureElementIdentity
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 secureElementIdentity];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (int)syncUserControllableViews
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 userControllableViewStatus];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (NSData)recoveryEncryptionPublicKey
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 recoveryEncryptionPublicKey];
  v6 = [v5 pbToNullable];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (NSData)recoverySigningPublicKey
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 recoverySigningPublicKey];
  v6 = [v5 pbToNullable];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (NSString)osVersion
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 osVersion];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (NSString)serialNumber
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 serialNumber];
  v6 = [v5 pbToNullable];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (NSString)deviceName
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 deviceName];
  v6 = [v5 pbToNullable];

  objc_autoreleasePoolPop(v3);

  return v6;
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
  v6 = [v4 frozenPolicyVersion];
  v7 = [v4 frozenPolicyHash];
  v8 = [(TPPolicyVersion *)v5 initWithVersion:v6 hash:v7];

  objc_autoreleasePoolPop(v3);

  return v8;
}

- (unint64_t)clock
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TPPeerStableInfo *)self pb];
  v5 = [v4 clock];

  objc_autoreleasePoolPop(v3);
  return v5;
}

- (id)pb
{
  v3 = [TPPBPeerStableInfo alloc];
  v4 = [(TPPeerStableInfo *)self data];
  v5 = [(TPPBPeerStableInfo *)v3 initWithData:v4];

  return v5;
}

- (TPPeerStableInfo)initWithData:(id)a3 signingKeyPair:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[TPTypedSignedData alloc] initWithData:v9 key:v8 signatureTypeName:@"TPPB.PeerStableInfo" error:a5];

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
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TPPeerStableInfo)initWithData:(id)a3 sig:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [[TPPBPeerStableInfo alloc] initWithData:v6];

  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v15.receiver = self;
    v15.super_class = TPPeerStableInfo;
    v10 = [(TPPeerStableInfo *)&v15 init];
    if (v10)
    {
      v11 = [[TPTypedSignedData alloc] initWithData:v6 sig:v7 signatureTypeName:@"TPPB.PeerStableInfo"];
      tsd = v10->_tsd;
      v10->_tsd = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TPPeerStableInfo)initWithClock:(unint64_t)a3 frozenPolicyVersion:(id)a4 flexiblePolicyVersion:(id)a5 policySecrets:(id)a6 syncUserControllableViews:(int)a7 secureElementIdentity:(id)a8 walrusSetting:(id)a9 webAccess:(id)a10 deviceName:(id)a11 serialNumber:(id)a12 osVersion:(id)a13 signingKeyPair:(id)a14 recoverySigningPubKey:(id)a15 recoveryEncryptionPubKey:(id)a16 isInheritedAccount:(BOOL)a17 error:(id *)a18
{
  v44 = a4;
  v21 = a5;
  v22 = a6;
  v40 = a8;
  v39 = a9;
  v38 = a10;
  v23 = a11;
  v36 = a12;
  v24 = a13;
  v42 = a14;
  v25 = a15;
  v26 = a16;
  context = objc_autoreleasePoolPush();
  v27 = objc_alloc_init(TPPBPeerStableInfo);
  [(TPPBPeerStableInfo *)v27 setClock:a3];
  -[TPPBPeerStableInfo setFrozenPolicyVersion:](v27, "setFrozenPolicyVersion:", [v44 versionNumber]);
  v28 = [v44 policyHash];
  [(TPPBPeerStableInfo *)v27 setFrozenPolicyHash:v28];

  -[TPPBPeerStableInfo setFlexiblePolicyVersion:](v27, "setFlexiblePolicyVersion:", [v21 versionNumber]);
  v29 = [v21 policyHash];
  [(TPPBPeerStableInfo *)v27 setFlexiblePolicyHash:v29];

  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  [(TPPBPeerStableInfo *)v27 setPolicySecrets:v30];

  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __283__TPPeerStableInfo_initWithClock_frozenPolicyVersion_flexiblePolicyVersion_policySecrets_syncUserControllableViews_secureElementIdentity_walrusSetting_webAccess_deviceName_serialNumber_osVersion_signingKeyPair_recoverySigningPubKey_recoveryEncryptionPubKey_isInheritedAccount_error___block_invoke;
  v45[3] = &unk_279DEDD08;
  v46 = v27;
  v31 = v27;
  [v22 enumerateKeysAndObjectsUsingBlock:v45];
  [(TPPBPeerStableInfo *)v31 setDeviceName:v23];
  [(TPPBPeerStableInfo *)v31 setUserControllableViewStatus:a7];
  [(TPPBPeerStableInfo *)v31 setSerialNumber:v36];
  [(TPPBPeerStableInfo *)v31 setOsVersion:v24];
  [(TPPBPeerStableInfo *)v31 setRecoveryEncryptionPublicKey:v26];
  [(TPPBPeerStableInfo *)v31 setRecoverySigningPublicKey:v25];
  [(TPPBPeerStableInfo *)v31 setSecureElementIdentity:v40];
  [(TPPBPeerStableInfo *)v31 setWalrus:v39];
  [(TPPBPeerStableInfo *)v31 setWebAccess:v38];
  [(TPPBPeerStableInfo *)v31 setIsInheritedAccount:a17];
  [(TPPBPeerStableInfo *)v31 setSupportsRepudiation:1];
  v32 = [(TPPBPeerStableInfo *)v31 data];

  objc_autoreleasePoolPop(context);
  v33 = [(TPPeerStableInfo *)self initWithData:v32 signingKeyPair:v42 error:a18];

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

+ (id)policySecretsFromPb:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 policySecrets];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB38];
    v7 = [v3 policySecrets];
    v8 = [v6 dictionaryWithCapacity:{objc_msgSend(v7, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v3 policySecrets];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          v15 = [v14 secret];
          v16 = [v14 name];
          [v8 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

+ (id)flexiblePolicyVersionFromPb:(id)a3
{
  v3 = a3;
  v4 = [v3 flexiblePolicyHash];
  if ([v4 length] || objc_msgSend(v3, "flexiblePolicyVersion"))
  {
    v5 = [TPPolicyVersion alloc];
    v6 = [v3 flexiblePolicyVersion];
    v7 = [v3 flexiblePolicyHash];
    v8 = [(TPPolicyVersion *)v5 initWithVersion:v6 hash:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end