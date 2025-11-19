@interface PNRODSchemaPNRODIntelligenceFlowActionGrainSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumActionsCreated:(BOOL)a3;
- (void)setHasNumQueriesCreated:(BOOL)a3;
- (void)setHasStatementId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowActionGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODIntelligenceFlowActionGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setActionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setPlanId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setClientRequestId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setRawQueryEventId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setStatus:](v5, "setStatus:", [v14 longLongValue]);
    }

    v34 = v14;
    v15 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setToolId:v16];
    }

    v33 = v15;
    v17 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setBundleId:v18];
    }

    v32 = v17;
    v36 = v6;
    v19 = [v4 objectForKeyedSubscript:@"statementId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setStatementId:](v5, "setStatementId:", [v19 unsignedIntValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setExecutionTime:v21];
    }

    v35 = v12;
    v22 = [v4 objectForKeyedSubscript:@"appEntityQueryResponseTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setAppEntityQueryResponseTime:v23];
    }

    v24 = v10;
    v25 = [v4 objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)v5 setFailureInfo:v26];
    }

    v27 = v8;
    v28 = [v4 objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v28 unsignedIntValue]);
    }

    v29 = [v4 objectForKeyedSubscript:@"numActionsCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary setNumActionsCreated:](v5, "setNumActionsCreated:", [v29 unsignedIntValue]);
    }

    v30 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self dictionaryRepresentation];
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
  if (self->_actionId)
  {
    v4 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionId"];
    }
  }

  if (self->_appEntityQueryResponseTime)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"appEntityQueryResponseTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"appEntityQueryResponseTime"];
    }
  }

  if (self->_bundleId)
  {
    v10 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"bundleId"];
  }

  if (self->_clientRequestId)
  {
    v12 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_executionTime)
  {
    v15 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"executionTime"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"executionTime"];
    }
  }

  if (self->_failureInfo)
  {
    v18 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"failureInfo"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary numActionsCreated](self, "numActionsCreated")}];
    [v3 setObject:v22 forKeyedSubscript:@"numActionsCreated"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary numQueriesCreated](self, "numQueriesCreated")}];
    [v3 setObject:v23 forKeyedSubscript:@"numQueriesCreated"];
  }

  if (self->_planId)
  {
    v24 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"planId"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v27 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  v30 = self->_has;
  if ((v30 & 2) != 0)
  {
    v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary statementId](self, "statementId")}];
    [v3 setObject:v31 forKeyedSubscript:@"statementId"];

    v30 = self->_has;
  }

  if (v30)
  {
    v32 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary status](self, "status")}];
    [v3 setObject:v32 forKeyedSubscript:@"status"];
  }

  if (self->_toolId)
  {
    v33 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
    v34 = [v33 copy];
    [v3 setObject:v34 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  v6 = [v4 actionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
    v10 = [v4 actionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  v6 = [v4 planId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
    v15 = [v4 planId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    v20 = [v4 clientRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v22 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    v25 = [v4 rawQueryEventId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[104] & 1))
  {
    goto LABEL_53;
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_53;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
  v6 = [v4 toolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];
    v31 = [v4 toolId];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
  v6 = [v4 bundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];
    v36 = [v4 bundleId];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v38 = (*&self->_has >> 1) & 1;
  if (v38 != ((v4[104] >> 1) & 1))
  {
    goto LABEL_53;
  }

  if (v38)
  {
    statementId = self->_statementId;
    if (statementId != [v4 statementId])
    {
      goto LABEL_53;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  v6 = [v4 executionTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v40 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  if (v40)
  {
    v41 = v40;
    v42 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    v43 = [v4 executionTime];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  v6 = [v4 appEntityQueryResponseTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_52;
  }

  v45 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  if (v45)
  {
    v46 = v45;
    v47 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    v48 = [v4 appEntityQueryResponseTime];
    v49 = [v47 isEqual:v48];

    if (!v49)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_52:

    goto LABEL_53;
  }

  v50 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  if (v50)
  {
    v51 = v50;
    v52 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
    v53 = [v4 failureInfo];
    v54 = [v52 isEqual:v53];

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
  v59 = v4[104];
  if (v58 == ((v59 >> 2) & 1))
  {
    if (v58)
    {
      numQueriesCreated = self->_numQueriesCreated;
      if (numQueriesCreated != [v4 numQueriesCreated])
      {
        goto LABEL_53;
      }

      has = self->_has;
      v59 = v4[104];
    }

    v61 = (*&has >> 3) & 1;
    if (v61 == ((v59 >> 3) & 1))
    {
      if (!v61 || (numActionsCreated = self->_numActionsCreated, numActionsCreated == [v4 numActionsCreated]))
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

- (void)writeTo:(id)a3
{
  v22 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self toolId];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }

  v13 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self bundleId];

  if (v13)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  v14 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v21 = v22;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v21 = v22;
  }
}

- (void)setHasNumActionsCreated:(BOOL)a3
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

- (void)setHasNumQueriesCreated:(BOOL)a3
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

- (void)setHasStatementId:(BOOL)a3
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
  v28.receiver = self;
  v28.super_class = PNRODSchemaPNRODIntelligenceFlowActionGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v28 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteToolId];
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteBundleId];
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self actionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteActionId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self planId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deletePlanId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self clientRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteClientRequestId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self rawQueryEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteRawQueryEventId];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self executionTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteExecutionTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self appEntityQueryResponseTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self deleteAppEntityQueryResponseTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self failureInfo];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
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