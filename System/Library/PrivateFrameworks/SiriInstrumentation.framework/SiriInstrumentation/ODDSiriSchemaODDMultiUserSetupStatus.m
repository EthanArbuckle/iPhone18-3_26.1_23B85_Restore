@interface ODDSiriSchemaODDMultiUserSetupStatus
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDMultiUserSetupStatus)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDMultiUserSetupStatus)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumParticipantsWithTrust:(BOOL)a3;
- (void)setHasNumUsersWhoSyncedRecognizeMyVoice:(BOOL)a3;
- (void)setHasNumUsersWithLocationServicesEnabled:(BOOL)a3;
- (void)setHasNumUsersWithMatchingSiriLanguage:(BOOL)a3;
- (void)setHasNumUsersWithPersonalRequestsEnabled:(BOOL)a3;
- (void)setHasNumUsersWithRecognizeMyVoiceEnabled:(BOOL)a3;
- (void)setHasNumUsersWithSiriCloudSyncEnabled:(BOOL)a3;
- (void)setHasNumVoiceProfilesAvailable:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDMultiUserSetupStatus

- (ODDSiriSchemaODDMultiUserSetupStatus)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = ODDSiriSchemaODDMultiUserSetupStatus;
  v5 = [(ODDSiriSchemaODDMultiUserSetupStatus *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numGuestsAccepted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumGuestsAccepted:](v5, "setNumGuestsAccepted:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"numParticipantsWithTrust"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumParticipantsWithTrust:](v5, "setNumParticipantsWithTrust:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"numUsersWhoSyncedRecognizeMyVoice"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWhoSyncedRecognizeMyVoice:](v5, "setNumUsersWhoSyncedRecognizeMyVoice:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:{@"numUsersWithRecognizeMyVoiceEnabled", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWithRecognizeMyVoiceEnabled:](v5, "setNumUsersWithRecognizeMyVoiceEnabled:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numVoiceProfilesAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumVoiceProfilesAvailable:](v5, "setNumVoiceProfilesAvailable:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"numUsersWithPersonalRequestsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWithPersonalRequestsEnabled:](v5, "setNumUsersWithPersonalRequestsEnabled:", [v11 intValue]);
    }

    v19 = v7;
    v12 = [v4 objectForKeyedSubscript:@"numUsersWithMatchingSiriLanguage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWithMatchingSiriLanguage:](v5, "setNumUsersWithMatchingSiriLanguage:", [v12 intValue]);
    }

    v13 = v6;
    v14 = [v4 objectForKeyedSubscript:@"numUsersWithSiriCloudSyncEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWithSiriCloudSyncEnabled:](v5, "setNumUsersWithSiriCloudSyncEnabled:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"numUsersWithLocationServicesEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDMultiUserSetupStatus setNumUsersWithLocationServicesEnabled:](v5, "setNumUsersWithLocationServicesEnabled:", [v15 intValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDMultiUserSetupStatus)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDMultiUserSetupStatus *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDMultiUserSetupStatus *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numGuestsAccepted](self, "numGuestsAccepted")}];
    [v3 setObject:v7 forKeyedSubscript:@"numGuestsAccepted"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numParticipantsWithTrust](self, "numParticipantsWithTrust")}];
  [v3 setObject:v8 forKeyedSubscript:@"numParticipantsWithTrust"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWhoSyncedRecognizeMyVoice](self, "numUsersWhoSyncedRecognizeMyVoice")}];
  [v3 setObject:v9 forKeyedSubscript:@"numUsersWhoSyncedRecognizeMyVoice"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWithLocationServicesEnabled](self, "numUsersWithLocationServicesEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"numUsersWithLocationServicesEnabled"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWithMatchingSiriLanguage](self, "numUsersWithMatchingSiriLanguage")}];
  [v3 setObject:v11 forKeyedSubscript:@"numUsersWithMatchingSiriLanguage"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWithPersonalRequestsEnabled](self, "numUsersWithPersonalRequestsEnabled")}];
  [v3 setObject:v12 forKeyedSubscript:@"numUsersWithPersonalRequestsEnabled"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWithRecognizeMyVoiceEnabled](self, "numUsersWithRecognizeMyVoiceEnabled")}];
  [v3 setObject:v13 forKeyedSubscript:@"numUsersWithRecognizeMyVoiceEnabled"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numUsersWithSiriCloudSyncEnabled](self, "numUsersWithSiriCloudSyncEnabled")}];
  [v3 setObject:v14 forKeyedSubscript:@"numUsersWithSiriCloudSyncEnabled"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDMultiUserSetupStatus numVoiceProfilesAvailable](self, "numVoiceProfilesAvailable")}];
    [v3 setObject:v5 forKeyedSubscript:@"numVoiceProfilesAvailable"];
  }

LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numGuestsAccepted;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_numParticipantsWithTrust;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_numUsersWhoSyncedRecognizeMyVoice;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_numUsersWithRecognizeMyVoiceEnabled;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_numVoiceProfilesAvailable;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_numUsersWithPersonalRequestsEnabled;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_numUsersWithMatchingSiriLanguage;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 0x80) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_numUsersWithSiriCloudSyncEnabled;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_numUsersWithLocationServicesEnabled;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = v4[22];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_38;
  }

  if (*&has)
  {
    numGuestsAccepted = self->_numGuestsAccepted;
    if (numGuestsAccepted != [v4 numGuestsAccepted])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_38;
  }

  if (v8)
  {
    numParticipantsWithTrust = self->_numParticipantsWithTrust;
    if (numParticipantsWithTrust != [v4 numParticipantsWithTrust])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_38;
  }

  if (v10)
  {
    numUsersWhoSyncedRecognizeMyVoice = self->_numUsersWhoSyncedRecognizeMyVoice;
    if (numUsersWhoSyncedRecognizeMyVoice != [v4 numUsersWhoSyncedRecognizeMyVoice])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_38;
  }

  if (v12)
  {
    numUsersWithRecognizeMyVoiceEnabled = self->_numUsersWithRecognizeMyVoiceEnabled;
    if (numUsersWithRecognizeMyVoiceEnabled != [v4 numUsersWithRecognizeMyVoiceEnabled])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_38;
  }

  if (v14)
  {
    numVoiceProfilesAvailable = self->_numVoiceProfilesAvailable;
    if (numVoiceProfilesAvailable != [v4 numVoiceProfilesAvailable])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_38;
  }

  if (v16)
  {
    numUsersWithPersonalRequestsEnabled = self->_numUsersWithPersonalRequestsEnabled;
    if (numUsersWithPersonalRequestsEnabled != [v4 numUsersWithPersonalRequestsEnabled])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_38;
  }

  if (v18)
  {
    numUsersWithMatchingSiriLanguage = self->_numUsersWithMatchingSiriLanguage;
    if (numUsersWithMatchingSiriLanguage != [v4 numUsersWithMatchingSiriLanguage])
    {
      goto LABEL_38;
    }

    has = self->_has;
    v6 = v4[22];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_38;
  }

  if (v20)
  {
    numUsersWithSiriCloudSyncEnabled = self->_numUsersWithSiriCloudSyncEnabled;
    if (numUsersWithSiriCloudSyncEnabled == [v4 numUsersWithSiriCloudSyncEnabled])
    {
      has = self->_has;
      v6 = v4[22];
      goto LABEL_34;
    }

LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

LABEL_34:
  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_38;
  }

  if (v22)
  {
    numUsersWithLocationServicesEnabled = self->_numUsersWithLocationServicesEnabled;
    if (numUsersWithLocationServicesEnabled != [v4 numUsersWithLocationServicesEnabled])
    {
      goto LABEL_38;
    }
  }

  v24 = 1;
LABEL_39:

  return v24;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
}

- (void)setHasNumUsersWithLocationServicesEnabled:(BOOL)a3
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

- (void)setHasNumUsersWithSiriCloudSyncEnabled:(BOOL)a3
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

- (void)setHasNumUsersWithMatchingSiriLanguage:(BOOL)a3
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

- (void)setHasNumUsersWithPersonalRequestsEnabled:(BOOL)a3
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

- (void)setHasNumVoiceProfilesAvailable:(BOOL)a3
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

- (void)setHasNumUsersWithRecognizeMyVoiceEnabled:(BOOL)a3
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

- (void)setHasNumUsersWhoSyncedRecognizeMyVoice:(BOOL)a3
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

- (void)setHasNumParticipantsWithTrust:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end