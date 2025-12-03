@interface IFTSchemaIFTParameterNotAllowed
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameterNotAllowed)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameterNotAllowed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasReason:(BOOL)reason;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameterNotAllowed

- (IFTSchemaIFTParameterNotAllowed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = IFTSchemaIFTParameterNotAllowed;
  v5 = [(IFTSchemaIFTParameterNotAllowed *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNotAllowed setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterNotAllowed *)v5 setParameterId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v9];
      [(IFTSchemaIFTParameterNotAllowed *)v5 setValue:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterNotAllowed setReason:](v5, "setReason:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterNotAllowed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterNotAllowed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameterNotAllowed *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterNotAllowed exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    parameterId = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
    v6 = [parameterId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    reason = [(IFTSchemaIFTParameterNotAllowed *)self reason];
    v8 = @"IFTPARAMETERNOTALLOWEDREASON_UNKNOWN";
    if (reason == 1)
    {
      v8 = @"IFTPARAMETERNOTALLOWEDREASON_MISSING_REQUIRED_PHONE_NUMBER";
    }

    if (reason == 2)
    {
      v9 = @"IFTPARAMETERNOTALLOWEDREASON_MISSING_REQUIRED_EMAIL_ADDRESS";
    }

    else
    {
      v9 = v8;
    }

    [dictionary setObject:v9 forKeyedSubscript:@"reason"];
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTParameterNotAllowed *)self value];
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
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  parameterId = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
  parameterId2 = [equalCopy parameterId];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
    goto LABEL_14;
  }

  parameterId3 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
  if (parameterId3)
  {
    v9 = parameterId3;
    parameterId4 = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];
    parameterId5 = [equalCopy parameterId];
    v12 = [parameterId4 isEqual:parameterId5];

    if (!v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  parameterId = [(IFTSchemaIFTParameterNotAllowed *)self value];
  parameterId2 = [equalCopy value];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  value = [(IFTSchemaIFTParameterNotAllowed *)self value];
  if (value)
  {
    v14 = value;
    value2 = [(IFTSchemaIFTParameterNotAllowed *)self value];
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
  if (v20 == ((equalCopy[36] >> 1) & 1))
  {
    if (!v20 || (reason = self->_reason, reason == [equalCopy reason]))
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
  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  parameterId = [(IFTSchemaIFTParameterNotAllowed *)self parameterId];

  if (parameterId)
  {
    PBDataWriterWriteStringField();
  }

  value = [(IFTSchemaIFTParameterNotAllowed *)self value];

  if (value)
  {
    value2 = [(IFTSchemaIFTParameterNotAllowed *)self value];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasReason:(BOOL)reason
{
  if (reason)
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
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterNotAllowed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTParameterNotAllowed *)self value:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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