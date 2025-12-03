@interface SessionSchemaOrderedSessionEvent
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SessionSchemaOrderedSessionEvent)initWithDictionary:(id)dictionary;
- (SessionSchemaOrderedSessionEvent)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SessionSchemaOrderedSessionEvent

- (SessionSchemaOrderedSessionEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SessionSchemaOrderedSessionEvent;
  v5 = [(SessionSchemaOrderedSessionEvent *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logicalEventTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SessionSchemaOrderedSessionEvent setLogicalEventTimestampInNs:](v5, "setLogicalEventTimestampInNs:", [v6 longLongValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"event"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaAnyEvent alloc] initWithDictionary:v7];
      [(SessionSchemaOrderedSessionEvent *)v5 setEvent:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaCommonEventMetadata alloc] initWithDictionary:v9];
      [(SessionSchemaOrderedSessionEvent *)v5 setMetadata:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SessionSchemaOrderedSessionEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SessionSchemaOrderedSessionEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SessionSchemaOrderedSessionEvent *)self dictionaryRepresentation];
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
  if (self->_event)
  {
    event = [(SessionSchemaOrderedSessionEvent *)self event];
    dictionaryRepresentation = [event dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"event"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"event"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SessionSchemaOrderedSessionEvent logicalEventTimestampInNs](self, "logicalEventTimestampInNs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"logicalEventTimestampInNs"];
  }

  if (self->_metadata)
  {
    metadata = [(SessionSchemaOrderedSessionEvent *)self metadata];
    dictionaryRepresentation2 = [metadata dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"metadata"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"metadata"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_logicalEventTimestampInNs;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaAnyEvent *)self->_event hash]^ v3;
  return v4 ^ [(SISchemaCommonEventMetadata *)self->_metadata hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    logicalEventTimestampInNs = self->_logicalEventTimestampInNs;
    if (logicalEventTimestampInNs != [equalCopy logicalEventTimestampInNs])
    {
      goto LABEL_15;
    }
  }

  event = [(SessionSchemaOrderedSessionEvent *)self event];
  event2 = [equalCopy event];
  if ((event != 0) == (event2 == 0))
  {
    goto LABEL_14;
  }

  event3 = [(SessionSchemaOrderedSessionEvent *)self event];
  if (event3)
  {
    v9 = event3;
    event4 = [(SessionSchemaOrderedSessionEvent *)self event];
    event5 = [equalCopy event];
    v12 = [event4 isEqual:event5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  event = [(SessionSchemaOrderedSessionEvent *)self metadata];
  event2 = [equalCopy metadata];
  if ((event != 0) != (event2 == 0))
  {
    metadata = [(SessionSchemaOrderedSessionEvent *)self metadata];
    if (!metadata)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = metadata;
    metadata2 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    metadata3 = [equalCopy metadata];
    v17 = [metadata2 isEqual:metadata3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  event = [(SessionSchemaOrderedSessionEvent *)self event];

  if (event)
  {
    event2 = [(SessionSchemaOrderedSessionEvent *)self event];
    PBDataWriterWriteSubmessage();
  }

  metadata = [(SessionSchemaOrderedSessionEvent *)self metadata];

  v7 = toCopy;
  if (metadata)
  {
    metadata2 = [(SessionSchemaOrderedSessionEvent *)self metadata];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SessionSchemaOrderedSessionEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  event = [(SessionSchemaOrderedSessionEvent *)self event];
  v7 = [event applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SessionSchemaOrderedSessionEvent *)self deleteEvent];
  }

  metadata = [(SessionSchemaOrderedSessionEvent *)self metadata];
  v10 = [metadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SessionSchemaOrderedSessionEvent *)self deleteMetadata];
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