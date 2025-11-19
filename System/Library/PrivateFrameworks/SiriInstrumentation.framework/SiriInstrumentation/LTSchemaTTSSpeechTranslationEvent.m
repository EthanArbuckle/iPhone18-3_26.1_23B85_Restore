@interface LTSchemaTTSSpeechTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaTTSSpeechTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaTTSSpeechTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPlaybackBeginTimeMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaTTSSpeechTranslationEvent

- (LTSchemaTTSSpeechTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = LTSchemaTTSSpeechTranslationEvent;
  v5 = [(LTSchemaTTSSpeechTranslationEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaTTSSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaTTSSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaTTSSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"playbackBeginTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaTTSSpeechTranslationEvent setPlaybackBeginTimeMs:](v5, "setPlaybackBeginTimeMs:", [v11 unsignedIntValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (LTSchemaTTSSpeechTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaTTSSpeechTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaTTSSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaTTSSpeechTranslationEvent playbackBeginTimeMs](self, "playbackBeginTimeMs")}];
    [v3 setObject:v4 forKeyedSubscript:@"playbackBeginTimeMs"];
  }

  if (self->_requestID)
  {
    v5 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaTTSSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [v3 setObject:v7 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    v8 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"selectedLocale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];
    v10 = [v4 requestID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
  v6 = [v4 selectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];
    v15 = [v4 selectedLocale];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      responseTimeMs = self->_responseTimeMs;
      if (responseTimeMs != [v4 responseTimeMs])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (playbackBeginTimeMs = self->_playbackBeginTimeMs, playbackBeginTimeMs == [v4 playbackBeginTimeMs]))
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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(LTSchemaTTSSpeechTranslationEvent *)self requestID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(LTSchemaTTSSpeechTranslationEvent *)self selectedLocale];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  v7 = v8;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v7 = v8;
  }
}

- (void)setHasPlaybackBeginTimeMs:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end