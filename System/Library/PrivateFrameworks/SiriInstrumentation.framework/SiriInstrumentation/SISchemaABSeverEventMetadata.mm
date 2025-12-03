@interface SISchemaABSeverEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABSeverEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaABSeverEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABSeverEventMetadata

- (SISchemaABSeverEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaABSeverEventMetadata;
  v5 = [(SISchemaABSeverEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaABSeverEventMetadata *)v5 setSiriDeviceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaABSeverEventMetadata *)v5 setSpeechId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"timestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaABSeverEventMetadata setTimestampNs:](v5, "setTimestampNs:", [v10 longLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaABSeverEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABSeverEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABSeverEventMetadata *)self dictionaryRepresentation];
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
  if (self->_siriDeviceId)
  {
    siriDeviceId = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
    dictionaryRepresentation = [siriDeviceId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriDeviceId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriDeviceId"];
    }
  }

  if (self->_speechId)
  {
    speechId = [(SISchemaABSeverEventMetadata *)self speechId];
    dictionaryRepresentation2 = [speechId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"speechId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"speechId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaABSeverEventMetadata timestampNs](self, "timestampNs")}];
    [dictionary setObject:v10 forKeyedSubscript:@"timestampNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_siriDeviceId hash];
  v4 = [(SISchemaUUID *)self->_speechId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_timestampNs;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  siriDeviceId = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
  siriDeviceId2 = [equalCopy siriDeviceId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
    goto LABEL_11;
  }

  siriDeviceId3 = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
  if (siriDeviceId3)
  {
    v8 = siriDeviceId3;
    siriDeviceId4 = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
    siriDeviceId5 = [equalCopy siriDeviceId];
    v11 = [siriDeviceId4 isEqual:siriDeviceId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  siriDeviceId = [(SISchemaABSeverEventMetadata *)self speechId];
  siriDeviceId2 = [equalCopy speechId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  speechId = [(SISchemaABSeverEventMetadata *)self speechId];
  if (speechId)
  {
    v13 = speechId;
    speechId2 = [(SISchemaABSeverEventMetadata *)self speechId];
    speechId3 = [equalCopy speechId];
    v16 = [speechId2 isEqual:speechId3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[32] & 1))
  {
    if ((*&self->_has & 1) == 0 || (timestampNs = self->_timestampNs, timestampNs == [equalCopy timestampNs]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriDeviceId = [(SISchemaABSeverEventMetadata *)self siriDeviceId];

  if (siriDeviceId)
  {
    siriDeviceId2 = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
    PBDataWriterWriteSubmessage();
  }

  speechId = [(SISchemaABSeverEventMetadata *)self speechId];

  if (speechId)
  {
    speechId2 = [(SISchemaABSeverEventMetadata *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaABSeverEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(SISchemaABSeverEventMetadata *)self deleteSiriDeviceId];
    [(SISchemaABSeverEventMetadata *)self deleteSpeechId];
  }

  siriDeviceId = [(SISchemaABSeverEventMetadata *)self siriDeviceId];
  v7 = [siriDeviceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaABSeverEventMetadata *)self deleteSiriDeviceId];
  }

  speechId = [(SISchemaABSeverEventMetadata *)self speechId];
  v10 = [speechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaABSeverEventMetadata *)self deleteSpeechId];
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