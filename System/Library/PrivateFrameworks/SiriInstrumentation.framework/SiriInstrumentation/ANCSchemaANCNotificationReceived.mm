@interface ANCSchemaANCNotificationReceived
- (ANCSchemaANCNotificationReceived)initWithDictionary:(id)dictionary;
- (ANCSchemaANCNotificationReceived)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppCategory:(BOOL)category;
- (void)setHasBobbleEnabled:(BOOL)enabled;
- (void)setHasBobbleSupported:(BOOL)supported;
- (void)setHasIsTimeSensitiveAnnouncement:(BOOL)announcement;
- (void)setHasTargetPlatform:(BOOL)platform;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCNotificationReceived

- (ANCSchemaANCNotificationReceived)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = ANCSchemaANCNotificationReceived;
  v5 = [(ANCSchemaANCNotificationReceived *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"announcementCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setAnnouncementCategory:](v5, "setAnnouncementCategory:", [v6 intValue]);
    }

    v23 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"targetPlatform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setTargetPlatform:](v5, "setTargetPlatform:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:{@"connectedAudioDevice", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCAudioDevice alloc] initWithDictionary:v8];
      [(ANCSchemaANCNotificationReceived *)v5 setConnectedAudioDevice:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isTimeSensitiveAnnouncement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setIsTimeSensitiveAnnouncement:](v5, "setIsTimeSensitiveAnnouncement:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"appCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setAppCategory:](v5, "setAppCategory:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(ANCSchemaANCNotificationReceived *)v5 setLinkId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"backgroundContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ANCSchemaANCBackgroundContent alloc] initWithDictionary:v14];
      [(ANCSchemaANCNotificationReceived *)v5 setBackgroundContent:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"notificationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ANCSchemaANCAppNotificationMetadata alloc] initWithDictionary:v16];
      [(ANCSchemaANCNotificationReceived *)v5 setNotificationMetadata:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"bobbleEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setBobbleEnabled:](v5, "setBobbleEnabled:", [v18 intValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"bobbleSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setBobbleSupported:](v5, "setBobbleSupported:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (ANCSchemaANCNotificationReceived)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCNotificationReceived *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCNotificationReceived *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [(ANCSchemaANCNotificationReceived *)self announcementCategory]- 1;
    if (v5 > 7)
    {
      v6 = @"ANCCATEGORY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D1668[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"announcementCategory"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    appCategory = [(ANCSchemaANCNotificationReceived *)self appCategory];
    v8 = @"ANCAPPCATEGORY_UNKNOWN";
    if (appCategory == 1)
    {
      v8 = @"ANCAPPCATEGORY_FIRST_PARTY";
    }

    if (appCategory == 2)
    {
      v9 = @"ANCAPPCATEGORY_THIRD_PARTY";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"appCategory"];
  }

  if (self->_backgroundContent)
  {
    backgroundContent = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    dictionaryRepresentation = [backgroundContent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"backgroundContent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"backgroundContent"];
    }
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    bobbleEnabled = [(ANCSchemaANCNotificationReceived *)self bobbleEnabled];
    v15 = @"ANCFEATUREENABLEMENTSTATUS_UNKNOWN";
    if (bobbleEnabled == 1)
    {
      v15 = @"ANCFEATUREENABLEMENTSTATUS_ENABLED";
    }

    if (bobbleEnabled == 2)
    {
      v16 = @"ANCFEATUREENABLEMENTSTATUS_DISABLED";
    }

    else
    {
      v16 = v15;
    }

    [dictionary setObject:v16 forKeyedSubscript:@"bobbleEnabled"];
    v13 = self->_has;
  }

  if ((v13 & 0x20) != 0)
  {
    bobbleSupported = [(ANCSchemaANCNotificationReceived *)self bobbleSupported];
    v18 = @"ANCFEATURESUPPORTSTATUS_UNKNOWN";
    if (bobbleSupported == 1)
    {
      v18 = @"ANCFEATURESUPPORTSTATUS_SUPPORTED";
    }

    if (bobbleSupported == 2)
    {
      v19 = @"ANCFEATURESUPPORTSTATUS_UNSUPPORTED";
    }

    else
    {
      v19 = v18;
    }

    [dictionary setObject:v19 forKeyedSubscript:@"bobbleSupported"];
  }

  if (self->_connectedAudioDevice)
  {
    connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
    dictionaryRepresentation2 = [connectedAudioDevice dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"connectedAudioDevice"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"connectedAudioDevice"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCNotificationReceived isTimeSensitiveAnnouncement](self, "isTimeSensitiveAnnouncement")}];
    [dictionary setObject:v23 forKeyedSubscript:@"isTimeSensitiveAnnouncement"];
  }

  if (self->_linkId)
  {
    linkId = [(ANCSchemaANCNotificationReceived *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_notificationMetadata)
  {
    notificationMetadata = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
    dictionaryRepresentation4 = [notificationMetadata dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"notificationMetadata"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"notificationMetadata"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [(ANCSchemaANCNotificationReceived *)self targetPlatform]- 1;
    if (v30 > 3)
    {
      v31 = @"ANCTARGETPLATFORM_UNKNOWN";
    }

    else
    {
      v31 = off_1E78D16A8[v30];
    }

    [dictionary setObject:v31 forKeyedSubscript:@"targetPlatform"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_announcementCategory;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_targetPlatform;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(ANCSchemaANCAudioDevice *)self->_connectedAudioDevice hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_isTimeSensitiveAnnouncement;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_8:
      v7 = 2654435761 * self->_appCategory;
      goto LABEL_11;
    }
  }

  v7 = 0;
LABEL_11:
  v8 = [(SISchemaUUID *)self->_linkId hash];
  v9 = [(ANCSchemaANCBackgroundContent *)self->_backgroundContent hash];
  v10 = [(ANCSchemaANCAppNotificationMetadata *)self->_notificationMetadata hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v11 = 2654435761 * self->_bobbleEnabled;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v12 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v12 = 2654435761 * self->_bobbleSupported;
  return v4 ^ v3 ^ v6 ^ v7 ^ v5 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = equalCopy[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_36;
  }

  if (*&has)
  {
    announcementCategory = self->_announcementCategory;
    if (announcementCategory != [equalCopy announcementCategory])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v6 = equalCopy[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v8)
  {
    targetPlatform = self->_targetPlatform;
    if (targetPlatform != [equalCopy targetPlatform])
    {
      goto LABEL_36;
    }
  }

  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  connectedAudioDevice2 = [equalCopy connectedAudioDevice];
  if ((connectedAudioDevice != 0) == (connectedAudioDevice2 == 0))
  {
    goto LABEL_35;
  }

  connectedAudioDevice3 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  if (connectedAudioDevice3)
  {
    v13 = connectedAudioDevice3;
    connectedAudioDevice4 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
    connectedAudioDevice5 = [equalCopy connectedAudioDevice];
    v16 = [connectedAudioDevice4 isEqual:connectedAudioDevice5];

    if (!v16)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v17 = self->_has;
  v18 = (*&v17 >> 2) & 1;
  v19 = equalCopy[64];
  if (v18 != ((v19 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v18)
  {
    isTimeSensitiveAnnouncement = self->_isTimeSensitiveAnnouncement;
    if (isTimeSensitiveAnnouncement != [equalCopy isTimeSensitiveAnnouncement])
    {
      goto LABEL_36;
    }

    v17 = self->_has;
    v19 = equalCopy[64];
  }

  v21 = (*&v17 >> 3) & 1;
  if (v21 != ((v19 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v21)
  {
    appCategory = self->_appCategory;
    if (appCategory != [equalCopy appCategory])
    {
      goto LABEL_36;
    }
  }

  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self linkId];
  connectedAudioDevice2 = [equalCopy linkId];
  if ((connectedAudioDevice != 0) == (connectedAudioDevice2 == 0))
  {
    goto LABEL_35;
  }

  linkId = [(ANCSchemaANCNotificationReceived *)self linkId];
  if (linkId)
  {
    v24 = linkId;
    linkId2 = [(ANCSchemaANCNotificationReceived *)self linkId];
    linkId3 = [equalCopy linkId];
    v27 = [linkId2 isEqual:linkId3];

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  connectedAudioDevice2 = [equalCopy backgroundContent];
  if ((connectedAudioDevice != 0) == (connectedAudioDevice2 == 0))
  {
    goto LABEL_35;
  }

  backgroundContent = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  if (backgroundContent)
  {
    v29 = backgroundContent;
    backgroundContent2 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    backgroundContent3 = [equalCopy backgroundContent];
    v32 = [backgroundContent2 isEqual:backgroundContent3];

    if (!v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  connectedAudioDevice2 = [equalCopy notificationMetadata];
  if ((connectedAudioDevice != 0) == (connectedAudioDevice2 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  notificationMetadata = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  if (notificationMetadata)
  {
    v34 = notificationMetadata;
    notificationMetadata2 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
    notificationMetadata3 = [equalCopy notificationMetadata];
    v37 = [notificationMetadata2 isEqual:notificationMetadata3];

    if (!v37)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v40 = self->_has;
  v41 = (*&v40 >> 4) & 1;
  v42 = equalCopy[64];
  if (v41 == ((v42 >> 4) & 1))
  {
    if (v41)
    {
      bobbleEnabled = self->_bobbleEnabled;
      if (bobbleEnabled != [equalCopy bobbleEnabled])
      {
        goto LABEL_36;
      }

      v40 = self->_has;
      v42 = equalCopy[64];
    }

    v44 = (*&v40 >> 5) & 1;
    if (v44 == ((v42 >> 5) & 1))
    {
      if (!v44 || (bobbleSupported = self->_bobbleSupported, bobbleSupported == [equalCopy bobbleSupported]))
      {
        v38 = 1;
        goto LABEL_37;
      }
    }
  }

LABEL_36:
  v38 = 0;
LABEL_37:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];

  if (connectedAudioDevice)
  {
    connectedAudioDevice2 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
    PBDataWriterWriteSubmessage();
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = self->_has;
  }

  if ((v7 & 8) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  linkId = [(ANCSchemaANCNotificationReceived *)self linkId];

  if (linkId)
  {
    linkId2 = [(ANCSchemaANCNotificationReceived *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  backgroundContent = [(ANCSchemaANCNotificationReceived *)self backgroundContent];

  if (backgroundContent)
  {
    backgroundContent2 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    PBDataWriterWriteSubmessage();
  }

  notificationMetadata = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];

  if (notificationMetadata)
  {
    notificationMetadata2 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
    PBDataWriterWriteSubmessage();
  }

  v14 = self->_has;
  if ((v14 & 0x10) != 0)
  {
    PBDataWriterWriteInt32Field();
    v14 = self->_has;
  }

  if ((v14 & 0x20) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasBobbleSupported:(BOOL)supported
{
  if (supported)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasBobbleEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAppCategory:(BOOL)category
{
  if (category)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsTimeSensitiveAnnouncement:(BOOL)announcement
{
  if (announcement)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTargetPlatform:(BOOL)platform
{
  if (platform)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = ANCSchemaANCNotificationReceived;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  connectedAudioDevice = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  v7 = [connectedAudioDevice applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteConnectedAudioDevice];
  }

  linkId = [(ANCSchemaANCNotificationReceived *)self linkId];
  v10 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteLinkId];
  }

  backgroundContent = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  v13 = [backgroundContent applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteBackgroundContent];
  }

  notificationMetadata = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  v16 = [notificationMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteNotificationMetadata];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end