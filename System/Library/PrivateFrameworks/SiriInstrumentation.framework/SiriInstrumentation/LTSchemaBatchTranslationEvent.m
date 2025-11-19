@interface LTSchemaBatchTranslationEvent
- (BOOL)isEqual:(id)a3;
- (LTSchemaBatchTranslationEvent)initWithDictionary:(id)a3;
- (LTSchemaBatchTranslationEvent)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumParagraphFailures:(BOOL)a3;
- (void)setHasNumberOfParagraphs:(BOOL)a3;
- (void)setHasResponseTimeMs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LTSchemaBatchTranslationEvent

- (LTSchemaBatchTranslationEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = LTSchemaBatchTranslationEvent;
  v5 = [(LTSchemaBatchTranslationEvent *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaBatchTranslationEvent *)v5 setTask:v7];
    }

    v23 = v6;
    v8 = [v4 objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setSessionID:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"requestID", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setRequestID:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setSystemLocale:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"batchSeqNo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setBatchSeqNo:](v5, "setBatchSeqNo:", [v14 unsignedIntValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"numberOfParagraphs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setNumberOfParagraphs:](v5, "setNumberOfParagraphs:", [v15 unsignedIntValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v16 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"numParagraphFailures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setNumParagraphFailures:](v5, "setNumParagraphFailures:", [v17 unsignedIntValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[LTSchemaError alloc] initWithDictionary:v18];
      [(LTSchemaBatchTranslationEvent *)v5 setError:v19];
    }

    v20 = v5;
  }

  return v5;
}

- (LTSchemaBatchTranslationEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LTSchemaBatchTranslationEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LTSchemaBatchTranslationEvent *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent batchSeqNo](self, "batchSeqNo")}];
    [v3 setObject:v4 forKeyedSubscript:@"batchSeqNo"];
  }

  if (self->_error)
  {
    v5 = [(LTSchemaBatchTranslationEvent *)self error];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"error"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent numParagraphFailures](self, "numParagraphFailures")}];
    [v3 setObject:v9 forKeyedSubscript:@"numParagraphFailures"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent numberOfParagraphs](self, "numberOfParagraphs")}];
    [v3 setObject:v10 forKeyedSubscript:@"numberOfParagraphs"];
  }

  if (self->_requestID)
  {
    v11 = [(LTSchemaBatchTranslationEvent *)self requestID];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"requestID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [v3 setObject:v13 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_sessionID)
  {
    v14 = [(LTSchemaBatchTranslationEvent *)self sessionID];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"sessionID"];
  }

  if (self->_systemLocale)
  {
    v16 = [(LTSchemaBatchTranslationEvent *)self systemLocale];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_task)
  {
    v18 = [(LTSchemaBatchTranslationEvent *)self task];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"task"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"task"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(LTSchemaTask *)self->_task hash];
  v4 = [(NSString *)self->_sessionID hash];
  v5 = [(NSString *)self->_requestID hash];
  v6 = [(NSString *)self->_systemLocale hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_batchSeqNo;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_numberOfParagraphs;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v10 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(LTSchemaError *)self->_error hash];
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = 2654435761 * self->_responseTimeMs;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v10 = 2654435761 * self->_numParagraphFailures;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(LTSchemaError *)self->_error hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = [(LTSchemaBatchTranslationEvent *)self task];
  v6 = [v4 task];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v7 = [(LTSchemaBatchTranslationEvent *)self task];
  if (v7)
  {
    v8 = v7;
    v9 = [(LTSchemaBatchTranslationEvent *)self task];
    v10 = [v4 task];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaBatchTranslationEvent *)self sessionID];
  v6 = [v4 sessionID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v12 = [(LTSchemaBatchTranslationEvent *)self sessionID];
  if (v12)
  {
    v13 = v12;
    v14 = [(LTSchemaBatchTranslationEvent *)self sessionID];
    v15 = [v4 sessionID];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaBatchTranslationEvent *)self requestID];
  v6 = [v4 requestID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v17 = [(LTSchemaBatchTranslationEvent *)self requestID];
  if (v17)
  {
    v18 = v17;
    v19 = [(LTSchemaBatchTranslationEvent *)self requestID];
    v20 = [v4 requestID];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  v5 = [(LTSchemaBatchTranslationEvent *)self systemLocale];
  v6 = [v4 systemLocale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_41;
  }

  v22 = [(LTSchemaBatchTranslationEvent *)self systemLocale];
  if (v22)
  {
    v23 = v22;
    v24 = [(LTSchemaBatchTranslationEvent *)self systemLocale];
    v25 = [v4 systemLocale];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = v4[64];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    batchSeqNo = self->_batchSeqNo;
    if (batchSeqNo != [v4 batchSeqNo])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = v4[64];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_42;
  }

  if (v30)
  {
    numberOfParagraphs = self->_numberOfParagraphs;
    if (numberOfParagraphs != [v4 numberOfParagraphs])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = v4[64];
  }

  v32 = (*&has >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_42;
  }

  if (v32)
  {
    responseTimeMs = self->_responseTimeMs;
    if (responseTimeMs != [v4 responseTimeMs])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = v4[64];
  }

  v34 = (*&has >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_42;
  }

  if (v34)
  {
    numParagraphFailures = self->_numParagraphFailures;
    if (numParagraphFailures != [v4 numParagraphFailures])
    {
      goto LABEL_42;
    }
  }

  v5 = [(LTSchemaBatchTranslationEvent *)self error];
  v6 = [v4 error];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  v36 = [(LTSchemaBatchTranslationEvent *)self error];
  if (!v36)
  {

LABEL_45:
    v41 = 1;
    goto LABEL_43;
  }

  v37 = v36;
  v38 = [(LTSchemaBatchTranslationEvent *)self error];
  v39 = [v4 error];
  v40 = [v38 isEqual:v39];

  if (v40)
  {
    goto LABEL_45;
  }

LABEL_42:
  v41 = 0;
LABEL_43:

  return v41;
}

- (void)writeTo:(id)a3
{
  v13 = a3;
  v4 = [(LTSchemaBatchTranslationEvent *)self task];

  if (v4)
  {
    v5 = [(LTSchemaBatchTranslationEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(LTSchemaBatchTranslationEvent *)self sessionID];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(LTSchemaBatchTranslationEvent *)self requestID];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(LTSchemaBatchTranslationEvent *)self systemLocale];

  if (v8)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    PBDataWriterWriteUint32Field();
  }

LABEL_14:
  v10 = [(LTSchemaBatchTranslationEvent *)self error];

  v11 = v13;
  if (v10)
  {
    v12 = [(LTSchemaBatchTranslationEvent *)self error];
    PBDataWriterWriteSubmessage();

    v11 = v13;
  }
}

- (void)setHasNumParagraphFailures:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseTimeMs:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfParagraphs:(BOOL)a3
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
  v13.super_class = LTSchemaBatchTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(LTSchemaBatchTranslationEvent *)self task];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(LTSchemaBatchTranslationEvent *)self deleteTask];
  }

  v9 = [(LTSchemaBatchTranslationEvent *)self error];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(LTSchemaBatchTranslationEvent *)self deleteError];
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