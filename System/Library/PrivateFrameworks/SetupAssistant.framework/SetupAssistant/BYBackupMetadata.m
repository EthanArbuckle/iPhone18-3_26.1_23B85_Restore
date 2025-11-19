@interface BYBackupMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)expressSettings;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppAnalyticsOptIn:(BOOL)a3;
- (void)setHasAutoDownloadEnabled:(BOOL)a3;
- (void)setHasAutoUpdateEnabled:(BOOL)a3;
- (void)setHasDeviceAnalyticsOptIn:(BOOL)a3;
- (void)setHasDidSeeTrueTonePane:(BOOL)a3;
- (void)setHasFindMyiPhoneOptIn:(BOOL)a3;
- (void)setHasHomeButtonHapticKind:(BOOL)a3;
- (void)setHasLocationServicesOptIn:(BOOL)a3;
- (void)setHasMessagesContactsPresented:(BOOL)a3;
- (void)setHasScreenTimeEnabled:(BOOL)a3;
- (void)setHasSettingsContactsPresented:(BOOL)a3;
- (void)setHasSettingsDataUsagePresented:(BOOL)a3;
- (void)setHasSiriDataSharingOptIn:(BOOL)a3;
- (void)setHasSiriOptIn:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BYBackupMetadata

- (void)setHasHomeButtonHapticKind:(BOOL)a3
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

- (void)setHasDeviceAnalyticsOptIn:(BOOL)a3
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

- (void)setHasAppAnalyticsOptIn:(BOOL)a3
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

- (void)setHasLocationServicesOptIn:(BOOL)a3
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

- (void)setHasFindMyiPhoneOptIn:(BOOL)a3
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

- (void)setHasSiriOptIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasScreenTimeEnabled:(BOOL)a3
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

- (void)setHasAutoUpdateEnabled:(BOOL)a3
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

- (void)setHasDidSeeTrueTonePane:(BOOL)a3
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

- (void)setHasAutoDownloadEnabled:(BOOL)a3
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

- (void)setHasSiriDataSharingOptIn:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasMessagesContactsPresented:(BOOL)a3
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

