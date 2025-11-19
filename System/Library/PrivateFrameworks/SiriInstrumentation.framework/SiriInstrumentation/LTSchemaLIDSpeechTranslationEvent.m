@interface LTSchemaLIDSpeechTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaLIDSpeechTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaLIDSpeechTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasSpeechElapsedTime:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaLIDSpeechTranslationEvent

- (LTSchemaLIDSpeechTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = LTSchemaLIDSpeechTranslationEvent;
  v5 = [(LTSchemaLIDSpeechTranslationEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[LTSchemaLocaleConfidence alloc] initWithDictionary:v8];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"alternateLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[LTSchemaLocaleConfidence alloc] initWithDictionary:v10];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setAlternateLocale:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"userSelectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaLIDSpeechTranslationEvent *)v5 setUserSelectedLocale:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaLIDSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"speechElapsedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaLIDSpeechTranslationEvent setSpeechElapsedTime:](v5, "setSpeechElapsedTime:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  return v5;
}

- (LTSchemaLIDSpeechTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaLIDSpeechTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaLIDSpeechTranslationEvent *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_alternateLocale)
  {
    v4 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"alternateLocale"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"alternateLocale"];
    }
  }

  if (self->_requestID)
  {
    v7 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaLIDSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [v3 setObject:v9 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    v10 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"selectedLocale"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"selectedLocale"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaLIDSpeechTranslationEvent speechElapsedTime](self, "speechElapsedTime")}];
    [v3 setObject:v13 forKeyedSubscript:@"speechElapsedTime"];
  }

  if (self->_userSelectedLocale)
  {
    v14 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"userSelectedLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];
    v10 = [v4 requestID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  v6 = [v4 selectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    v15 = [v4 selectedLocale];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  v6 = [v4 alternateLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  if (v17)
  {
    v18 = v17;
    v19 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    v20 = [v4 alternateLocale];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
  v6 = [v4 userSelectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
  if (v22)
  {
    v23 = v22;
    v24 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];
    v25 = [v4 userSelectedLocale];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  has = self->_has;
  v30 = v4[48];
  if ((*&has & 1) == (v30 & 1))
  {
    if (*&has)
    {
      responseTimeMs = self->_responseTimeMs;
      if (responseTimeMs != [v4 responseTimeMs])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = v4[48];
    }

    v32 = (*&has >> 1) & 1;
    if (v32 == ((v30 >> 1) & 1))
    {
      if (!v32 || (speechElapsedTime = self->_speechElapsedTime, speechElapsedTime == [v4 speechElapsedTime]))
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

- (void)writeTo:(id)a3
{
  v12 = a3;
  v4 = [(LTSchemaLIDSpeechTranslationEvent *)self requestID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];

  if (v5)
  {
    v6 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];

  if (v7)
  {
    v8 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(LTSchemaLIDSpeechTranslationEvent *)self userSelectedLocale];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v11 = v12;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v11 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v11 = v12;
  }
}

- (void)setHasSpeechElapsedTime:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LTSchemaLIDSpeechTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(LTSchemaLIDSpeechTranslationEvent *)self selectedLocale];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LTSchemaLIDSpeechTranslationEvent *)self deleteSelectedLocale];
  }

  v9 = [(LTSchemaLIDSpeechTranslationEvent *)self alternateLocale];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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