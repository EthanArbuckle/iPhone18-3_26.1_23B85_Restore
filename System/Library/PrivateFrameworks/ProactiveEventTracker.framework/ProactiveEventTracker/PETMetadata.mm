@interface PETMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUploadService:(id)service;
- (int)uploadService;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfigVersion:(BOOL)version;
- (void)setHasIsConfigEnabled:(BOOL)enabled;
- (void)setHasIsGm:(BOOL)gm;
- (void)setHasIsInternal:(BOOL)internal;
- (void)setHasIsInternalCarry:(BOOL)carry;
- (void)setHasIsSeed:(BOOL)seed;
- (void)setHasIsTestingData:(BOOL)data;
- (void)setHasIsTrialUpload:(BOOL)upload;
- (void)setHasUploadService:(BOOL)service;
- (void)writeTo:(id)to;
@end

@implementation PETMetadata

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 50))
  {
    self->_uploadTime = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  if (*(fromCopy + 8))
  {
    [(PETMetadata *)self setPlatform:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 5))
  {
    [(PETMetadata *)self setDevice:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 2))
  {
    [(PETMetadata *)self setBuild:?];
    fromCopy = v8;
  }

  v5 = *(fromCopy + 50);
  if ((v5 & 0x20) != 0)
  {
    self->_isInternal = *(fromCopy + 94);
    *&self->_has |= 0x20u;
    v5 = *(fromCopy + 50);
    if ((v5 & 0x80) == 0)
    {
LABEL_11:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  self->_isSeed = *(fromCopy + 96);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 50) & 0x10) != 0)
  {
LABEL_12:
    self->_isGm = *(fromCopy + 93);
    *&self->_has |= 0x10u;
  }

LABEL_13:
  if (*(fromCopy + 4))
  {
    [(PETMetadata *)self setCountry:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 6))
  {
    [(PETMetadata *)self setLanguage:?];
    fromCopy = v8;
  }

  v6 = *(fromCopy + 50);
  if ((v6 & 2) != 0)
  {
    self->_configVersion = *(fromCopy + 6);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 50);
  }

  if ((v6 & 0x100) != 0)
  {
    self->_isTestingData = *(fromCopy + 97);
    *&self->_has |= 0x100u;
  }

  if (*(fromCopy + 9))
  {
    [(PETMetadata *)self setPseudoDeviceId:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 50);
  if ((v7 & 0x200) != 0)
  {
    self->_isTrialUpload = *(fromCopy + 98);
    *&self->_has |= 0x200u;
    v7 = *(fromCopy + 50);
    if ((v7 & 0x40) == 0)
    {
LABEL_25:
      if ((v7 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  self->_isInternalCarry = *(fromCopy + 95);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 50) & 8) != 0)
  {
LABEL_26:
    self->_isConfigEnabled = *(fromCopy + 92);
    *&self->_has |= 8u;
  }

LABEL_27:
  if (*(fromCopy + 7))
  {
    [(PETMetadata *)self setMessageGroup:?];
    fromCopy = v8;
  }

  if ((*(fromCopy + 50) & 4) != 0)
  {
    self->_uploadService = *(fromCopy + 22);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 10))
  {
    [(PETMetadata *)self setUploadIdentifier:?];
    fromCopy = v8;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v22 = 2654435761u * self->_uploadTime;
  }

  else
  {
    v22 = 0;
  }

  v21 = [(NSString *)self->_platform hash];
  v20 = [(NSString *)self->_device hash];
  v19 = [(NSString *)self->_build hash];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
    v18 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v17 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v18 = 2654435761 * self->_isInternal;
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v17 = 2654435761 * self->_isSeed;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v16 = 2654435761 * self->_isGm;
    goto LABEL_11;
  }

LABEL_10:
  v16 = 0;
LABEL_11:
  v15 = [(NSString *)self->_country hash];
  v4 = [(NSString *)self->_language hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_configVersion;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
LABEL_13:
      v6 = 2654435761 * self->_isTestingData;
      goto LABEL_16;
    }
  }

  v6 = 0;
