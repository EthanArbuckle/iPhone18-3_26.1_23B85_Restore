@interface SASExpressSettings
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAppearanceMode:(id)mode;
- (int)StringAsDisplayZoomOption:(id)option;
- (int)StringAsIPadMultitaskingMode:(id)mode;
- (int)appearanceMode;
- (int)displayZoomOption;
- (int)iPadMultitaskingMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAppAnalyticsOptIn:(BOOL)in;
- (void)setHasDeviceAnalyticsOptIn:(BOOL)in;
- (void)setHasDisplayZoomOption:(BOOL)option;
- (void)setHasFileVaultEnabled:(BOOL)enabled;
- (void)setHasFindMyOptIn:(BOOL)in;
- (void)setHasIPadMultitaskingMode:(BOOL)mode;
- (void)setHasLocationServicesOptIn:(BOOL)in;
- (void)setHasScreenTimeEnabled:(BOOL)enabled;
- (void)setHasSiriDataSharingOptIn:(BOOL)in;
- (void)setHasSiriOptIn:(BOOL)in;
- (void)setHasSiriVoiceTriggerEnabled:(BOOL)enabled;
- (void)setHasSoftwareUpdateAutoDownloadEnabled:(BOOL)enabled;
- (void)setHasSoftwareUpdateAutoUpdateEnabled:(BOOL)enabled;
- (void)setHasStolenDeviceProtectionEnabled:(BOOL)enabled;
- (void)setHasStolenDeviceProtectionStrictModeEnabled:(BOOL)enabled;
- (void)setHasUnlockWithWatchEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation SASExpressSettings

- (void)setHasDeviceAnalyticsOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasAppAnalyticsOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasLocationServicesOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasFindMyOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasSiriOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasScreenTimeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasSoftwareUpdateAutoUpdateEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasSoftwareUpdateAutoDownloadEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasSiriDataSharingOptIn:(BOOL)in
{
  if (in)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (int)appearanceMode
{
  if (*&self->_has)
  {
    return self->_appearanceMode;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsAppearanceMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"LIGHT"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"DARK"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"AUTO"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)displayZoomOption
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_displayZoomOption;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDisplayZoomOption:(BOOL)option
{
  if (option)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (int)StringAsDisplayZoomOption:(id)option
{
  optionCopy = option;
  v4 = 1;
  if (([optionCopy isEqualToString:@"STANDARD"] & 1) == 0)
  {
    if ([optionCopy isEqualToString:@"ZOOMED"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasUnlockWithWatchEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasFileVaultEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasSiriVoiceTriggerEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasStolenDeviceProtectionEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasStolenDeviceProtectionStrictModeEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (int)iPadMultitaskingMode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_iPadMultitaskingMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIPadMultitaskingMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (int)StringAsIPadMultitaskingMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Fullscreen"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"AppsAndFullScreen"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SASExpressSettings;
  v4 = [(SASExpressSettings *)&v8 description];
  dictionaryRepresentation = [(SASExpressSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  watchMigrationData = self->_watchMigrationData;
  if (watchMigrationData)
  {
    [dictionary setObject:watchMigrationData forKey:@"watchMigrationData"];
  }

  walletData = self->_walletData;
  if (walletData)
  {
    [dictionary setObject:walletData forKey:@"walletData"];
  }

  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_deviceAnalyticsOptIn];
    [dictionary setObject:v8 forKey:@"deviceAnalyticsOptIn"];

    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_18;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_7;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_appAnalyticsOptIn];
  [dictionary setObject:v9 forKey:@"appAnalyticsOptIn"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationServicesOptIn];
  [dictionary setObject:v10 forKey:@"locationServicesOptIn"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_findMyOptIn];
  [dictionary setObject:v11 forKey:@"findMyOptIn"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_siriOptIn];
  [dictionary setObject:v12 forKey:@"siriOptIn"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_screenTimeEnabled];
  [dictionary setObject:v13 forKey:@"screenTimeEnabled"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_softwareUpdateAutoUpdateEnabled];
  [dictionary setObject:v14 forKey:@"softwareUpdateAutoUpdateEnabled"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_softwareUpdateAutoDownloadEnabled];
  [dictionary setObject:v15 forKey:@"softwareUpdateAutoDownloadEnabled"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_24:
  v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_siriDataSharingOptIn];
  [dictionary setObject:v16 forKey:@"siriDataSharingOptIn"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v17 = self->_appearanceMode - 1;
  if (v17 >= 3)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_appearanceMode];
  }

  else
  {
    v18 = *(&off_278846288 + v17);
  }

  [dictionary setObject:v18 forKey:@"appearanceMode"];

LABEL_29:
  deviceAnalyticsPrivacyBundle = self->_deviceAnalyticsPrivacyBundle;
  if (deviceAnalyticsPrivacyBundle)
  {
    dictionaryRepresentation = [(SASExpressSettingsPrivacyBundle *)deviceAnalyticsPrivacyBundle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"deviceAnalyticsPrivacyBundle"];
  }

  appAnalyticsPrivacyBundle = self->_appAnalyticsPrivacyBundle;
  if (appAnalyticsPrivacyBundle)
  {
    dictionaryRepresentation2 = [(SASExpressSettingsPrivacyBundle *)appAnalyticsPrivacyBundle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"appAnalyticsPrivacyBundle"];
  }

  locationServicesPrivacyBundle = self->_locationServicesPrivacyBundle;
  if (locationServicesPrivacyBundle)
  {
    dictionaryRepresentation3 = [(SASExpressSettingsPrivacyBundle *)locationServicesPrivacyBundle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"locationServicesPrivacyBundle"];
  }

  findMyPrivacyBundle = self->_findMyPrivacyBundle;
  if (findMyPrivacyBundle)
  {
    dictionaryRepresentation4 = [(SASExpressSettingsPrivacyBundle *)findMyPrivacyBundle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"findMyPrivacyBundle"];
  }

  siriPrivacyBundle = self->_siriPrivacyBundle;
  if (siriPrivacyBundle)
  {
    dictionaryRepresentation5 = [(SASExpressSettingsPrivacyBundle *)siriPrivacyBundle dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"siriPrivacyBundle"];
  }

  productType = self->_productType;
  if (productType)
  {
    [dictionary setObject:productType forKey:@"productType"];
  }

  deviceClass = self->_deviceClass;
  if (deviceClass)
  {
    [dictionary setObject:deviceClass forKey:@"deviceClass"];
  }

  v31 = self->_has;
  if ((*&v31 & 2) != 0)
  {
    displayZoomOption = self->_displayZoomOption;
    if (displayZoomOption == 1)
    {
      v36 = @"STANDARD";
    }

    else if (displayZoomOption == 2)
    {
      v36 = @"ZOOMED";
    }

    else
    {
      v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_displayZoomOption];
    }

    [dictionary setObject:v36 forKey:@"displayZoomOption"];

    v31 = self->_has;
    if ((*&v31 & 0x10000) == 0)
    {
LABEL_45:
      if ((*&v31 & 0x20) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v31 & 0x10000) == 0)
  {
    goto LABEL_45;
  }

  v41 = [MEMORY[0x277CCABB0] numberWithBool:self->_unlockWithWatchEnabled];
  [dictionary setObject:v41 forKey:@"unlockWithWatchEnabled"];

  v31 = self->_has;
  if ((*&v31 & 0x20) == 0)
  {
LABEL_46:
    if ((*&v31 & 0x800) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_67:
  v42 = [MEMORY[0x277CCABB0] numberWithBool:self->_fileVaultEnabled];
  [dictionary setObject:v42 forKey:@"fileVaultEnabled"];

  if ((*&self->_has & 0x800) != 0)
  {
LABEL_47:
    v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_siriVoiceTriggerEnabled];
    [dictionary setObject:v32 forKey:@"siriVoiceTriggerEnabled"];
  }

LABEL_48:
  productVersion = self->_productVersion;
  if (productVersion)
  {
    [dictionary setObject:productVersion forKey:@"productVersion"];
  }

  v34 = self->_has;
  if ((*&v34 & 0x4000) == 0)
  {
    if ((*&v34 & 0x8000) == 0)
    {
      goto LABEL_52;
    }

LABEL_58:
    v38 = [MEMORY[0x277CCABB0] numberWithBool:self->_stolenDeviceProtectionStrictModeEnabled];
    [dictionary setObject:v38 forKey:@"stolenDeviceProtectionStrictModeEnabled"];

    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_71;
    }

LABEL_59:
    iPadMultitaskingMode = self->_iPadMultitaskingMode;
    if (iPadMultitaskingMode)
    {
      if (iPadMultitaskingMode == 1)
      {
        v40 = @"AppsAndFullScreen";
      }

      else
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_iPadMultitaskingMode];
      }
    }

    else
    {
      v40 = @"Fullscreen";
    }

    [dictionary setObject:v40 forKey:@"iPadMultitaskingMode"];

    goto LABEL_71;
  }

  v37 = [MEMORY[0x277CCABB0] numberWithBool:self->_stolenDeviceProtectionEnabled];
  [dictionary setObject:v37 forKey:@"stolenDeviceProtectionEnabled"];

  v34 = self->_has;
  if ((*&v34 & 0x8000) != 0)
  {
    goto LABEL_58;
  }

LABEL_52:
  if ((*&v34 & 4) != 0)
  {
    goto LABEL_59;
  }

LABEL_71:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  version = self->_version;
  v27 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_watchMigrationData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_walletData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    deviceAnalyticsOptIn = self->_deviceAnalyticsOptIn;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_47;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_7;
  }

  appAnalyticsOptIn = self->_appAnalyticsOptIn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  locationServicesOptIn = self->_locationServicesOptIn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  findMyOptIn = self->_findMyOptIn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  siriOptIn = self->_siriOptIn;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  screenTimeEnabled = self->_screenTimeEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  softwareUpdateAutoUpdateEnabled = self->_softwareUpdateAutoUpdateEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  softwareUpdateAutoDownloadEnabled = self->_softwareUpdateAutoDownloadEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_53:
  siriDataSharingOptIn = self->_siriDataSharingOptIn;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
LABEL_15:
    appearanceMode = self->_appearanceMode;
    PBDataWriterWriteInt32Field();
  }

LABEL_16:
  if (self->_deviceAnalyticsPrivacyBundle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appAnalyticsPrivacyBundle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_locationServicesPrivacyBundle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_findMyPrivacyBundle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_siriPrivacyBundle)
  {
    PBDataWriterWriteSubmessage();
  }

  if (!self->_productType)
  {
    [SASExpressSettings writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_deviceClass)
  {
    [SASExpressSettings writeTo:];
  }

  PBDataWriterWriteStringField();
  v8 = self->_has;
  if ((*&v8 & 2) != 0)
  {
    displayZoomOption = self->_displayZoomOption;
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
  }

  if ((*&v8 & 0x10000) != 0)
  {
    unlockWithWatchEnabled = self->_unlockWithWatchEnabled;
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
  }

  v11 = v27;
  if ((*&v8 & 0x20) != 0)
  {
    fileVaultEnabled = self->_fileVaultEnabled;
    PBDataWriterWriteBOOLField();
    v11 = v27;
    v8 = self->_has;
  }

  if ((*&v8 & 0x800) != 0)
  {
    siriVoiceTriggerEnabled = self->_siriVoiceTriggerEnabled;
    PBDataWriterWriteBOOLField();
    v11 = v27;
  }

  if (self->_productVersion)
  {
    PBDataWriterWriteStringField();
    v11 = v27;
  }

  v14 = self->_has;
  if ((*&v14 & 0x4000) != 0)
  {
    stolenDeviceProtectionEnabled = self->_stolenDeviceProtectionEnabled;
    PBDataWriterWriteBOOLField();
    v11 = v27;
    v14 = self->_has;
    if ((*&v14 & 0x8000) == 0)
    {
LABEL_40:
      if ((*&v14 & 4) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v14 & 0x8000) == 0)
  {
    goto LABEL_40;
  }

  stolenDeviceProtectionStrictModeEnabled = self->_stolenDeviceProtectionStrictModeEnabled;
  PBDataWriterWriteBOOLField();
  v11 = v27;
  if ((*&self->_has & 4) != 0)
  {
LABEL_41:
    iPadMultitaskingMode = self->_iPadMultitaskingMode;
    PBDataWriterWriteInt32Field();
    v11 = v27;
  }

LABEL_42:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[24] = self->_version;
  v9 = toCopy;
  if (self->_watchMigrationData)
  {
    [toCopy setWatchMigrationData:?];
    toCopy = v9;
  }

  if (self->_walletData)
  {
    [v9 setWalletData:?];
    toCopy = v9;
  }

  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(toCopy + 121) = self->_deviceAnalyticsOptIn;
    toCopy[34] |= 0x10u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_7:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_42;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 120) = self->_appAnalyticsOptIn;
  toCopy[34] |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_8:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 124) = self->_locationServicesOptIn;
  toCopy[34] |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_9:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 123) = self->_findMyOptIn;
  toCopy[34] |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_10:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 127) = self->_siriOptIn;
  toCopy[34] |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 125) = self->_screenTimeEnabled;
  toCopy[34] |= 0x100u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 130) = self->_softwareUpdateAutoUpdateEnabled;
  toCopy[34] |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 129) = self->_softwareUpdateAutoDownloadEnabled;
  toCopy[34] |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_48:
  *(toCopy + 126) = self->_siriDataSharingOptIn;
  toCopy[34] |= 0x200u;
  if (*&self->_has)
  {
LABEL_15:
    toCopy[4] = self->_appearanceMode;
    toCopy[34] |= 1u;
  }

