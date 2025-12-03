@interface LTSchemaLIDSpeechTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaLIDSpeechTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaLIDSpeechTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpeechElapsedTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaLIDSpeechTranslationEvent

- (LTSchemaLIDSpeechTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = LTSchemaLIDSpeechTranslationEvent;
  v5 = [(LTSchemaLIDSpeechTranslationEvent *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[LTSchemaLocaleConfidence alloc] initWithDictionary:v8];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"alternateLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[LTSchemaLocaleConfidence alloc] initWithDictionary:v10];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setAlternateLocale:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"userSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setUserSelectedLocale:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaLIDSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"speechElapsedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaLIDSpeechTranslationEvent setSpeechElapsedTime:](v5, "setSpeechElapsedTime:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (LTSchemaLIDSpeechTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaLIDSpeechTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaLIDSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if (self->_alternateLocale)
  {
    alternateLocale = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    dictionaryRepresentation = [alternateLocale dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"alternateLocale"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"alternateLocale"];
    }
  }

  if (self->_requestID)
  {
    requestID = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
    v8 = [requestID copy];
    [dictionary setObject:v8 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaLIDSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [dictionary setObject:v9 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    selectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    dictionaryRepresentation2 = [selectedLocale dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"selectedLocale"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"selectedLocale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaLIDSpeechTranslationEvent speechElapsedTime](self, "speechElapsedTime")}];
    [dictionary setObject:v13 forKeyedSubscript:@"speechElapsedTime"];
  }

  if (self->_userSelectedLocale)
  {
    userSelectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
    v15 = [userSelectedLocale copy];
    [dictionary setObject:v15 forKeyedSubscript:@"userSelectedLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestID hash];
  v4 = [(LTSchemaLocaleConfidence *)self->_selectedLocale hash];
  v5 = [(LTSchemaLocaleConfidence *)self->_alternateLocale hash];
  v6 = [(NSString *)self->_userSelectedLocale hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_responseTimeMs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_speechElapsedTime;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  requestID = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
  requestID2 = [equalCopy requestID];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_21;
  }

  requestID3 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
  if (requestID3)
  {
    v8 = requestID3;
    requestID4 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
    requestID5 = [equalCopy requestID];
    v11 = [requestID4 isEqual:requestID5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  requestID2 = [equalCopy selectedLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_21;
  }

  selectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  if (selectedLocale)
  {
    v13 = selectedLocale;
    selectedLocale2 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    selectedLocale3 = [equalCopy selectedLocale];
    v16 = [selectedLocale2 isEqual:selectedLocale3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  requestID2 = [equalCopy alternateLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
    goto LABEL_21;
  }

  alternateLocale = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  if (alternateLocale)
  {
    v18 = alternateLocale;
    alternateLocale2 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    alternateLocale3 = [equalCopy alternateLocale];
    v21 = [alternateLocale2 isEqual:alternateLocale3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  requestID = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
  requestID2 = [equalCopy userSelectedLocale];
  if ((requestID != 0) == (requestID2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  userSelectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
  if (userSelectedLocale)
  {
    v23 = userSelectedLocale;
    userSelectedLocale2 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
    userSelectedLocale3 = [equalCopy userSelectedLocale];
    v26 = [userSelectedLocale2 isEqual:userSelectedLocale3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = equalCopy[48];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      responseTimeMs = self->_responseTimeMs;
      if (responseTimeMs != [equalCopy responseTimeMs])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = equalCopy[48];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (!v32 || (speechElapsedTime = self->_speechElapsedTime, speechElapsedTime == [equalCopy speechElapsedTime]))
      {
        v27 = 1;
        goto LABEL_23;
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  requestID = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  selectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];

  if (selectedLocale)
  {
    selectedLocale2 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    PBDataWriterWriteSubmessage();
  }

  alternateLocale = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];

  if (alternateLocale)
  {
    alternateLocale2 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    PBDataWriterWriteSubmessage();
  }

  userSelectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];

  if (userSelectedLocale)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v11 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v11 = toCopy;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v11 = toCopy;
  }
}

- (void)setHasSpeechElapsedTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = LTSchemaLIDSpeechTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  selectedLocale = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  v7 = [selectedLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LTSchemaLIDSpeechTranslationEvent *)self deleteSelectedLocale];
  }

  alternateLocale = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  v10 = [alternateLocale applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(LTSchemaLIDSpeechTranslationEvent *)self deleteAlternateLocale];
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