@interface TPPBPeerStableInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUserControllableViewStatus:(id)status;
- (int)userControllableViewStatus;
- (unint64_t)hash;
- (void)addCustodianRecoveryKeys:(id)keys;
- (void)addPolicySecrets:(id)secrets;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFlexiblePolicyVersion:(BOOL)version;
- (void)setHasFrozenPolicyVersion:(BOOL)version;
- (void)setHasIsInheritedAccount:(BOOL)account;
- (void)setHasSupportsRepudiation:(BOOL)repudiation;
- (void)setHasUserControllableViewStatus:(BOOL)status;
- (void)writeTo:(id)to;
@end

@implementation TPPBPeerStableInfo

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 140);
  if (v6)
  {
    self->_clock = fromCopy[1];
    *&self->_has |= 1u;
    v6 = *(fromCopy + 140);
  }

  if ((v6 & 4) != 0)
  {
    self->_frozenPolicyVersion = fromCopy[3];
    *&self->_has |= 4u;
  }

  if (fromCopy[7])
  {
    [(TPPBPeerStableInfo *)self setFrozenPolicyHash:?];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = v5[9];
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(TPPBPeerStableInfo *)self addPolicySecrets:*(*(&v29 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v9);
  }

  if (v5[8])
  {
    [(TPPBPeerStableInfo *)self setOsVersion:?];
  }

  if (v5[5])
  {
    [(TPPBPeerStableInfo *)self setDeviceName:?];
  }

  if (v5[11])
  {
    [(TPPBPeerStableInfo *)self setRecoverySigningPublicKey:?];
  }

  if (v5[10])
  {
    [(TPPBPeerStableInfo *)self setRecoveryEncryptionPublicKey:?];
  }

  if (v5[13])
  {
    [(TPPBPeerStableInfo *)self setSerialNumber:?];
  }

  if ((*(v5 + 140) & 2) != 0)
  {
    self->_flexiblePolicyVersion = v5[2];
    *&self->_has |= 2u;
  }

  if (v5[6])
  {
    [(TPPBPeerStableInfo *)self setFlexiblePolicyHash:?];
  }

  if ((*(v5 + 140) & 8) != 0)
  {
    self->_userControllableViewStatus = *(v5 + 28);
    *&self->_has |= 8u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v5[4];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(TPPBPeerStableInfo *)self addCustodianRecoveryKeys:*(*(&v25 + 1) + 8 * j), v25];
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  secureElementIdentity = self->_secureElementIdentity;
  v18 = v5[12];
  if (secureElementIdentity)
  {
    if (v18)
    {
      [(TPPBSecureElementIdentity *)secureElementIdentity mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(TPPBPeerStableInfo *)self setSecureElementIdentity:?];
  }

  walrus = self->_walrus;
  v20 = v5[15];
  if (walrus)
  {
    if (v20)
    {
      [(TPPBPeerStableInfoSetting *)walrus mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(TPPBPeerStableInfo *)self setWalrus:?];
  }

  webAccess = self->_webAccess;
  v22 = v5[16];
  if (webAccess)
  {
    if (v22)
    {
      [(TPPBPeerStableInfoSetting *)webAccess mergeFrom:?];
    }
  }

  else if (v22)
  {
    [(TPPBPeerStableInfo *)self setWebAccess:?];
  }

  v23 = *(v5 + 140);
  if ((v23 & 0x10) != 0)
  {
    self->_isInheritedAccount = *(v5 + 136);
    *&self->_has |= 0x10u;
    v23 = *(v5 + 140);
  }

  if ((v23 & 0x20) != 0)
  {
    self->_supportsRepudiation = *(v5 + 137);
    *&self->_has |= 0x20u;
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v21 = 2654435761u * self->_clock;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v20 = 2654435761u * self->_frozenPolicyVersion;
      goto LABEL_6;
    }
  }

  v20 = 0;
LABEL_6:
  v19 = [(NSString *)self->_frozenPolicyHash hash];
  v18 = [(NSMutableArray *)self->_policySecrets hash];
  v17 = [(NSString *)self->_osVersion hash];
  v16 = [(NSString *)self->_deviceName hash];
  v15 = [(NSData *)self->_recoverySigningPublicKey hash];
  v14 = [(NSData *)self->_recoveryEncryptionPublicKey hash];
  v3 = [(NSString *)self->_serialNumber hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761u * self->_flexiblePolicyVersion;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_flexiblePolicyHash hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_userControllableViewStatus;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSMutableArray *)self->_custodianRecoveryKeys hash];
  v8 = [(TPPBSecureElementIdentity *)self->_secureElementIdentity hash];
  v9 = [(TPPBPeerStableInfoSetting *)self->_walrus hash];
  v10 = [(TPPBPeerStableInfoSetting *)self->_webAccess hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_isInheritedAccount;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v12 = 0;
    return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v12 = 2654435761 * self->_supportsRepudiation;
  return v20 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  v5 = *(equalCopy + 140);
  if (*&self->_has)
  {
    if ((*(equalCopy + 140) & 1) == 0 || self->_clock != *(equalCopy + 1))
    {
      goto LABEL_62;
    }
  }

  else if (*(equalCopy + 140))
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 140) & 4) == 0 || self->_frozenPolicyVersion != *(equalCopy + 3))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 140) & 4) != 0)
  {
    goto LABEL_62;
  }

  frozenPolicyHash = self->_frozenPolicyHash;
  if (frozenPolicyHash | *(equalCopy + 7) && ![(NSString *)frozenPolicyHash isEqual:?])
  {
    goto LABEL_62;
  }

  policySecrets = self->_policySecrets;
  if (policySecrets | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)policySecrets isEqual:?])
    {
      goto LABEL_62;
    }
  }

  osVersion = self->_osVersion;
  if (osVersion | *(equalCopy + 8))
  {
    if (![(NSString *)osVersion isEqual:?])
    {
      goto LABEL_62;
    }
  }

  deviceName = self->_deviceName;
  if (deviceName | *(equalCopy + 5))
  {
    if (![(NSString *)deviceName isEqual:?])
    {
      goto LABEL_62;
    }
  }

  recoverySigningPublicKey = self->_recoverySigningPublicKey;
  if (recoverySigningPublicKey | *(equalCopy + 11))
  {
    if (![(NSData *)recoverySigningPublicKey isEqual:?])
    {
      goto LABEL_62;
    }
  }

  recoveryEncryptionPublicKey = self->_recoveryEncryptionPublicKey;
  if (recoveryEncryptionPublicKey | *(equalCopy + 10))
  {
    if (![(NSData *)recoveryEncryptionPublicKey isEqual:?])
    {
      goto LABEL_62;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 13))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_62;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 140);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 140) & 2) == 0 || self->_flexiblePolicyVersion != *(equalCopy + 2))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 140) & 2) != 0)
  {
    goto LABEL_62;
  }

  flexiblePolicyHash = self->_flexiblePolicyHash;
  if (flexiblePolicyHash | *(equalCopy + 6))
  {
    if (![(NSString *)flexiblePolicyHash isEqual:?])
    {
      goto LABEL_62;
    }

    has = self->_has;
    v14 = *(equalCopy + 140);
  }

  if ((has & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_userControllableViewStatus != *(equalCopy + 28))
    {
      goto LABEL_62;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_62;
  }

  custodianRecoveryKeys = self->_custodianRecoveryKeys;
  if (custodianRecoveryKeys | *(equalCopy + 4) && ![(NSMutableArray *)custodianRecoveryKeys isEqual:?])
  {
    goto LABEL_62;
  }

  secureElementIdentity = self->_secureElementIdentity;
  if (secureElementIdentity | *(equalCopy + 12))
  {
    if (![(TPPBSecureElementIdentity *)secureElementIdentity isEqual:?])
    {
      goto LABEL_62;
    }
  }

  walrus = self->_walrus;
  if (walrus | *(equalCopy + 15))
  {
    if (![(TPPBPeerStableInfoSetting *)walrus isEqual:?])
    {
      goto LABEL_62;
    }
  }

  webAccess = self->_webAccess;
  if (webAccess | *(equalCopy + 16))
  {
    if (![(TPPBPeerStableInfoSetting *)webAccess isEqual:?])
    {
      goto LABEL_62;
    }
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 140) & 0x10) == 0)
    {
      goto LABEL_62;
    }

    v21 = *(equalCopy + 136);
    if (self->_isInheritedAccount)
    {
      if ((*(equalCopy + 136) & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else if (*(equalCopy + 136))
    {
      goto LABEL_62;
    }
  }

  else if ((*(equalCopy + 140) & 0x10) != 0)
  {
    goto LABEL_62;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 140) & 0x20) != 0)
    {
      if (self->_supportsRepudiation)
      {
        if (*(equalCopy + 137))
        {
          goto LABEL_64;
        }
      }

      else if (!*(equalCopy + 137))
      {
LABEL_64:
        v20 = 1;
        goto LABEL_63;
      }
    }

