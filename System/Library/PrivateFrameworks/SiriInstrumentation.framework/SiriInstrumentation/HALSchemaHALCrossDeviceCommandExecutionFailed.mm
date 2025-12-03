@interface HALSchemaHALCrossDeviceCommandExecutionFailed
- (BOOL)isEqual:(id)equal;
- (HALSchemaHALCrossDeviceCommandExecutionFailed)initWithDictionary:(id)dictionary;
- (HALSchemaHALCrossDeviceCommandExecutionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAction:(BOOL)action;
- (void)writeTo:(id)to;
@end

@implementation HALSchemaHALCrossDeviceCommandExecutionFailed

- (HALSchemaHALCrossDeviceCommandExecutionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = HALSchemaHALCrossDeviceCommandExecutionFailed;
  v5 = [(HALSchemaHALCrossDeviceCommandExecutionFailed *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCrossDeviceCommandExecutionFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"action"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALCrossDeviceCommandExecutionFailed setAction:](v5, "setAction:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (HALSchemaHALCrossDeviceCommandExecutionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HALSchemaHALCrossDeviceCommandExecutionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(HALSchemaHALCrossDeviceCommandExecutionFailed *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(HALSchemaHALCrossDeviceCommandExecutionFailed *)self action]- 1;
    if (v5 > 0x14)
    {
      v6 = @"HALACTION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D7BA8[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"action"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(HALSchemaHALCrossDeviceCommandExecutionFailed *)self reason]- 1;
    if (v7 > 2)
    {
      v8 = @"HALFAILUREREASON_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D7C50[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_reason;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_action;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    reason = self->_reason;
    if (reason != [equalCopy reason])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    action = self->_action;
    if (action != [equalCopy action])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasAction:(BOOL)action
{
  if (action)
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