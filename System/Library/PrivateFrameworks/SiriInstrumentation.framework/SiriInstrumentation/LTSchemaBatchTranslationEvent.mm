@interface LTSchemaBatchTranslationEvent
- (BOOL)isEqual:(id)equal;
- (LTSchemaBatchTranslationEvent)initWithDictionary:(id)dictionary;
- (LTSchemaBatchTranslationEvent)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumParagraphFailures:(BOOL)failures;
- (void)setHasNumberOfParagraphs:(BOOL)paragraphs;
- (void)setHasResponseTimeMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation LTSchemaBatchTranslationEvent

- (LTSchemaBatchTranslationEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = LTSchemaBatchTranslationEvent;
  v5 = [(LTSchemaBatchTranslationEvent *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"task"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[LTSchemaTask alloc] initWithDictionary:v6];
      [(LTSchemaBatchTranslationEvent *)v5 setTask:v7];
    }

    v23 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"sessionID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setSessionID:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"requestID", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setRequestID:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(LTSchemaBatchTranslationEvent *)v5 setSystemLocale:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"batchSeqNo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setBatchSeqNo:](v5, "setBatchSeqNo:", [v14 unsignedIntValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"numberOfParagraphs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setNumberOfParagraphs:](v5, "setNumberOfParagraphs:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"responseTimeMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setResponseTimeMs:](v5, "setResponseTimeMs:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"numParagraphFailures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LTSchemaBatchTranslationEvent setNumParagraphFailures:](v5, "setNumParagraphFailures:", [v17 unsignedIntValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"error"];
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

- (LTSchemaBatchTranslationEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LTSchemaBatchTranslationEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LTSchemaBatchTranslationEvent *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent batchSeqNo](self, "batchSeqNo")}];
    [dictionary setObject:v4 forKeyedSubscript:@"batchSeqNo"];
  }

  if (self->_error)
  {
    error = [(LTSchemaBatchTranslationEvent *)self error];
    dictionaryRepresentation = [error dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"error"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"error"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent numParagraphFailures](self, "numParagraphFailures")}];
    [dictionary setObject:v9 forKeyedSubscript:@"numParagraphFailures"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent numberOfParagraphs](self, "numberOfParagraphs")}];
    [dictionary setObject:v10 forKeyedSubscript:@"numberOfParagraphs"];
  }

  if (self->_requestID)
  {
    requestID = [(LTSchemaBatchTranslationEvent *)self requestID];
    v12 = [requestID copy];
    [dictionary setObject:v12 forKeyedSubscript:@"requestID"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[LTSchemaBatchTranslationEvent responseTimeMs](self, "responseTimeMs")}];
    [dictionary setObject:v13 forKeyedSubscript:@"responseTimeMs"];
  }

  if (self->_sessionID)
  {
    sessionID = [(LTSchemaBatchTranslationEvent *)self sessionID];
    v15 = [sessionID copy];
    [dictionary setObject:v15 forKeyedSubscript:@"sessionID"];
  }

  if (self->_systemLocale)
  {
    systemLocale = [(LTSchemaBatchTranslationEvent *)self systemLocale];
    v17 = [systemLocale copy];
    [dictionary setObject:v17 forKeyedSubscript:@"systemLocale"];
  }

  if (self->_task)
  {
    task = [(LTSchemaBatchTranslationEvent *)self task];
    dictionaryRepresentation2 = [task dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"task"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"task"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  task = [(LTSchemaBatchTranslationEvent *)self task];
  task2 = [equalCopy task];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_41;
  }

  task3 = [(LTSchemaBatchTranslationEvent *)self task];
  if (task3)
  {
    v8 = task3;
    task4 = [(LTSchemaBatchTranslationEvent *)self task];
    task5 = [equalCopy task];
    v11 = [task4 isEqual:task5];

    if (!v11)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  task = [(LTSchemaBatchTranslationEvent *)self sessionID];
  task2 = [equalCopy sessionID];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_41;
  }

  sessionID = [(LTSchemaBatchTranslationEvent *)self sessionID];
  if (sessionID)
  {
    v13 = sessionID;
    sessionID2 = [(LTSchemaBatchTranslationEvent *)self sessionID];
    sessionID3 = [equalCopy sessionID];
    v16 = [sessionID2 isEqual:sessionID3];

    if (!v16)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  task = [(LTSchemaBatchTranslationEvent *)self requestID];
  task2 = [equalCopy requestID];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_41;
  }

  requestID = [(LTSchemaBatchTranslationEvent *)self requestID];
  if (requestID)
  {
    v18 = requestID;
    requestID2 = [(LTSchemaBatchTranslationEvent *)self requestID];
    requestID3 = [equalCopy requestID];
    v21 = [requestID2 isEqual:requestID3];

    if (!v21)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  task = [(LTSchemaBatchTranslationEvent *)self systemLocale];
  task2 = [equalCopy systemLocale];
  if ((task != 0) == (task2 == 0))
  {
    goto LABEL_41;
  }

  systemLocale = [(LTSchemaBatchTranslationEvent *)self systemLocale];
  if (systemLocale)
  {
    v23 = systemLocale;
    systemLocale2 = [(LTSchemaBatchTranslationEvent *)self systemLocale];
    systemLocale3 = [equalCopy systemLocale];
    v26 = [systemLocale2 isEqual:systemLocale3];

    if (!v26)
    {
      goto LABEL_42;
    }
  }

  else
  {
  }

  has = self->_has;
  v28 = equalCopy[64];
  if ((*&has & 1) != (v28 & 1))
  {
    goto LABEL_42;
  }

  if (*&has)
  {
    batchSeqNo = self->_batchSeqNo;
    if (batchSeqNo != [equalCopy batchSeqNo])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = equalCopy[64];
  }

  v30 = (*&has >> 1) & 1;
  if (v30 != ((v28 >> 1) & 1))
  {
    goto LABEL_42;
  }

  if (v30)
  {
    numberOfParagraphs = self->_numberOfParagraphs;
    if (numberOfParagraphs != [equalCopy numberOfParagraphs])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = equalCopy[64];
  }

  v32 = (*&has >> 2) & 1;
  if (v32 != ((v28 >> 2) & 1))
  {
    goto LABEL_42;
  }

  if (v32)
  {
    responseTimeMs = self->_responseTimeMs;
    if (responseTimeMs != [equalCopy responseTimeMs])
    {
      goto LABEL_42;
    }

    has = self->_has;
    v28 = equalCopy[64];
  }

  v34 = (*&has >> 3) & 1;
  if (v34 != ((v28 >> 3) & 1))
  {
    goto LABEL_42;
  }

  if (v34)
  {
    numParagraphFailures = self->_numParagraphFailures;
    if (numParagraphFailures != [equalCopy numParagraphFailures])
    {
      goto LABEL_42;
    }
  }

  task = [(LTSchemaBatchTranslationEvent *)self error];
  task2 = [equalCopy error];
  if ((task != 0) == (task2 == 0))
  {
LABEL_41:

    goto LABEL_42;
  }

  error = [(LTSchemaBatchTranslationEvent *)self error];
  if (!error)
  {

LABEL_45:
    v41 = 1;
    goto LABEL_43;
  }

  v37 = error;
  error2 = [(LTSchemaBatchTranslationEvent *)self error];
  error3 = [equalCopy error];
  v40 = [error2 isEqual:error3];

  if (v40)
  {
    goto LABEL_45;
  }

LABEL_42:
  v41 = 0;
LABEL_43:

  return v41;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  task = [(LTSchemaBatchTranslationEvent *)self task];

  if (task)
  {
    task2 = [(LTSchemaBatchTranslationEvent *)self task];
    PBDataWriterWriteSubmessage();
  }

  sessionID = [(LTSchemaBatchTranslationEvent *)self sessionID];

  if (sessionID)
  {
    PBDataWriterWriteStringField();
  }

  requestID = [(LTSchemaBatchTranslationEvent *)self requestID];

  if (requestID)
  {
    PBDataWriterWriteStringField();
  }

  systemLocale = [(LTSchemaBatchTranslationEvent *)self systemLocale];

  if (systemLocale)
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
  error = [(LTSchemaBatchTranslationEvent *)self error];

  v11 = toCopy;
  if (error)
  {
    error2 = [(LTSchemaBatchTranslationEvent *)self error];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)setHasNumParagraphFailures:(BOOL)failures
{
  if (failures)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseTimeMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumberOfParagraphs:(BOOL)paragraphs
{
  if (paragraphs)
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
  v13.super_class = LTSchemaBatchTranslationEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  task = [(LTSchemaBatchTranslationEvent *)self task];
  v7 = [task applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(LTSchemaBatchTranslationEvent *)self deleteTask];
  }

  error = [(LTSchemaBatchTranslationEvent *)self error];
  v10 = [error applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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