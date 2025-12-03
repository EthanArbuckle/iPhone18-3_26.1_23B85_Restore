@interface PGSchemaPGClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGClientEventMetadata)initWithDictionary:(id)dictionary;
- (PGSchemaPGClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGClientEventMetadata

- (PGSchemaPGClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PGSchemaPGClientEventMetadata;
  v5 = [(PGSchemaPGClientEventMetadata *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PGSchemaPGClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(PGSchemaPGClientEventMetadata *)v5 setPlanCycleId:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PGSchemaPGClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGClientEventMetadata *)self dictionaryRepresentation];
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
  if (self->_ifRequestId)
  {
    ifRequestId = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
    dictionaryRepresentation = [ifRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"ifRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"ifRequestId"];
    }
  }

  if (self->_planCycleId)
  {
    planCycleId = [(PGSchemaPGClientEventMetadata *)self planCycleId];
    dictionaryRepresentation2 = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"planCycleId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PGSchemaPGClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v10 forKeyedSubscript:@"postingSpanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_postingSpanId;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaUUID *)self->_planCycleId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  ifRequestId = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_14;
  }

  ifRequestId3 = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v8 = ifRequestId3;
    ifRequestId4 = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v11 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [equalCopy postingSpanId])
    {
      goto LABEL_15;
    }
  }

  ifRequestId = [(PGSchemaPGClientEventMetadata *)self planCycleId];
  ifRequestId2 = [equalCopy planCycleId];
  if ((ifRequestId != 0) != (ifRequestId2 == 0))
  {
    planCycleId = [(PGSchemaPGClientEventMetadata *)self planCycleId];
    if (!planCycleId)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = planCycleId;
    planCycleId2 = [(PGSchemaPGClientEventMetadata *)self planCycleId];
    planCycleId3 = [equalCopy planCycleId];
    v17 = [planCycleId2 isEqual:planCycleId3];

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
  ifRequestId = [(PGSchemaPGClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  planCycleId = [(PGSchemaPGClientEventMetadata *)self planCycleId];

  v7 = toCopy;
  if (planCycleId)
  {
    planCycleId2 = [(PGSchemaPGClientEventMetadata *)self planCycleId];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PGSchemaPGClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  ifRequestId = [(PGSchemaPGClientEventMetadata *)self ifRequestId];
  v7 = [ifRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGClientEventMetadata *)self deleteIfRequestId];
  }

  planCycleId = [(PGSchemaPGClientEventMetadata *)self planCycleId];
  v10 = [planCycleId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PGSchemaPGClientEventMetadata *)self deletePlanCycleId];
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