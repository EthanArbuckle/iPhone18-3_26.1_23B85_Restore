@interface COMAPPLEPETCOMMONPETMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUploadService:(id)a3;
- (int)uploadService;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConfigVersion:(BOOL)a3;
- (void)setHasIsConfigEnabled:(BOOL)a3;
- (void)setHasIsGm:(BOOL)a3;
- (void)setHasIsInternal:(BOOL)a3;
- (void)setHasIsInternalCarry:(BOOL)a3;
- (void)setHasIsSeed:(BOOL)a3;
- (void)setHasIsTestingData:(BOOL)a3;
- (void)setHasIsTrialUpload:(BOOL)a3;
- (void)setHasTypeId:(BOOL)a3;
- (void)setHasUploadService:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation COMAPPLEPETCOMMONPETMetadata

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 58))
  {
    self->_uploadTime = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v8 = v4;
  if (*(v4 + 9))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setPlatform:?];
    v4 = v8;
  }

  if (*(v4 + 5))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setDevice:?];
    v4 = v8;
  }

  if (*(v4 + 2))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setBuild:?];
    v4 = v8;
  }

  v5 = *(v4 + 58);
  if ((v5 & 0x40) != 0)
  {
    self->_isInternal = *(v4 + 110);
    *&self->_has |= 0x40u;
    v5 = *(v4 + 58);
    if ((v5 & 0x100) == 0)
    {
LABEL_11:
      if ((v5 & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 58) & 0x100) == 0)
  {
    goto LABEL_11;
  }

  self->_isSeed = *(v4 + 112);
  *&self->_has |= 0x100u;
  if ((*(v4 + 58) & 0x20) != 0)
  {
LABEL_12:
    self->_isGm = *(v4 + 109);
    *&self->_has |= 0x20u;
  }

LABEL_13:
  if (*(v4 + 4))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setCountry:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setLanguage:?];
    v4 = v8;
  }

  v6 = *(v4 + 58);
  if ((v6 & 2) != 0)
  {
    self->_configVersion = *(v4 + 6);
    *&self->_has |= 2u;
    v6 = *(v4 + 58);
  }

  if ((v6 & 0x200) != 0)
  {
    self->_isTestingData = *(v4 + 113);
    *&self->_has |= 0x200u;
  }

  if (*(v4 + 10))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setPseudoDeviceId:?];
    v4 = v8;
  }

  v7 = *(v4 + 58);
  if ((v7 & 0x400) != 0)
  {
    self->_isTrialUpload = *(v4 + 114);
    *&self->_has |= 0x400u;
    v7 = *(v4 + 58);
    if ((v7 & 0x80) == 0)
    {
LABEL_25:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  self->_isInternalCarry = *(v4 + 111);
  *&self->_has |= 0x80u;
  if ((*(v4 + 58) & 0x10) != 0)
  {
LABEL_26:
    self->_isConfigEnabled = *(v4 + 108);
    *&self->_has |= 0x10u;
  }

LABEL_27:
  if (*(v4 + 7))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setMessageGroup:?];
    v4 = v8;
  }

  if ((*(v4 + 58) & 8) != 0)
  {
    self->_uploadService = *(v4 + 26);
    *&self->_has |= 8u;
  }

  if (*(v4 + 12))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setUploadIdentifier:?];
    v4 = v8;
  }

  if ((*(v4 + 58) & 4) != 0)
  {
    self->_typeId = *(v4 + 22);
    *&self->_has |= 4u;
  }

  if (*(v4 + 8))
  {
    [(COMAPPLEPETCOMMONPETMetadata *)self setMessageName:?];
    v4 = v8;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v25 = 2654435761u * self->_uploadTime;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSString *)self->_platform hash];
  v23 = [(NSString *)self->_device hash];
  v22 = [(NSString *)self->_build hash];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
    v21 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v20 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v21 = 2654435761 * self->_isInternal;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v20 = 2654435761 * self->_isSeed;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v19 = 2654435761 * self->_isGm;
    goto LABEL_11;
  }

LABEL_10:
  v19 = 0;