LABEL_16:
  if (self->_deviceAnalyticsPrivacyBundle)
  {
    [v9 setDeviceAnalyticsPrivacyBundle:?];
  }

  if (self->_appAnalyticsPrivacyBundle)
  {
    [v9 setAppAnalyticsPrivacyBundle:?];
  }

  if (self->_locationServicesPrivacyBundle)
  {
    [v9 setLocationServicesPrivacyBundle:?];
  }

  if (self->_findMyPrivacyBundle)
  {
    [v9 setFindMyPrivacyBundle:?];
  }

  if (self->_siriPrivacyBundle)
  {
    [v9 setSiriPrivacyBundle:?];
  }

  [v9 setProductType:self->_productType];
  [v9 setDeviceClass:self->_deviceClass];
  v6 = v9;
  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    v9[10] = self->_displayZoomOption;
    v9[34] |= 2u;
    v7 = self->_has;
    if ((*&v7 & 0x10000) == 0)
    {
LABEL_28:
      if ((*&v7 & 0x20) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_52;
    }
  }

  else if ((*&v7 & 0x10000) == 0)
  {
    goto LABEL_28;
  }

  *(v9 + 133) = self->_unlockWithWatchEnabled;
  v9[34] |= 0x10000u;
  v7 = self->_has;
  if ((*&v7 & 0x20) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_52:
  *(v9 + 122) = self->_fileVaultEnabled;
  v9[34] |= 0x20u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_30:
    *(v9 + 128) = self->_siriVoiceTriggerEnabled;
    v9[34] |= 0x800u;
  }

