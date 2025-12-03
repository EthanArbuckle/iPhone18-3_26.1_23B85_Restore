@interface SISchemaUUFRFatalError
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUUFRFatalError)initWithDictionary:(id)dictionary;
- (SISchemaUUFRFatalError)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRFatalError

- (SISchemaUUFRFatalError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = SISchemaUUFRFatalError;
  v5 = [(SISchemaUUFRFatalError *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRFatalError *)v5 setErrorDomain:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRFatalError setErrorCode:](v5, "setErrorCode:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v9];
      [(SISchemaUUFRFatalError *)v5 setSiriResponseContext:v10];
    }

    v11 = v5;
  }

  return v5;
}

- (SISchemaUUFRFatalError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRFatalError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRFatalError *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaUUFRFatalError errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorDomain)
  {
    errorDomain = [(SISchemaUUFRFatalError *)self errorDomain];
    v6 = [errorDomain copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_siriResponseContext)
  {
    siriResponseContext = [(SISchemaUUFRFatalError *)self siriResponseContext];
    dictionaryRepresentation = [siriResponseContext dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriResponseContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorDomain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  errorDomain = [(SISchemaUUFRFatalError *)self errorDomain];
  errorDomain2 = [equalCopy errorDomain];
  if ((errorDomain != 0) == (errorDomain2 == 0))
  {
    goto LABEL_14;
  }

  errorDomain3 = [(SISchemaUUFRFatalError *)self errorDomain];
  if (errorDomain3)
  {
    v8 = errorDomain3;
    errorDomain4 = [(SISchemaUUFRFatalError *)self errorDomain];
    errorDomain5 = [equalCopy errorDomain];
    v11 = [errorDomain4 isEqual:errorDomain5];

    if (!v11)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_15;
    }
  }

  errorDomain = [(SISchemaUUFRFatalError *)self siriResponseContext];
  errorDomain2 = [equalCopy siriResponseContext];
  if ((errorDomain != 0) != (errorDomain2 == 0))
  {
    siriResponseContext = [(SISchemaUUFRFatalError *)self siriResponseContext];
    if (!siriResponseContext)
    {

LABEL_18:
      v18 = 1;
      goto LABEL_16;
    }

    v14 = siriResponseContext;
    siriResponseContext2 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    siriResponseContext3 = [equalCopy siriResponseContext];
    v17 = [siriResponseContext2 isEqual:siriResponseContext3];

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
  errorDomain = [(SISchemaUUFRFatalError *)self errorDomain];

  if (errorDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  siriResponseContext = [(SISchemaUUFRFatalError *)self siriResponseContext];

  v6 = toCopy;
  if (siriResponseContext)
  {
    siriResponseContext2 = [(SISchemaUUFRFatalError *)self siriResponseContext];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SISchemaUUFRFatalError;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SISchemaUUFRFatalError *)self siriResponseContext:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SISchemaUUFRFatalError *)self deleteSiriResponseContext];
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