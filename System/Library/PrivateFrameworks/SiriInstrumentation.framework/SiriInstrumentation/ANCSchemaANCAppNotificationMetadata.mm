@interface ANCSchemaANCAppNotificationMetadata
- (ANCSchemaANCAppNotificationMetadata)initWithDictionary:(id)dictionary;
- (ANCSchemaANCAppNotificationMetadata)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAskWithSiriEnabled:(BOOL)enabled;
- (void)setHasIsSmsEligible:(BOOL)eligible;
- (void)writeTo:(id)to;
@end

@implementation ANCSchemaANCAppNotificationMetadata

- (ANCSchemaANCAppNotificationMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ANCSchemaANCAppNotificationMetadata;
  v5 = [(ANCSchemaANCAppNotificationMetadata *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commsNotificationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setCommsNotificationType:](v5, "setCommsNotificationType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isSmsEligible"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setIsSmsEligible:](v5, "setIsSmsEligible:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isAskWithSiriEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ANCSchemaANCAppNotificationMetadata setIsAskWithSiriEnabled:](v5, "setIsAskWithSiriEnabled:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ANCSchemaANCAppNotificationMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ANCSchemaANCAppNotificationMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ANCSchemaANCAppNotificationMetadata *)self dictionaryRepresentation];
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

    [dictionary setObject:v6 forKeyedSubscript:@"commsNotificationType"];
    v4 = *(&self->_isAskWithSiriEnabled + 1);
  }

  if ((v4 & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCAppNotificationMetadata isAskWithSiriEnabled](self, "isAskWithSiriEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isAskWithSiriEnabled"];

    v4 = *(&self->_isAskWithSiriEnabled + 1);
  }

  if ((v4 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ANCSchemaANCAppNotificationMetadata isSmsEligible](self, "isSmsEligible")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isSmsEligible"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isAskWithSiriEnabled + 1);
  v6 = equalCopy[14];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    commsNotificationType = self->_commsNotificationType;
    if (commsNotificationType != [equalCopy commsNotificationType])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isAskWithSiriEnabled + 1);
    v6 = equalCopy[14];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isSmsEligible = self->_isSmsEligible;
    if (isSmsEligible == [equalCopy isSmsEligible])
    {
      v5 = *(&self->_isAskWithSiriEnabled + 1);
      v6 = equalCopy[14];
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
    if (isAskWithSiriEnabled != [equalCopy isAskWithSiriEnabled])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isAskWithSiriEnabled + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
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
  toCopy = v6;
  if ((*(&self->_isAskWithSiriEnabled + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasIsAskWithSiriEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isAskWithSiriEnabled + 1) = *(&self->_isAskWithSiriEnabled + 1) & 0xFB | v3;
}

- (void)setHasIsSmsEligible:(BOOL)eligible
{
  if (eligible)
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