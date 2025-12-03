@interface RGSiriSchemaRGOverrideFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RGSiriSchemaRGOverrideFailed)initWithDictionary:(id)dictionary;
- (RGSiriSchemaRGOverrideFailed)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RGSiriSchemaRGOverrideFailed

- (RGSiriSchemaRGOverrideFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = RGSiriSchemaRGOverrideFailed;
  v5 = [(RGSiriSchemaRGOverrideFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fatalError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RGSiriSchemaRGOverrideFailed setFatalError:](v5, "setFatalError:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[RGSiriSchemaRGError alloc] initWithDictionary:v7];
      [(RGSiriSchemaRGOverrideFailed *)v5 setError:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (RGSiriSchemaRGOverrideFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RGSiriSchemaRGOverrideFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RGSiriSchemaRGOverrideFailed *)self dictionaryRepresentation];
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
  if (self->_error)
  {
    error = [(RGSiriSchemaRGOverrideFailed *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  if (*&self->_has)
  {
    [(RGSiriSchemaRGOverrideFailed *)self fatalError];
    [dictionary setObject:@"RGFATALERROR_UNKNOWN" forKeyedSubscript:@"fatalError"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_fatalError;
  }

  else
  {
    v2 = 0;
  }

  return [(RGSiriSchemaRGError *)self->_error hash]^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (fatalError = self->_fatalError, fatalError == [equalCopy fatalError]))
      {
        error = [(RGSiriSchemaRGOverrideFailed *)self error];
        error2 = [equalCopy error];
        v8 = error2;
        if ((error != 0) != (error2 == 0))
        {
          error3 = [(RGSiriSchemaRGOverrideFailed *)self error];
          if (!error3)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = error3;
          error4 = [(RGSiriSchemaRGOverrideFailed *)self error];
          error5 = [equalCopy error];
          v13 = [error4 isEqual:error5];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  error = [(RGSiriSchemaRGOverrideFailed *)self error];

  v5 = toCopy;
  if (error)
  {
    error2 = [(RGSiriSchemaRGOverrideFailed *)self error];
    PBDataWriterWriteSubmessage();

    v5 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = RGSiriSchemaRGOverrideFailed;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(RGSiriSchemaRGOverrideFailed *)self error:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(RGSiriSchemaRGOverrideFailed *)self deleteError];
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