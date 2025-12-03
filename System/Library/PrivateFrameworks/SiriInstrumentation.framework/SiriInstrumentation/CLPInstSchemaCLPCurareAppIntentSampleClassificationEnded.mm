@interface CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded;
  v5 = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"probability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)v5 setProbability:?];
    }

    v7 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)self dictionaryRepresentation];
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
    v4 = MEMORY[0x1E696AD98];
    [(CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded *)self probability];
    v5 = [v4 numberWithFloat:?];
    [dictionary setObject:v5 forKeyedSubscript:@"probability"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    return 0;
  }

  probability = self->_probability;
  if (probability >= 0.0)
  {
    v6 = probability;
  }

  else
  {
    v6 = -probability;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  result = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      result += v7;
    }
  }

  else
  {
    result -= fabs(v7);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (probability = self->_probability, [equalCopy probability], probability == v6))
      {
        v7 = 1;
      }
    }
  }

  return v7;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end