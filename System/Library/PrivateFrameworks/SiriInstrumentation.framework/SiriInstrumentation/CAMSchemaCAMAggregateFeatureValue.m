@interface CAMSchemaCAMAggregateFeatureValue
- (BOOL)isEqual:(id)a3;
- (CAMSchemaCAMAggregateFeatureValue)initWithDictionary:(id)a3;
- (CAMSchemaCAMAggregateFeatureValue)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumInteractions:(BOOL)a3;
- (void)setHasVariance:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CAMSchemaCAMAggregateFeatureValue

- (CAMSchemaCAMAggregateFeatureValue)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CAMSchemaCAMAggregateFeatureValue;
  v5 = [(CAMSchemaCAMAggregateFeatureValue *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"mean"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(CAMSchemaCAMAggregateFeatureValue *)v5 setMean:?];
    }

    v7 = [v4 objectForKeyedSubscript:@"variance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      [(CAMSchemaCAMAggregateFeatureValue *)v5 setVariance:?];
    }

    v8 = [v4 objectForKeyedSubscript:@"numInteractions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CAMSchemaCAMAggregateFeatureValue setNumInteractions:](v5, "setNumInteractions:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (CAMSchemaCAMAggregateFeatureValue)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CAMSchemaCAMAggregateFeatureValue *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CAMSchemaCAMAggregateFeatureValue *)self dictionaryRepresentation];
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
  if (has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(CAMSchemaCAMAggregateFeatureValue *)self mean];
    v9 = [v8 numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"mean"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[CAMSchemaCAMAggregateFeatureValue numInteractions](self, "numInteractions")}];
  [v3 setObject:v10 forKeyedSubscript:@"numInteractions"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = MEMORY[0x1E696AD98];
    [(CAMSchemaCAMAggregateFeatureValue *)self variance];
    v6 = [v5 numberWithDouble:?];
    [v3 setObject:v6 forKeyedSubscript:@"variance"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    mean = self->_mean;
    if (mean < 0.0)
    {
      mean = -mean;
    }

    *v2.i64 = floor(mean + 0.5);
    v6 = (mean - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    variance = self->_variance;
    if (variance < 0.0)
    {
      variance = -variance;
    }

    *v2.i64 = floor(variance + 0.5);
    v10 = (variance - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_numInteractions;
  }

  else
  {
    v12 = 0;
  }

  return v8 ^ v4 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[28];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    mean = self->_mean;
    [v4 mean];
    if (mean != v8)
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[28];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v9)
  {
    variance = self->_variance;
    [v4 variance];
    if (variance == v11)
    {
      has = self->_has;
      v6 = v4[28];
      goto LABEL_10;
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v12 = (*&has >> 2) & 1;
  if (v12 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v12)
  {
    numInteractions = self->_numInteractions;
    if (numInteractions != [v4 numInteractions])
    {
      goto LABEL_14;
    }
  }

  v14 = 1;
LABEL_15:

  return v14;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    v4 = v6;
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

  PBDataWriterWriteDoubleField();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasNumInteractions:(BOOL)a3
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

- (void)setHasVariance:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end