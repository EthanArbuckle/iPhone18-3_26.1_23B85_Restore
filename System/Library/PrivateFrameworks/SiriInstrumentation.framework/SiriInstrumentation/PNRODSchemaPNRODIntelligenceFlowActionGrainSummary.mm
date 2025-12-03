@interface PNRODSchemaPNRODIntelligenceFlowActionGrainSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumActionsCreated:(BOOL)created;
- (void)setHasNumQueriesCreated:(BOOL)created;
- (void)setHasStatementId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowActionGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODIntelligenceFlowActionGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"actionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setActionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setPlanId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setClientRequestId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setRawQueryEventId:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setStatus:](v5, "setStatus:", [v14 longLongValue]);
    }

    v34 = v14;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setToolId:v16];
    }

    v33 = v15;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setBundleId:v18];
    }

    v32 = v17;
    v36 = v6;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setStatementId:](v5, "setStatementId:", [v19 unsignedIntValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setExecutionTime:v21];
    }

    v35 = v12;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"appEntityQueryResponseTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setAppEntityQueryResponseTime:v23];
    }

    v24 = v10;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setFailureInfo:v26];
    }

    v27 = v8;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v28 unsignedIntValue]);
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"numActionsCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setNumActionsCreated:](v5, "setNumActionsCreated:", [v29 unsignedIntValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self dictionaryRepresentation];
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
    actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
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

  if (self->_appEntityQueryResponseTime)
  {
    appEntityQueryResponseTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    dictionaryRepresentation2 = [appEntityQueryResponseTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"appEntityQueryResponseTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"appEntityQueryResponseTime"];
    }
  }

  if (self->_bundleId)
  {
    bundleId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
    v11 = [bundleId copy];
    [dictionary setObject:v11 forKeyedSubscript:@"bundleId"];
  }

  if (self->_clientRequestId)
  {
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    dictionaryRepresentation3 = [clientRequestId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_executionTime)
  {
    executionTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    dictionaryRepresentation4 = [executionTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"executionTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"executionTime"];
    }
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
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

  has = self->_has;
  if ((has & 8) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary numActionsCreated](self, "numActionsCreated")}];
    [dictionary setObject:v22 forKeyedSubscript:@"numActionsCreated"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary numQueriesCreated](self, "numQueriesCreated")}];
    [dictionary setObject:v23 forKeyedSubscript:@"numQueriesCreated"];
  }

  if (self->_planId)
  {
    planId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
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

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    dictionaryRepresentation7 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  v30 = self->_has;
  if ((v30 & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary statementId](self, "statementId")}];
    [dictionary setObject:v31 forKeyedSubscript:@"statementId"];

    v30 = self->_has;
  }

  if (v30)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary status](self, "status")}];
    [dictionary setObject:v32 forKeyedSubscript:@"status"];
  }

  if (self->_toolId)
  {
    toolId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
    v34 = [toolId copy];
    [dictionary setObject:v34 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v16 = [(SISchemaUUID *)self->_actionId hash];
  v15 = [(SISchemaUUID *)self->_planId hash];
  v14 = [(SISchemaUUID *)self->_clientRequestId hash];
  v3 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_toolId hash];
  v6 = [(NSString *)self->_bundleId hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_statementId;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PNRODSchemaPNRODMetricDuration *)self->_executionTime hash];
  v9 = [(PNRODSchemaPNRODMetricDuration *)self->_appEntityQueryResponseTime hash];
  v10 = [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_numQueriesCreated;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_11:
    v12 = 0;
    return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  v12 = 2654435761 * self->_numActionsCreated;
  return v15 ^ v16 ^ v14 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  actionId2 = [equalCopy actionId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  actionId3 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  if (actionId3)
  {
    v8 = actionId3;
    actionId4 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
    actionId5 = [equalCopy actionId];
    v11 = [actionId4 isEqual:actionId5];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  actionId2 = [equalCopy planId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  if (planId)
  {
    v13 = planId;
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
    planId3 = [equalCopy planId];
    v16 = [planId2 isEqual:planId3];

    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  actionId2 = [equalCopy clientRequestId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  if (clientRequestId)
  {
    v18 = clientRequestId;
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    clientRequestId3 = [equalCopy clientRequestId];
    v21 = [clientRequestId2 isEqual:clientRequestId3];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  actionId2 = [equalCopy rawQueryEventId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v23 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v26 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v26)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[104] & 1))
  {
    goto LABEL_53;
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_53;
    }
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
  actionId2 = [equalCopy toolId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  toolId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
  if (toolId)
  {
    v29 = toolId;
    toolId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
    toolId3 = [equalCopy toolId];
    v32 = [toolId2 isEqual:toolId3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
  actionId2 = [equalCopy bundleId];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  bundleId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
  if (bundleId)
  {
    v34 = bundleId;
    bundleId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
    bundleId3 = [equalCopy bundleId];
    v37 = [bundleId2 isEqual:bundleId3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v38 = (*&self->_has >> 1) & 1;
  if (v38 != ((equalCopy[104] >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v38)
  {
    statementId = self->_statementId;
    if (statementId != [equalCopy statementId])
    {
      goto LABEL_53;
    }
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  actionId2 = [equalCopy executionTime];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  if (executionTime)
  {
    v41 = executionTime;
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    executionTime3 = [equalCopy executionTime];
    v44 = [executionTime2 isEqual:executionTime3];

    if (!v44)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  actionId2 = [equalCopy appEntityQueryResponseTime];
  if ((actionId != 0) == (actionId2 == 0))
  {
    goto LABEL_52;
  }

  appEntityQueryResponseTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  if (appEntityQueryResponseTime)
  {
    v46 = appEntityQueryResponseTime;
    appEntityQueryResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    appEntityQueryResponseTime3 = [equalCopy appEntityQueryResponseTime];
    v49 = [appEntityQueryResponseTime2 isEqual:appEntityQueryResponseTime3];

    if (!v49)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  actionId2 = [equalCopy failureInfo];
  if ((actionId != 0) == (actionId2 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  if (failureInfo)
  {
    v51 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v54 = [failureInfo2 isEqual:failureInfo3];

    if (!v54)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  has = self->_has;
  v58 = (*&has >> 2) & 1;
  v59 = equalCopy[104];
  if (v58 == ((v59 >> 2) & 1))
  {
    if (v58)
    {
      numQueriesCreated = self->_numQueriesCreated;
      if (numQueriesCreated != [equalCopy numQueriesCreated])
      {
        goto LABEL_53;
      }

      has = self->_has;
      v59 = equalCopy[104];
    }

    v61 = (*&has >> 3) & 1;
    if (v61 == ((v59 >> 3) & 1))
    {
      if (!v61 || (numActionsCreated = self->_numActionsCreated, numActionsCreated == [equalCopy numActionsCreated]))
      {
        v55 = 1;
        goto LABEL_54;
      }
    }
  }

LABEL_53:
  v55 = 0;
LABEL_54:

  return v55;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];

  if (actionId)
  {
    actionId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
    PBDataWriterWriteSubmessage();
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];

  if (planId)
  {
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  toolId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];

  if (toolId)
  {
    PBDataWriterWriteStringField();
  }

  bundleId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];

  if (bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];

  if (executionTime)
  {
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  appEntityQueryResponseTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];

  if (appEntityQueryResponseTime)
  {
    appEntityQueryResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];

  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v21 = toCopy;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v21 = toCopy;
  }
}

- (void)setHasNumActionsCreated:(BOOL)created
{
  if (created)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumQueriesCreated:(BOOL)created
{
  if (created)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasStatementId:(BOOL)id
{
  if (id)
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
  v28.receiver = self;
  v28.super_class = PNRODSchemaPNRODIntelligenceFlowActionGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteToolId];
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteBundleId];
  }

  actionId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  v7 = [actionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteActionId];
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  v10 = [planId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deletePlanId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  v13 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteClientRequestId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  v16 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteRawQueryEventId];
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  v19 = [executionTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteExecutionTime];
  }

  appEntityQueryResponseTime = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  v22 = [appEntityQueryResponseTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteAppEntityQueryResponseTime];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  v25 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteFailureInfo];
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