@interface SISchemaClientTransportEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaClientTransportEventMetadata)initWithDictionary:(id)dictionary;
- (SISchemaClientTransportEventMetadata)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasServerArrivedTimestampNs:(BOOL)ns;
- (void)writeTo:(id)to;
@end

@implementation SISchemaClientTransportEventMetadata

- (SISchemaClientTransportEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaClientTransportEventMetadata;
  v5 = [(SISchemaClientTransportEventMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventTransmittedTimestampRefId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaClientTransportEventMetadata *)v5 setEventTransmittedTimestampRefId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"eventTransmittedRelativeToBootTimeTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientTransportEventMetadata setEventTransmittedRelativeToBootTimeTimestampNs:](v5, "setEventTransmittedRelativeToBootTimeTimestampNs:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"serverArrivedTimestampNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaClientTransportEventMetadata setServerArrivedTimestampNs:](v5, "setServerArrivedTimestampNs:", [v9 longLongValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"arrivedServerPod"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(SISchemaClientTransportEventMetadata *)v5 setArrivedServerPod:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaClientTransportEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaClientTransportEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaClientTransportEventMetadata *)self dictionaryRepresentation];
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
  if (self->_arrivedServerPod)
  {
    arrivedServerPod = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
    v5 = [arrivedServerPod copy];
    [dictionary setObject:v5 forKeyedSubscript:@"arrivedServerPod"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientTransportEventMetadata eventTransmittedRelativeToBootTimeTimestampNs](self, "eventTransmittedRelativeToBootTimeTimestampNs")}];
    [dictionary setObject:v6 forKeyedSubscript:@"eventTransmittedRelativeToBootTimeTimestampNs"];
  }

  if (self->_eventTransmittedTimestampRefId)
  {
    eventTransmittedTimestampRefId = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
    v8 = [eventTransmittedTimestampRefId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"eventTransmittedTimestampRefId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaClientTransportEventMetadata serverArrivedTimestampNs](self, "serverArrivedTimestampNs")}];
    [dictionary setObject:v9 forKeyedSubscript:@"serverArrivedTimestampNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_eventTransmittedTimestampRefId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_eventTransmittedRelativeToBootTimeTimestampNs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5 ^ [(NSString *)self->_arrivedServerPod hash];
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_serverArrivedTimestampNs;
  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_arrivedServerPod hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  eventTransmittedTimestampRefId = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
  eventTransmittedTimestampRefId2 = [equalCopy eventTransmittedTimestampRefId];
  if ((eventTransmittedTimestampRefId != 0) == (eventTransmittedTimestampRefId2 == 0))
  {
    goto LABEL_18;
  }

  eventTransmittedTimestampRefId3 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
  if (eventTransmittedTimestampRefId3)
  {
    v8 = eventTransmittedTimestampRefId3;
    eventTransmittedTimestampRefId4 = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];
    eventTransmittedTimestampRefId5 = [equalCopy eventTransmittedTimestampRefId];
    v11 = [eventTransmittedTimestampRefId4 isEqual:eventTransmittedTimestampRefId5];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v13 = equalCopy[40];
  if ((*&has & 1) != (v13 & 1))
  {
    goto LABEL_19;
  }

  if (*&has)
  {
    eventTransmittedRelativeToBootTimeTimestampNs = self->_eventTransmittedRelativeToBootTimeTimestampNs;
    if (eventTransmittedRelativeToBootTimeTimestampNs != [equalCopy eventTransmittedRelativeToBootTimeTimestampNs])
    {
      goto LABEL_19;
    }

    has = self->_has;
    v13 = equalCopy[40];
  }

  v15 = (*&has >> 1) & 1;
  if (v15 != ((v13 >> 1) & 1))
  {
    goto LABEL_19;
  }

  if (v15)
  {
    serverArrivedTimestampNs = self->_serverArrivedTimestampNs;
    if (serverArrivedTimestampNs != [equalCopy serverArrivedTimestampNs])
    {
      goto LABEL_19;
    }
  }

  eventTransmittedTimestampRefId = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  eventTransmittedTimestampRefId2 = [equalCopy arrivedServerPod];
  if ((eventTransmittedTimestampRefId != 0) == (eventTransmittedTimestampRefId2 == 0))
  {
LABEL_18:

    goto LABEL_19;
  }

  arrivedServerPod = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  if (!arrivedServerPod)
  {

LABEL_22:
    v22 = 1;
    goto LABEL_20;
  }

  v18 = arrivedServerPod;
  arrivedServerPod2 = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];
  arrivedServerPod3 = [equalCopy arrivedServerPod];
  v21 = [arrivedServerPod2 isEqual:arrivedServerPod3];

  if (v21)
  {
    goto LABEL_22;
  }

LABEL_19:
  v22 = 0;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  eventTransmittedTimestampRefId = [(SISchemaClientTransportEventMetadata *)self eventTransmittedTimestampRefId];

  if (eventTransmittedTimestampRefId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  arrivedServerPod = [(SISchemaClientTransportEventMetadata *)self arrivedServerPod];

  v7 = toCopy;
  if (arrivedServerPod)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (void)setHasServerArrivedTimestampNs:(BOOL)ns
{
  if (ns)
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