- (void)setHasSettingsContactsPresented:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSettingsDataUsagePresented:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BYBackupMetadata;
  v4 = [(BYBackupMetadata *)&v8 description];
  v5 = [(BYBackupMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  nanoRegistryData = self->_nanoRegistryData;
  if (nanoRegistryData)
  {
    [v3 setObject:nanoRegistryData forKey:@"nanoRegistryData"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_homeButtonHapticKind];
    [v3 setObject:v20 forKey:@"homeButtonHapticKind"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_deviceAnalyticsOptIn];
  [v3 setObject:v21 forKey:@"deviceAnalyticsOptIn"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_appAnalyticsOptIn];
  [v3 setObject:v22 forKey:@"appAnalyticsOptIn"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_locationServicesOptIn];
  [v3 setObject:v23 forKey:@"locationServicesOptIn"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = [MEMORY[0x1E696AD98] numberWithBool:self->_findMyiPhoneOptIn];
  [v3 setObject:v24 forKey:@"findMyiPhoneOptIn"];

  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_siriOptIn];
  [v3 setObject:v25 forKey:@"siriOptIn"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_screenTimeEnabled];
  [v3 setObject:v26 forKey:@"screenTimeEnabled"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  v27 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoUpdateEnabled];
  [v3 setObject:v27 forKey:@"autoUpdateEnabled"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_45:
  v28 = [MEMORY[0x1E696AD98] numberWithBool:self->_didSeeTrueTonePane];
  [v3 setObject:v28 forKey:@"didSeeTrueTonePane"];

  if (*&self->_has)
  {
LABEL_13:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_userInterfaceStyleMode];
    [v3 setObject:v7 forKey:@"userInterfaceStyleMode"];
  }

LABEL_14:
  walletData = self->_walletData;
  if (walletData)
  {
    [v3 setObject:walletData forKey:@"walletData"];
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_autoDownloadEnabled];
    [v3 setObject:v10 forKey:@"autoDownloadEnabled"];

    v9 = self->_has;
  }

  if ((v9 & 0x2000) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_siriDataSharingOptIn];
    [v3 setObject:v11 forKey:@"siriDataSharingOptIn"];
  }

  universalData = self->_universalData;
  if (universalData)
  {
    [v3 setObject:universalData forKey:@"universalData"];
  }

  seedEnrollmentProgram = self->_seedEnrollmentProgram;
  if (seedEnrollmentProgram)
  {
    [v3 setObject:seedEnrollmentProgram forKey:@"seedEnrollmentProgram"];
  }

  seedEnrollmentAssetAudience = self->_seedEnrollmentAssetAudience;
  if (seedEnrollmentAssetAudience)
  {
    [v3 setObject:seedEnrollmentAssetAudience forKey:@"seedEnrollmentAssetAudience"];
  }

  v15 = self->_has;
  if ((v15 & 0x200) != 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_messagesContactsPresented];
    [v3 setObject:v29 forKey:@"messagesContactsPresented"];

    v15 = self->_has;
    if ((v15 & 0x800) == 0)
    {
LABEL_28:
      if ((v15 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_settingsContactsPresented];
  [v3 setObject:v30 forKey:@"settingsContactsPresented"];

  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_29:
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_settingsDataUsagePresented];
    [v3 setObject:v16 forKey:@"settingsDataUsagePresented"];
  }

LABEL_30:
  seedEnrollmentCatalogID = self->_seedEnrollmentCatalogID;
  if (seedEnrollmentCatalogID)
  {
    [v3 setObject:seedEnrollmentCatalogID forKey:@"seedEnrollmentCatalogID"];
  }

  actionButtonData = self->_actionButtonData;
  if (actionButtonData)
  {
    [v3 setObject:actionButtonData forKey:@"actionButtonData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  version = self->_version;
  v25 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_nanoRegistryData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    homeButtonHapticKind = self->_homeButtonHapticKind;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v8 = v25;
  if ((has & 4) != 0)
  {
    deviceAnalyticsOptIn = self->_deviceAnalyticsOptIn;
    PBDataWriterWriteUint32Field();
    v8 = v25;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  appAnalyticsOptIn = self->_appAnalyticsOptIn;
  PBDataWriterWriteUint32Field();
  v8 = v25;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  locationServicesOptIn = self->_locationServicesOptIn;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  findMyiPhoneOptIn = self->_findMyiPhoneOptIn;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_10:
    if ((has & 0x400) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  siriOptIn = self->_siriOptIn;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  screenTimeEnabled = self->_screenTimeEnabled;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  autoUpdateEnabled = self->_autoUpdateEnabled;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_45:
  didSeeTrueTonePane = self->_didSeeTrueTonePane;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  if (*&self->_has)
  {
LABEL_14:
    userInterfaceStyleMode = self->_userInterfaceStyleMode;
    PBDataWriterWriteInt64Field();
    v8 = v25;
  }

LABEL_15:
  if (self->_walletData)
  {
    PBDataWriterWriteDataField();
    v8 = v25;
  }

  v10 = self->_has;
  if ((v10 & 0x10) != 0)
  {
    autoDownloadEnabled = self->_autoDownloadEnabled;
    PBDataWriterWriteBOOLField();
    v8 = v25;
    v10 = self->_has;
  }

  if ((v10 & 0x2000) != 0)
  {
    siriDataSharingOptIn = self->_siriDataSharingOptIn;
    PBDataWriterWriteBOOLField();
    v8 = v25;
  }

  if (self->_universalData)
  {
    PBDataWriterWriteDataField();
    v8 = v25;
  }

  if (self->_seedEnrollmentProgram)
  {
    PBDataWriterWriteStringField();
    v8 = v25;
  }

  if (self->_seedEnrollmentAssetAudience)
  {
    PBDataWriterWriteStringField();
    v8 = v25;
  }

  v13 = self->_has;
  if ((v13 & 0x200) != 0)
  {
    messagesContactsPresented = self->_messagesContactsPresented;
    PBDataWriterWriteBOOLField();
    v8 = v25;
    v13 = self->_has;
    if ((v13 & 0x800) == 0)
    {
LABEL_29:
      if ((v13 & 0x1000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_29;
  }

  settingsContactsPresented = self->_settingsContactsPresented;
  PBDataWriterWriteBOOLField();
  v8 = v25;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_30:
    settingsDataUsagePresented = self->_settingsDataUsagePresented;
    PBDataWriterWriteBOOLField();
    v8 = v25;
  }

LABEL_31:
  if (self->_seedEnrollmentCatalogID)
  {
    PBDataWriterWriteStringField();
    v8 = v25;
  }

  if (self->_actionButtonData)
  {
    PBDataWriterWriteDataField();
    v8 = v25;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[20] = self->_version;
  v8 = v4;
  if (self->_nanoRegistryData)
  {
    [v4 setNanoRegistryData:?];
    v4 = v8;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[8] = self->_homeButtonHapticKind;
    *(v4 + 54) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_5;
  }

  v4[7] = self->_deviceAnalyticsOptIn;
  *(v4 + 54) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  v4[6] = self->_appAnalyticsOptIn;
  *(v4 + 54) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 100) = self->_locationServicesOptIn;
  *(v4 + 54) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 99) = self->_findMyiPhoneOptIn;
  *(v4 + 54) |= 0x80u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 106) = self->_siriOptIn;
  *(v4 + 54) |= 0x4000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 102) = self->_screenTimeEnabled;
  *(v4 + 54) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 97) = self->_autoUpdateEnabled;
  *(v4 + 54) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_45:
  *(v4 + 98) = self->_didSeeTrueTonePane;
  *(v4 + 54) |= 0x40u;
  if (*&self->_has)
  {
LABEL_13:
    *(v4 + 1) = self->_userInterfaceStyleMode;
    *(v4 + 54) |= 1u;
  }

LABEL_14:
  if (self->_walletData)
  {
    [v8 setWalletData:?];
    v4 = v8;
  }

  v6 = self->_has;
  if ((v6 & 0x10) != 0)
  {
    *(v4 + 96) = self->_autoDownloadEnabled;
    *(v4 + 54) |= 0x10u;
    v6 = self->_has;
  }

  if ((v6 & 0x2000) != 0)
  {
    *(v4 + 105) = self->_siriDataSharingOptIn;
    *(v4 + 54) |= 0x2000u;
  }

  if (self->_universalData)
  {
    [v8 setUniversalData:?];
    v4 = v8;
  }

  if (self->_seedEnrollmentProgram)
  {
    [v8 setSeedEnrollmentProgram:?];
    v4 = v8;
  }

  if (self->_seedEnrollmentAssetAudience)
  {
    [v8 setSeedEnrollmentAssetAudience:?];
    v4 = v8;
  }

  v7 = self->_has;
  if ((v7 & 0x200) != 0)
  {
    *(v4 + 101) = self->_messagesContactsPresented;
    *(v4 + 54) |= 0x200u;
    v7 = self->_has;
    if ((v7 & 0x800) == 0)
    {
LABEL_28:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_28;
  }

  *(v4 + 103) = self->_settingsContactsPresented;
  *(v4 + 54) |= 0x800u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_29:
    *(v4 + 104) = self->_settingsDataUsagePresented;
    *(v4 + 54) |= 0x1000u;
  }

LABEL_30:
  if (self->_seedEnrollmentCatalogID)
  {
    [v8 setSeedEnrollmentCatalogID:?];
    v4 = v8;
  }

  if (self->_actionButtonData)
  {
    [v8 setActionButtonData:?];
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 80) = self->_version;
  v6 = [(NSData *)self->_nanoRegistryData copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_homeButtonHapticKind;
    *(v5 + 108) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 28) = self->_deviceAnalyticsOptIn;
  *(v5 + 108) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 24) = self->_appAnalyticsOptIn;
  *(v5 + 108) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 100) = self->_locationServicesOptIn;
  *(v5 + 108) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 99) = self->_findMyiPhoneOptIn;
  *(v5 + 108) |= 0x80u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 106) = self->_siriOptIn;
  *(v5 + 108) |= 0x4000u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 102) = self->_screenTimeEnabled;
  *(v5 + 108) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 97) = self->_autoUpdateEnabled;
  *(v5 + 108) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_29:
  *(v5 + 98) = self->_didSeeTrueTonePane;
  *(v5 + 108) |= 0x40u;
  if (*&self->_has)
  {
LABEL_11:
    *(v5 + 8) = self->_userInterfaceStyleMode;
    *(v5 + 108) |= 1u;
  }