LABEL_11:
  v18 = [(NSString *)self->_country hash];
  v17 = [(NSString *)self->_language hash];
  if ((*&self->_has & 2) != 0)
  {
    v15 = 2654435761 * self->_configVersion;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
LABEL_13:
      v4 = 2654435761 * self->_isTestingData;
      goto LABEL_16;
    }
  }

  v4 = 0;
LABEL_16:
  v5 = [(NSString *)self->_pseudoDeviceId hash];
  v6 = self->_has;
  if ((v6 & 0x400) == 0)
  {
    v7 = 0;
    if ((v6 & 0x80) != 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v8 = 0;
    if ((v6 & 0x10) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  v7 = 2654435761 * self->_isTrialUpload;
  if ((v6 & 0x80) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v8 = 2654435761 * self->_isInternalCarry;
  if ((v6 & 0x10) != 0)
  {
LABEL_19:
    v9 = 2654435761 * self->_isConfigEnabled;
    goto LABEL_23;
  }

LABEL_22:
  v9 = 0;
LABEL_23:
  v10 = [(NSString *)self->_messageGroup hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_uploadService;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(NSString *)self->_uploadIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_typeId;
  }

  else
  {
    v13 = 0;
  }

  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSString *)self->_messageName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_99;
  }

  v5 = *(v4 + 58);
  if (*&self->_has)
  {
    if ((v5 & 1) == 0 || self->_uploadTime != *(v4 + 1))
    {
      goto LABEL_99;
    }
  }

  else if (v5)
  {
    goto LABEL_99;
  }

  platform = self->_platform;
  if (platform | *(v4 + 9) && ![(NSString *)platform isEqual:?])
  {
    goto LABEL_99;
  }

  device = self->_device;
  if (device | *(v4 + 5))
  {
    if (![(NSString *)device isEqual:?])
    {
      goto LABEL_99;
    }
  }

  build = self->_build;
  if (build | *(v4 + 2))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_99;
    }
  }

  has = self->_has;
  v10 = *(v4 + 58);
  if ((has & 0x40) != 0)
  {
    if ((v10 & 0x40) == 0)
    {
      goto LABEL_99;
    }

    v15 = *(v4 + 110);
    if (self->_isInternal)
    {
      if ((*(v4 + 110) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 110))
    {
      goto LABEL_99;
    }
  }

  else if ((v10 & 0x40) != 0)
  {
    goto LABEL_99;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 58) & 0x100) == 0)
    {
      goto LABEL_99;
    }

    v16 = *(v4 + 112);
    if (self->_isSeed)
    {
      if ((*(v4 + 112) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 112))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 58) & 0x100) != 0)
  {
    goto LABEL_99;
  }

  if ((has & 0x20) != 0)
  {
    if ((v10 & 0x20) == 0)
    {
      goto LABEL_99;
    }

    v17 = *(v4 + 109);
    if (self->_isGm)
    {
      if ((*(v4 + 109) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 109))
    {
      goto LABEL_99;
    }
  }

  else if ((v10 & 0x20) != 0)
  {
    goto LABEL_99;
  }

  country = self->_country;
  if (country | *(v4 + 4) && ![(NSString *)country isEqual:?])
  {
    goto LABEL_99;
  }

  language = self->_language;
  if (language | *(v4 + 6))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_99;
    }
  }

  v13 = self->_has;
  v14 = *(v4 + 58);
  if ((v13 & 2) != 0)
  {
    if ((v14 & 2) == 0 || self->_configVersion != *(v4 + 6))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 2) != 0)
  {
    goto LABEL_99;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 58) & 0x200) == 0)
    {
      goto LABEL_99;
    }

    v20 = *(v4 + 113);
    if (self->_isTestingData)
    {
      if ((*(v4 + 113) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 113))
    {
      goto LABEL_99;
    }
  }

  else if ((*(v4 + 58) & 0x200) != 0)
  {
    goto LABEL_99;
  }

  pseudoDeviceId = self->_pseudoDeviceId;
  if (pseudoDeviceId | *(v4 + 10))
  {
    if (![(NSString *)pseudoDeviceId isEqual:?])
    {
      goto LABEL_99;
    }

    v13 = self->_has;
    v14 = *(v4 + 58);
  }

  if ((v13 & 0x400) != 0)
  {
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_99;
    }

    v21 = *(v4 + 114);
    if (self->_isTrialUpload)
    {
      if ((*(v4 + 114) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 114))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 0x400) != 0)
  {
    goto LABEL_99;
  }

  if ((v13 & 0x80) != 0)
  {
    if ((v14 & 0x80) == 0)
    {
      goto LABEL_99;
    }

    v22 = *(v4 + 111);
    if (self->_isInternalCarry)
    {
      if ((*(v4 + 111) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 111))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 0x80) != 0)
  {
    goto LABEL_99;
  }

  if ((v13 & 0x10) != 0)
  {
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_99;
    }

    v23 = *(v4 + 108);
    if (self->_isConfigEnabled)
    {
      if ((*(v4 + 108) & 1) == 0)
      {
        goto LABEL_99;
      }
    }

    else if (*(v4 + 108))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 0x10) != 0)
  {
    goto LABEL_99;
  }

  messageGroup = self->_messageGroup;
  if (messageGroup | *(v4 + 7))
  {
    if (![(NSString *)messageGroup isEqual:?])
    {
      goto LABEL_99;
    }

    v13 = self->_has;
    v14 = *(v4 + 58);
  }

  if ((v13 & 8) != 0)
  {
    if ((v14 & 8) == 0 || self->_uploadService != *(v4 + 26))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 8) != 0)
  {
    goto LABEL_99;
  }

  uploadIdentifier = self->_uploadIdentifier;
  if (uploadIdentifier | *(v4 + 12))
  {
    if ([(NSString *)uploadIdentifier isEqual:?])
    {
      v13 = self->_has;
      v14 = *(v4 + 58);
      goto LABEL_90;
    }

LABEL_99:
    v26 = 0;
    goto LABEL_100;
  }

