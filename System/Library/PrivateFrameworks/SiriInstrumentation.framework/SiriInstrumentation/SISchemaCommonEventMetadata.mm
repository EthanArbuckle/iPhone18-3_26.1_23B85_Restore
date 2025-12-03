@interface SISchemaCommonEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaCommonEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaCommonEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaCommonEventMetadata

- (SISchemaCommonEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SISchemaCommonEventMetadata;
  v5 = [(SISchemaCommonEventMetadata *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaLogicalTimestamp alloc] initWithDictionary:v6];
      [(SISchemaCommonEventMetadata *)v5 setTimestamp:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"testFingerprint"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(SISchemaCommonEventMetadata *)v5 setTestFingerprint:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(SISchemaCommonEventMetadata *)v5 setEventId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"emitTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaCommonEventMetadata setEmitTimestamp:](v5, "setEmitTimestamp:", [v12 longLongValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (SISchemaCommonEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaCommonEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaCommonEventMetadata *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaCommonEventMetadata emitTimestamp](self, "emitTimestamp")}];
    [dictionary setObject:v4 forKeyedSubscript:@"emitTimestamp"];
  }

  if (self->_eventId)
  {
    eventId = [(SISchemaCommonEventMetadata *)self eventId];
    dictionaryRepresentation = [eventId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventId"];
    }
  }

  if (self->_testFingerprint)
  {
    testFingerprint = [(SISchemaCommonEventMetadata *)self testFingerprint];
    dictionaryRepresentation2 = [testFingerprint dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"testFingerprint"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"testFingerprint"];
    }
  }

  if (self->_timestamp)
  {
    timestamp = [(SISchemaCommonEventMetadata *)self timestamp];
    dictionaryRepresentation3 = [timestamp dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"timestamp"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"timestamp"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaLogicalTimestamp *)self->_timestamp hash];
  v4 = [(SISchemaUUID *)self->_testFingerprint hash];
  v5 = [(SISchemaUUID *)self->_eventId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_emitTimestamp;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  timestamp = [(SISchemaCommonEventMetadata *)self timestamp];
  timestamp2 = [equalCopy timestamp];
  if ((timestamp != 0) == (timestamp2 == 0))
  {
    goto LABEL_16;
  }

  timestamp3 = [(SISchemaCommonEventMetadata *)self timestamp];
  if (timestamp3)
  {
    v8 = timestamp3;
    timestamp4 = [(SISchemaCommonEventMetadata *)self timestamp];
    timestamp5 = [equalCopy timestamp];
    v11 = [timestamp4 isEqual:timestamp5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  timestamp = [(SISchemaCommonEventMetadata *)self testFingerprint];
  timestamp2 = [equalCopy testFingerprint];
  if ((timestamp != 0) == (timestamp2 == 0))
  {
    goto LABEL_16;
  }

  testFingerprint = [(SISchemaCommonEventMetadata *)self testFingerprint];
  if (testFingerprint)
  {
    v13 = testFingerprint;
    testFingerprint2 = [(SISchemaCommonEventMetadata *)self testFingerprint];
    testFingerprint3 = [equalCopy testFingerprint];
    v16 = [testFingerprint2 isEqual:testFingerprint3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  timestamp = [(SISchemaCommonEventMetadata *)self eventId];
  timestamp2 = [equalCopy eventId];
  if ((timestamp != 0) == (timestamp2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  eventId = [(SISchemaCommonEventMetadata *)self eventId];
  if (eventId)
  {
    v18 = eventId;
    eventId2 = [(SISchemaCommonEventMetadata *)self eventId];
    eventId3 = [equalCopy eventId];
    v21 = [eventId2 isEqual:eventId3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[40] & 1))
  {
    if ((*&self->_has & 1) == 0 || (emitTimestamp = self->_emitTimestamp, emitTimestamp == [equalCopy emitTimestamp]))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  timestamp = [(SISchemaCommonEventMetadata *)self timestamp];

  if (timestamp)
  {
    timestamp2 = [(SISchemaCommonEventMetadata *)self timestamp];
    PBDataWriterWriteSubmessage();
  }

  testFingerprint = [(SISchemaCommonEventMetadata *)self testFingerprint];

  if (testFingerprint)
  {
    testFingerprint2 = [(SISchemaCommonEventMetadata *)self testFingerprint];
    PBDataWriterWriteSubmessage();
  }

  eventId = [(SISchemaCommonEventMetadata *)self eventId];

  if (eventId)
  {
    eventId2 = [(SISchemaCommonEventMetadata *)self eventId];
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
  v16.receiver = self;
  v16.super_class = SISchemaCommonEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  timestamp = [(SISchemaCommonEventMetadata *)self timestamp];
  v7 = [timestamp applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaCommonEventMetadata *)self deleteTimestamp];
  }

  testFingerprint = [(SISchemaCommonEventMetadata *)self testFingerprint];
  v10 = [testFingerprint applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaCommonEventMetadata *)self deleteTestFingerprint];
  }

  eventId = [(SISchemaCommonEventMetadata *)self eventId];
  v13 = [eventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaCommonEventMetadata *)self deleteEventId];
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