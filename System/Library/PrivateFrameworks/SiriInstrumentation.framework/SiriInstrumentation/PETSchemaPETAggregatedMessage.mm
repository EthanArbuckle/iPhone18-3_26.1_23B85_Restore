@interface PETSchemaPETAggregatedMessage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PETSchemaPETAggregatedMessage)initWithDictionary:(id)a3;
- (PETSchemaPETAggregatedMessage)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PETSchemaPETAggregatedMessage

- (PETSchemaPETAggregatedMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PETSchemaPETAggregatedMessage;
  v5 = [(PETSchemaPETAggregatedMessage *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PETSchemaPETAggregationKey alloc] initWithDictionary:v6];
      [(PETSchemaPETAggregatedMessage *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"count"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETAggregatedMessage setCount:](v5, "setCount:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"distribution"];
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

- (PETSchemaPETAggregatedMessage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PETSchemaPETAggregatedMessage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PETSchemaPETAggregatedMessage *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETAggregatedMessage count](self, "count")}];
    [v3 setObject:v4 forKeyedSubscript:@"count"];
  }

  if (self->_distribution)
  {
    v5 = [(PETSchemaPETAggregatedMessage *)self distribution];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"distribution"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"distribution"];
    }
  }

  if (self->_key)
  {
    v8 = [(PETSchemaPETAggregatedMessage *)self key];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"key"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"key"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(PETSchemaPETAggregatedMessage *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(PETSchemaPETAggregatedMessage *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(PETSchemaPETAggregatedMessage *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    count = self->_count;
    if (count != [v4 count])
    {
      goto LABEL_15;
    }
  }

  v5 = [(PETSchemaPETAggregatedMessage *)self distribution];
  v6 = [v4 distribution];
  if ((v5 != 0) != (v6 == 0))
  {
    v13 = [(PETSchemaPETAggregatedMessage *)self distribution];
    if (!v13)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = v13;
    v15 = [(PETSchemaPETAggregatedMessage *)self distribution];
    v16 = [v4 distribution];
    v17 = [v15 isEqual:v16];

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

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  v6 = [(PETSchemaPETAggregatedMessage *)self distribution];

  v7 = v9;
  if (v6)
  {
    v8 = [(PETSchemaPETAggregatedMessage *)self distribution];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PETSchemaPETAggregatedMessage;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(PETSchemaPETAggregatedMessage *)self key];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PETSchemaPETAggregatedMessage *)self deleteKey];
  }

  v9 = [(PETSchemaPETAggregatedMessage *)self distribution];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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