@interface SISchemaUUFRPresented
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRPresented)initWithDictionary:(id)dictionary;
- (SISchemaUUFRPresented)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRPresented

- (SISchemaUUFRPresented)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRPresented;
  v5 = [(SISchemaUUFRPresented *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"viewContainer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaViewContainer alloc] initWithDictionary:v6];
      [(SISchemaUUFRPresented *)v5 setViewContainer:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaUUFRPresented *)v5 setErrorDomain:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRPresented setErrorCode:](v5, "setErrorCode:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUUFRPresented)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRPresented *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRPresented *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRPresented errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(SISchemaUUFRPresented *)self errorDomain];
    v6 = [errorDomain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_viewContainer)
  {
    viewContainer = [(SISchemaUUFRPresented *)self viewContainer];
    dictionaryRepresentation = [viewContainer dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"viewContainer"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"viewContainer"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaViewContainer *)self->_viewContainer hash];
  v4 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_errorCode;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  viewContainer = [(SISchemaUUFRPresented *)self viewContainer];
  viewContainer2 = [equalCopy viewContainer];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
    goto LABEL_11;
  }

  viewContainer3 = [(SISchemaUUFRPresented *)self viewContainer];
  if (viewContainer3)
  {
    v8 = viewContainer3;
    viewContainer4 = [(SISchemaUUFRPresented *)self viewContainer];
    viewContainer5 = [equalCopy viewContainer];
    v11 = [viewContainer4 isEqual:viewContainer5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  viewContainer = [(SISchemaUUFRPresented *)self errorDomain];
  viewContainer2 = [equalCopy errorDomain];
  if ((viewContainer != 0) == (viewContainer2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  errorDomain = [(SISchemaUUFRPresented *)self errorDomain];
  if (errorDomain)
  {
    v13 = errorDomain;
    errorDomain2 = [(SISchemaUUFRPresented *)self errorDomain];
    errorDomain3 = [equalCopy errorDomain];
    v16 = [errorDomain2 isEqual:errorDomain3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (errorCode = self->_errorCode, errorCode == [equalCopy errorCode]))
    {
      v17 = 1;
      goto LABEL_13;
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
  viewContainer = [(SISchemaUUFRPresented *)self viewContainer];

  if (viewContainer)
  {
    viewContainer2 = [(SISchemaUUFRPresented *)self viewContainer];
    PBDataWriterWriteSubmessage();
  }

  errorDomain = [(SISchemaUUFRPresented *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaUUFRPresented;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUUFRPresented *)self viewContainer:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUUFRPresented *)self deleteViewContainer];
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