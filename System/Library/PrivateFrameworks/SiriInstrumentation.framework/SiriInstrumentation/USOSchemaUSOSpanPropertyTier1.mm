@interface USOSchemaUSOSpanPropertyTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOSpanPropertyTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOSpanPropertyTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasValueFloat:(BOOL)float;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOSpanPropertyTier1

- (USOSchemaUSOSpanPropertyTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = USOSchemaUSOSpanPropertyTier1;
  v5 = [(USOSchemaUSOSpanPropertyTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"key"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(USOSchemaUSOSpanPropertyTier1 *)v5 setKey:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"valueString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSOSpanPropertyTier1 *)v5 setValueString:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"valueInt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOSpanPropertyTier1 setValueInt:](v5, "setValueInt:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"valueFloat"];
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

- (USOSchemaUSOSpanPropertyTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOSpanPropertyTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOSpanPropertyTier1 *)self dictionaryRepresentation];
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
  if (self->_key)
  {
    v4 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
    v5 = [v4 copy];
    [dictionary setObject:v5 forKeyedSubscript:@"key"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(USOSchemaUSOSpanPropertyTier1 *)self valueFloat];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"valueFloat"];

    has = self->_has;
  }

  if (has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[USOSchemaUSOSpanPropertyTier1 valueInt](self, "valueInt")}];
    [dictionary setObject:v9 forKeyedSubscript:@"valueInt"];
  }

  if (self->_valueString)
  {
    valueString = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
    v11 = [valueString copy];
    [dictionary setObject:v11 forKeyedSubscript:@"valueString"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  valueString = [(USOSchemaUSOSpanPropertyTier1 *)self key];
  valueString2 = [equalCopy key];
  if ((valueString != 0) == (valueString2 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
  if (v7)
  {
    v8 = v7;
    v9 = [(USOSchemaUSOSpanPropertyTier1 *)self key];
    v10 = [equalCopy key];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  valueString = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
  valueString2 = [equalCopy valueString];
  if ((valueString != 0) == (valueString2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  valueString3 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
  if (valueString3)
  {
    v13 = valueString3;
    valueString4 = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];
    valueString5 = [equalCopy valueString];
    v16 = [valueString4 isEqual:valueString5];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      valueInt = self->_valueInt;
      if (valueInt != [equalCopy valueInt])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (valueFloat = self->_valueFloat, [equalCopy valueFloat], valueFloat == v24))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = [(USOSchemaUSOSpanPropertyTier1 *)self key];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  valueString = [(USOSchemaUSOSpanPropertyTier1 *)self valueString];

  if (valueString)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v7 = toCopy;
  }
}

- (void)setHasValueFloat:(BOOL)float
{
  if (float)
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
  v7.receiver = self;
  v7.super_class = USOSchemaUSOSpanPropertyTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueString];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueInt];
    [(USOSchemaUSOSpanPropertyTier1 *)self deleteValueFloat];
  }

  if ([policyCopy isConditionSet:7])
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