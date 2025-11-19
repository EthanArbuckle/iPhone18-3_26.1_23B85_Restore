@interface USOSchemaUSOSpanPropertyTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOSpanPropertyTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOSpanPropertyTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasValueFloat:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOSpanPropertyTier1

- (USOSchemaUSOSpanPropertyTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = USOSchemaUSOSpanPropertyTier1;
  v5 = [(USOSchemaUSOSpanPropertyTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USOSchemaUSOSpanPropertyTier1 *)v5 setKey:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"valueString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSOSpanPropertyTier1 *)v5 setValueString:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"valueInt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOSpanPropertyTier1 setValueInt:](v5, "setValueInt:", [v10 intValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"valueFloat"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 floatValue];
      [(USOSchemaUSOSpanPropertyTier1 *)v5 setValueFloat:?];
    }

    v12 = v5;
  }

  return v5;
}

- (USOSchemaUSOSpanPropertyTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOSpanPropertyTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOSpanPropertyTier1 *)self dictionaryRepresentation];
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
  if (self->_key)
  {
    v4 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"key"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(USOSchemaUSOSpanPropertyTier1 *)self valueFloat];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"valueFloat"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSchemaUSOSpanPropertyTier1 valueInt](self, "valueInt")}];
    [v3 setObject:v9 forKeyedSubscript:@"valueInt"];
  }

  if (self->_valueString)
  {
    v10 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"valueString"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_valueString hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_valueInt;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = 0;
    return v4 ^ v3 ^ v7 ^ v12;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  valueFloat = self->_valueFloat;
  if (valueFloat >= 0.0)
  {
    v9 = valueFloat;
  }

  else
  {
    v9 = -valueFloat;
  }

  *v5.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v6, v5).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v4 ^ v3 ^ v7 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
  v6 = [v4 key];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
    v10 = [v4 key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
  v6 = [v4 valueString];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
    v15 = [v4 valueString];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      valueInt = self->_valueInt;
      if (valueInt != [v4 valueInt])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (valueFloat = self->_valueFloat, [v4 valueFloat], valueFloat == v24))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(USOSchemaUSOSpanPropertyTier1 *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = v8;
  }
}

- (void)setHasValueFloat:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = USOSchemaUSOSpanPropertyTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([v4 isConditionSet:4])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([v4 isConditionSet:5])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([v4 isConditionSet:6])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([v4 isConditionSet:7])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
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