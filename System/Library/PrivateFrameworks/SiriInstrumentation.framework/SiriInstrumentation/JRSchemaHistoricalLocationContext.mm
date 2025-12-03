@interface JRSchemaHistoricalLocationContext
- (BOOL)isEqual:(id)equal;
- (JRSchemaHistoricalLocationContext)initWithDictionary:(id)dictionary;
- (JRSchemaHistoricalLocationContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBucketedDistance:(BOOL)distance;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaHistoricalLocationContext

- (JRSchemaHistoricalLocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = JRSchemaHistoricalLocationContext;
  v5 = [(JRSchemaHistoricalLocationContext *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"logOfTimeElapsedInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(JRSchemaHistoricalLocationContext *)v5 setLogOfTimeElapsedInSeconds:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedLocationNameId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(JRSchemaHistoricalLocationContext *)v5 setAnonymizedLocationNameId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"anonymizedLocationTypeId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaUUID alloc] initWithDictionary:v9];
      [(JRSchemaHistoricalLocationContext *)v5 setAnonymizedLocationTypeId:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"bucketedDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[JRSchemaHistoricalLocationContext setBucketedDistance:](v5, "setBucketedDistance:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (JRSchemaHistoricalLocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaHistoricalLocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaHistoricalLocationContext *)self dictionaryRepresentation];
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
  if (self->_anonymizedLocationNameId)
  {
    anonymizedLocationNameId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    dictionaryRepresentation = [anonymizedLocationNameId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"anonymizedLocationNameId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"anonymizedLocationNameId"];
    }
  }

  if (self->_anonymizedLocationTypeId)
  {
    anonymizedLocationTypeId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    dictionaryRepresentation2 = [anonymizedLocationTypeId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"anonymizedLocationTypeId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"anonymizedLocationTypeId"];
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

    [dictionary setObject:v12 forKeyedSubscript:@"bucketedDistance"];
    has = self->_has;
  }

  if (has)
  {
    v13 = MEMORY[0x1E696AD98];
    [(JRSchemaHistoricalLocationContext *)self logOfTimeElapsedInSeconds];
    v14 = [v13 numberWithFloat:?];
    [dictionary setObject:v14 forKeyedSubscript:@"logOfTimeElapsedInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    logOfTimeElapsedInSeconds = self->_logOfTimeElapsedInSeconds;
    [equalCopy logOfTimeElapsedInSeconds];
    if (logOfTimeElapsedInSeconds != v6)
    {
      goto LABEL_15;
    }
  }

  anonymizedLocationNameId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  anonymizedLocationNameId2 = [equalCopy anonymizedLocationNameId];
  if ((anonymizedLocationNameId != 0) == (anonymizedLocationNameId2 == 0))
  {
    goto LABEL_14;
  }

  anonymizedLocationNameId3 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  if (anonymizedLocationNameId3)
  {
    v10 = anonymizedLocationNameId3;
    anonymizedLocationNameId4 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    anonymizedLocationNameId5 = [equalCopy anonymizedLocationNameId];
    v13 = [anonymizedLocationNameId4 isEqual:anonymizedLocationNameId5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  anonymizedLocationNameId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  anonymizedLocationNameId2 = [equalCopy anonymizedLocationTypeId];
  if ((anonymizedLocationNameId != 0) == (anonymizedLocationNameId2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  anonymizedLocationTypeId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  if (anonymizedLocationTypeId)
  {
    v15 = anonymizedLocationTypeId;
    anonymizedLocationTypeId2 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    anonymizedLocationTypeId3 = [equalCopy anonymizedLocationTypeId];
    v18 = [anonymizedLocationTypeId2 isEqual:anonymizedLocationTypeId3];

    if (!v18)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v21 = (*&self->_has >> 1) & 1;
  if (v21 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v21 || (bucketedDistance = self->_bucketedDistance, bucketedDistance == [equalCopy bucketedDistance]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  anonymizedLocationNameId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];

  if (anonymizedLocationNameId)
  {
    anonymizedLocationNameId2 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
    PBDataWriterWriteSubmessage();
  }

  anonymizedLocationTypeId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];

  if (anonymizedLocationTypeId)
  {
    anonymizedLocationTypeId2 = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasBucketedDistance:(BOOL)distance
{
  if (distance)
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
  v13.receiver = self;
  v13.super_class = JRSchemaHistoricalLocationContext;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  anonymizedLocationNameId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationNameId];
  v7 = [anonymizedLocationNameId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(JRSchemaHistoricalLocationContext *)self deleteAnonymizedLocationNameId];
  }

  anonymizedLocationTypeId = [(JRSchemaHistoricalLocationContext *)self anonymizedLocationTypeId];
  v10 = [anonymizedLocationTypeId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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