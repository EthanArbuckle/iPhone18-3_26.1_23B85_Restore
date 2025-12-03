@interface SISchemaPNRSpeechRecognitionSourceContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaPNRSpeechRecognitionSourceContext)initWithDictionary:(id)dictionary;
- (SISchemaPNRSpeechRecognitionSourceContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaPNRSpeechRecognitionSourceContext

- (SISchemaPNRSpeechRecognitionSourceContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SISchemaPNRSpeechRecognitionSourceContext;
  v5 = [(SISchemaPNRSpeechRecognitionSourceContext *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"speechRecognitionSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaPNRSpeechRecognitionSourceContext setSpeechRecognitionSource:](v5, "setSpeechRecognitionSource:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (SISchemaPNRSpeechRecognitionSourceContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaPNRSpeechRecognitionSourceContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaPNRSpeechRecognitionSourceContext *)self dictionaryRepresentation];
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
    speechRecognitionSource = [(SISchemaPNRSpeechRecognitionSourceContext *)self speechRecognitionSource];
    v5 = @"PNRSPEECHRECOGNITIONSOURCE_UNKNOWN_SOURCE";
    if (speechRecognitionSource == 1)
    {
      v5 = @"PNRSPEECHRECOGNITIONSOURCE_CLIENT";
    }

    if (speechRecognitionSource == 2)
    {
      v6 = @"PNRSPEECHRECOGNITIONSOURCE_SERVER";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"speechRecognitionSource"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_speechRecognitionSource;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (speechRecognitionSource = self->_speechRecognitionSource, speechRecognitionSource == [equalCopy speechRecognitionSource]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end