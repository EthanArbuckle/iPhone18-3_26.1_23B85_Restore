@interface SISchemaABClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaABClientEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaABClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaABClientEventMetadata

- (SISchemaABClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaABClientEventMetadata;
  v5 = [(SISchemaABClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriDeviceId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(SISchemaABClientEventMetadata *)v5 setSiriDeviceId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"speechId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaABClientEventMetadata *)v5 setSpeechId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"timeIntervalSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 doubleValue];
      [(SISchemaABClientEventMetadata *)v5 setTimeIntervalSince1970:?];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaABClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaABClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaABClientEventMetadata *)self dictionaryRepresentation];
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
    siriDeviceId = [(SISchemaABClientEventMetadata *)self siriDeviceId];
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
    speechId = [(SISchemaABClientEventMetadata *)self speechId];
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
    v10 = MEMORY[0x1E696AD98];
    [(SISchemaABClientEventMetadata *)self timeIntervalSince1970];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"timeIntervalSince1970"];
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
    timeIntervalSince1970 = self->_timeIntervalSince1970;
    if (timeIntervalSince1970 < 0.0)
    {
      timeIntervalSince1970 = -timeIntervalSince1970;
    }

    *v5.i64 = floor(timeIntervalSince1970 + 0.5);
    v9 = (timeIntervalSince1970 - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  siriDeviceId = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  siriDeviceId2 = [equalCopy siriDeviceId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
    goto LABEL_11;
  }

  siriDeviceId3 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  if (siriDeviceId3)
  {
    v8 = siriDeviceId3;
    siriDeviceId4 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
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

  siriDeviceId = [(SISchemaABClientEventMetadata *)self speechId];
  siriDeviceId2 = [equalCopy speechId];
  if ((siriDeviceId != 0) == (siriDeviceId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  speechId = [(SISchemaABClientEventMetadata *)self speechId];
  if (speechId)
  {
    v13 = speechId;
    speechId2 = [(SISchemaABClientEventMetadata *)self speechId];
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
    if ((*&self->_has & 1) == 0 || (timeIntervalSince1970 = self->_timeIntervalSince1970, [equalCopy timeIntervalSince1970], timeIntervalSince1970 == v20))
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
  siriDeviceId = [(SISchemaABClientEventMetadata *)self siriDeviceId];

  if (siriDeviceId)
  {
    siriDeviceId2 = [(SISchemaABClientEventMetadata *)self siriDeviceId];
    PBDataWriterWriteSubmessage();
  }

  speechId = [(SISchemaABClientEventMetadata *)self speechId];

  if (speechId)
  {
    speechId2 = [(SISchemaABClientEventMetadata *)self speechId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaABClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:8])
  {
    [(SISchemaABClientEventMetadata *)self deleteSiriDeviceId];
    [(SISchemaABClientEventMetadata *)self deleteSpeechId];
  }

  siriDeviceId = [(SISchemaABClientEventMetadata *)self siriDeviceId];
  v7 = [siriDeviceId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaABClientEventMetadata *)self deleteSiriDeviceId];
  }

  speechId = [(SISchemaABClientEventMetadata *)self speechId];
  v10 = [speechId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaABClientEventMetadata *)self deleteSpeechId];
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