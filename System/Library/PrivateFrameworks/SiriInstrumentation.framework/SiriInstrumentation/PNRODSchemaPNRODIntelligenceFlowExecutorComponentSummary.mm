@interface PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppState:(BOOL)state;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setActionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setPlanId:v9];
    }

    v28 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setClientRequestId:v11];
    }

    v26 = v10;
    v27 = v8;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setRawQueryEventId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setExecutorId:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isAppForeground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary setIsAppForeground:](v5, "setIsAppForeground:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"appState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary setAppState:](v5, "setAppState:", [v17 longLongValue]);
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setExecutionTime:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"pqaMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODPQAMetrics alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setPqaMetrics:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setFailureInfo:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self dictionaryRepresentation];
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
  if (self->_actionId)
  {
    actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
    dictionaryRepresentation = [actionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary appState](self, "appState")}];
    [dictionary setObject:v7 forKeyedSubscript:@"appState"];
  }

  if (self->_clientRequestId)
  {
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    dictionaryRepresentation2 = [clientRequestId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_executionTime)
  {
    executionTime = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    dictionaryRepresentation3 = [executionTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"executionTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"executionTime"];
    }
  }

  if (self->_executorId)
  {
    executorId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
    dictionaryRepresentation4 = [executorId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"executorId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"executorId"];
    }
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
    dictionaryRepresentation5 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary isAppForeground](self, "isAppForeground")}];
    [dictionary setObject:v20 forKeyedSubscript:@"isAppForeground"];
  }

  if (self->_planId)
  {
    planId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    dictionaryRepresentation6 = [planId dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"planId"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_pqaMetrics)
  {
    pqaMetrics = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    dictionaryRepresentation7 = [pqaMetrics dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pqaMetrics"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pqaMetrics"];
    }
  }

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
    dictionaryRepresentation8 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_actionId hash];
  v4 = [(SISchemaUUID *)self->_planId hash];
  v5 = [(SISchemaUUID *)self->_clientRequestId hash];
  v6 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  v7 = [(SISchemaUUID *)self->_executorId hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_isAppForeground;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_appState;
LABEL_6:
  v10 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v11 = [(PNRODSchemaPNRODMetricDuration *)self->_executionTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODPQAMetrics *)self->_pqaMetrics hash];
  return v10 ^ v12 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  actionId2 = [equalCopy actionId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  actionId3 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  if (actionId3)
  {
    v8 = actionId3;
    actionId4 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
    actionId5 = [equalCopy actionId];
    v11 = [actionId4 isEqual:actionId5];

    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  actionId2 = [equalCopy planId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  if (planId)
  {
    v13 = planId;
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    planId3 = [equalCopy planId];
    v16 = [planId2 isEqual:planId3];

    if (!v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  actionId2 = [equalCopy clientRequestId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  if (clientRequestId)
  {
    v18 = clientRequestId;
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    clientRequestId3 = [equalCopy clientRequestId];
    v21 = [clientRequestId2 isEqual:clientRequestId3];

    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  actionId2 = [equalCopy rawQueryEventId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v23 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v26 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v26)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  actionId2 = [equalCopy executorId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  executorId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  if (executorId)
  {
    v28 = executorId;
    executorId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
    executorId3 = [equalCopy executorId];
    v31 = [executorId2 isEqual:executorId3];

    if (!v31)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  has = self->_has;
  v33 = equalCopy[88];
  if ((*&has & 1) != (v33 & 1))
  {
    goto LABEL_49;
  }

  if (*&has)
  {
    isAppForeground = self->_isAppForeground;
    if (isAppForeground != [equalCopy isAppForeground])
    {
      goto LABEL_49;
    }

    has = self->_has;
    v33 = equalCopy[88];
  }

  v35 = (*&has >> 1) & 1;
  if (v35 != ((v33 >> 1) & 1))
  {
    goto LABEL_49;
  }

  if (v35)
  {
    appState = self->_appState;
    if (appState != [equalCopy appState])
    {
      goto LABEL_49;
    }
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  actionId2 = [equalCopy executionTime];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  if (executionTime)
  {
    v38 = executionTime;
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    executionTime3 = [equalCopy executionTime];
    v41 = [executionTime2 isEqual:executionTime3];

    if (!v41)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  actionId2 = [equalCopy pqaMetrics];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_48;
  }

  pqaMetrics = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  if (pqaMetrics)
  {
    v43 = pqaMetrics;
    pqaMetrics2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    pqaMetrics3 = [equalCopy pqaMetrics];
    v46 = [pqaMetrics2 isEqual:pqaMetrics3];

    if (!v46)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  actionId2 = [equalCopy failureInfo];
  if ((actionId != 0) == (actionId2 == 0))
  {
LABEL_48:

    goto LABEL_49;
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  if (!failureInfo)
  {

LABEL_52:
    v52 = 1;
    goto LABEL_50;
  }

  v48 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v51 = [failureInfo2 isEqual:failureInfo3];

  if (v51)
  {
    goto LABEL_52;
  }

LABEL_49:
  v52 = 0;
LABEL_50:

  return v52;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];

  if (actionId)
  {
    actionId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
    PBDataWriterWriteSubmessage();
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];

  if (planId)
  {
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  executorId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];

  if (executorId)
  {
    executorId2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];

  if (executionTime)
  {
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  pqaMetrics = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];

  if (pqaMetrics)
  {
    pqaMetrics2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];

  v20 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v20 = toCopy;
  }
}

- (void)setHasAppState:(BOOL)state
{
  if (state)
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
  v31.receiver = self;
  v31.super_class = PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:policyCopy];
  actionId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  v7 = [actionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteActionId];
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  v10 = [planId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deletePlanId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  v13 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteClientRequestId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  v16 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteRawQueryEventId];
  }

  executorId = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  v19 = [executorId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteExecutorId];
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  v22 = [executionTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteExecutionTime];
  }

  pqaMetrics = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  v25 = [pqaMetrics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deletePqaMetrics];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  v28 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteFailureInfo];
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