@interface PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)&v29 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"actionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setActionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setPlanId:v9];
    }

    v28 = v6;
    v10 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setClientRequestId:v11];
    }

    v26 = v10;
    v27 = v8;
    v12 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setRawQueryEventId:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setExecutorId:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"isAppForeground"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary setIsAppForeground:](v5, "setIsAppForeground:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"appState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary setAppState:](v5, "setAppState:", [v17 longLongValue]);
    }

    v18 = [v4 objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setExecutionTime:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"pqaMetrics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODPQAMetrics alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)v5 setPqaMetrics:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self dictionaryRepresentation];
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
    v4 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
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

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary appState](self, "appState")}];
    [v3 setObject:v7 forKeyedSubscript:@"appState"];
  }

  if (self->_clientRequestId)
  {
    v8 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    v9 = [v8 dictionaryRepresentation];
    if (v9)
    {
      [v3 setObject:v9 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_executionTime)
  {
    v11 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"executionTime"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"executionTime"];
    }
  }

  if (self->_executorId)
  {
    v14 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"executorId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"executorId"];
    }
  }

  if (self->_failureInfo)
  {
    v17 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
    v18 = [v17 dictionaryRepresentation];
    if (v18)
    {
      [v3 setObject:v18 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v19 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (*&self->_has)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary isAppForeground](self, "isAppForeground")}];
    [v3 setObject:v20 forKeyedSubscript:@"isAppForeground"];
  }

  if (self->_planId)
  {
    v21 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"planId"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_pqaMetrics)
  {
    v24 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"pqaMetrics"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"pqaMetrics"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v27 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  v6 = [v4 actionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
    v10 = [v4 actionId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  v6 = [v4 planId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    v15 = [v4 planId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    v20 = [v4 clientRequestId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v22 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
    v25 = [v4 rawQueryEventId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  v6 = [v4 executorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  if (v27)
  {
    v28 = v27;
    v29 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
    v30 = [v4 executorId];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  has = self->_has;
  v33 = v4[88];
  if ((*&has & 1) != (v33 & 1))
  {
    goto LABEL_49;
  }

  if (*&has)
  {
    isAppForeground = self->_isAppForeground;
    if (isAppForeground != [v4 isAppForeground])
    {
      goto LABEL_49;
    }

    has = self->_has;
    v33 = v4[88];
  }

  v35 = (*&has >> 1) & 1;
  if (v35 != ((v33 >> 1) & 1))
  {
    goto LABEL_49;
  }

  if (v35)
  {
    appState = self->_appState;
    if (appState != [v4 appState])
    {
      goto LABEL_49;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  v6 = [v4 executionTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v37 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  if (v37)
  {
    v38 = v37;
    v39 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    v40 = [v4 executionTime];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  v6 = [v4 pqaMetrics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_48;
  }

  v42 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  if (v42)
  {
    v43 = v42;
    v44 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    v45 = [v4 pqaMetrics];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_49;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_48:

    goto LABEL_49;
  }

  v47 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  if (!v47)
  {

LABEL_52:
    v52 = 1;
    goto LABEL_50;
  }

  v48 = v47;
  v49 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  v50 = [v4 failureInfo];
  v51 = [v49 isEqual:v50];

  if (v51)
  {
    goto LABEL_52;
  }

LABEL_49:
  v52 = 0;
LABEL_50:

  return v52;
}

- (void)writeTo:(id)a3
{
  v22 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
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

  v15 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];

  if (v15)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];

  if (v17)
  {
    v18 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];

  v20 = v22;
  if (v19)
  {
    v21 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v20 = v22;
  }
}

- (void)setHasAppState:(BOOL)a3
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
  v31.receiver = self;
  v31.super_class = PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v31 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self actionId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteActionId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self planId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deletePlanId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self clientRequestId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteClientRequestId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self rawQueryEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteRawQueryEventId];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executorId];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteExecutorId];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self executionTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deleteExecutionTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self pqaMetrics];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self deletePqaMetrics];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self failureInfo];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
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