@interface ORCHSchemaORCHExecutionFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ORCHSchemaORCHExecutionFailed)initWithDictionary:(id)dictionary;
- (ORCHSchemaORCHExecutionFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasErrorCode:(BOOL)code;
- (void)writeTo:(id)to;
@end

@implementation ORCHSchemaORCHExecutionFailed

- (ORCHSchemaORCHExecutionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ORCHSchemaORCHExecutionFailed;
  v5 = [(ORCHSchemaORCHExecutionFailed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(ORCHSchemaORCHExecutionFailed *)v5 setErrorString:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorDomain"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecutionFailed setErrorDomain:](v5, "setErrorDomain:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ORCHSchemaORCHExecutionFailed setErrorCode:](v5, "setErrorCode:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHExecutionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHExecutionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ORCHSchemaORCHExecutionFailed *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[ORCHSchemaORCHExecutionFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v5 forKeyedSubscript:@"errorCode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [(ORCHSchemaORCHExecutionFailed *)self errorDomain]- 1;
    if (v6 > 0xE)
    {
      v7 = @"ORCHERRORDOMAIN_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DEAF0[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"errorDomain"];
  }

  if (self->_errorString)
  {
    errorString = [(ORCHSchemaORCHExecutionFailed *)self errorString];
    v9 = [errorString copy];
    [dictionary setObject:v9 forKeyedSubscript:@"errorString"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorString hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorDomain;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_errorCode;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  errorString = [(ORCHSchemaORCHExecutionFailed *)self errorString];
  errorString2 = [equalCopy errorString];
  v7 = errorString2;
  if ((errorString != 0) == (errorString2 == 0))
  {

    goto LABEL_16;
  }

  errorString3 = [(ORCHSchemaORCHExecutionFailed *)self errorString];
  if (errorString3)
  {
    v9 = errorString3;
    errorString4 = [(ORCHSchemaORCHExecutionFailed *)self errorString];
    errorString5 = [equalCopy errorString];
    v12 = [errorString4 isEqual:errorString5];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[24];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    errorDomain = self->_errorDomain;
    if (errorDomain == [equalCopy errorDomain])
    {
      has = self->_has;
      v14 = equalCopy[24];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorString = [(ORCHSchemaORCHExecutionFailed *)self errorString];

  if (errorString)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (void)setHasErrorCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end