LABEL_90:
  if ((v13 & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_typeId != *(v4 + 22))
    {
      goto LABEL_99;
    }
  }

  else if ((v14 & 4) != 0)
  {
    goto LABEL_99;
  }

  messageName = self->_messageName;
  if (messageName | *(v4 + 8))
  {
    v26 = [(NSString *)messageName isEqual:?];
  }

  else
  {
    v26 = 1;
  }

LABEL_100:

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_uploadTime;
    *(v5 + 116) |= 1u;
  }

  v7 = [(NSString *)self->_platform copyWithZone:a3];
  v8 = *(v6 + 72);
  *(v6 + 72) = v7;

  v9 = [(NSString *)self->_device copyWithZone:a3];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(NSString *)self->_build copyWithZone:a3];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v6 + 110) = self->_isInternal;
    *(v6 + 116) |= 0x40u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_5:
      if ((has & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 112) = self->_isSeed;
  *(v6 + 116) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_6:
    *(v6 + 109) = self->_isGm;
    *(v6 + 116) |= 0x20u;
  }

LABEL_7:
  v14 = [(NSString *)self->_country copyWithZone:a3];
  v15 = *(v6 + 32);
  *(v6 + 32) = v14;

  v16 = [(NSString *)self->_language copyWithZone:a3];
  v17 = *(v6 + 48);
  *(v6 + 48) = v16;

  v18 = self->_has;
  if ((v18 & 2) != 0)
  {
    *(v6 + 24) = self->_configVersion;
    *(v6 + 116) |= 2u;
    v18 = self->_has;
  }

  if ((v18 & 0x200) != 0)
  {
    *(v6 + 113) = self->_isTestingData;
    *(v6 + 116) |= 0x200u;
  }

  v19 = [(NSString *)self->_pseudoDeviceId copyWithZone:a3];
  v20 = *(v6 + 80);
  *(v6 + 80) = v19;

  v21 = self->_has;
  if ((v21 & 0x400) != 0)
  {
    *(v6 + 114) = self->_isTrialUpload;
    *(v6 + 116) |= 0x400u;
    v21 = self->_has;
    if ((v21 & 0x80) == 0)
    {
LABEL_13:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((v21 & 0x80) == 0)
  {
    goto LABEL_13;
  }

  *(v6 + 111) = self->_isInternalCarry;
  *(v6 + 116) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(v6 + 108) = self->_isConfigEnabled;
    *(v6 + 116) |= 0x10u;
  }

LABEL_15:
  v22 = [(NSString *)self->_messageGroup copyWithZone:a3];
  v23 = *(v6 + 56);
  *(v6 + 56) = v22;

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 104) = self->_uploadService;
    *(v6 + 116) |= 8u;
  }

  v24 = [(NSString *)self->_uploadIdentifier copyWithZone:a3];
  v25 = *(v6 + 96);
  *(v6 + 96) = v24;

  if ((*&self->_has & 4) != 0)
  {
    *(v6 + 88) = self->_typeId;
    *(v6 + 116) |= 4u;
  }

  v26 = [(NSString *)self->_messageName copyWithZone:a3];
  v27 = *(v6 + 64);
  *(v6 + 64) = v26;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_uploadTime;
    *(v4 + 58) |= 1u;
  }

  v8 = v4;
  if (self->_platform)
  {
    [v4 setPlatform:?];
    v4 = v8;
  }

  if (self->_device)
  {
    [v8 setDevice:?];
    v4 = v8;
  }

  if (self->_build)
  {
    [v8 setBuild:?];
    v4 = v8;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 110) = self->_isInternal;
    *(v4 + 58) |= 0x40u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 112) = self->_isSeed;
  *(v4 + 58) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v4 + 109) = self->_isGm;
    *(v4 + 58) |= 0x20u;
  }

