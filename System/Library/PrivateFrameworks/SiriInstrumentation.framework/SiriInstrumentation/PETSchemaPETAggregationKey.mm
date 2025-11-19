@interface PETSchemaPETAggregationKey
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PETSchemaPETAggregationKey)initWithDictionary:(id)a3;
- (PETSchemaPETAggregationKey)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBucket:(BOOL)a3;
- (void)setHasDatestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PETSchemaPETAggregationKey

- (PETSchemaPETAggregationKey)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PETSchemaPETAggregationKey;
  v5 = [(PETSchemaPETAggregationKey *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETAggregationKey setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"datestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PETSchemaPETAggregationKey setDatestamp:](v5, "setDatestamp:", [v7 unsignedIntValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"bucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(PETSchemaPETAggregationKey *)v5 setBucket:?];
    }

    v9 = [v4 objectForKeyedSubscript:@"rawMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PETSchemaPETRawMessage alloc] initWithDictionary:v9];
      [(PETSchemaPETAggregationKey *)v5 setRaw_message:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (PETSchemaPETAggregationKey)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PETSchemaPETAggregationKey *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PETSchemaPETAggregationKey *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = MEMORY[0x1E696AD98];
    [(PETSchemaPETAggregationKey *)self bucket];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"bucket"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PETSchemaPETAggregationKey datestamp](self, "datestamp")}];
    [v3 setObject:v7 forKeyedSubscript:@"datestamp"];
  }

  if (self->_raw_message)
  {
    v8 = [(PETSchemaPETAggregationKey *)self raw_message];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"rawMessage"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"rawMessage"];
    }
  }

  if (*&self->_has)
  {
    v11 = [(PETSchemaPETAggregationKey *)self type]- 1;
    if (v11 > 2)
    {
      v12 = @"UNKNOWN";
    }

    else
    {
      v12 = off_1E78DFE50[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = 0;
    return v9 ^ v8 ^ v13 ^ [(PETSchemaPETRawMessage *)self->_raw_message hash:v3];
  }

  v8 = 2654435761 * self->_type;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v9 = 2654435761 * self->_datestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  bucket = self->_bucket;
  if (bucket < 0.0)
  {
    bucket = -bucket;
  }

  *v6.i64 = floor(bucket + 0.5);
  v11 = (bucket - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  return v9 ^ v8 ^ v13 ^ [(PETSchemaPETRawMessage *)self->_raw_message hash:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    type = self->_type;
    if (type != [v4 type])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      datestamp = self->_datestamp;
      if (datestamp != [v4 datestamp])
      {
        goto LABEL_18;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (!v10 || (bucket = self->_bucket, [v4 bucket], bucket == v12))
      {
        v13 = [(PETSchemaPETAggregationKey *)self raw_message];
        v14 = [v4 raw_message];
        v15 = v14;
        if ((v13 != 0) != (v14 == 0))
        {
          v16 = [(PETSchemaPETAggregationKey *)self raw_message];
          if (!v16)
          {

LABEL_21:
            v21 = 1;
            goto LABEL_19;
          }

          v17 = v16;
          v18 = [(PETSchemaPETAggregationKey *)self raw_message];
          v19 = [v4 raw_message];
          v20 = [v18 isEqual:v19];

          if (v20)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }
  }

LABEL_18:
  v21 = 0;
LABEL_19:

  return v21;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteDoubleField();
  }

LABEL_5:
  v5 = [(PETSchemaPETAggregationKey *)self raw_message];

  v6 = v8;
  if (v5)
  {
    v7 = [(PETSchemaPETAggregationKey *)self raw_message];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasBucket:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDatestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PETSchemaPETAggregationKey;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PETSchemaPETAggregationKey *)self raw_message:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PETSchemaPETAggregationKey *)self deleteRaw_message];
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