@interface IFTSchemaIFTParameterNotAllowed
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTParameterNotAllowed)initWithDictionary:(id)a3;
- (IFTSchemaIFTParameterNotAllowed)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasReason:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTParameterNotAllowed

- (IFTSchemaIFTParameterNotAllowed)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTParameterNotAllowed;
  v5 = [(IFTSchemaIFTParameterNotAllowed *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNotAllowed setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterNotAllowed *)v5 setParameterId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v9];
      [(IFTSchemaIFTParameterNotAllowed *)v5 setValue:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNotAllowed setReason:](v5, "setReason:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterNotAllowed)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterNotAllowed *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTParameterNotAllowed *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterNotAllowed exists](self, "exists")}];
    [v3 setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    v5 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [(IFTSchemaIFTParameterNotAllowed *)self reason];
    v8 = @"IFTPARAMETERNOTALLOWEDREASON_UNKNOWN";
    if (v7 == 1)
    {
      v8 = @"IFTPARAMETERNOTALLOWEDREASON_MISSING_REQUIRED_PHONE_NUMBER";
    }

    if (v7 == 2)
    {
      v9 = @"IFTPARAMETERNOTALLOWEDREASON_MISSING_REQUIRED_EMAIL_ADDRESS";
    }

    else
    {
      v9 = v8;
    }

    [v3 setObject:v9 forKeyedSubscript:@"reason"];
  }

  if (self->_value)
  {
    v10 = [(IFTSchemaIFTParameterNotAllowed *)self value];
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_parameterId hash];
  v5 = [(IFTSchemaIFTTypedValue *)self->_value hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_reason;
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

  if ((*&self->_has & 1) != (v4[36] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_15;
    }
  }

  v6 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
  v7 = [v4 parameterId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_14;
  }

  v8 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
    v11 = [v4 parameterId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v6 = [(IFTSchemaIFTParameterNotAllowed *)self value];
  v7 = [v4 value];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(IFTSchemaIFTParameterNotAllowed *)self value];
  if (v13)
  {
    v14 = v13;
    v15 = [(IFTSchemaIFTParameterNotAllowed *)self value];
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
  if (v20 == ((v4[36] >> 1) & 1))
  {
    if (!v20 || (reason = self->_reason, reason == [v4 reason]))
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
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(IFTSchemaIFTParameterNotAllowed *)self value];

  if (v5)
  {
    v6 = [(IFTSchemaIFTParameterNotAllowed *)self value];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasReason:(BOOL)a3
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
  v9.super_class = IFTSchemaIFTParameterNotAllowed;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTParameterNotAllowed *)self value:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(IFTSchemaIFTParameterNotAllowed *)self deleteValue];
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