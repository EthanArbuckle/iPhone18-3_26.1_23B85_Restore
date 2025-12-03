@interface PNRODSchemaPNRODMetricDuration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODMetricDuration)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODMetricDuration)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndEventIndex:(BOOL)index;
- (void)setHasStartEventIndex:(BOOL)index;
- (void)setHasStartTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODMetricDuration

- (PNRODSchemaPNRODMetricDuration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PNRODSchemaPNRODMetricDuration;
  v5 = [(PNRODSchemaPNRODMetricDuration *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"metricValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(PNRODSchemaPNRODMetricDuration *)v5 setMetricValue:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"startTimestamp"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODMetricDuration setStartTimestamp:](v5, "setStartTimestamp:", [v7 longLongValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"startEventIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODMetricDuration setStartEventIndex:](v5, "setStartEventIndex:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"endEventIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODMetricDuration setEndEventIndex:](v5, "setEndEventIndex:", [v9 longLongValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODMetricDuration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODMetricDuration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODMetricDuration *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODMetricDuration endEventIndex](self, "endEventIndex")}];
    [dictionary setObject:v7 forKeyedSubscript:@"endEventIndex"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = MEMORY[0x1E696AD98];
  [(PNRODSchemaPNRODMetricDuration *)self metricValue];
  v9 = [v8 numberWithDouble:?];
  [dictionary setObject:v9 forKeyedSubscript:@"metricValue"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODMetricDuration startEventIndex](self, "startEventIndex")}];
  [dictionary setObject:v10 forKeyedSubscript:@"startEventIndex"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODMetricDuration startTimestamp](self, "startTimestamp")}];
    [dictionary setObject:v5 forKeyedSubscript:@"startTimestamp"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    metricValue = self->_metricValue;
    if (metricValue < 0.0)
    {
      metricValue = -metricValue;
    }

    *v2.i64 = floor(metricValue + 0.5);
    v6 = (metricValue - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v4 = 2654435761u * *vbslq_s8(vnegq_f64(v7), v3, v2).i64;
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

  if ((*&self->_has & 2) == 0)
  {
    v8 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v9 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v10 = 0;
    return v8 ^ v4 ^ v9 ^ v10;
  }

  v8 = 2654435761 * self->_startTimestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = 2654435761 * self->_startEventIndex;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v10 = 2654435761 * self->_endEventIndex;
  return v8 ^ v4 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    metricValue = self->_metricValue;
    [equalCopy metricValue];
    if (metricValue != v8)
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v9)
  {
    startTimestamp = self->_startTimestamp;
    if (startTimestamp != [equalCopy startTimestamp])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v11 = (*&has >> 2) & 1;
  if (v11 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v11)
  {
    startEventIndex = self->_startEventIndex;
    if (startEventIndex == [equalCopy startEventIndex])
    {
      has = self->_has;
      v6 = equalCopy[40];
      goto LABEL_14;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v13 = (*&has >> 3) & 1;
  if (v13 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    endEventIndex = self->_endEventIndex;
    if (endEventIndex != [equalCopy endEventIndex])
    {
      goto LABEL_18;
    }
  }

  v15 = 1;
LABEL_19:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt64Field();
  }

LABEL_6:
}

- (void)setHasEndEventIndex:(BOOL)index
{
  if (index)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasStartEventIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStartTimestamp:(BOOL)timestamp
{
  if (timestamp)
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