@interface SISchemaPNRFatalError
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPNRFatalError)initWithDictionary:(id)dictionary;
- (SISchemaPNRFatalError)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPNRFatalError

- (SISchemaPNRFatalError)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaPNRFatalError;
  v5 = [(SISchemaPNRFatalError *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v6];
      [(SISchemaPNRFatalError *)v5 setError:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"underlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v8];
      [(SISchemaPNRFatalError *)v5 setUnderlyingError:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"underUnderlyingError"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaPNRFatalErrorInfo alloc] initWithDictionary:v10];
      [(SISchemaPNRFatalError *)v5 setUnderUnderlyingError:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaPNRFatalError)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPNRFatalError *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPNRFatalError *)self dictionaryRepresentation];
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
    error = [(SISchemaPNRFatalError *)self error];
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

  if (self->_underUnderlyingError)
  {
    underUnderlyingError = [(SISchemaPNRFatalError *)self underUnderlyingError];
    dictionaryRepresentation2 = [underUnderlyingError dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"underUnderlyingError"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"underUnderlyingError"];
    }
  }

  if (self->_underlyingError)
  {
    underlyingError = [(SISchemaPNRFatalError *)self underlyingError];
    dictionaryRepresentation3 = [underlyingError dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"underlyingError"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"underlyingError"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaPNRFatalErrorInfo *)self->_error hash];
  v4 = [(SISchemaPNRFatalErrorInfo *)self->_underlyingError hash]^ v3;
  return v4 ^ [(SISchemaPNRFatalErrorInfo *)self->_underUnderlyingError hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  error = [(SISchemaPNRFatalError *)self error];
  error2 = [equalCopy error];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_16;
  }

  error3 = [(SISchemaPNRFatalError *)self error];
  if (error3)
  {
    v8 = error3;
    error4 = [(SISchemaPNRFatalError *)self error];
    error5 = [equalCopy error];
    v11 = [error4 isEqual:error5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  error = [(SISchemaPNRFatalError *)self underlyingError];
  error2 = [equalCopy underlyingError];
  if ((error != 0) == (error2 == 0))
  {
    goto LABEL_16;
  }

  underlyingError = [(SISchemaPNRFatalError *)self underlyingError];
  if (underlyingError)
  {
    v13 = underlyingError;
    underlyingError2 = [(SISchemaPNRFatalError *)self underlyingError];
    underlyingError3 = [equalCopy underlyingError];
    v16 = [underlyingError2 isEqual:underlyingError3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  error = [(SISchemaPNRFatalError *)self underUnderlyingError];
  error2 = [equalCopy underUnderlyingError];
  if ((error != 0) != (error2 == 0))
  {
    underUnderlyingError = [(SISchemaPNRFatalError *)self underUnderlyingError];
    if (!underUnderlyingError)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = underUnderlyingError;
    underUnderlyingError2 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    underUnderlyingError3 = [equalCopy underUnderlyingError];
    v21 = [underUnderlyingError2 isEqual:underUnderlyingError3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  error = [(SISchemaPNRFatalError *)self error];

  if (error)
  {
    error2 = [(SISchemaPNRFatalError *)self error];
    PBDataWriterWriteSubmessage();
  }

  underlyingError = [(SISchemaPNRFatalError *)self underlyingError];

  if (underlyingError)
  {
    underlyingError2 = [(SISchemaPNRFatalError *)self underlyingError];
    PBDataWriterWriteSubmessage();
  }

  underUnderlyingError = [(SISchemaPNRFatalError *)self underUnderlyingError];

  v9 = toCopy;
  if (underUnderlyingError)
  {
    underUnderlyingError2 = [(SISchemaPNRFatalError *)self underUnderlyingError];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = SISchemaPNRFatalError;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  error = [(SISchemaPNRFatalError *)self error];
  v7 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaPNRFatalError *)self deleteError];
  }

  underlyingError = [(SISchemaPNRFatalError *)self underlyingError];
  v10 = [underlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaPNRFatalError *)self deleteUnderlyingError];
  }

  underUnderlyingError = [(SISchemaPNRFatalError *)self underUnderlyingError];
  v13 = [underUnderlyingError applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaPNRFatalError *)self deleteUnderUnderlyingError];
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