@interface USOSchemaUSOAsrAlternativeTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOAsrAlternativeTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOAsrAlternativeTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOAsrAlternativeTier1

- (USOSchemaUSOAsrAlternativeTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = USOSchemaUSOAsrAlternativeTier1;
  v5 = [(USOSchemaUSOAsrAlternativeTier1 *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"alternative"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USOSchemaUSOAsrAlternativeTier1 *)v5 setAlternative:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"probability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 floatValue];
      [(USOSchemaUSOAsrAlternativeTier1 *)v5 setProbability:?];
    }

    v9 = v5;
  }

  return v5;
}

- (USOSchemaUSOAsrAlternativeTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOAsrAlternativeTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOAsrAlternativeTier1 *)self dictionaryRepresentation];
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
  if (self->_alternative)
  {
    alternative = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
    v5 = [alternative copy];
    [dictionary setObject:v5 forKeyedSubscript:@"alternative"];
  }

  if (*&self->_has)
  {
    v6 = MEMORY[0x1E696AD98];
    [(USOSchemaUSOAsrAlternativeTier1 *)self probability];
    v7 = [v6 numberWithFloat:?];
    [dictionary setObject:v7 forKeyedSubscript:@"probability"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_alternative hash];
  if (*&self->_has)
  {
    probability = self->_probability;
    if (probability >= 0.0)
    {
      v8 = probability;
    }

    else
    {
      v8 = -probability;
    }

    *v4.i64 = floor(v8 + 0.5);
    v9 = (v8 - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v6 += v9;
      }
    }

    else
    {
      v6 -= fabs(v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  alternative = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
  alternative2 = [equalCopy alternative];
  v7 = alternative2;
  if ((alternative != 0) != (alternative2 == 0))
  {
    alternative3 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
    if (alternative3)
    {
      v9 = alternative3;
      alternative4 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
      alternative5 = [equalCopy alternative];
      v12 = [alternative4 isEqual:alternative5];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (equalCopy[20] & 1))
    {
      if ((*&self->_has & 1) == 0 || (probability = self->_probability, [equalCopy probability], probability == v14))
      {
        v15 = 1;
        goto LABEL_12;
      }
    }
  }

  else
  {
  }

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  alternative = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];

  if (alternative)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = USOSchemaUSOAsrAlternativeTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
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