LABEL_31:
  if (self->_productVersion)
  {
    [v9 setProductVersion:?];
    v6 = v9;
  }

  v8 = self->_has;
  if ((*&v8 & 0x4000) != 0)
  {
    v6[131] = self->_stolenDeviceProtectionEnabled;
    *(v6 + 34) |= 0x4000u;
    v8 = self->_has;
    if ((*&v8 & 0x8000) == 0)
    {
LABEL_35:
      if ((*&v8 & 4) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }
  }

  else if ((*&v8 & 0x8000) == 0)
  {
    goto LABEL_35;
  }

  v6[132] = self->_stolenDeviceProtectionStrictModeEnabled;
  *(v6 + 34) |= 0x8000u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_36:
    *(v6 + 14) = self->_iPadMultitaskingMode;
    *(v6 + 34) |= 4u;
  }

LABEL_37:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 96) = self->_version;
  v6 = [(NSData *)self->_watchMigrationData copyWithZone:zone];
  v7 = *(v5 + 112);
  *(v5 + 112) = v6;

  v8 = [(NSData *)self->_walletData copyWithZone:zone];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    *(v5 + 121) = self->_deviceAnalyticsOptIn;
    *(v5 + 136) |= 0x10u;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_3:
      if ((*&has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 120) = self->_appAnalyticsOptIn;
  *(v5 + 136) |= 8u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 124) = self->_locationServicesOptIn;
  *(v5 + 136) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 123) = self->_findMyOptIn;
  *(v5 + 136) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_6:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 127) = self->_siriOptIn;
  *(v5 + 136) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_7:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 125) = self->_screenTimeEnabled;
  *(v5 + 136) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_8:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 130) = self->_softwareUpdateAutoUpdateEnabled;
  *(v5 + 136) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 129) = self->_softwareUpdateAutoDownloadEnabled;
  *(v5 + 136) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_10:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_30:
  *(v5 + 126) = self->_siriDataSharingOptIn;
  *(v5 + 136) |= 0x200u;
  if (*&self->_has)
  {
LABEL_11:
    *(v5 + 16) = self->_appearanceMode;
    *(v5 + 136) |= 1u;
  }

