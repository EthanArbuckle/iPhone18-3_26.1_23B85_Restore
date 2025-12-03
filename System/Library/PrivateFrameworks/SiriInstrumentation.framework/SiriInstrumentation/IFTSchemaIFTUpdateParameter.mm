@interface IFTSchemaIFTUpdateParameter
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTUpdateParameter)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTUpdateParameter)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasParameterIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTUpdateParameter

- (IFTSchemaIFTUpdateParameter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTUpdateParameter;
  v5 = [(IFTSchemaIFTUpdateParameter *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTUpdateParameter *)v5 setParameterId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTUpdateParameter setKind:](v5, "setKind:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTUpdateParameter *)v5 setValue:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"parameterIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTUpdateParameter setParameterIndex:](v5, "setParameterIndex:", [v11 longLongValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTUpdateParameter)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTUpdateParameter *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTUpdateParameter *)self dictionaryRepresentation];
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
    kind = [(IFTSchemaIFTUpdateParameter *)self kind];
    v5 = @"ASTUPDATEKIND_UNKNOWN";
    if (kind == 1)
    {
      v5 = @"ASTUPDATEKIND_APPEND";
    }

    if (kind == 2)
    {
      v6 = @"ASTUPDATEKIND_REPLACE";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"kind"];
  }

  if (self->_parameterId)
  {
    parameterId = [(IFTSchemaIFTUpdateParameter *)self parameterId];
    v8 = [parameterId copy];
    [dictionary setObject:v8 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTUpdateParameter parameterIndex](self, "parameterIndex")}];
    [dictionary setObject:v9 forKeyedSubscript:@"parameterIndex"];
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTUpdateParameter *)self value];
    dictionaryRepresentation = [value dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"value"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_parameterId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_kind;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(IFTSchemaIFTStatementId *)self->_value hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_parameterIndex;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  parameterId = [(IFTSchemaIFTUpdateParameter *)self parameterId];
  parameterId2 = [equalCopy parameterId];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
    goto LABEL_14;
  }

  parameterId3 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
  if (parameterId3)
  {
    v8 = parameterId3;
    parameterId4 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
    parameterId5 = [equalCopy parameterId];
    v11 = [parameterId4 isEqual:parameterId5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    if (kind != [equalCopy kind])
    {
      goto LABEL_15;
    }
  }

  parameterId = [(IFTSchemaIFTUpdateParameter *)self value];
  parameterId2 = [equalCopy value];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  value = [(IFTSchemaIFTUpdateParameter *)self value];
  if (value)
  {
    v14 = value;
    value2 = [(IFTSchemaIFTUpdateParameter *)self value];
    value3 = [equalCopy value];
    v17 = [value2 isEqual:value3];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((equalCopy[40] >> 1) & 1))
  {
    if (!v20 || (parameterIndex = self->_parameterIndex, parameterIndex == [equalCopy parameterIndex]))
    {
      v18 = 1;
      goto LABEL_16;
    }
  }

LABEL_15:
  v18 = 0;
LABEL_16:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  parameterId = [(IFTSchemaIFTUpdateParameter *)self parameterId];

  if (parameterId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  value = [(IFTSchemaIFTUpdateParameter *)self value];

  if (value)
  {
    value2 = [(IFTSchemaIFTUpdateParameter *)self value];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasParameterIndex:(BOOL)index
{
  if (index)
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
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTUpdateParameter;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(IFTSchemaIFTUpdateParameter *)self deleteParameterId];
  }

  value = [(IFTSchemaIFTUpdateParameter *)self value];
  v7 = [value applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTUpdateParameter *)self deleteValue];
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