LABEL_16:
  v7 = [(NSString *)self->_pseudoDeviceId hash];
  v8 = self->_has;
  if ((v8 & 0x200) == 0)
  {
    v9 = 0;
    if ((v8 & 0x40) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v10 = 0;
    if ((v8 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v9 = 2654435761 * self->_isTrialUpload;
  if ((v8 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v10 = 2654435761 * self->_isInternalCarry;
  if ((v8 & 8) != 0)
  {
LABEL_19:
    v11 = 2654435761 * self->_isConfigEnabled;
    goto LABEL_23;
  }

LABEL_22:
  v11 = 0;
LABEL_23:
  v12 = [(NSString *)self->_messageGroup hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_uploadService;
  }

  else
  {
    v13 = 0;
  }

  return v21 ^ v22 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_uploadIdentifier hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_90;
  }

  v5 = *(equalCopy + 50);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_uploadTime != *(equalCopy + 1))
    {
      goto LABEL_90;
    }
  }

  else if (v5)
  {
    goto LABEL_90;
  }

  platform = self->_platform;
  if (platform | *(equalCopy + 8) && ![(NSString *)platform isEqual:?])
  {
    goto LABEL_90;
  }

  device = self->_device;
  if (device | *(equalCopy + 5))
  {
    if (![(NSString *)device isEqual:?])
    {
      goto LABEL_90;
    }
  }

  build = self->_build;
  if (build | *(equalCopy + 2))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_90;
    }
  }

  has = self->_has;
  v10 = *(equalCopy + 50);
  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_90;
    }

    v15 = *(equalCopy + 94);
    if (self->_isInternal)
    {
      if ((*(equalCopy + 94) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 94))
    {
      goto LABEL_90;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_90;
  }

  if ((has & 0x80) != 0)
  {
    if ((v10 & 0x80) == 0)
    {
      goto LABEL_90;
    }

    v16 = *(equalCopy + 96);
    if (self->_isSeed)
    {
      if ((*(equalCopy + 96) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 96))
    {
      goto LABEL_90;
    }
  }

  else if ((v10 & 0x80) != 0)
  {
    goto LABEL_90;
  }

  if ((has & 0x10) != 0)
  {
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_90;
    }

    v17 = *(equalCopy + 93);
    if (self->_isGm)
    {
      if ((*(equalCopy + 93) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 93))
    {
      goto LABEL_90;
    }
  }

  else if ((v10 & 0x10) != 0)
  {
    goto LABEL_90;
  }

  country = self->_country;
  if (country | *(equalCopy + 4) && ![(NSString *)country isEqual:?])
  {
    goto LABEL_90;
  }

  language = self->_language;
  if (language | *(equalCopy + 6))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_90;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 50);
  if ((v13 & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_configVersion != *(equalCopy + 6))
    {
      goto LABEL_90;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_90;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 50) & 0x100) == 0)
    {
      goto LABEL_90;
    }

    v20 = *(equalCopy + 97);
    if (self->_isTestingData)
    {
      if ((*(equalCopy + 97) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 97))
    {
      goto LABEL_90;
    }
  }

  else if ((*(equalCopy + 50) & 0x100) != 0)
  {
    goto LABEL_90;
  }

  pseudoDeviceId = self->_pseudoDeviceId;
  if (pseudoDeviceId | *(equalCopy + 9))
  {
    if (![(NSString *)pseudoDeviceId isEqual:?])
    {
      goto LABEL_90;
    }

    v13 = self->_has;
    v14 = *(equalCopy + 50);
  }

  if ((v13 & 0x200) != 0)
  {
    if ((v14 & 0x200) == 0)
    {
      goto LABEL_90;
    }

    v21 = *(equalCopy + 98);
    if (self->_isTrialUpload)
    {
      if ((*(equalCopy + 98) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 98))
    {
      goto LABEL_90;
    }
  }

  else if ((v14 & 0x200) != 0)
  {
    goto LABEL_90;
  }

  if ((v13 & 0x40) != 0)
  {
    if ((v14 & 0x40) == 0)
    {
      goto LABEL_90;
    }

    v22 = *(equalCopy + 95);
    if (self->_isInternalCarry)
    {
      if ((*(equalCopy + 95) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 95))
    {
      goto LABEL_90;
    }
  }

  else if ((v14 & 0x40) != 0)
  {
    goto LABEL_90;
  }

  if ((v13 & 8) != 0)
  {
    if ((v14 & 8) == 0)
    {
      goto LABEL_90;
    }

    v23 = *(equalCopy + 92);
    if (self->_isConfigEnabled)
    {
      if ((*(equalCopy + 92) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    else if (*(equalCopy + 92))
    {
      goto LABEL_90;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_90;
  }

  messageGroup = self->_messageGroup;
  if (!(messageGroup | *(equalCopy + 7)))
  {
    goto LABEL_60;
  }

  if (![(NSString *)messageGroup isEqual:?])
  {
LABEL_90:
    v25 = 0;
    goto LABEL_91;
  }

  v13 = self->_has;
  v14 = *(equalCopy + 50);
LABEL_60:
  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_uploadService != *(equalCopy + 22))
    {
      goto LABEL_90;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_90;
  }

  uploadIdentifier = self->_uploadIdentifier;
  if (uploadIdentifier | *(equalCopy + 10))
  {
    v25 = [(NSString *)uploadIdentifier isEqual:?];
  }

  else
  {
    v25 = 1;
  }

LABEL_91:

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_uploadTime;
    *(v5 + 100) |= 1u;
  }

  v7 = [(NSString *)self->_platform copyWithZone:zone];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  v9 = [(NSString *)self->_device copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_build copyWithZone:zone];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 94) = self->_isInternal;
    *(v6 + 100) |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 96) = self->_isSeed;
  *(v6 + 100) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    *(v6 + 93) = self->_isGm;
    *(v6 + 100) |= 0x10u;
  }

LABEL_7:
  v14 = [(NSString *)self->_country copyWithZone:zone];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = [(NSString *)self->_language copyWithZone:zone];
  v17 = *(v6 + 48);
  *(v6 + 48) = v16;

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    *(v6 + 24) = self->_configVersion;
    *(v6 + 100) |= 2u;
    v18 = self->_has;
  }

  if ((v18 & 0x100) != 0)
  {
    *(v6 + 97) = self->_isTestingData;
    *(v6 + 100) |= 0x100u;
  }

  v19 = [(NSString *)self->_pseudoDeviceId copyWithZone:zone];
  v20 = *(v6 + 72);
  *(v6 + 72) = v19;

  v21 = self->_has;
  if ((v21 & 0x200) != 0)
  {
    *(v6 + 98) = self->_isTrialUpload;
    *(v6 + 100) |= 0x200u;
    v21 = self->_has;
    if ((v21 & 0x40) == 0)
    {
LABEL_13:
      if ((v21 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v21 & 0x40) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 95) = self->_isInternalCarry;
  *(v6 + 100) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_14:
    *(v6 + 92) = self->_isConfigEnabled;
    *(v6 + 100) |= 8u;
  }

LABEL_15:
  v22 = [(NSString *)self->_messageGroup copyWithZone:zone];
  v23 = *(v6 + 56);
  *(v6 + 56) = v22;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 88) = self->_uploadService;
    *(v6 + 100) |= 4u;
  }

  v24 = [(NSString *)self->_uploadIdentifier copyWithZone:zone];
  v25 = *(v6 + 80);
  *(v6 + 80) = v24;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_uploadTime;
    *(toCopy + 50) |= 1u;
  }

  v8 = toCopy;
  if (self->_platform)
  {
    [toCopy setPlatform:?];
    toCopy = v8;
  }

  if (self->_device)
  {
    [v8 setDevice:?];
    toCopy = v8;
  }

  if (self->_build)
  {
    [v8 setBuild:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 94) = self->_isInternal;
    *(toCopy + 50) |= 0x20u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_11;
  }

  *(toCopy + 96) = self->_isSeed;
  *(toCopy + 50) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    *(toCopy + 93) = self->_isGm;
    *(toCopy + 50) |= 0x10u;
  }