LABEL_12:
  v11 = [(SASExpressSettingsPrivacyBundle *)self->_deviceAnalyticsPrivacyBundle copyWithZone:zone];
  v12 = *(v5 + 24);
  *(v5 + 24) = v11;

  v13 = [(SASExpressSettingsPrivacyBundle *)self->_appAnalyticsPrivacyBundle copyWithZone:zone];
  v14 = *(v5 + 8);
  *(v5 + 8) = v13;

  v15 = [(SASExpressSettingsPrivacyBundle *)self->_locationServicesPrivacyBundle copyWithZone:zone];
  v16 = *(v5 + 64);
  *(v5 + 64) = v15;

  v17 = [(SASExpressSettingsPrivacyBundle *)self->_findMyPrivacyBundle copyWithZone:zone];
  v18 = *(v5 + 48);
  *(v5 + 48) = v17;

  v19 = [(SASExpressSettingsPrivacyBundle *)self->_siriPrivacyBundle copyWithZone:zone];
  v20 = *(v5 + 88);
  *(v5 + 88) = v19;

  v21 = [(NSString *)self->_productType copyWithZone:zone];
  v22 = *(v5 + 72);
  *(v5 + 72) = v21;

  v23 = [(NSString *)self->_deviceClass copyWithZone:zone];
  v24 = *(v5 + 32);
  *(v5 + 32) = v23;

  v25 = self->_has;
  if ((*&v25 & 2) != 0)
  {
    *(v5 + 40) = self->_displayZoomOption;
    *(v5 + 136) |= 2u;
    v25 = self->_has;
    if ((*&v25 & 0x10000) == 0)
    {
LABEL_14:
      if ((*&v25 & 0x20) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

  else if ((*&v25 & 0x10000) == 0)
  {
    goto LABEL_14;
  }

  *(v5 + 133) = self->_unlockWithWatchEnabled;
  *(v5 + 136) |= 0x10000u;
  v25 = self->_has;
  if ((*&v25 & 0x20) == 0)
  {
LABEL_15:
    if ((*&v25 & 0x800) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_34:
  *(v5 + 122) = self->_fileVaultEnabled;
  *(v5 + 136) |= 0x20u;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_16:
    *(v5 + 128) = self->_siriVoiceTriggerEnabled;
    *(v5 + 136) |= 0x800u;
  }

LABEL_17:
  v26 = [(NSString *)self->_productVersion copyWithZone:zone];
  v27 = *(v5 + 80);
  *(v5 + 80) = v26;

  v28 = self->_has;
  if ((*&v28 & 0x4000) == 0)
  {
    if ((*&v28 & 0x8000) == 0)
    {
      goto LABEL_19;
    }

LABEL_37:
    *(v5 + 132) = self->_stolenDeviceProtectionStrictModeEnabled;
    *(v5 + 136) |= 0x8000u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_20;
  }

  *(v5 + 131) = self->_stolenDeviceProtectionEnabled;
  *(v5 + 136) |= 0x4000u;
  v28 = self->_has;
  if ((*&v28 & 0x8000) != 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if ((*&v28 & 4) != 0)
  {
LABEL_20:
    *(v5 + 56) = self->_iPadMultitaskingMode;
    *(v5 + 136) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_100;
  }

  if (self->_version != *(equalCopy + 24))
  {
    goto LABEL_100;
  }

  watchMigrationData = self->_watchMigrationData;
  if (watchMigrationData | *(equalCopy + 14))
  {
    if (![(NSData *)watchMigrationData isEqual:?])
    {
      goto LABEL_100;
    }
  }

  walletData = self->_walletData;
  if (walletData | *(equalCopy + 13))
  {
    if (![(NSData *)walletData isEqual:?])
    {
      goto LABEL_100;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 34);
  if ((*&has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_100;
    }

    v9 = *(equalCopy + 121);
    if (self->_deviceAnalyticsOptIn)
    {
      if ((*(equalCopy + 121) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 121))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 8) != 0)
  {
    if ((v8 & 8) == 0)
    {
      goto LABEL_100;
    }

    v10 = *(equalCopy + 120);
    if (self->_appAnalyticsOptIn)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_100;
    }

    v11 = *(equalCopy + 124);
    if (self->_locationServicesOptIn)
    {
      if ((*(equalCopy + 124) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 124))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_100;
    }

    v12 = *(equalCopy + 123);
    if (self->_findMyOptIn)
    {
      if ((*(equalCopy + 123) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 123))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v8 & 0x400) == 0)
    {
      goto LABEL_100;
    }

    v13 = *(equalCopy + 127);
    if (self->_siriOptIn)
    {
      if ((*(equalCopy + 127) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 127))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x400) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v8 & 0x100) == 0)
    {
      goto LABEL_100;
    }

    v14 = *(equalCopy + 125);
    if (self->_screenTimeEnabled)
    {
      if ((*(equalCopy + 125) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 125))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x100) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v8 & 0x2000) == 0)
    {
      goto LABEL_100;
    }

    v15 = *(equalCopy + 130);
    if (self->_softwareUpdateAutoUpdateEnabled)
    {
      if ((*(equalCopy + 130) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 130))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x2000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v8 & 0x1000) == 0)
    {
      goto LABEL_100;
    }

    v16 = *(equalCopy + 129);
    if (self->_softwareUpdateAutoDownloadEnabled)
    {
      if ((*(equalCopy + 129) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 129))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x1000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v8 & 0x200) == 0)
    {
      goto LABEL_100;
    }

    v17 = *(equalCopy + 126);
    if (self->_siriDataSharingOptIn)
    {
      if ((*(equalCopy + 126) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 126))
    {
      goto LABEL_100;
    }
  }

  else if ((v8 & 0x200) != 0)
  {
    goto LABEL_100;
  }

  if (*&has)
  {
    if ((v8 & 1) == 0 || self->_appearanceMode != *(equalCopy + 4))
    {
      goto LABEL_100;
    }
  }

  else if (v8)
  {
    goto LABEL_100;
  }

  deviceAnalyticsPrivacyBundle = self->_deviceAnalyticsPrivacyBundle;
  if (deviceAnalyticsPrivacyBundle | *(equalCopy + 3) && ![(SASExpressSettingsPrivacyBundle *)deviceAnalyticsPrivacyBundle isEqual:?])
  {
    goto LABEL_100;
  }

  appAnalyticsPrivacyBundle = self->_appAnalyticsPrivacyBundle;
  if (appAnalyticsPrivacyBundle | *(equalCopy + 1))
  {
    if (![(SASExpressSettingsPrivacyBundle *)appAnalyticsPrivacyBundle isEqual:?])
    {
      goto LABEL_100;
    }
  }

  locationServicesPrivacyBundle = self->_locationServicesPrivacyBundle;
  if (locationServicesPrivacyBundle | *(equalCopy + 8))
  {
    if (![(SASExpressSettingsPrivacyBundle *)locationServicesPrivacyBundle isEqual:?])
    {
      goto LABEL_100;
    }
  }

  findMyPrivacyBundle = self->_findMyPrivacyBundle;
  if (findMyPrivacyBundle | *(equalCopy + 6))
  {
    if (![(SASExpressSettingsPrivacyBundle *)findMyPrivacyBundle isEqual:?])
    {
      goto LABEL_100;
    }
  }

  siriPrivacyBundle = self->_siriPrivacyBundle;
  if (siriPrivacyBundle | *(equalCopy + 11))
  {
    if (![(SASExpressSettingsPrivacyBundle *)siriPrivacyBundle isEqual:?])
    {
      goto LABEL_100;
    }
  }

  productType = self->_productType;
  if (productType | *(equalCopy + 9))
  {
    if (![(NSString *)productType isEqual:?])
    {
      goto LABEL_100;
    }
  }

  deviceClass = self->_deviceClass;
  if (deviceClass | *(equalCopy + 4))
  {
    if (![(NSString *)deviceClass isEqual:?])
    {
      goto LABEL_100;
    }
  }

  v25 = self->_has;
  v26 = *(equalCopy + 34);
  if ((*&v25 & 2) != 0)
  {
    if ((v26 & 2) == 0 || self->_displayZoomOption != *(equalCopy + 10))
    {
      goto LABEL_100;
    }
  }

  else if ((v26 & 2) != 0)
  {
    goto LABEL_100;
  }

  if ((*&v25 & 0x10000) != 0)
  {
    if ((v26 & 0x10000) == 0)
    {
      goto LABEL_100;
    }

    v29 = *(equalCopy + 133);
    if (self->_unlockWithWatchEnabled)
    {
      if ((*(equalCopy + 133) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 133))
    {
      goto LABEL_100;
    }
  }

  else if ((v26 & 0x10000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&v25 & 0x20) != 0)
  {
    if ((v26 & 0x20) == 0)
    {
      goto LABEL_100;
    }

    v30 = *(equalCopy + 122);
    if (self->_fileVaultEnabled)
    {
      if ((*(equalCopy + 122) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 122))
    {
      goto LABEL_100;
    }
  }

  else if ((v26 & 0x20) != 0)
  {
    goto LABEL_100;
  }

  if ((*&v25 & 0x800) != 0)
  {
    if ((v26 & 0x800) == 0)
    {
      goto LABEL_100;
    }

    v31 = *(equalCopy + 128);
    if (self->_siriVoiceTriggerEnabled)
    {
      if ((*(equalCopy + 128) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 128))
    {
      goto LABEL_100;
    }
  }

  else if ((v26 & 0x800) != 0)
  {
    goto LABEL_100;
  }

  productVersion = self->_productVersion;
  if (productVersion | *(equalCopy + 10))
  {
    if (![(NSString *)productVersion isEqual:?])
    {
      goto LABEL_100;
    }

    v25 = self->_has;
  }

  v33 = *(equalCopy + 34);
  if ((*&v25 & 0x4000) != 0)
  {
    if ((v33 & 0x4000) == 0)
    {
      goto LABEL_100;
    }

    v34 = *(equalCopy + 131);
    if (self->_stolenDeviceProtectionEnabled)
    {
      if ((*(equalCopy + 131) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 131))
    {
      goto LABEL_100;
    }
  }

  else if ((v33 & 0x4000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&v25 & 0x8000) != 0)
  {
    if ((v33 & 0x8000) == 0)
    {
      goto LABEL_100;
    }

    v35 = *(equalCopy + 132);
    if (self->_stolenDeviceProtectionStrictModeEnabled)
    {
      if ((*(equalCopy + 132) & 1) == 0)
      {
        goto LABEL_100;
      }
    }

    else if (*(equalCopy + 132))
    {
      goto LABEL_100;
    }
  }

  else if ((v33 & 0x8000) != 0)
  {
    goto LABEL_100;
  }

  if ((*&v25 & 4) == 0)
  {
    v27 = (*(equalCopy + 34) & 4) == 0;
    goto LABEL_101;
  }

  if ((v33 & 4) != 0 && self->_iPadMultitaskingMode == *(equalCopy + 14))
  {
    v27 = 1;
    goto LABEL_101;
  }

LABEL_100:
  v27 = 0;
LABEL_101:

  return v27;
}

- (unint64_t)hash
{
  version = self->_version;
  v33 = [(NSData *)self->_watchMigrationData hash];
  v32 = [(NSData *)self->_walletData hash];
  has = self->_has;
  if ((*&has & 0x10) != 0)
  {
    v31 = 2654435761 * self->_deviceAnalyticsOptIn;
    if ((*&has & 8) != 0)
    {
LABEL_3:
      v30 = 2654435761 * self->_appAnalyticsOptIn;
      if ((*&has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v31 = 0;
    if ((*&has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_4:
    v29 = 2654435761 * self->_locationServicesOptIn;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v29 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_5:
    v28 = 2654435761 * self->_findMyOptIn;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v28 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_6:
    v27 = 2654435761 * self->_siriOptIn;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v27 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_7:
    v26 = 2654435761 * self->_screenTimeEnabled;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v26 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_8:
    v25 = 2654435761 * self->_softwareUpdateAutoUpdateEnabled;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v25 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_9:
    v24 = 2654435761 * self->_softwareUpdateAutoDownloadEnabled;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v23 = 0;
    if (*&has)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v24 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v23 = 2654435761 * self->_siriDataSharingOptIn;
  if (*&has)
  {
LABEL_11:
    v22 = 2654435761 * self->_appearanceMode;
    goto LABEL_22;
  }

LABEL_21:
  v22 = 0;
LABEL_22:
  v21 = [(SASExpressSettingsPrivacyBundle *)self->_deviceAnalyticsPrivacyBundle hash];
  v20 = [(SASExpressSettingsPrivacyBundle *)self->_appAnalyticsPrivacyBundle hash];
  v19 = [(SASExpressSettingsPrivacyBundle *)self->_locationServicesPrivacyBundle hash];
  v18 = [(SASExpressSettingsPrivacyBundle *)self->_findMyPrivacyBundle hash];
  v4 = [(SASExpressSettingsPrivacyBundle *)self->_siriPrivacyBundle hash];
  v5 = [(NSString *)self->_productType hash];
  v6 = [(NSString *)self->_deviceClass hash];
  v7 = self->_has;
  if ((*&v7 & 2) != 0)
  {
    v8 = 2654435761 * self->_displayZoomOption;
    if ((*&v7 & 0x10000) != 0)
    {
LABEL_24:
      v9 = 2654435761 * self->_unlockWithWatchEnabled;
      if ((*&v7 & 0x20) != 0)
      {
        goto LABEL_25;
      }

LABEL_29:
      v10 = 0;
      if ((*&v7 & 0x800) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v8 = 0;
    if ((*&v7 & 0x10000) != 0)
    {
      goto LABEL_24;
    }
  }

  v9 = 0;
  if ((*&v7 & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_25:
  v10 = 2654435761 * self->_fileVaultEnabled;
  if ((*&v7 & 0x800) != 0)
  {
LABEL_26:
    v11 = 2654435761 * self->_siriVoiceTriggerEnabled;
    goto LABEL_31;
  }

LABEL_30:
  v11 = 0;
LABEL_31:
  v12 = [(NSString *)self->_productVersion hash];
  v13 = self->_has;
  if ((*&v13 & 0x4000) == 0)
  {
    v14 = 0;
    if ((*&v13 & 0x8000) != 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    v15 = 0;
    if ((*&v13 & 4) != 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    v16 = 0;
    return v33 ^ v32 ^ v31 ^ v30 ^ (2654435761 * version) ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
  }

  v14 = 2654435761 * self->_stolenDeviceProtectionEnabled;
  if ((*&v13 & 0x8000) == 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  v15 = 2654435761 * self->_stolenDeviceProtectionStrictModeEnabled;
  if ((*&v13 & 4) == 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  v16 = 2654435761 * self->_iPadMultitaskingMode;
  return v33 ^ v32 ^ v31 ^ v30 ^ (2654435761 * version) ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = *(fromCopy + 24);
  v18 = fromCopy;
  if (*(fromCopy + 14))
  {
    [(SASExpressSettings *)self setWatchMigrationData:?];
    fromCopy = v18;
  }

  if (*(fromCopy + 13))
  {
    [(SASExpressSettings *)self setWalletData:?];
    fromCopy = v18;
  }

  v5 = *(fromCopy + 34);
  if ((v5 & 0x10) != 0)
  {
    self->_deviceAnalyticsOptIn = *(fromCopy + 121);
    *&self->_has |= 0x10u;
    v5 = *(fromCopy + 34);
    if ((v5 & 8) == 0)
    {
LABEL_7:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_7;
  }

  self->_appAnalyticsOptIn = *(fromCopy + 120);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_locationServicesOptIn = *(fromCopy + 124);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x40) == 0)
  {
LABEL_9:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_findMyOptIn = *(fromCopy + 123);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x400) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_siriOptIn = *(fromCopy + 127);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_screenTimeEnabled = *(fromCopy + 125);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_softwareUpdateAutoUpdateEnabled = *(fromCopy + 130);
  *&self->_has |= 0x2000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x1000) == 0)
  {
LABEL_13:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_softwareUpdateAutoDownloadEnabled = *(fromCopy + 129);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 34);
  if ((v5 & 0x200) == 0)
  {
LABEL_14:
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_27:
  self->_siriDataSharingOptIn = *(fromCopy + 126);
  *&self->_has |= 0x200u;
  if (*(fromCopy + 34))
  {
LABEL_15:
    self->_appearanceMode = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_16:
  deviceAnalyticsPrivacyBundle = self->_deviceAnalyticsPrivacyBundle;
  v7 = *(fromCopy + 3);
  if (deviceAnalyticsPrivacyBundle)
  {
    if (!v7)
    {
      goto LABEL_32;
    }

    [(SASExpressSettingsPrivacyBundle *)deviceAnalyticsPrivacyBundle mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_32;
    }

    [(SASExpressSettings *)self setDeviceAnalyticsPrivacyBundle:?];
  }

  fromCopy = v18;
LABEL_32:
  appAnalyticsPrivacyBundle = self->_appAnalyticsPrivacyBundle;
  v9 = *(fromCopy + 1);
  if (appAnalyticsPrivacyBundle)
  {
    if (!v9)
    {
      goto LABEL_38;
    }

    [(SASExpressSettingsPrivacyBundle *)appAnalyticsPrivacyBundle mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_38;
    }

    [(SASExpressSettings *)self setAppAnalyticsPrivacyBundle:?];
  }

  fromCopy = v18;
LABEL_38:
  locationServicesPrivacyBundle = self->_locationServicesPrivacyBundle;
  v11 = *(fromCopy + 8);
  if (locationServicesPrivacyBundle)
  {
    if (!v11)
    {
      goto LABEL_44;
    }

    [(SASExpressSettingsPrivacyBundle *)locationServicesPrivacyBundle mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_44;
    }

    [(SASExpressSettings *)self setLocationServicesPrivacyBundle:?];
  }

  fromCopy = v18;
LABEL_44:
  findMyPrivacyBundle = self->_findMyPrivacyBundle;
  v13 = *(fromCopy + 6);
  if (findMyPrivacyBundle)
  {
    if (!v13)
    {
      goto LABEL_50;
    }

    [(SASExpressSettingsPrivacyBundle *)findMyPrivacyBundle mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_50;
    }

    [(SASExpressSettings *)self setFindMyPrivacyBundle:?];
  }

  fromCopy = v18;
LABEL_50:
  siriPrivacyBundle = self->_siriPrivacyBundle;
  v15 = *(fromCopy + 11);
  if (siriPrivacyBundle)
  {
    if (!v15)
    {
      goto LABEL_56;
    }

    [(SASExpressSettingsPrivacyBundle *)siriPrivacyBundle mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_56;
    }

    [(SASExpressSettings *)self setSiriPrivacyBundle:?];
  }

  fromCopy = v18;
LABEL_56:
  if (*(fromCopy + 9))
  {
    [(SASExpressSettings *)self setProductType:?];
    fromCopy = v18;
  }

  if (*(fromCopy + 4))
  {
    [(SASExpressSettings *)self setDeviceClass:?];
    fromCopy = v18;
  }

  v16 = *(fromCopy + 34);
  if ((v16 & 2) != 0)
  {
    self->_displayZoomOption = *(fromCopy + 10);
    *&self->_has |= 2u;
    v16 = *(fromCopy + 34);
    if ((v16 & 0x10000) == 0)
    {
LABEL_62:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_76;
    }
  }

  else if ((v16 & 0x10000) == 0)
  {
    goto LABEL_62;
  }

  self->_unlockWithWatchEnabled = *(fromCopy + 133);
  *&self->_has |= 0x10000u;
  v16 = *(fromCopy + 34);
  if ((v16 & 0x20) == 0)
  {
LABEL_63:
    if ((v16 & 0x800) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

LABEL_76:
  self->_fileVaultEnabled = *(fromCopy + 122);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 34) & 0x800) != 0)
  {
LABEL_64:
    self->_siriVoiceTriggerEnabled = *(fromCopy + 128);
    *&self->_has |= 0x800u;
  }

LABEL_65:
  if (*(fromCopy + 10))
  {
    [(SASExpressSettings *)self setProductVersion:?];
    fromCopy = v18;
  }

  v17 = *(fromCopy + 34);
  if ((v17 & 0x4000) != 0)
  {
    self->_stolenDeviceProtectionEnabled = *(fromCopy + 131);
    *&self->_has |= 0x4000u;
    v17 = *(fromCopy + 34);
    if ((v17 & 0x8000) == 0)
    {
LABEL_69:
      if ((v17 & 4) == 0)
      {
        goto LABEL_71;
      }

      goto LABEL_70;
    }
  }

  else if ((v17 & 0x8000) == 0)
  {
    goto LABEL_69;
  }

  self->_stolenDeviceProtectionStrictModeEnabled = *(fromCopy + 132);
  *&self->_has |= 0x8000u;
  if ((*(fromCopy + 34) & 4) != 0)
  {
LABEL_70:
    self->_iPadMultitaskingMode = *(fromCopy + 14);
    *&self->_has |= 4u;
  }

LABEL_71:

  MEMORY[0x2821F96F8]();
}

@end