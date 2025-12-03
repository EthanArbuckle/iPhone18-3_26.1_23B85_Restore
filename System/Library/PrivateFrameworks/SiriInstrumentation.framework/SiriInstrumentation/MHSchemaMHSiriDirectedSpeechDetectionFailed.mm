@interface MHSchemaMHSiriDirectedSpeechDetectionFailed
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithDictionary:(id)dictionary;
- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHSiriDirectedSpeechDetectionFailed

- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = MHSchemaMHSiriDirectedSpeechDetectionFailed;
  v5 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"errorMessage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)v5 setErrorMessage:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHSiriDirectedSpeechDetectionFailed setErrorCode:](v5, "setErrorCode:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (MHSchemaMHSiriDirectedSpeechDetectionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MHSchemaMHSiriDirectedSpeechDetectionFailed errorCode](self, "errorCode")}];
    [dictionary setObject:v4 forKeyedSubscript:@"errorCode"];
  }

  if (self->_errorMessage)
  {
    errorMessage = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
    v6 = [errorMessage copy];
    [dictionary setObject:v6 forKeyedSubscript:@"errorMessage"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_errorMessage hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_errorCode;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  errorMessage = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
  errorMessage2 = [equalCopy errorMessage];
  v7 = errorMessage2;
  if ((errorMessage != 0) == (errorMessage2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  errorMessage3 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
  if (errorMessage3)
  {
    v9 = errorMessage3;
    errorMessage4 = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];
    errorMessage5 = [equalCopy errorMessage];
    v12 = [errorMessage4 isEqual:errorMessage5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  errorMessage = [(MHSchemaMHSiriDirectedSpeechDetectionFailed *)self errorMessage];

  if (errorMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end