LABEL_13:
  if (self->_country)
  {
    [v8 setCountry:?];
    toCopy = v8;
  }

  if (self->_language)
  {
    [v8 setLanguage:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(toCopy + 6) = self->_configVersion;
    *(toCopy + 50) |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 0x100) != 0)
  {
    *(toCopy + 97) = self->_isTestingData;
    *(toCopy + 50) |= 0x100u;
  }

  if (self->_pseudoDeviceId)
  {
    [v8 setPseudoDeviceId:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    *(toCopy + 98) = self->_isTrialUpload;
    *(toCopy + 50) |= 0x200u;
    v7 = self->_has;
    if ((v7 & 0x40) == 0)
    {
LABEL_25:
      if ((v7 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  *(toCopy + 95) = self->_isInternalCarry;
  *(toCopy + 50) |= 0x40u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_26:
    *(toCopy + 92) = self->_isConfigEnabled;
    *(toCopy + 50) |= 8u;
  }

LABEL_27:
  if (self->_messageGroup)
  {
    [v8 setMessageGroup:?];
    toCopy = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 22) = self->_uploadService;
    *(toCopy + 50) |= 4u;
  }

  if (self->_uploadIdentifier)
  {
    [v8 setUploadIdentifier:?];
    toCopy = v8;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (*&self->_has)
  {
    uploadTime = self->_uploadTime;
    PBDataWriterWriteUint64Field();
    toCopy = v18;
  }

  if (self->_platform)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_device)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    isInternal = self->_isInternal;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_11;
  }

  isSeed = self->_isSeed;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    isGm = self->_isGm;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

LABEL_13:
  if (self->_country)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    configVersion = self->_configVersion;
    PBDataWriterWriteUint32Field();
    toCopy = v18;
    v8 = self->_has;
  }

  if ((v8 & 0x100) != 0)
  {
    isTestingData = self->_isTestingData;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

  if (self->_pseudoDeviceId)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    isTrialUpload = self->_isTrialUpload;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
    v11 = self->_has;
    if ((v11 & 0x40) == 0)
    {
LABEL_25:
      if ((v11 & 8) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 0x40) == 0)
  {
    goto LABEL_25;
  }

  isInternalCarry = self->_isInternalCarry;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  if ((*&self->_has & 8) != 0)
  {
LABEL_26:
    isConfigEnabled = self->_isConfigEnabled;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
  }

LABEL_27:
  if (self->_messageGroup)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }

  if ((*&self->_has & 4) != 0)
  {
    uploadService = self->_uploadService;
    PBDataWriterWriteInt32Field();
    toCopy = v18;
  }

  if (self->_uploadIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v18;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uploadTime];
    [dictionary setObject:v4 forKey:@"upload_time"];
  }

  platform = self->_platform;
  if (platform)
  {
    [dictionary setObject:platform forKey:@"platform"];
  }

  device = self->_device;
  if (device)
  {
    [dictionary setObject:device forKey:@"device"];
  }

  build = self->_build;
  if (build)
  {
    [dictionary setObject:build forKey:@"build"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInternal];
    [dictionary setObject:v20 forKey:@"is_internal"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSeed];
  [dictionary setObject:v21 forKey:@"is_seed"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGm];
    [dictionary setObject:v9 forKey:@"is_gm"];
  }

