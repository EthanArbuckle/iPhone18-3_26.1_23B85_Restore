@interface ANCSchemaANCNotificationReceived
- (ANCSchemaANCNotificationReceived)initWithDictionary:(id)a3;
- (ANCSchemaANCNotificationReceived)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppCategory:(BOOL)a3;
- (void)setHasBobbleEnabled:(BOOL)a3;
- (void)setHasBobbleSupported:(BOOL)a3;
- (void)setHasIsTimeSensitiveAnnouncement:(BOOL)a3;
- (void)setHasTargetPlatform:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ANCSchemaANCNotificationReceived

- (ANCSchemaANCNotificationReceived)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = ANCSchemaANCNotificationReceived;
  v5 = [(ANCSchemaANCNotificationReceived *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"announcementCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setAnnouncementCategory:](v5, "setAnnouncementCategory:", [v6 intValue]);
    }

    v23 = v6;
    v7 = [v4 objectForKeyedSubscript:@"targetPlatform"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setTargetPlatform:](v5, "setTargetPlatform:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:{@"connectedAudioDevice", v7}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ANCSchemaANCAudioDevice alloc] initWithDictionary:v8];
      [(ANCSchemaANCNotificationReceived *)v5 setConnectedAudioDevice:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"isTimeSensitiveAnnouncement"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setIsTimeSensitiveAnnouncement:](v5, "setIsTimeSensitiveAnnouncement:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"appCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setAppCategory:](v5, "setAppCategory:", [v11 intValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(ANCSchemaANCNotificationReceived *)v5 setLinkId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"backgroundContent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[ANCSchemaANCBackgroundContent alloc] initWithDictionary:v14];
      [(ANCSchemaANCNotificationReceived *)v5 setBackgroundContent:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"notificationMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[ANCSchemaANCAppNotificationMetadata alloc] initWithDictionary:v16];
      [(ANCSchemaANCNotificationReceived *)v5 setNotificationMetadata:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"bobbleEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setBobbleEnabled:](v5, "setBobbleEnabled:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"bobbleSupported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCNotificationReceived setBobbleSupported:](v5, "setBobbleSupported:", [v19 intValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (ANCSchemaANCNotificationReceived)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ANCSchemaANCNotificationReceived *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ANCSchemaANCNotificationReceived *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
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

    [v3 setObject:v6 forKeyedSubscript:@"announcementCategory"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v7 = [(ANCSchemaANCNotificationReceived *)self appCategory];
    v8 = @"ANCAPPCATEGORY_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"ANCAPPCATEGORY_FIRST_PARTY";
    }

    if (v7 == 2)
    {
      v9 = @"ANCAPPCATEGORY_THIRD_PARTY";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"appCategory"];
  }

  if (self->_backgroundContent)
  {
    v10 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"backgroundContent"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"backgroundContent"];
    }
  }

  v13 = self->_has;
  if ((v13 & 0x10) != 0)
  {
    v14 = [(ANCSchemaANCNotificationReceived *)self bobbleEnabled];
    v15 = @"ANCFEATUREENABLEMENTSTATUS_UNKNOWN";
    if (v14 == 1)
    {
      v15 = @"ANCFEATUREENABLEMENTSTATUS_ENABLED";
    }

    if (v14 == 2)
    {
      v16 = @"ANCFEATUREENABLEMENTSTATUS_DISABLED";
    }

    else
    {
      v16 = v15;
    }

    [v3 setObject:v16 forKeyedSubscript:@"bobbleEnabled"];
    v13 = self->_has;
  }

  if ((v13 & 0x20) != 0)
  {
    v17 = [(ANCSchemaANCNotificationReceived *)self bobbleSupported];
    v18 = @"ANCFEATURESUPPORTSTATUS_UNKNOWN";
    if (v17 == 1)
    {
      v18 = @"ANCFEATURESUPPORTSTATUS_SUPPORTED";
    }

    if (v17 == 2)
    {
      v19 = @"ANCFEATURESUPPORTSTATUS_UNSUPPORTED";
    }

    else
    {
      v19 = v18;
    }

    [v3 setObject:v19 forKeyedSubscript:@"bobbleSupported"];
  }

  if (self->_connectedAudioDevice)
  {
    v20 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"connectedAudioDevice"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"connectedAudioDevice"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCNotificationReceived isTimeSensitiveAnnouncement](self, "isTimeSensitiveAnnouncement")}];
    [v3 setObject:v23 forKeyedSubscript:@"isTimeSensitiveAnnouncement"];
  }

  if (self->_linkId)
  {
    v24 = [(ANCSchemaANCNotificationReceived *)self linkId];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_notificationMetadata)
  {
    v27 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"notificationMetadata"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"notificationMetadata"];
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

    [v3 setObject:v31 forKeyedSubscript:@"targetPlatform"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  has = self->_has;
  v6 = v4[64];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_36;
  }

  if (*&has)
  {
    announcementCategory = self->_announcementCategory;
    if (announcementCategory != [v4 announcementCategory])
    {
      goto LABEL_36;
    }

    has = self->_has;
    v6 = v4[64];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_36;
  }

  if (v8)
  {
    targetPlatform = self->_targetPlatform;
    if (targetPlatform != [v4 targetPlatform])
    {
      goto LABEL_36;
    }
  }

  v10 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  v11 = [v4 connectedAudioDevice];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_35;
  }

  v12 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  if (v12)
  {
    v13 = v12;
    v14 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
    v15 = [v4 connectedAudioDevice];
    v16 = [v14 isEqual:v15];

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
  v19 = v4[64];
  if (v18 != ((v19 >> 2) & 1))
  {
    goto LABEL_36;
  }

  if (v18)
  {
    isTimeSensitiveAnnouncement = self->_isTimeSensitiveAnnouncement;
    if (isTimeSensitiveAnnouncement != [v4 isTimeSensitiveAnnouncement])
    {
      goto LABEL_36;
    }

    v17 = self->_has;
    v19 = v4[64];
  }

  v21 = (*&v17 >> 3) & 1;
  if (v21 != ((v19 >> 3) & 1))
  {
    goto LABEL_36;
  }

  if (v21)
  {
    appCategory = self->_appCategory;
    if (appCategory != [v4 appCategory])
    {
      goto LABEL_36;
    }
  }

  v10 = [(ANCSchemaANCNotificationReceived *)self linkId];
  v11 = [v4 linkId];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_35;
  }

  v23 = [(ANCSchemaANCNotificationReceived *)self linkId];
  if (v23)
  {
    v24 = v23;
    v25 = [(ANCSchemaANCNotificationReceived *)self linkId];
    v26 = [v4 linkId];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v10 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  v11 = [v4 backgroundContent];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_35;
  }

  v28 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  if (v28)
  {
    v29 = v28;
    v30 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    v31 = [v4 backgroundContent];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  v10 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  v11 = [v4 notificationMetadata];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_35:

    goto LABEL_36;
  }

  v33 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  if (v33)
  {
    v34 = v33;
    v35 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
    v36 = [v4 notificationMetadata];
    v37 = [v35 isEqual:v36];

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
  v42 = v4[64];
  if (v41 == ((v42 >> 4) & 1))
  {
    if (v41)
    {
      bobbleEnabled = self->_bobbleEnabled;
      if (bobbleEnabled != [v4 bobbleEnabled])
      {
        goto LABEL_36;
      }

      v40 = self->_has;
      v42 = v4[64];
    }

    v44 = (*&v40 >> 5) & 1;
    if (v44 == ((v42 >> 5) & 1))
    {
      if (!v44 || (bobbleSupported = self->_bobbleSupported, bobbleSupported == [v4 bobbleSupported]))
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

- (void)writeTo:(id)a3
{
  v15 = a3;
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

  v5 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];

  if (v5)
  {
    v6 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
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

  v8 = [(ANCSchemaANCNotificationReceived *)self linkId];

  if (v8)
  {
    v9 = [(ANCSchemaANCNotificationReceived *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];

  if (v10)
  {
    v11 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];

  if (v12)
  {
    v13 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
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

- (void)setHasBobbleSupported:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasBobbleEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasAppCategory:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsTimeSensitiveAnnouncement:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTargetPlatform:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ANCSchemaANCNotificationReceived;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  v6 = [(ANCSchemaANCNotificationReceived *)self connectedAudioDevice];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteConnectedAudioDevice];
  }

  v9 = [(ANCSchemaANCNotificationReceived *)self linkId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteLinkId];
  }

  v12 = [(ANCSchemaANCNotificationReceived *)self backgroundContent];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(ANCSchemaANCNotificationReceived *)self deleteBackgroundContent];
  }

  v15 = [(ANCSchemaANCNotificationReceived *)self notificationMetadata];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
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