LABEL_62:
    v20 = 0;
    goto LABEL_63;
  }

  v20 = (*(equalCopy + 140) & 0x20) == 0;
LABEL_63:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_clock;
    *(v5 + 140) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_frozenPolicyVersion;
    *(v5 + 140) |= 4u;
  }

  v8 = [(NSString *)self->_frozenPolicyHash copyWithZone:zone];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = self->_policySecrets;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v48;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v47 + 1) + 8 * i) copyWithZone:zone];
        [v6 addPolicySecrets:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_osVersion copyWithZone:zone];
  v17 = *(v6 + 64);
  *(v6 + 64) = v16;

  v18 = [(NSString *)self->_deviceName copyWithZone:zone];
  v19 = *(v6 + 40);
  *(v6 + 40) = v18;

  v20 = [(NSData *)self->_recoverySigningPublicKey copyWithZone:zone];
  v21 = *(v6 + 88);
  *(v6 + 88) = v20;

  v22 = [(NSData *)self->_recoveryEncryptionPublicKey copyWithZone:zone];
  v23 = *(v6 + 80);
  *(v6 + 80) = v22;

  v24 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v25 = *(v6 + 104);
  *(v6 + 104) = v24;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_flexiblePolicyVersion;
    *(v6 + 140) |= 2u;
  }

  v26 = [(NSString *)self->_flexiblePolicyHash copyWithZone:zone];
  v27 = *(v6 + 48);
  *(v6 + 48) = v26;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 112) = self->_userControllableViewStatus;
    *(v6 + 140) |= 8u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = self->_custodianRecoveryKeys;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v44;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v44 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v43 + 1) + 8 * j) copyWithZone:{zone, v43}];
        [v6 addCustodianRecoveryKeys:v33];
      }

      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v30);
  }

  v34 = [(TPPBSecureElementIdentity *)self->_secureElementIdentity copyWithZone:zone];
  v35 = *(v6 + 96);
  *(v6 + 96) = v34;

  v36 = [(TPPBPeerStableInfoSetting *)self->_walrus copyWithZone:zone];
  v37 = *(v6 + 120);
  *(v6 + 120) = v36;

  v38 = [(TPPBPeerStableInfoSetting *)self->_webAccess copyWithZone:zone];
  v39 = *(v6 + 128);
  *(v6 + 128) = v38;

  v40 = self->_has;
  if ((v40 & 0x10) != 0)
  {
    *(v6 + 136) = self->_isInheritedAccount;
    *(v6 + 140) |= 0x10u;
    v40 = self->_has;
  }

  if ((v40 & 0x20) != 0)
  {
    *(v6 + 137) = self->_supportsRepudiation;
    *(v6 + 140) |= 0x20u;
  }

  v41 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_clock;
    *(toCopy + 140) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    toCopy[3] = self->_frozenPolicyVersion;
    *(toCopy + 140) |= 4u;
  }

  v17 = toCopy;
  if (self->_frozenPolicyHash)
  {
    [toCopy setFrozenPolicyHash:?];
  }

  if ([(TPPBPeerStableInfo *)self policySecretsCount])
  {
    [v17 clearPolicySecrets];
    policySecretsCount = [(TPPBPeerStableInfo *)self policySecretsCount];
    if (policySecretsCount)
    {
      v7 = policySecretsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(TPPBPeerStableInfo *)self policySecretsAtIndex:i];
        [v17 addPolicySecrets:v9];
      }
    }
  }

  if (self->_osVersion)
  {
    [v17 setOsVersion:?];
  }

  v10 = v17;
  if (self->_deviceName)
  {
    [v17 setDeviceName:?];
    v10 = v17;
  }

  if (self->_recoverySigningPublicKey)
  {
    [v17 setRecoverySigningPublicKey:?];
    v10 = v17;
  }

  if (self->_recoveryEncryptionPublicKey)
  {
    [v17 setRecoveryEncryptionPublicKey:?];
    v10 = v17;
  }

  if (self->_serialNumber)
  {
    [v17 setSerialNumber:?];
    v10 = v17;
  }

  if ((*&self->_has & 2) != 0)
  {
    v10[2] = self->_flexiblePolicyVersion;
    *(v10 + 140) |= 2u;
  }

  if (self->_flexiblePolicyHash)
  {
    [v17 setFlexiblePolicyHash:?];
    v10 = v17;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 28) = self->_userControllableViewStatus;
    *(v10 + 140) |= 8u;
  }

  if ([(TPPBPeerStableInfo *)self custodianRecoveryKeysCount])
  {
    [v17 clearCustodianRecoveryKeys];
    custodianRecoveryKeysCount = [(TPPBPeerStableInfo *)self custodianRecoveryKeysCount];
    if (custodianRecoveryKeysCount)
    {
      v12 = custodianRecoveryKeysCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(TPPBPeerStableInfo *)self custodianRecoveryKeysAtIndex:j];
        [v17 addCustodianRecoveryKeys:v14];
      }
    }
  }

  if (self->_secureElementIdentity)
  {
    [v17 setSecureElementIdentity:?];
  }

  v15 = v17;
  if (self->_walrus)
  {
    [v17 setWalrus:?];
    v15 = v17;
  }

  if (self->_webAccess)
  {
    [v17 setWebAccess:?];
    v15 = v17;
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    v15[136] = self->_isInheritedAccount;
    v15[140] |= 0x10u;
    v16 = self->_has;
  }

  if ((v16 & 0x20) != 0)
  {
    v15[137] = self->_supportsRepudiation;
    v15[140] |= 0x20u;
  }
}

