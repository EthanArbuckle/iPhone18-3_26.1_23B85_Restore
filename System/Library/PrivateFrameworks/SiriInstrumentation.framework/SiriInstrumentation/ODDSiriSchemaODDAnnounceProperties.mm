@interface ODDSiriSchemaODDAnnounceProperties
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDAnnounceProperties)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDAnnounceProperties)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCarPlayStatus:(BOOL)status;
- (void)setHasIsAnnounceNotificationsEnabled:(BOOL)enabled;
- (void)setHasIsCarPlayMuted:(BOOL)muted;
- (void)setHasIsEnabledForHeadphones:(BOOL)headphones;
- (void)setHasIsProximityCardSeen:(BOOL)seen;
- (void)setHasIsReplyWithoutConfirmationEnabled:(BOOL)enabled;
- (void)setHasIsSpokenNotificationsControlCenterModuleEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDAnnounceProperties

- (ODDSiriSchemaODDAnnounceProperties)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = ODDSiriSchemaODDAnnounceProperties;
  v5 = [(ODDSiriSchemaODDAnnounceProperties *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isAnnounceCallsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsAnnounceCallsEnabled:](v5, "setIsAnnounceCallsEnabled:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"isAnnounceNotificationsEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsAnnounceNotificationsEnabled:](v5, "setIsAnnounceNotificationsEnabled:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isProximityCardSeen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsProximityCardSeen:](v5, "setIsProximityCardSeen:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isReplyWithoutConfirmationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsReplyWithoutConfirmationEnabled:](v5, "setIsReplyWithoutConfirmationEnabled:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isEnabledForHeadphones"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsEnabledForHeadphones:](v5, "setIsEnabledForHeadphones:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isSpokenNotificationsControlCenterModuleEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsSpokenNotificationsControlCenterModuleEnabled:](v5, "setIsSpokenNotificationsControlCenterModuleEnabled:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isCarPlayMuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setIsCarPlayMuted:](v5, "setIsCarPlayMuted:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"carPlayStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDAnnounceProperties setCarPlayStatus:](v5, "setCarPlayStatus:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDAnnounceProperties)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDAnnounceProperties *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDAnnounceProperties *)self dictionaryRepresentation];
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
  if (has < 0)
  {
    v5 = [(ODDSiriSchemaODDAnnounceProperties *)self carPlayStatus]- 1;
    if (v5 > 3)
    {
      v6 = @"ODDANNOUNCENOTIFICATIONSCARPLAYSTATUS_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DC930[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"carPlayStatus"];
    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isAnnounceCallsEnabled](self, "isAnnounceCallsEnabled")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isAnnounceCallsEnabled"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_8:
      if ((has & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isAnnounceNotificationsEnabled](self, "isAnnounceNotificationsEnabled")}];
  [dictionary setObject:v10 forKeyedSubscript:@"isAnnounceNotificationsEnabled"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isCarPlayMuted](self, "isCarPlayMuted")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isCarPlayMuted"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isEnabledForHeadphones](self, "isEnabledForHeadphones")}];
  [dictionary setObject:v12 forKeyedSubscript:@"isEnabledForHeadphones"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isProximityCardSeen](self, "isProximityCardSeen")}];
  [dictionary setObject:v13 forKeyedSubscript:@"isProximityCardSeen"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isReplyWithoutConfirmationEnabled](self, "isReplyWithoutConfirmationEnabled")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isReplyWithoutConfirmationEnabled"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_13:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ODDSiriSchemaODDAnnounceProperties isSpokenNotificationsControlCenterModuleEnabled](self, "isSpokenNotificationsControlCenterModuleEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isSpokenNotificationsControlCenterModuleEnabled"];
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isAnnounceCallsEnabled;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isAnnounceNotificationsEnabled;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isProximityCardSeen;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isReplyWithoutConfirmationEnabled;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_isEnabledForHeadphones;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_isSpokenNotificationsControlCenterModuleEnabled;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_isCarPlayMuted;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_carPlayStatus;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    isAnnounceCallsEnabled = self->_isAnnounceCallsEnabled;
    if (isAnnounceCallsEnabled != [equalCopy isAnnounceCallsEnabled])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    isAnnounceNotificationsEnabled = self->_isAnnounceNotificationsEnabled;
    if (isAnnounceNotificationsEnabled != [equalCopy isAnnounceNotificationsEnabled])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    isProximityCardSeen = self->_isProximityCardSeen;
    if (isProximityCardSeen != [equalCopy isProximityCardSeen])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    isReplyWithoutConfirmationEnabled = self->_isReplyWithoutConfirmationEnabled;
    if (isReplyWithoutConfirmationEnabled != [equalCopy isReplyWithoutConfirmationEnabled])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v14)
  {
    isEnabledForHeadphones = self->_isEnabledForHeadphones;
    if (isEnabledForHeadphones != [equalCopy isEnabledForHeadphones])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v16)
  {
    isSpokenNotificationsControlCenterModuleEnabled = self->_isSpokenNotificationsControlCenterModuleEnabled;
    if (isSpokenNotificationsControlCenterModuleEnabled != [equalCopy isSpokenNotificationsControlCenterModuleEnabled])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[20];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v18)
  {
    isCarPlayMuted = self->_isCarPlayMuted;
    if (isCarPlayMuted == [equalCopy isCarPlayMuted])
    {
      has = self->_has;
      v6 = equalCopy[20];
      goto LABEL_30;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((*&has & 0x80) != 0)
  {
    carPlayStatus = self->_carPlayStatus;
    if (carPlayStatus != [equalCopy carPlayStatus])
    {
      goto LABEL_34;
    }
  }

  v21 = 1;
LABEL_35:

  return v21;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
LABEL_9:
}

- (void)setHasCarPlayStatus:(BOOL)status
{
  if (status)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasIsCarPlayMuted:(BOOL)muted
{
  if (muted)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsSpokenNotificationsControlCenterModuleEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsEnabledForHeadphones:(BOOL)headphones
{
  if (headphones)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsReplyWithoutConfirmationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsProximityCardSeen:(BOOL)seen
{
  if (seen)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAnnounceNotificationsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end