@interface USOSchemaUSOAsrAlternativeTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOAsrAlternativeTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOAsrAlternativeTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOAsrAlternativeTier1

- (USOSchemaUSOAsrAlternativeTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = USOSchemaUSOAsrAlternativeTier1;
  v5 = [(USOSchemaUSOAsrAlternativeTier1 *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"alternative"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USOSchemaUSOAsrAlternativeTier1 *)v5 setAlternative:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"probability"];
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

- (USOSchemaUSOAsrAlternativeTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOAsrAlternativeTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOAsrAlternativeTier1 *)self dictionaryRepresentation];
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
  if (self->_alternative)
  {
    v4 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"alternative"];
  }

  if (*&self->_has)
  {
    v6 = MEMORY[0x1E696AD98];
    [(USOSchemaUSOAsrAlternativeTier1 *)self probability];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"probability"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
  v6 = [v4 alternative];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
    if (v8)
    {
      v9 = v8;
      v10 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];
      v11 = [v4 alternative];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
    }

    if ((*&self->_has & 1) == (v4[20] & 1))
    {
      if ((*&self->_has & 1) == 0 || (probability = self->_probability, [v4 probability], probability == v14))
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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(USOSchemaUSOAsrAlternativeTier1 *)self alternative];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = USOSchemaUSOAsrAlternativeTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([v4 isConditionSet:4])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([v4 isConditionSet:5])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([v4 isConditionSet:6])
  {
    [(USOSchemaUSOAsrAlternativeTier1 *)self deleteAlternative];
  }

  if ([v4 isConditionSet:7])
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