@interface IFTSchemaIFTParameterCandidatesNotFound
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTParameterCandidatesNotFound)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTParameterCandidatesNotFound)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTParameterCandidatesNotFound

- (IFTSchemaIFTParameterCandidatesNotFound)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTParameterCandidatesNotFound;
  v5 = [(IFTSchemaIFTParameterCandidatesNotFound *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTParameterCandidatesNotFound setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"parameterId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(IFTSchemaIFTParameterCandidatesNotFound *)v5 setParameterId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v9];
      [(IFTSchemaIFTParameterCandidatesNotFound *)v5 setValue:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (IFTSchemaIFTParameterCandidatesNotFound)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTParameterCandidatesNotFound *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTParameterCandidatesNotFound *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTParameterCandidatesNotFound exists](self, "exists")}];
    [dictionary setObject:v4 forKeyedSubscript:@"exists"];
  }

  if (self->_parameterId)
  {
    parameterId = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
    v6 = [parameterId copy];
    [dictionary setObject:v6 forKeyedSubscript:@"parameterId"];
  }

  if (self->_value)
  {
    value = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
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

  v4 = [(NSString *)self->_parameterId hash]^ v3;
  return v4 ^ [(IFTSchemaIFTTypedValue *)self->_value hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
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

  parameterId = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
  parameterId2 = [equalCopy parameterId];
  if ((parameterId != 0) == (parameterId2 == 0))
  {
    goto LABEL_14;
  }

  parameterId3 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
  if (parameterId3)
  {
    v9 = parameterId3;
    parameterId4 = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];
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

  parameterId = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
  parameterId2 = [equalCopy value];
  if ((parameterId != 0) != (parameterId2 == 0))
  {
    value = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    if (!value)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = value;
    value2 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    value3 = [equalCopy value];
    v17 = [value2 isEqual:value3];

    if (v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_14:
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

  parameterId = [(IFTSchemaIFTParameterCandidatesNotFound *)self parameterId];

  if (parameterId)
  {
    PBDataWriterWriteStringField();
  }

  value = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];

  v6 = toCopy;
  if (value)
  {
    value2 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaIFTParameterCandidatesNotFound;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaIFTParameterCandidatesNotFound *)self value:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaIFTParameterCandidatesNotFound *)self deleteValue];
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