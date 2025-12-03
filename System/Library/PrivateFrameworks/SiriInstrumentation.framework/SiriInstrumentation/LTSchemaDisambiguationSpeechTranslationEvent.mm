@interface LTSchemaDisambiguationSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaDisambiguationSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaDisambiguationSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaDisambiguationSpeechTranslationEvent

- (LTSchemaDisambiguationSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = LTSchemaDisambiguationSpeechTranslationEvent;
  v5 = [(LTSchemaDisambiguationSpeechTranslationEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaDisambiguationSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"sourceLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaDisambiguationSpeechTranslationEvent *)v5 setSourceLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"senseID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaDisambiguationSpeechTranslationEvent *)v5 setSenseID:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (LTSchemaDisambiguationSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaDisambiguationSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaDisambiguationSpeechTranslationEvent *)self dictionaryRepresentation];
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
    requestID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self requestID];
    v5 = [requestID copy];
    [dictionary setObject:v5 forKeyedSubscript:@"requestID"];
  }

  if (self->_senseID)
  {
    senseID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self senseID];
    v7 = [senseID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"senseID"];
  }

  if (self->_sourceLocale)
  {
    sourceLocale = [(LTSchemaDisambiguationSpeechTranslationEvent *)self sourceLocale];
    v9 = [sourceLocale copy];
    [dictionary setObject:v9 forKeyedSubscript:@"sourceLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(NSString *)self->_sourceLocale hash]^ v3;
  return v4 ^ [(NSString *)self->_senseID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  requestID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self requestID];
  requestID2 = [equalCopy requestID];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_16;
  }

  requestID3 = [(LTSchemaDisambiguationSpeechTranslationEvent *)self requestID];
  if (requestID3)
  {
    v8 = requestID3;
    requestID4 = [(LTSchemaDisambiguationSpeechTranslationEvent *)self requestID];
    requestID5 = [equalCopy requestID];
    v11 = [requestID4 isEqual:requestID5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self sourceLocale];
  requestID2 = [equalCopy sourceLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_16;
  }

  sourceLocale = [(LTSchemaDisambiguationSpeechTranslationEvent *)self sourceLocale];
  if (sourceLocale)
  {
    v13 = sourceLocale;
    sourceLocale2 = [(LTSchemaDisambiguationSpeechTranslationEvent *)self sourceLocale];
    sourceLocale3 = [equalCopy sourceLocale];
    v16 = [sourceLocale2 isEqual:sourceLocale3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self senseID];
  requestID2 = [equalCopy senseID];
  if ((requestID != 0) != (requestID2 == 0))
  {
    senseID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self senseID];
    if (!senseID)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = senseID;
    senseID2 = [(LTSchemaDisambiguationSpeechTranslationEvent *)self senseID];
    senseID3 = [equalCopy senseID];
    v21 = [senseID2 isEqual:senseID3];

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
  requestID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  sourceLocale = [(LTSchemaDisambiguationSpeechTranslationEvent *)self sourceLocale];

  if (sourceLocale)
  {
    PBDataWriterWriteStringField();
  }

  senseID = [(LTSchemaDisambiguationSpeechTranslationEvent *)self senseID];

  v7 = toCopy;
  if (senseID)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end