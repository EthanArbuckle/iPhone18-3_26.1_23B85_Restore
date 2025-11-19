@interface IFTSchemaIFTParameterConfirmation
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameterConfirmation)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameterConfirmation)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasParameterIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameterConfirmation

- (IFTSchemaIFTParameterConfirmation)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTParameterConfirmation;
  v5 = [(IFTSchemaIFTParameterConfirmation *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterConfirmation setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterConfirmation *)v5 setParameterId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"parameterIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterConfirmation setParameterIndex:](v5, "setParameterIndex:", [v9 longLongValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"item"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v10];
      [(IFTSchemaIFTParameterConfirmation *)v5 setItem:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterConfirmation)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterConfirmation *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameterConfirmation *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterConfirmation exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_item)
  {
    v5 = [(IFTSchemaIFTParameterConfirmation *)self item];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"item"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"item"];
    }
  }

  if (self->_parameterId)
  {
    v8 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTParameterConfirmation parameterIndex](self, "parameterIndex")}];
    [v3 setObject:v10 forKeyedSubscript:@"parameterIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parameterId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_parameterIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(IFTSchemaIFTTypedValue *)self->_item hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
  v7 = [v4 parameterId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_17;
  }

  v8 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];
    v11 = [v4 parameterId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  v13 = (*&self->_has >> 1) & 1;
  if (v13 != ((v4[40] >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v13)
  {
    parameterIndex = self->_parameterIndex;
    if (parameterIndex != [v4 parameterIndex])
    {
      goto LABEL_18;
    }
  }

  v6 = [(IFTSchemaIFTParameterConfirmation *)self item];
  v7 = [v4 item];
  if ((v6 != 0) != (v7 == 0))
  {
    v15 = [(IFTSchemaIFTParameterConfirmation *)self item];
    if (!v15)
    {

LABEL_21:
      v20 = 1;
      goto LABEL_19;
    }

    v16 = v15;
    v17 = [(IFTSchemaIFTParameterConfirmation *)self item];
    v18 = [v4 item];
    v19 = [v17 isEqual:v18];

    if (v19)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_17:
  }

LABEL_18:
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTParameterConfirmation *)self parameterId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v5 = [(IFTSchemaIFTParameterConfirmation *)self item];

  v6 = v8;
  if (v5)
  {
    v7 = [(IFTSchemaIFTParameterConfirmation *)self item];
    PBDataWriterWriteSubmessage();

    v6 = v8;
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
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterConfirmation;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTParameterConfirmation *)self item:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTParameterConfirmation *)self deleteItem];
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