LABEL_12:
  v9 = [(NSData *)self->_walletData copyWithZone:a3];
  v10 = *(v5 + 88);
  *(v5 + 88) = v9;

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    *(v5 + 96) = self->_autoDownloadEnabled;
    *(v5 + 108) |= 0x10u;
    v11 = self->_has;
  }

  if ((v11 & 0x2000) != 0)
  {
    *(v5 + 105) = self->_siriDataSharingOptIn;
    *(v5 + 108) |= 0x2000u;
  }

  v12 = [(NSData *)self->_universalData copyWithZone:a3];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_seedEnrollmentProgram copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(NSString *)self->_seedEnrollmentAssetAudience copyWithZone:a3];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = self->_has;
  if ((v18 & 0x200) == 0)
  {
    if ((*&self->_has & 0x800) == 0)
    {
      goto LABEL_18;
    }

LABEL_32:
    *(v5 + 103) = self->_settingsContactsPresented;
    *(v5 + 108) |= 0x800u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *(v5 + 101) = self->_messagesContactsPresented;
  *(v5 + 108) |= 0x200u;
  v18 = self->_has;
  if ((v18 & 0x800) != 0)
  {
    goto LABEL_32;
  }

LABEL_18:
  if ((v18 & 0x1000) != 0)
  {
LABEL_19:
    *(v5 + 104) = self->_settingsDataUsagePresented;
    *(v5 + 108) |= 0x1000u;
  }

LABEL_20:
  v19 = [(NSString *)self->_seedEnrollmentCatalogID copyWithZone:a3];
  v20 = *(v5 + 56);
  *(v5 + 56) = v19;

  v21 = [(NSData *)self->_actionButtonData copyWithZone:a3];
  v22 = *(v5 + 16);
  *(v5 + 16) = v21;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_121;
  }

  if (self->_version != *(v4 + 20))
  {
    goto LABEL_121;
  }

  nanoRegistryData = self->_nanoRegistryData;
  if (nanoRegistryData | *(v4 + 5))
  {
    if (![(NSData *)nanoRegistryData isEqual:?])
    {
      goto LABEL_121;
    }
  }

  has = self->_has;
  v7 = *(v4 + 54);
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_homeButtonHapticKind != *(v4 + 8))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_deviceAnalyticsOptIn != *(v4 + 7))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_appAnalyticsOptIn != *(v4 + 6))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 54) & 0x100) == 0)
    {
      goto LABEL_121;
    }

    v8 = *(v4 + 100);
    if (self->_locationServicesOptIn)
    {
      if ((*(v4 + 100) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 100))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x100) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_121;
    }

    v9 = *(v4 + 99);
    if (self->_findMyiPhoneOptIn)
    {
      if ((*(v4 + 99) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 99))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(v4 + 54) & 0x4000) == 0)
    {
      goto LABEL_121;
    }

    v10 = *(v4 + 106);
    if (self->_siriOptIn)
    {
      if ((*(v4 + 106) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 106))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x4000) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(v4 + 54) & 0x400) == 0)
    {
      goto LABEL_121;
    }

    v11 = *(v4 + 102);
    if (self->_screenTimeEnabled)
    {
      if ((*(v4 + 102) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 102))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x400) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_121;
    }

    v12 = *(v4 + 97);
    if (self->_autoUpdateEnabled)
    {
      if ((*(v4 + 97) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 97))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_121;
    }

    v13 = *(v4 + 98);
    if (self->_didSeeTrueTonePane)
    {
      if ((*(v4 + 98) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 98))
    {
      goto LABEL_121;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_121;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_userInterfaceStyleMode != *(v4 + 1))
    {
      goto LABEL_121;
    }
  }

  else if (v7)
  {
    goto LABEL_121;
  }

  walletData = self->_walletData;
  if (walletData | *(v4 + 11))
  {
    if (![(NSData *)walletData isEqual:?])
    {
      goto LABEL_121;
    }

    has = self->_has;
  }

  v15 = *(v4 + 54);
  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_121;
    }

    v20 = *(v4 + 96);
    if (self->_autoDownloadEnabled)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_121;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_121;
  }

  if ((has & 0x2000) != 0)
  {
    if ((*(v4 + 54) & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    v21 = *(v4 + 105);
    if (self->_siriDataSharingOptIn)
    {
      if ((*(v4 + 105) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 105))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x2000) != 0)
  {
    goto LABEL_121;
  }

  universalData = self->_universalData;
  if (universalData | *(v4 + 9) && ![(NSData *)universalData isEqual:?])
  {
    goto LABEL_121;
  }

  seedEnrollmentProgram = self->_seedEnrollmentProgram;
  if (seedEnrollmentProgram | *(v4 + 8))
  {
    if (![(NSString *)seedEnrollmentProgram isEqual:?])
    {
      goto LABEL_121;
    }
  }

  seedEnrollmentAssetAudience = self->_seedEnrollmentAssetAudience;
  if (seedEnrollmentAssetAudience | *(v4 + 6))
  {
    if (![(NSString *)seedEnrollmentAssetAudience isEqual:?])
    {
      goto LABEL_121;
    }
  }

  v19 = *(v4 + 54);
  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 54) & 0x200) == 0)
    {
      goto LABEL_121;
    }

    v22 = *(v4 + 101);
    if (self->_messagesContactsPresented)
    {
      if ((*(v4 + 101) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 101))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x200) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 54) & 0x800) == 0)
    {
      goto LABEL_121;
    }

    v23 = *(v4 + 103);
    if (self->_settingsContactsPresented)
    {
      if ((*(v4 + 103) & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else if (*(v4 + 103))
    {
      goto LABEL_121;
    }
  }

  else if ((*(v4 + 54) & 0x800) != 0)
  {
    goto LABEL_121;
  }

  if ((*&self->_has & 0x1000) == 0)
  {
    if ((*(v4 + 54) & 0x1000) == 0)
    {
      goto LABEL_116;
    }

LABEL_121:
    v26 = 0;
    goto LABEL_122;
  }

  if ((*(v4 + 54) & 0x1000) == 0)
  {
    goto LABEL_121;
  }

  v28 = *(v4 + 104);
  if (self->_settingsDataUsagePresented)
  {
    if ((*(v4 + 104) & 1) == 0)
    {
      goto LABEL_121;
    }
  }

  else if (*(v4 + 104))
  {
    goto LABEL_121;
  }

LABEL_116:
  seedEnrollmentCatalogID = self->_seedEnrollmentCatalogID;
  if (seedEnrollmentCatalogID | *(v4 + 7) && ![(NSString *)seedEnrollmentCatalogID isEqual:?])
  {
    goto LABEL_121;
  }

  actionButtonData = self->_actionButtonData;
  if (actionButtonData | *(v4 + 2))
  {
    v26 = [(NSData *)actionButtonData isEqual:?];
  }

  else
  {
    v26 = 1;
  }

LABEL_122:

  return v26;
}

- (unint64_t)hash
{
  version = self->_version;
  v26 = [(NSData *)self->_nanoRegistryData hash];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v25 = 2654435761 * self->_homeButtonHapticKind;
    if ((has & 4) != 0)
    {
LABEL_3:
      v24 = 2654435761 * self->_deviceAnalyticsOptIn;
      if ((has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v25 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
  if ((has & 2) != 0)
  {
LABEL_4:
    v23 = 2654435761 * self->_appAnalyticsOptIn;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v23 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v22 = 2654435761 * self->_locationServicesOptIn;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v22 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v21 = 2654435761 * self->_findMyiPhoneOptIn;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v21 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_7:
    v20 = 2654435761 * self->_siriOptIn;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v20 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v19 = 2654435761 * self->_screenTimeEnabled;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v19 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v17 = 2654435761 * self->_autoUpdateEnabled;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v4 = 0;
    if (has)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v17 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v4 = 2654435761 * self->_didSeeTrueTonePane;
  if (has)
  {
LABEL_11:
    v5 = 2654435761 * self->_userInterfaceStyleMode;
    goto LABEL_22;
  }

LABEL_21:
  v5 = 0;
LABEL_22:
  v6 = [(NSData *)self->_walletData hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v7 = 2654435761 * self->_autoDownloadEnabled;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_24:
      v8 = 2654435761 * self->_siriDataSharingOptIn;
      goto LABEL_27;
    }
  }

  v8 = 0;
LABEL_27:
  v9 = [(NSData *)self->_universalData hash];
  v10 = [(NSString *)self->_seedEnrollmentProgram hash];
  v11 = [(NSString *)self->_seedEnrollmentAssetAudience hash];
  if ((*&self->_has & 0x200) == 0)
  {
    v12 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v13 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_30;
    }

LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

  v12 = 2654435761 * self->_messagesContactsPresented;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v13 = 2654435761 * self->_settingsContactsPresented;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  v14 = 2654435761 * self->_settingsDataUsagePresented;
LABEL_34:
  v15 = v26 ^ v25 ^ v24 ^ v23 ^ (2654435761 * version) ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ [(NSString *)self->_seedEnrollmentCatalogID hash];
  return v15 ^ [(NSData *)self->_actionButtonData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = *(v4 + 20);
  v8 = v4;
  if (*(v4 + 5))
  {
    [(BYBackupMetadata *)self setNanoRegistryData:?];
    v4 = v8;
  }

  v5 = *(v4 + 54);
  if ((v5 & 8) != 0)
  {
    self->_homeButtonHapticKind = *(v4 + 8);
    *&self->_has |= 8u;
    v5 = *(v4 + 54);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_deviceAnalyticsOptIn = *(v4 + 7);
  *&self->_has |= 4u;
  v5 = *(v4 + 54);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_appAnalyticsOptIn = *(v4 + 6);
  *&self->_has |= 2u;
  v5 = *(v4 + 54);
  if ((v5 & 0x100) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_locationServicesOptIn = *(v4 + 100);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 54);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_findMyiPhoneOptIn = *(v4 + 99);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 54);
  if ((v5 & 0x4000) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_siriOptIn = *(v4 + 106);
  *&self->_has |= 0x4000u;
  v5 = *(v4 + 54);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_screenTimeEnabled = *(v4 + 102);
  *&self->_has |= 0x400u;
  v5 = *(v4 + 54);
  if ((v5 & 0x20) == 0)
  {
LABEL_11:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_autoUpdateEnabled = *(v4 + 97);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 54);
  if ((v5 & 0x40) == 0)
  {
LABEL_12:
    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_45:
  self->_didSeeTrueTonePane = *(v4 + 98);
  *&self->_has |= 0x40u;
  if (*(v4 + 54))
  {
LABEL_13:
    self->_userInterfaceStyleMode = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_14:
  if (*(v4 + 11))
  {
    [(BYBackupMetadata *)self setWalletData:?];
    v4 = v8;
  }

  v6 = *(v4 + 54);
  if ((v6 & 0x10) != 0)
  {
    self->_autoDownloadEnabled = *(v4 + 96);
    *&self->_has |= 0x10u;
    v6 = *(v4 + 54);
  }

  if ((v6 & 0x2000) != 0)
  {
    self->_siriDataSharingOptIn = *(v4 + 105);
    *&self->_has |= 0x2000u;
  }

  if (*(v4 + 9))
  {
    [(BYBackupMetadata *)self setUniversalData:?];
    v4 = v8;
  }

  if (*(v4 + 8))
  {
    [(BYBackupMetadata *)self setSeedEnrollmentProgram:?];
    v4 = v8;
  }

  if (*(v4 + 6))
  {
    [(BYBackupMetadata *)self setSeedEnrollmentAssetAudience:?];
    v4 = v8;
  }

  v7 = *(v4 + 54);
  if ((v7 & 0x200) != 0)
  {
    self->_messagesContactsPresented = *(v4 + 101);
    *&self->_has |= 0x200u;
    v7 = *(v4 + 54);
    if ((v7 & 0x800) == 0)
    {
LABEL_28:
      if ((v7 & 0x1000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else if ((*(v4 + 54) & 0x800) == 0)
  {
    goto LABEL_28;
  }

  self->_settingsContactsPresented = *(v4 + 103);
  *&self->_has |= 0x800u;
  if ((*(v4 + 54) & 0x1000) != 0)
  {
LABEL_29:
    self->_settingsDataUsagePresented = *(v4 + 104);
    *&self->_has |= 0x1000u;
  }

LABEL_30:
  if (*(v4 + 7))
  {
    [(BYBackupMetadata *)self setSeedEnrollmentCatalogID:?];
    v4 = v8;
  }

  if (*(v4 + 2))
  {
    [(BYBackupMetadata *)self setActionButtonData:?];
    v4 = v8;
  }
}

- (id)expressSettings
{
  v3 = objc_alloc_init(MEMORY[0x1E69CA9D8]);
  v4 = objc_alloc(MEMORY[0x1E69C65B8]);
  v5 = [(BYBackupMetadata *)self universalData];
  v6 = [v4 initWithData:v5];

  if (SASExpressSettingsReadFrom())
  {
    v7 = v3;
  }

  else
  {
    v8 = _BYLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BYBackupMetadata(SetupAssistantSupport) *)v8 expressSettings];
    }

    v7 = 0;
  }

  return v7;
}

@end