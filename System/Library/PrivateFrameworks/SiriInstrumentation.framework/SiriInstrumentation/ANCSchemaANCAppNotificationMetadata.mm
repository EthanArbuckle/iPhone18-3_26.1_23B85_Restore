@interface ANCSchemaANCAppNotificationMetadata
- (ANCSchemaANCAppNotificationMetadata)initWithDictionary:(id)a3;
- (ANCSchemaANCAppNotificationMetadata)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAskWithSiriEnabled:(BOOL)a3;
- (void)setHasIsSmsEligible:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ANCSchemaANCAppNotificationMetadata

- (ANCSchemaANCAppNotificationMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ANCSchemaANCAppNotificationMetadata;
  v5 = [(ANCSchemaANCAppNotificationMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commsNotificationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setCommsNotificationType:](v5, "setCommsNotificationType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isSmsEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setIsSmsEligible:](v5, "setIsSmsEligible:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isAskWithSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setIsAskWithSiriEnabled:](v5, "setIsAskWithSiriEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ANCSchemaANCAppNotificationMetadata)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ANCSchemaANCAppNotificationMetadata *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ANCSchemaANCAppNotificationMetadata *)self dictionaryRepresentation];
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
  v4 = *(&self->_isAskWithSiriEnabled + 1);
  if (v4)
  {
    v5 = [(ANCSchemaANCAppNotificationMetadata *)self commsNotificationType]- 1;
    if (v5 > 2)
    {
      v6 = @"ANCCOMMUNICATIONAPINOTIFICATIONTYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D15E8[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"commsNotificationType"];
    v4 = *(&self->_isAskWithSiriEnabled + 1);
  }

  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCAppNotificationMetadata isAskWithSiriEnabled](self, "isAskWithSiriEnabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"isAskWithSiriEnabled"];

    v4 = *(&self->_isAskWithSiriEnabled + 1);
  }

  if ((v4 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCAppNotificationMetadata isSmsEligible](self, "isSmsEligible")}];
    [v3 setObject:v8 forKeyedSubscript:@"isSmsEligible"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (!*(&self->_isAskWithSiriEnabled + 1))
  {
    v2 = 0;
    if ((*(&self->_isAskWithSiriEnabled + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_isAskWithSiriEnabled + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_commsNotificationType;
  if ((*(&self->_isAskWithSiriEnabled + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isSmsEligible;
  if ((*(&self->_isAskWithSiriEnabled + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isAskWithSiriEnabled;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isAskWithSiriEnabled + 1);
  v6 = v4[14];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    commsNotificationType = self->_commsNotificationType;
    if (commsNotificationType != [v4 commsNotificationType])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isAskWithSiriEnabled + 1);
    v6 = v4[14];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isSmsEligible = self->_isSmsEligible;
    if (isSmsEligible == [v4 isSmsEligible])
    {
      v5 = *(&self->_isAskWithSiriEnabled + 1);
      v6 = v4[14];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    isAskWithSiriEnabled = self->_isAskWithSiriEnabled;
    if (isAskWithSiriEnabled != [v4 isAskWithSiriEnabled])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_isAskWithSiriEnabled + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    v5 = *(&self->_isAskWithSiriEnabled + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isAskWithSiriEnabled + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = v6;
  if ((*(&self->_isAskWithSiriEnabled + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasIsAskWithSiriEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAskWithSiriEnabled + 1) = *(&self->_isAskWithSiriEnabled + 1) & 0xFB | v3;
}

- (void)setHasIsSmsEligible:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAskWithSiriEnabled + 1) = *(&self->_isAskWithSiriEnabled + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end