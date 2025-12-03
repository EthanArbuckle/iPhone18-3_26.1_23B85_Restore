@interface ODBATCHSiriSchemaODBATCHClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODBATCHSiriSchemaODBATCHClientEventMetadata)initWithDictionary:(id)dictionary;
- (ODBATCHSiriSchemaODBATCHClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODBATCHSiriSchemaODBATCHClientEventMetadata

- (ODBATCHSiriSchemaODBATCHClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = ODBATCHSiriSchemaODBATCHClientEventMetadata;
  v5 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"odbatchId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)v5 setOdbatchId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aggregationInterval"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODDSiriSchemaODDTimeInterval alloc] initWithDictionary:v8];
      [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)v5 setAggregationInterval:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventTimestampInMsSince1970"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODBATCHSiriSchemaODBATCHClientEventMetadata setEventTimestampInMsSince1970:](v5, "setEventTimestampInMsSince1970:", [v10 unsignedLongLongValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (ODBATCHSiriSchemaODBATCHClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_aggregationInterval)
  {
    aggregationInterval = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
    dictionaryRepresentation = [aggregationInterval dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"aggregationInterval"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"aggregationInterval"];
    }
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[ODBATCHSiriSchemaODBATCHClientEventMetadata eventTimestampInMsSince1970](self, "eventTimestampInMsSince1970")}];
    [dictionary setObject:v7 forKeyedSubscript:@"eventTimestampInMsSince1970"];
  }

  if (self->_odbatchId)
  {
    odbatchId = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
    dictionaryRepresentation2 = [odbatchId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"odbatchId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"odbatchId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_odbatchId hash];
  v4 = [(ODDSiriSchemaODDTimeInterval *)self->_aggregationInterval hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_eventTimestampInMsSince1970;
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

  odbatchId = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
  odbatchId2 = [equalCopy odbatchId];
  if ((odbatchId != 0) == (odbatchId2 == 0))
  {
    goto LABEL_11;
  }

  odbatchId3 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
  if (odbatchId3)
  {
    v8 = odbatchId3;
    odbatchId4 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
    odbatchId5 = [equalCopy odbatchId];
    v11 = [odbatchId4 isEqual:odbatchId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  odbatchId = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
  odbatchId2 = [equalCopy aggregationInterval];
  if ((odbatchId != 0) == (odbatchId2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  aggregationInterval = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
  if (aggregationInterval)
  {
    v13 = aggregationInterval;
    aggregationInterval2 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
    aggregationInterval3 = [equalCopy aggregationInterval];
    v16 = [aggregationInterval2 isEqual:aggregationInterval3];

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
    if ((*&self->_has & 1) == 0 || (eventTimestampInMsSince1970 = self->_eventTimestampInMsSince1970, eventTimestampInMsSince1970 == [equalCopy eventTimestampInMsSince1970]))
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
  odbatchId = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];

  if (odbatchId)
  {
    odbatchId2 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
    PBDataWriterWriteSubmessage();
  }

  aggregationInterval = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];

  if (aggregationInterval)
  {
    aggregationInterval2 = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODBATCHSiriSchemaODBATCHClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  odbatchId = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self odbatchId];
  v7 = [odbatchId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self deleteOdbatchId];
  }

  aggregationInterval = [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self aggregationInterval];
  v10 = [aggregationInterval applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODBATCHSiriSchemaODBATCHClientEventMetadata *)self deleteAggregationInterval];
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