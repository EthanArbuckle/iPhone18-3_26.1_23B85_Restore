@interface LTSchemaMTSpeechTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaMTSpeechTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaMTSpeechTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaMTSpeechTranslationEvent

- (LTSchemaMTSpeechTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = LTSchemaMTSpeechTranslationEvent;
  v5 = [(LTSchemaMTSpeechTranslationEvent *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(LTSchemaMTSpeechTranslationEvent *)v5 setRequestID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"selectedLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaMTSpeechTranslationEvent *)v5 setSelectedLocale:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaMTSpeechTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (LTSchemaMTSpeechTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaMTSpeechTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaMTSpeechTranslationEvent *)self dictionaryRepresentation];
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
  if (self->_requestID)
  {
    v4 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"requestID"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[LTSchemaMTSpeechTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [v3 setObject:v6 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_selectedLocale)
  {
    v7 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"selectedLocale"];
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
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];
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

  v5 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
  v6 = [v4 selectedLocale];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];
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

  if ((*&self->_has & 1) == (v4[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (responseTimeMs = self->_responseTimeMs, responseTimeMs == [v4 responseTimeMs]))
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

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(LTSchemaMTSpeechTranslationEvent *)self requestID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(LTSchemaMTSpeechTranslationEvent *)self selectedLocale];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v7;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v6 = v7;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end