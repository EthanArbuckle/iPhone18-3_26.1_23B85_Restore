@interface ODMSiriSchemaODMSiriAggregationDimensions
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriAggregationDimensions)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriAggregationDimensions)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAggregationIntervalStartTimestampInSecondsSince2001:(BOOL)since2001;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriAggregationDimensions

- (ODMSiriSchemaODMSiriAggregationDimensions)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriAggregationDimensions;
  v5 = [(ODMSiriSchemaODMSiriAggregationDimensions *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriInputLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaISOLocale alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriAggregationDimensions *)v5 setSiriInputLocale:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"aggregationIntervalInDays"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODMSiriSchemaODMSiriAggregationDimensions setAggregationIntervalInDays:](v5, "setAggregationIntervalInDays:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"aggregationIntervalStartTimestampInSecondsSince2001"];
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

- (ODMSiriSchemaODMSiriAggregationDimensions)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriAggregationDimensions *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriAggregationDimensions *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODMSiriSchemaODMSiriAggregationDimensions aggregationIntervalInDays](self, "aggregationIntervalInDays")}];
    [dictionary setObject:v5 forKeyedSubscript:@"aggregationIntervalInDays"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = MEMORY[0x1E696AD98];
    [(ODMSiriSchemaODMSiriAggregationDimensions *)self aggregationIntervalStartTimestampInSecondsSince2001];
    v7 = [v6 numberWithDouble:?];
    [dictionary setObject:v7 forKeyedSubscript:@"aggregationIntervalStartTimestampInSecondsSince2001"];
  }

  if (self->_siriInputLocale)
  {
    siriInputLocale = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    dictionaryRepresentation = [siriInputLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInputLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInputLocale"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  siriInputLocale = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
  siriInputLocale2 = [equalCopy siriInputLocale];
  v7 = siriInputLocale2;
  if ((siriInputLocale != 0) != (siriInputLocale2 == 0))
  {
    siriInputLocale3 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    if (siriInputLocale3)
    {
      v9 = siriInputLocale3;
      siriInputLocale4 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
      siriInputLocale5 = [equalCopy siriInputLocale];
      v12 = [siriInputLocale4 isEqual:siriInputLocale5];

      if (!v12)
      {
        goto LABEL_15;
      }
    }

    else
    {
    }

    has = self->_has;
    v14 = equalCopy[32];
    if ((*&has & 1) == (v14 & 1))
    {
      if (*&has)
      {
        aggregationIntervalInDays = self->_aggregationIntervalInDays;
        if (aggregationIntervalInDays != [equalCopy aggregationIntervalInDays])
        {
          goto LABEL_15;
        }

        has = self->_has;
        v14 = equalCopy[32];
      }

      v16 = (*&has >> 1) & 1;
      if (v16 == ((v14 >> 1) & 1))
      {
        if (!v16 || (aggregationIntervalStartTimestampInSecondsSince2001 = self->_aggregationIntervalStartTimestampInSecondsSince2001, [equalCopy aggregationIntervalStartTimestampInSecondsSince2001], aggregationIntervalStartTimestampInSecondsSince2001 == v18))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  siriInputLocale = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];

  if (siriInputLocale)
  {
    siriInputLocale2 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v7 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    v7 = toCopy;
  }
}

- (void)setHasAggregationIntervalStartTimestampInSecondsSince2001:(BOOL)since2001
{
  if (since2001)
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
  v9.receiver = self;
  v9.super_class = ODMSiriSchemaODMSiriAggregationDimensions;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODMSiriSchemaODMSiriAggregationDimensions *)self siriInputLocale:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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