@interface ODMSiriSchemaODMSiriAggregationDimensions
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriAggregationDimensions)initWithDictionary:(id)a3;
- (ODMSiriSchemaODMSiriAggregationDimensions)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAggregationIntervalStartTimestampInSecondsSince2001:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ODMSiriSchemaODMSiriAggregationDimensions

- (ODMSiriSchemaODMSiriAggregationDimensions)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriAggregationDimensions;
  v5 = [(ODMSiriSchemaODMSiriAggregationDimensions *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriAggregationDimensions *)v5 setSiriInputLocale:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"aggregationIntervalInDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriAggregationDimensions setAggregationIntervalInDays:](v5, "setAggregationIntervalInDays:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"aggregationIntervalStartTimestampInSecondsSince2001"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(ODMSiriSchemaODMSiriAggregationDimensions *)v5 setAggregationIntervalStartTimestampInSecondsSince2001:?];
    }

    v10 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriAggregationDimensions)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriAggregationDimensions *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self dictionaryRepresentation];
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
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriAggregationDimensions aggregationIntervalInDays](self, "aggregationIntervalInDays")}];
    [v3 setObject:v5 forKeyedSubscript:@"aggregationIntervalInDays"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriAggregationDimensions *)self aggregationIntervalStartTimestampInSecondsSince2001];
    v7 = [v6 numberWithDouble:?];
    [v3 setObject:v7 forKeyedSubscript:@"aggregationIntervalStartTimestampInSecondsSince2001"];
  }

  if (self->_siriInputLocale)
  {
    v8 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"siriInputLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaISOLocale *)self->_siriInputLocale hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_aggregationIntervalInDays;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  aggregationIntervalStartTimestampInSecondsSince2001 = self->_aggregationIntervalStartTimestampInSecondsSince2001;
  if (aggregationIntervalStartTimestampInSecondsSince2001 < 0.0)
  {
    aggregationIntervalStartTimestampInSecondsSince2001 = -aggregationIntervalStartTimestampInSecondsSince2001;
  }

  *v4.i64 = floor(aggregationIntervalStartTimestampInSecondsSince2001 + 0.5);
  v8 = (aggregationIntervalStartTimestampInSecondsSince2001 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

  return v6 ^ v3 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
  v6 = [v4 siriInputLocale];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    if (v8)
    {
      v9 = v8;
      v10 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
      v11 = [v4 siriInputLocale];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = v4[32];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        aggregationIntervalInDays = self->_aggregationIntervalInDays;
        if (aggregationIntervalInDays != [v4 aggregationIntervalInDays])
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = v4[32];
      }

      v16 = (*&has >> 1) & 1;
      if (v16 == ((v14 >> 1) & 1))
      {
        if (!v16 || (aggregationIntervalStartTimestampInSecondsSince2001 = self->_aggregationIntervalStartTimestampInSecondsSince2001, [v4 aggregationIntervalStartTimestampInSecondsSince2001], aggregationIntervalStartTimestampInSecondsSince2001 == v18))
        {
          v19 = 1;
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
  }

LABEL_15:
  v19 = 0;
LABEL_16:

  return v19;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];

  if (v4)
  {
    v5 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = v8;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v7 = v8;
  }
}

- (void)setHasAggregationIntervalStartTimestampInSecondsSince2001:(BOOL)a3
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
  v9.super_class = ODMSiriSchemaODMSiriAggregationDimensions;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ODMSiriSchemaODMSiriAggregationDimensions *)self deleteSiriInputLocale];
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