LABEL_13:
  if (self->_country)
  {
    [v8 setCountry:?];
    v4 = v8;
  }

  if (self->_language)
  {
    [v8 setLanguage:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 2) != 0)
  {
    *(v4 + 6) = self->_configVersion;
    *(v4 + 58) |= 2u;
    v6 = self->_has;
  }

  if ((v6 & 0x200) != 0)
  {
    *(v4 + 113) = self->_isTestingData;
    *(v4 + 58) |= 0x200u;
  }

  if (self->_pseudoDeviceId)
  {
    [v8 setPseudoDeviceId:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x400) != 0)
  {
    *(v4 + 114) = self->_isTrialUpload;
    *(v4 + 58) |= 0x400u;
    v7 = self->_has;
    if ((v7 & 0x80) == 0)
    {
LABEL_25:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  *(v4 + 111) = self->_isInternalCarry;
  *(v4 + 58) |= 0x80u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_26:
    *(v4 + 108) = self->_isConfigEnabled;
    *(v4 + 58) |= 0x10u;
  }

LABEL_27:
  if (self->_messageGroup)
  {
    [v8 setMessageGroup:?];
    v4 = v8;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 26) = self->_uploadService;
    *(v4 + 58) |= 8u;
  }

  if (self->_uploadIdentifier)
  {
    [v8 setUploadIdentifier:?];
    v4 = v8;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 22) = self->_typeId;
    *(v4 + 58) |= 4u;
  }

  if (self->_messageName)
  {
    [v8 setMessageName:?];
    v4 = v8;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v19 = v4;
  if (*&self->_has)
  {
    uploadTime = self->_uploadTime;
    PBDataWriterWriteUint64Field();
    v4 = v19;
  }

  if (self->_platform)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_device)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    isInternal = self->_isInternal;
    PBDataWriterWriteBOOLField();
    v4 = v19;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  isSeed = self->_isSeed;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    isGm = self->_isGm;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

LABEL_13:
  if (self->_country)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v8 = self->_has;
  if ((v8 & 2) != 0)
  {
    configVersion = self->_configVersion;
    PBDataWriterWriteUint32Field();
    v4 = v19;
    v8 = self->_has;
  }

  if ((v8 & 0x200) != 0)
  {
    isTestingData = self->_isTestingData;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

  if (self->_pseudoDeviceId)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  v11 = self->_has;
  if ((v11 & 0x400) != 0)
  {
    isTrialUpload = self->_isTrialUpload;
    PBDataWriterWriteBOOLField();
    v4 = v19;
    v11 = self->_has;
    if ((v11 & 0x80) == 0)
    {
LABEL_25:
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v11 & 0x80) == 0)
  {
    goto LABEL_25;
  }

  isInternalCarry = self->_isInternalCarry;
  PBDataWriterWriteBOOLField();
  v4 = v19;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_26:
    isConfigEnabled = self->_isConfigEnabled;
    PBDataWriterWriteBOOLField();
    v4 = v19;
  }