- (void)writeTo:(id)to
{
  v36 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    clock = self->_clock;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    frozenPolicyVersion = self->_frozenPolicyVersion;
    PBDataWriterWriteUint64Field();
  }

  if (self->_frozenPolicyHash)
  {
    PBDataWriterWriteStringField();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = self->_policySecrets;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v10);
  }

  if (self->_osVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recoverySigningPublicKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_recoveryEncryptionPublicKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    flexiblePolicyVersion = self->_flexiblePolicyVersion;
    PBDataWriterWriteUint64Field();
  }

  if (self->_flexiblePolicyHash)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 8) != 0)
  {
    userControllableViewStatus = self->_userControllableViewStatus;
    PBDataWriterWriteInt32Field();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_custodianRecoveryKeys;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v26 + 1) + 8 * j);
        PBDataWriterWriteSubmessage();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v18);
  }

  if (self->_secureElementIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_walrus)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_webAccess)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = self->_has;
  if ((v22 & 0x10) != 0)
  {
    isInheritedAccount = self->_isInheritedAccount;
    PBDataWriterWriteBOOLField();
    v22 = self->_has;
  }

  if ((v22 & 0x20) != 0)
  {
    supportsRepudiation = self->_supportsRepudiation;
    PBDataWriterWriteBOOLField();
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v52 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_clock];
    [dictionary setObject:v5 forKey:@"clock"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_frozenPolicyVersion];
    [dictionary setObject:v6 forKey:@"frozen_policy_version"];
  }

  frozenPolicyHash = self->_frozenPolicyHash;
  if (frozenPolicyHash)
  {
    [dictionary setObject:frozenPolicyHash forKey:@"frozen_policy_hash"];
  }

  osVersion = self->_osVersion;
  if (osVersion)
  {
    [dictionary setObject:osVersion forKey:@"os_version"];
  }

  deviceName = self->_deviceName;
  if (deviceName)
  {
    [dictionary setObject:deviceName forKey:@"device_name"];
  }

  recoverySigningPublicKey = self->_recoverySigningPublicKey;
  if (recoverySigningPublicKey)
  {
    [dictionary setObject:recoverySigningPublicKey forKey:@"recovery_signing_public_key"];
  }

  recoveryEncryptionPublicKey = self->_recoveryEncryptionPublicKey;
  if (recoveryEncryptionPublicKey)
  {
    [dictionary setObject:recoveryEncryptionPublicKey forKey:@"recovery_encryption_public_key"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [dictionary setObject:serialNumber forKey:@"serial_number"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_flexiblePolicyVersion];
    [dictionary setObject:v13 forKey:@"flexible_policy_version"];
  }

  flexiblePolicyHash = self->_flexiblePolicyHash;
  if (flexiblePolicyHash)
  {
    [dictionary setObject:flexiblePolicyHash forKey:@"flexible_policy_hash"];
  }

  if ([(NSMutableArray *)self->_policySecrets count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_policySecrets, "count")}];
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v16 = self->_policySecrets;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v47;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v47 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation = [*(*(&v46 + 1) + 8 * i) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"policy_secrets"];
  }

  if ((*&self->_has & 8) != 0)
  {
    userControllableViewStatus = self->_userControllableViewStatus;
    if (userControllableViewStatus >= 4)
    {
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_userControllableViewStatus];
    }

    else
    {
      v23 = off_279DEDD48[userControllableViewStatus];
    }

    [dictionary setObject:v23 forKey:@"user_controllable_view_status"];
  }

  if ([(NSMutableArray *)self->_custodianRecoveryKeys count])
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_custodianRecoveryKeys, "count")}];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = self->_custodianRecoveryKeys;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v43;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v43 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation2 = [*(*(&v42 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation2];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"custodian_recovery_keys"];
  }

  secureElementIdentity = self->_secureElementIdentity;
  if (secureElementIdentity)
  {
    dictionaryRepresentation3 = [(TPPBSecureElementIdentity *)secureElementIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"secureElementIdentity"];
  }

  walrus = self->_walrus;
  if (walrus)
  {
    dictionaryRepresentation4 = [(TPPBPeerStableInfoSetting *)walrus dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"walrus"];
  }

  webAccess = self->_webAccess;
  if (webAccess)
  {
    dictionaryRepresentation5 = [(TPPBPeerStableInfoSetting *)webAccess dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"web_access"];
  }

  v37 = self->_has;
  if ((v37 & 0x10) != 0)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInheritedAccount];
    [dictionary setObject:v38 forKey:@"isInheritedAccount"];

    v37 = self->_has;
  }

  if ((v37 & 0x20) != 0)
  {
    v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsRepudiation];
    [dictionary setObject:v39 forKey:@"supportsRepudiation"];
  }

  v40 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPeerStableInfo;
  v4 = [(TPPBPeerStableInfo *)&v8 description];
  dictionaryRepresentation = [(TPPBPeerStableInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasSupportsRepudiation:(BOOL)repudiation
{
  if (repudiation)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsInheritedAccount:(BOOL)account
{
  if (account)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)addCustodianRecoveryKeys:(id)keys
{
  keysCopy = keys;
  custodianRecoveryKeys = self->_custodianRecoveryKeys;
  v8 = keysCopy;
  if (!custodianRecoveryKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_custodianRecoveryKeys;
    self->_custodianRecoveryKeys = v6;

    keysCopy = v8;
    custodianRecoveryKeys = self->_custodianRecoveryKeys;
  }

  [(NSMutableArray *)custodianRecoveryKeys addObject:keysCopy];
}

- (int)StringAsUserControllableViewStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"DISABLED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"ENABLED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"FOLLOWING"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUserControllableViewStatus:(BOOL)status
{
  if (status)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)userControllableViewStatus
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_userControllableViewStatus;
  }

  else
  {
    return 0;
  }
}

- (void)addPolicySecrets:(id)secrets
{
  secretsCopy = secrets;
  policySecrets = self->_policySecrets;
  v8 = secretsCopy;
  if (!policySecrets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_policySecrets;
    self->_policySecrets = v6;

    secretsCopy = v8;
    policySecrets = self->_policySecrets;
  }

  [(NSMutableArray *)policySecrets addObject:secretsCopy];
}

- (void)setHasFlexiblePolicyVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFrozenPolicyVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end