@interface IFTSchemaIFTUpdateParameter
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTUpdateParameter)initWithDictionary:(id)a3;
- (IFTSchemaIFTUpdateParameter)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasParameterIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTUpdateParameter

- (IFTSchemaIFTUpdateParameter)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTUpdateParameter;
  v5 = [(IFTSchemaIFTUpdateParameter *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(IFTSchemaIFTUpdateParameter *)v5 setParameterId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"kind"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTUpdateParameter setKind:](v5, "setKind:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTStatementId alloc] initWithDictionary:v9];
      [(IFTSchemaIFTUpdateParameter *)v5 setValue:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"parameterIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTUpdateParameter setParameterIndex:](v5, "setParameterIndex:", [v11 longLongValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTUpdateParameter)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTUpdateParameter *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTUpdateParameter *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [(IFTSchemaIFTUpdateParameter *)self kind];
    v5 = @"ASTUPDATEKIND_UNKNOWN";
    if (v4 == 1)
    {
      v5 = @"ASTUPDATEKIND_APPEND";
    }

    if (v4 == 2)
    {
      v6 = @"ASTUPDATEKIND_REPLACE";
    }

    else
    {
      v6 = v5;
    }

    [v3 setObject:v6 forKeyedSubscript:@"kind"];
  }

  if (self->_parameterId)
  {
    v7 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTUpdateParameter parameterIndex](self, "parameterIndex")}];
    [v3 setObject:v9 forKeyedSubscript:@"parameterIndex"];
  }

  if (self->_value)
  {
    v10 = [(IFTSchemaIFTUpdateParameter *)self value];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"value"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"value"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
  v6 = [v4 parameterId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_14;
  }

  v7 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
  if (v7)
  {
    v8 = v7;
    v9 = [(IFTSchemaIFTUpdateParameter *)self parameterId];
    v10 = [v4 parameterId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    kind = self->_kind;
    if (kind != [v4 kind])
    {
      goto LABEL_15;
    }
  }

  v5 = [(IFTSchemaIFTUpdateParameter *)self value];
  v6 = [v4 value];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(IFTSchemaIFTUpdateParameter *)self value];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTUpdateParameter *)self value];
    v16 = [v4 value];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v20 = (*&self->_has >> 1) & 1;
  if (v20 == ((v4[40] >> 1) & 1))
  {
    if (!v20 || (parameterIndex = self->_parameterIndex, parameterIndex == [v4 parameterIndex]))
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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(IFTSchemaIFTUpdateParameter *)self parameterId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v5 = [(IFTSchemaIFTUpdateParameter *)self value];

  if (v5)
  {
    v6 = [(IFTSchemaIFTUpdateParameter *)self value];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)setHasParameterIndex:(BOOL)a3
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
  v10.receiver = self;
  v10.super_class = IFTSchemaIFTUpdateParameter;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(IFTSchemaIFTUpdateParameter *)self deleteParameterId];
  }

  v6 = [(IFTSchemaIFTUpdateParameter *)self value];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
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