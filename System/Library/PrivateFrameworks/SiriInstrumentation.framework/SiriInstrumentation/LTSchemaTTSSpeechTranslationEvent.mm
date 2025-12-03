@interface LTSchemaTTSSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaTTSSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaTTSSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPlaybackBeginTimeMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaTTSSpeechTranslationEvent

- (LTSchemaTTSSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = LTSchemaTTSSpeechTranslationEvent;
  v5 = [(LTSchemaTTSSpeechTranslationEvent *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaTTSSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaTTSSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaTTSSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"playbackBeginTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaTTSSpeechTranslationEvent setPlaybackBeginTimeMs:](v5, "setPlaybackBeginTimeMs:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (LTSchemaTTSSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaTTSSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaTTSSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaTTSSpeechTranslationEvent playbackBeginTimeMs](self, "playbackBeginTimeMs")}];
    [dictionary setObject:v4 forKeyedSubscript:@"playbackBeginTimeMs"];
  }

  if (self->_requestID)
  {
    requestID = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
    v6 = [requestID copy];
    [dictionary setObject:v6 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaTTSSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [dictionary setObject:v7 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    selectedLocale = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
    v9 = [selectedLocale copy];
    [dictionary setObject:v9 forKeyedSubscript:@"selectedLocale"];
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_playbackBeginTimeMs;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  requestID = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
  requestID2 = [equalCopy requestID];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_11;
  }

  requestID3 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
  if (requestID3)
  {
    v8 = requestID3;
    requestID4 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
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

  requestID = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
  requestID2 = [equalCopy selectedLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  selectedLocale = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
  if (selectedLocale)
  {
    v13 = selectedLocale;
    selectedLocale2 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
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

  has = self->_has;
  v20 = equalCopy[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      responseTimeMs = self->_responseTimeMs;
      if (responseTimeMs != [equalCopy responseTimeMs])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = equalCopy[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (playbackBeginTimeMs = self->_playbackBeginTimeMs, playbackBeginTimeMs == [equalCopy playbackBeginTimeMs]))
      {
        v17 = 1;
        goto LABEL_13;
      }
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
  requestID = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  selectedLocale = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];

  if (selectedLocale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = toCopy;
  }
}

- (void)setHasPlaybackBeginTimeMs:(BOOL)ms
{
  if (ms)
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