@interface LTSchemaMTSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaMTSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaMTSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaMTSpeechTranslationEvent

- (LTSchemaMTSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = LTSchemaMTSpeechTranslationEvent;
  v5 = [(LTSchemaMTSpeechTranslationEvent *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaMTSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaMTSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaMTSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (LTSchemaMTSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaMTSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaMTSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if (self->_requestID)
  {
    requestID = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
    v5 = [requestID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[LTSchemaMTSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [dictionary setObject:v6 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    selectedLocale = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
    v8 = [selectedLocale copy];
    [dictionary setObject:v8 forKeyedSubscript:@"selectedLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(NSString *)self->_selectedLocale hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_responseTimeMs;
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

  requestID = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
  requestID2 = [equalCopy requestID];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_11;
  }

  requestID3 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
  if (requestID3)
  {
    v8 = requestID3;
    requestID4 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
    requestID5 = [equalCopy requestID];
    v11 = [requestID4 isEqual:requestID5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
  requestID2 = [equalCopy selectedLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  selectedLocale = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
  if (selectedLocale)
  {
    v13 = selectedLocale;
    selectedLocale2 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
    selectedLocale3 = [equalCopy selectedLocale];
    v16 = [selectedLocale2 isEqual:selectedLocale3];

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
    if ((*&self->_has & 1) == 0 || (responseTimeMs = self->_responseTimeMs, responseTimeMs == [equalCopy responseTimeMs]))
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
  requestID = [(LTSchemaMTSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  selectedLocale = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];

  if (selectedLocale)
  {
    PBDataWriterWriteStringField();
  }

  v6 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v6 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end