LABEL_13:
  country = self->_country;
  if (country)
  {
    [dictionary setObject:country forKey:@"country"];
  }

  language = self->_language;
  if (language)
  {
    [dictionary setObject:language forKey:@"language"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configVersion];
    [dictionary setObject:v12 forKey:@"config_version"];
  }

  pseudoDeviceId = self->_pseudoDeviceId;
  if (pseudoDeviceId)
  {
    [dictionary setObject:pseudoDeviceId forKey:@"pseudo_device_id"];
  }

  v14 = self->_has;
  if ((v14 & 0x40) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInternalCarry];
    [dictionary setObject:v15 forKey:@"is_internal_carry"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConfigEnabled];
    [dictionary setObject:v16 forKey:@"is_config_enabled"];
  }

  messageGroup = self->_messageGroup;
  if (messageGroup)
  {
    [dictionary setObject:messageGroup forKey:@"message_group"];
  }

  if ((*&self->_has & 4) != 0)
  {
    uploadService = self->_uploadService;
    if (uploadService >= 3)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_uploadService];
    }

    else
    {
      v19 = off_1E86C2900[uploadService];
    }

    [dictionary setObject:v19 forKey:@"upload_service"];
  }

  uploadIdentifier = self->_uploadIdentifier;
  if (uploadIdentifier)
  {
    [dictionary setObject:uploadIdentifier forKey:@"upload_identifier"];
  }

  v23 = self->_has;
  if ((v23 & 0x100) != 0)
  {
    v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTestingData];
    [dictionary setObject:v24 forKey:@"is_testing_data"];

    v23 = self->_has;
  }

  if ((v23 & 0x200) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTrialUpload];
    [dictionary setObject:v25 forKey:@"is_trial_upload"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PETMetadata;
  v4 = [(PETMetadata *)&v8 description];
  dictionaryRepresentation = [(PETMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIsTrialUpload:(BOOL)upload
{
  if (upload)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsTestingData:(BOOL)data
{
  if (data)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (int)StringAsUploadService:(id)service
{
  serviceCopy = service;
  if ([serviceCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([serviceCopy isEqualToString:@"PARSEC"])
  {
    v4 = 1;
  }

  else if ([serviceCopy isEqualToString:@"LDCP"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUploadService:(BOOL)service
{
  if (service)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)uploadService
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_uploadService;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsConfigEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasIsInternalCarry:(BOOL)carry
{
  if (carry)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasConfigVersion:(BOOL)version
{
  if (version)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsGm:(BOOL)gm
{
  if (gm)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsSeed:(BOOL)seed
{
  if (seed)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsInternal:(BOOL)internal
{
  if (internal)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

@end