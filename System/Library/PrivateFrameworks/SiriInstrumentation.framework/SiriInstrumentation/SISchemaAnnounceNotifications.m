@interface SISchemaAnnounceNotifications
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaAnnounceNotifications)initWithDictionary:(id)a3;
- (SISchemaAnnounceNotifications)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasCarPlayStatus:(BOOL)a3;
- (void)setHasIsCarPlayMuted:(BOOL)a3;
- (void)setHasIsEnabledForHeadphones:(BOOL)a3;
- (void)setHasProxCardSeen:(BOOL)a3;
- (void)setHasReplyWithoutConfirmation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaAnnounceNotifications

- (SISchemaAnnounceNotifications)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = SISchemaAnnounceNotifications;
  v5 = [(SISchemaAnnounceNotifications *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setIsEnabled:](v5, "setIsEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"proxCardSeen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setProxCardSeen:](v5, "setProxCardSeen:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"replyWithoutConfirmation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setReplyWithoutConfirmation:](v5, "setReplyWithoutConfirmation:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"carPlayStatus"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setCarPlayStatus:](v5, "setCarPlayStatus:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isEnabledForHeadphones"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setIsEnabledForHeadphones:](v5, "setIsEnabledForHeadphones:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isCarPlayMuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaAnnounceNotifications setIsCarPlayMuted:](v5, "setIsCarPlayMuted:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaAnnounceNotifications)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaAnnounceNotifications *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaAnnounceNotifications *)self dictionaryRepresentation];
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
  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 8) != 0)
  {
    v5 = [(SISchemaAnnounceNotifications *)self carPlayStatus]- 1;
    if (v5 > 3)
    {
      v6 = @"ANNOUNCENOTIFICATIONSCARPLAYSTATUS_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E2E58[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"carPlayStatus"];
    v4 = *(&self->_isCarPlayMuted + 1);
  }

  if ((v4 & 0x20) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceNotifications isCarPlayMuted](self, "isCarPlayMuted")}];
    [v3 setObject:v9 forKeyedSubscript:@"isCarPlayMuted"];

    v4 = *(&self->_isCarPlayMuted + 1);
    if ((v4 & 1) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }
  }

  else if ((v4 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceNotifications isEnabled](self, "isEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"isEnabled"];

  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceNotifications isEnabledForHeadphones](self, "isEnabledForHeadphones")}];
  [v3 setObject:v11 forKeyedSubscript:@"isEnabledForHeadphones"];

  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 2) == 0)
  {
LABEL_10:
    if ((v4 & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_18:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceNotifications proxCardSeen](self, "proxCardSeen")}];
  [v3 setObject:v12 forKeyedSubscript:@"proxCardSeen"];

  if ((*(&self->_isCarPlayMuted + 1) & 4) != 0)
  {
LABEL_11:
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaAnnounceNotifications replyWithoutConfirmation](self, "replyWithoutConfirmation")}];
    [v3 setObject:v7 forKeyedSubscript:@"replyWithoutConfirmation"];
  }

LABEL_12:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isCarPlayMuted + 1))
  {
    v2 = 2654435761 * self->_isEnabled;
    if ((*(&self->_isCarPlayMuted + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_proxCardSeen;
      if ((*(&self->_isCarPlayMuted + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_isCarPlayMuted + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isCarPlayMuted + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_replyWithoutConfirmation;
    if ((*(&self->_isCarPlayMuted + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*(&self->_isCarPlayMuted + 1) & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_carPlayStatus;
    if ((*(&self->_isCarPlayMuted + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*(&self->_isCarPlayMuted + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*(&self->_isCarPlayMuted + 1) & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_isEnabledForHeadphones;
  if ((*(&self->_isCarPlayMuted + 1) & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_isCarPlayMuted;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(&self->_isCarPlayMuted + 1);
  v6 = v4[18];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (v5)
  {
    isEnabled = self->_isEnabled;
    if (isEnabled != [v4 isEnabled])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isCarPlayMuted + 1);
    v6 = v4[18];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    proxCardSeen = self->_proxCardSeen;
    if (proxCardSeen != [v4 proxCardSeen])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isCarPlayMuted + 1);
    v6 = v4[18];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    replyWithoutConfirmation = self->_replyWithoutConfirmation;
    if (replyWithoutConfirmation != [v4 replyWithoutConfirmation])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isCarPlayMuted + 1);
    v6 = v4[18];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    carPlayStatus = self->_carPlayStatus;
    if (carPlayStatus != [v4 carPlayStatus])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isCarPlayMuted + 1);
    v6 = v4[18];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    isEnabledForHeadphones = self->_isEnabledForHeadphones;
    if (isEnabledForHeadphones == [v4 isEnabledForHeadphones])
    {
      v5 = *(&self->_isCarPlayMuted + 1);
      v6 = v4[18];
      goto LABEL_22;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v16)
  {
    isCarPlayMuted = self->_isCarPlayMuted;
    if (isCarPlayMuted != [v4 isCarPlayMuted])
    {
      goto LABEL_26;
    }
  }

  v18 = 1;
LABEL_27:

  return v18;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = *(&self->_isCarPlayMuted + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isCarPlayMuted + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(&self->_isCarPlayMuted + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  v4 = *(&self->_isCarPlayMuted + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isCarPlayMuted + 1) & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)setHasIsCarPlayMuted:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCarPlayMuted + 1) = *(&self->_isCarPlayMuted + 1) & 0xDF | v3;
}

- (void)setHasIsEnabledForHeadphones:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCarPlayMuted + 1) = *(&self->_isCarPlayMuted + 1) & 0xEF | v3;
}

- (void)setHasCarPlayStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCarPlayMuted + 1) = *(&self->_isCarPlayMuted + 1) & 0xF7 | v3;
}

- (void)setHasReplyWithoutConfirmation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCarPlayMuted + 1) = *(&self->_isCarPlayMuted + 1) & 0xFB | v3;
}

- (void)setHasProxCardSeen:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isCarPlayMuted + 1) = *(&self->_isCarPlayMuted + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end