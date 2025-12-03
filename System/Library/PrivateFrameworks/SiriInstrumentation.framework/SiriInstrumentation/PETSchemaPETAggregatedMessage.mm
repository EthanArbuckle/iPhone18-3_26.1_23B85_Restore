@interface PETSchemaPETAggregatedMessage
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PETSchemaPETAggregatedMessage)initWithDictionary:(id)dictionary;
- (PETSchemaPETAggregatedMessage)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PETSchemaPETAggregatedMessage

- (PETSchemaPETAggregatedMessage)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PETSchemaPETAggregatedMessage;
  v5 = [(PETSchemaPETAggregatedMessage *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PETSchemaPETAggregationKey alloc] initWithDictionary:v6];
      [(PETSchemaPETAggregatedMessage *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"count"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETAggregatedMessage setCount:](v5, "setCount:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"distribution"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PETSchemaPETDistribution alloc] initWithDictionary:v9];
      [(PETSchemaPETAggregatedMessage *)v5 setDistribution:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PETSchemaPETAggregatedMessage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PETSchemaPETAggregatedMessage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PETSchemaPETAggregatedMessage *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETAggregatedMessage count](self, "count")}];
    [dictionary setObject:v4 forKeyedSubscript:@"count"];
  }

  if (self->_distribution)
  {
    distribution = [(PETSchemaPETAggregatedMessage *)self distribution];
    dictionaryRepresentation = [distribution dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"distribution"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"distribution"];
    }
  }

  if (self->_key)
  {
    v8 = [(PETSchemaPETAggregatedMessage *)self key];
    dictionaryRepresentation2 = [v8 dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"key"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"key"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(PETSchemaPETAggregationKey *)self->_key hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_count;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(PETSchemaPETDistribution *)self->_distribution hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  distribution = [(PETSchemaPETAggregatedMessage *)self key];
  distribution2 = [equalCopy key];
  if ((distribution != 0) == (distribution2 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(PETSchemaPETAggregatedMessage *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(PETSchemaPETAggregatedMessage *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

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
    count = self->_count;
    if (count != [equalCopy count])
    {
      goto LABEL_15;
    }
  }

  distribution = [(PETSchemaPETAggregatedMessage *)self distribution];
  distribution2 = [equalCopy distribution];
  if ((distribution != 0) != (distribution2 == 0))
  {
    distribution3 = [(PETSchemaPETAggregatedMessage *)self distribution];
    if (!distribution3)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = distribution3;
    distribution4 = [(PETSchemaPETAggregatedMessage *)self distribution];
    distribution5 = [equalCopy distribution];
    v17 = [distribution4 isEqual:distribution5];

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
  v4 = [(PETSchemaPETAggregatedMessage *)self key];

  if (v4)
  {
    v5 = [(PETSchemaPETAggregatedMessage *)self key];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  distribution = [(PETSchemaPETAggregatedMessage *)self distribution];

  v7 = toCopy;
  if (distribution)
  {
    distribution2 = [(PETSchemaPETAggregatedMessage *)self distribution];
    PBDataWriterWriteSubmessage();

    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PETSchemaPETAggregatedMessage;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PETSchemaPETAggregatedMessage *)self key];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PETSchemaPETAggregatedMessage *)self deleteKey];
  }

  distribution = [(PETSchemaPETAggregatedMessage *)self distribution];
  v10 = [distribution applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PETSchemaPETAggregatedMessage *)self deleteDistribution];
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