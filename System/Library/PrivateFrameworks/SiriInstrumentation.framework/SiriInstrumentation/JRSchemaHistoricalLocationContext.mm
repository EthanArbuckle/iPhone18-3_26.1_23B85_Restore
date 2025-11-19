@interface JRSchemaHistoricalLocationContext
- (BOOL)isEqual:(id)a3;
- (JRSchemaHistoricalLocationContext)initWithDictionary:(id)a3;
- (JRSchemaHistoricalLocationContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBucketedDistance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaHistoricalLocationContext

- (JRSchemaHistoricalLocationContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = JRSchemaHistoricalLocationContext;
  v5 = [(JRSchemaHistoricalLocationContext *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"logOfTimeElapsedInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(JRSchemaHistoricalLocationContext *)v5 setLogOfTimeElapsedInSeconds:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"anonymizedLocationNameId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(JRSchemaHistoricalLocationContext *)v5 setAnonymizedLocationNameId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"anonymizedLocationTypeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(JRSchemaHistoricalLocationContext *)v5 setAnonymizedLocationTypeId:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"bucketedDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaHistoricalLocationContext setBucketedDistance:](v5, "setBucketedDistance:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaHistoricalLocationContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaHistoricalLocationContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaHistoricalLocationContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedLocationNameId)
  {
    v4 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"anonymizedLocationNameId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"anonymizedLocationNameId"];
    }
  }

  if (self->_anonymizedLocationTypeId)
  {
    v7 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"anonymizedLocationTypeId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"anonymizedLocationTypeId"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v11 = [(JRSchemaHistoricalLocationContext *)self bucketedDistance]- 1;
    if (v11 > 6)
    {
      v12 = @"JRBUCKETEDDISTANCE_UNKNOWN";
    }

    else
    {
      v12 = off_1E78D8C30[v11];
    }

    [v3 setObject:v12 forKeyedSubscript:@"bucketedDistance"];
    has = self->_has;
  }

  if (has)
  {
    v13 = MEMORY[0x1E696AD98];
    [(JRSchemaHistoricalLocationContext *)self logOfTimeElapsedInSeconds];
    v14 = [v13 numberWithFloat:?];
    [v3 setObject:v14 forKeyedSubscript:@"logOfTimeElapsedInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    logOfTimeElapsedInSeconds = self->_logOfTimeElapsedInSeconds;
    if (logOfTimeElapsedInSeconds >= 0.0)
    {
      v7 = logOfTimeElapsedInSeconds;
    }

    else
    {
      v7 = -logOfTimeElapsedInSeconds;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = [(SISchemaUUID *)self->_anonymizedLocationNameId hash];
  v11 = [(SISchemaUUID *)self->_anonymizedLocationTypeId hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_bucketedDistance;
  }

  else
  {
    v12 = 0;
  }

  return v10 ^ v5 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    logOfTimeElapsedInSeconds = self->_logOfTimeElapsedInSeconds;
    [v4 logOfTimeElapsedInSeconds];
    if (logOfTimeElapsedInSeconds != v6)
    {
      goto LABEL_15;
    }
  }

  v7 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  v8 = [v4 anonymizedLocationNameId];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_14;
  }

  v9 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  if (v9)
  {
    v10 = v9;
    v11 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    v12 = [v4 anonymizedLocationNameId];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v7 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  v8 = [v4 anonymizedLocationTypeId];
  if ((v7 != 0) == (v8 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v14 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  if (v14)
  {
    v15 = v14;
    v16 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    v17 = [v4 anonymizedLocationTypeId];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v21 = (*&self->_has >> 1) & 1;
  if (v21 == ((v4[36] >> 1) & 1))
  {
    if (!v21 || (bucketedDistance = self->_bucketedDistance, bucketedDistance == [v4 bucketedDistance]))
    {
      v19 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  v4 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];

  if (v4)
  {
    v5 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];

  if (v6)
  {
    v7 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasBucketedDistance:(BOOL)a3
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
  v4 = a3;
  v13.receiver = self;
  v13.super_class = JRSchemaHistoricalLocationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(JRSchemaHistoricalLocationContext *)self deleteAnonymizedLocationNameId];
  }

  v9 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(JRSchemaHistoricalLocationContext *)self deleteAnonymizedLocationTypeId];
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