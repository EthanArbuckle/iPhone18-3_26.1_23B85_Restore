@interface PRSiriSchemaPRClientEventMetadata
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PRSiriSchemaPRClientEventMetadata)initWithDictionary:(id)dictionary;
- (PRSiriSchemaPRClientEventMetadata)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpanId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PRSiriSchemaPRClientEventMetadata

- (PRSiriSchemaPRClientEventMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PRSiriSchemaPRClientEventMetadata;
  v5 = [(PRSiriSchemaPRClientEventMetadata *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setIfRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"postingSpanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRClientEventMetadata setPostingSpanId:](v5, "setPostingSpanId:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"pgId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setPgId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"spanId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRSiriSchemaPRClientEventMetadata setSpanId:](v5, "setSpanId:", [v11 unsignedLongLongValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"prId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PRSiriSchemaPRClientEventMetadata *)v5 setPrId:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (PRSiriSchemaPRClientEventMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PRSiriSchemaPRClientEventMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PRSiriSchemaPRClientEventMetadata *)self dictionaryRepresentation];
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
    ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
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

  if (self->_pgId)
  {
    pgId = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    dictionaryRepresentation2 = [pgId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pgId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pgId"];
    }
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PRSiriSchemaPRClientEventMetadata postingSpanId](self, "postingSpanId")}];
    [dictionary setObject:v10 forKeyedSubscript:@"postingSpanId"];
  }

  if (self->_prId)
  {
    prId = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    dictionaryRepresentation3 = [prId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"prId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"prId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PRSiriSchemaPRClientEventMetadata spanId](self, "spanId")}];
    [dictionary setObject:v14 forKeyedSubscript:@"spanId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_ifRequestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_postingSpanId;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(SISchemaUUID *)self->_pgId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761u * self->_spanId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_prId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  ifRequestId2 = [equalCopy ifRequestId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_22;
  }

  ifRequestId3 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  if (ifRequestId3)
  {
    v8 = ifRequestId3;
    ifRequestId4 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
    ifRequestId5 = [equalCopy ifRequestId];
    v11 = [ifRequestId4 isEqual:ifRequestId5];

    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    postingSpanId = self->_postingSpanId;
    if (postingSpanId != [equalCopy postingSpanId])
    {
      goto LABEL_23;
    }
  }

  ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  ifRequestId2 = [equalCopy pgId];
  if ((ifRequestId != 0) == (ifRequestId2 == 0))
  {
    goto LABEL_22;
  }

  pgId = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  if (pgId)
  {
    v14 = pgId;
    pgId2 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    pgId3 = [equalCopy pgId];
    v17 = [pgId2 isEqual:pgId3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  v18 = (*&self->_has >> 1) & 1;
  if (v18 != ((equalCopy[48] >> 1) & 1))
  {
    goto LABEL_23;
  }

  if (v18)
  {
    spanId = self->_spanId;
    if (spanId != [equalCopy spanId])
    {
      goto LABEL_23;
    }
  }

  ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self prId];
  ifRequestId2 = [equalCopy prId];
  if ((ifRequestId != 0) != (ifRequestId2 == 0))
  {
    prId = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    if (!prId)
    {

LABEL_26:
      v25 = 1;
      goto LABEL_24;
    }

    v21 = prId;
    prId2 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    prId3 = [equalCopy prId];
    v24 = [prId2 isEqual:prId3];

    if (v24)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v25 = 0;
LABEL_24:

  return v25;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];

  if (ifRequestId)
  {
    ifRequestId2 = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  pgId = [(PRSiriSchemaPRClientEventMetadata *)self pgId];

  if (pgId)
  {
    pgId2 = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }

  prId = [(PRSiriSchemaPRClientEventMetadata *)self prId];

  v9 = toCopy;
  if (prId)
  {
    prId2 = [(PRSiriSchemaPRClientEventMetadata *)self prId];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (void)setHasSpanId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = PRSiriSchemaPRClientEventMetadata;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  ifRequestId = [(PRSiriSchemaPRClientEventMetadata *)self ifRequestId];
  v7 = [ifRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deleteIfRequestId];
  }

  pgId = [(PRSiriSchemaPRClientEventMetadata *)self pgId];
  v10 = [pgId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deletePgId];
  }

  prId = [(PRSiriSchemaPRClientEventMetadata *)self prId];
  v13 = [prId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PRSiriSchemaPRClientEventMetadata *)self deletePrId];
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