LABEL_27:
  if (self->_messageGroup)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if ((*&self->_has & 8) != 0)
  {
    uploadService = self->_uploadService;
    PBDataWriterWriteInt32Field();
    v4 = v19;
  }

  if (self->_uploadIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }

  if ((*&self->_has & 4) != 0)
  {
    typeId = self->_typeId;
    PBDataWriterWriteUint32Field();
    v4 = v19;
  }

  if (self->_messageName)
  {
    PBDataWriterWriteStringField();
    v4 = v19;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uploadTime];
    [v3 setObject:v4 forKey:@"upload_time"];
  }

  platform = self->_platform;
  if (platform)
  {
    [v3 setObject:platform forKey:@"platform"];
  }

  device = self->_device;
  if (device)
  {
    [v3 setObject:device forKey:@"device"];
  }

  build = self->_build;
  if (build)
  {
    [v3 setObject:build forKey:@"build"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInternal];
    [v3 setObject:v20 forKey:@"is_internal"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_11:
      if ((has & 0x20) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSeed];
  [v3 setObject:v21 forKey:@"is_seed"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isGm];
    [v3 setObject:v9 forKey:@"is_gm"];
  }

LABEL_13:
  country = self->_country;
  if (country)
  {
    [v3 setObject:country forKey:@"country"];
  }

  language = self->_language;
  if (language)
  {
    [v3 setObject:language forKey:@"language"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_configVersion];
    [v3 setObject:v12 forKey:@"config_version"];
  }

  pseudoDeviceId = self->_pseudoDeviceId;
  if (pseudoDeviceId)
  {
    [v3 setObject:pseudoDeviceId forKey:@"pseudo_device_id"];
  }

  v14 = self->_has;
  if ((v14 & 0x80) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isInternalCarry];
    [v3 setObject:v15 forKey:@"is_internal_carry"];

    v14 = self->_has;
  }

  if ((v14 & 0x10) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_isConfigEnabled];
    [v3 setObject:v16 forKey:@"is_config_enabled"];
  }

  messageGroup = self->_messageGroup;
  if (messageGroup)
  {
    [v3 setObject:messageGroup forKey:@"message_group"];
  }

  if ((*&self->_has & 8) != 0)
  {
    uploadService = self->_uploadService;
    if (uploadService >= 4)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_uploadService];
    }

    else
    {
      v19 = off_1E86C2AE8[uploadService];
    }

    [v3 setObject:v19 forKey:@"upload_service"];
  }

  uploadIdentifier = self->_uploadIdentifier;
  if (uploadIdentifier)
  {
    [v3 setObject:uploadIdentifier forKey:@"upload_identifier"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_typeId];
    [v3 setObject:v23 forKey:@"type_id"];
  }

  messageName = self->_messageName;
  if (messageName)
  {
    [v3 setObject:messageName forKey:@"message_name"];
  }

  v25 = self->_has;
  if ((v25 & 0x200) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTestingData];
    [v3 setObject:v26 forKey:@"is_testing_data"];

    v25 = self->_has;
  }

  if ((v25 & 0x400) != 0)
  {
    v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_isTrialUpload];
    [v3 setObject:v27 forKey:@"is_trial_upload"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = COMAPPLEPETCOMMONPETMetadata;
  v4 = [(COMAPPLEPETCOMMONPETMetadata *)&v8 description];
  v5 = [(COMAPPLEPETCOMMONPETMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIsTrialUpload:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsTestingData:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTypeId:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (int)StringAsUploadService:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PET_UPLOAD_SERVICE_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"PET_UPLOAD_SERVICE_PARSEC"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PET_UPLOAD_SERVICE_LDCP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"PET_UPLOAD_SERVICE_PFA"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasUploadService:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (int)uploadService
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_uploadService;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIsConfigEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsInternalCarry:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasConfigVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIsGm:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsSeed:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsInternal:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

@end