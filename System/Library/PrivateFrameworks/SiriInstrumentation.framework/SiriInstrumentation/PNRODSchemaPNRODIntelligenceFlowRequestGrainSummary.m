@interface PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)requestFeatureTagAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addBundleId:(id)a3;
- (void)addRequestFeatureTag:(int)a3;
- (void)addToolId:(id)a3;
- (void)setHasNumActionsCreated:(BOOL)a3;
- (void)setHasNumPlansCreated:(BOOL)a3;
- (void)setHasNumPlansCreatedForResponse:(BOOL)a3;
- (void)setHasNumQueriesCreated:(BOOL)a3;
- (void)setHasNumResponseGenerationRequests:(BOOL)a3;
- (void)setHasNumStatementsEvaluated:(BOOL)a3;
- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)a3;
- (void)setHasNumSystemPromptsResolved:(BOOL)a3;
- (void)setHasNumSystemResponsesGenerated:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithDictionary:(id)a3
{
  v101 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v97.receiver = self;
  v97.super_class = PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)&v97 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setClientRequestId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clientSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setClientSessionId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rawSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRawSessionId:v11];
    }

    v77 = v10;
    v78 = v8;
    v79 = v6;
    v12 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRawQueryEventId:v13];
    }

    v76 = v12;
    v14 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    v84 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setStatus:](v5, "setStatus:", [v14 longLongValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"toolId"];
    objc_opt_class();
    v83 = v15;
    if (objc_opt_isKindOfClass())
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v93 objects:v100 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v94;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v94 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v93 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [v21 copy];
              [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 addToolId:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v93 objects:v100 count:16];
        }

        while (v18);
      }
    }

    v23 = [v4 objectForKeyedSubscript:@"bundleId"];
    objc_opt_class();
    v82 = v23;
    if (objc_opt_isKindOfClass())
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v24 = v23;
      v25 = [v24 countByEnumeratingWithState:&v89 objects:v99 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v90;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v90 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v89 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v30 = [v29 copy];
              [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 addBundleId:v30];
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v89 objects:v99 count:16];
        }

        while (v26);
      }
    }

    v31 = [v4 objectForKeyedSubscript:@"requestFeatureTag"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v85 objects:v98 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v86;
        do
        {
          for (k = 0; k != v34; ++k)
          {
            if (*v86 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v85 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary addRequestFeatureTag:](v5, "addRequestFeatureTag:", [v37 intValue]);
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v85 objects:v98 count:16];
        }

        while (v34);
      }
    }

    v38 = [v4 objectForKeyedSubscript:@"numPlansCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumPlansCreated:](v5, "setNumPlansCreated:", [v38 unsignedIntValue]);
    }

    v39 = [v4 objectForKeyedSubscript:@"numPlansCreatedForResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumPlansCreatedForResponse:](v5, "setNumPlansCreatedForResponse:", [v39 unsignedIntValue]);
    }

    v40 = [v4 objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v40 unsignedIntValue]);
    }

    v73 = v39;
    v41 = [v4 objectForKeyedSubscript:@"numActionsCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumActionsCreated:](v5, "setNumActionsCreated:", [v41 unsignedIntValue]);
    }

    v42 = v31;
    v43 = [v4 objectForKeyedSubscript:@"numStatementsEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumStatementsEvaluated:](v5, "setNumStatementsEvaluated:", [v43 unsignedIntValue]);
    }

    v44 = [v4 objectForKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];
    objc_opt_class();
    v81 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumStatementsEvaluatedFromPlanner:](v5, "setNumStatementsEvaluatedFromPlanner:", [v44 unsignedIntValue]);
    }

    v45 = [v4 objectForKeyedSubscript:@"numResponseGenerationRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumResponseGenerationRequests:](v5, "setNumResponseGenerationRequests:", [v45 unsignedIntValue]);
    }

    v69 = v45;
    v46 = [v4 objectForKeyedSubscript:@"numSystemResponsesGenerated"];
    objc_opt_class();
    v80 = v46;
    v47 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumSystemResponsesGenerated:](v5, "setNumSystemResponsesGenerated:", [v80 unsignedIntValue]);
    }

    v74 = v38;
    v48 = [v4 objectForKeyedSubscript:@"numSystemPromptsResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumSystemPromptsResolved:](v5, "setNumSystemPromptsResolved:", [v48 unsignedIntValue]);
    }

    v68 = v48;
    v72 = v40;
    v49 = [v4 objectForKeyedSubscript:@"requestResponseTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v49];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRequestResponseTime:v50];
    }

    v51 = [v4 objectForKeyedSubscript:@"planningTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v51];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setPlanningTime:v52];
    }

    v71 = v41;
    v53 = [v4 objectForKeyedSubscript:@"queryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v53];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setQueryTime:v54];
    }

    v70 = v43;
    v55 = [v4 objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v55];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setExecutionTime:v56];
    }

    v75 = v47;
    v57 = [v4 objectForKeyedSubscript:{@"responsePreparationTime", v49}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v57];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setResponsePreparationTime:v58];
    }

    v59 = [v4 objectForKeyedSubscript:@"planGenerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v59];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setPlanGenerationTime:v60];
    }

    v61 = [v4 objectForKeyedSubscript:@"queryDecorationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v61];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setQueryDecorationTime:v62];
    }

    v63 = [v4 objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v63];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setFailureInfo:v64];
    }

    v65 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self dictionaryRepresentation];
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
  if (self->_bundleIds)
  {
    v4 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_clientRequestId)
  {
    v6 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_clientSessionId)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    v10 = [v9 dictionaryRepresentation];
    if (v10)
    {
      [v3 setObject:v10 forKeyedSubscript:@"clientSessionId"];
    }

    else
    {
      v11 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v11 forKeyedSubscript:@"clientSessionId"];
    }
  }

  if (self->_executionTime)
  {
    v12 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"executionTime"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"executionTime"];
    }
  }

  if (self->_failureInfo)
  {
    v15 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"failureInfo"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numActionsCreated](self, "numActionsCreated")}];
    [v3 setObject:v22 forKeyedSubscript:@"numActionsCreated"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_25:
      if ((has & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_38;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_25;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numPlansCreated](self, "numPlansCreated")}];
  [v3 setObject:v23 forKeyedSubscript:@"numPlansCreated"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_26:
    if ((has & 8) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_39;
  }

LABEL_38:
  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numPlansCreatedForResponse](self, "numPlansCreatedForResponse")}];
  [v3 setObject:v24 forKeyedSubscript:@"numPlansCreatedForResponse"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_27:
    if ((has & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_39:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numQueriesCreated](self, "numQueriesCreated")}];
  [v3 setObject:v25 forKeyedSubscript:@"numQueriesCreated"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_28:
    if ((has & 0x20) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_41;
  }

LABEL_40:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numResponseGenerationRequests](self, "numResponseGenerationRequests")}];
  [v3 setObject:v26 forKeyedSubscript:@"numResponseGenerationRequests"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_29:
    if ((has & 0x40) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_42;
  }

LABEL_41:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numStatementsEvaluated](self, "numStatementsEvaluated")}];
  [v3 setObject:v27 forKeyedSubscript:@"numStatementsEvaluated"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_30:
    if ((has & 0x200) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_43;
  }

LABEL_42:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numStatementsEvaluatedFromPlanner](self, "numStatementsEvaluatedFromPlanner")}];
  [v3 setObject:v28 forKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_31:
    if ((has & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_43:
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numSystemPromptsResolved](self, "numSystemPromptsResolved")}];
  [v3 setObject:v29 forKeyedSubscript:@"numSystemPromptsResolved"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_32:
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numSystemResponsesGenerated](self, "numSystemResponsesGenerated")}];
    [v3 setObject:v19 forKeyedSubscript:@"numSystemResponsesGenerated"];
  }

LABEL_33:
  if (self->_planGenerationTime)
  {
    v20 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"planGenerationTime"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"planGenerationTime"];
    }
  }

  if (self->_planningTime)
  {
    v31 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"planningTime"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"planningTime"];
    }
  }

  if (self->_queryDecorationTime)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"queryDecorationTime"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"queryDecorationTime"];
    }
  }

  if (self->_queryTime)
  {
    v37 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"queryTime"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"queryTime"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v40 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_rawSessionId)
  {
    v43 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"rawSessionId"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"rawSessionId"];
    }
  }

  if ([(NSArray *)self->_requestFeatureTags count])
  {
    v46 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
    v47 = [v46 copy];
    [v3 setObject:v47 forKeyedSubscript:@"requestFeatureTag"];
  }

  if (self->_requestResponseTime)
  {
    v48 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    v49 = [v48 dictionaryRepresentation];
    if (v49)
    {
      [v3 setObject:v49 forKeyedSubscript:@"requestResponseTime"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v50 forKeyedSubscript:@"requestResponseTime"];
    }
  }

  if (self->_responsePreparationTime)
  {
    v51 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    v52 = [v51 dictionaryRepresentation];
    if (v52)
    {
      [v3 setObject:v52 forKeyedSubscript:@"responsePreparationTime"];
    }

    else
    {
      v53 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v53 forKeyedSubscript:@"responsePreparationTime"];
    }
  }

  if (*&self->_has)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary status](self, "status")}];
    [v3 setObject:v54 forKeyedSubscript:@"status"];
  }

  if (self->_toolIds)
  {
    v55 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
    v56 = [v55 copy];
    [v3 setObject:v56 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v57 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientRequestId hash];
  v4 = [(SISchemaUUID *)self->_clientSessionId hash];
  v5 = [(SISchemaUUID *)self->_rawSessionId hash];
  v6 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_status;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSArray *)self->_toolIds hash];
  v9 = [(NSArray *)self->_bundleIds hash];
  v10 = [(NSArray *)self->_requestFeatureTags hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = 2654435761 * self->_numPlansCreated;
    if ((has & 4) != 0)
    {
LABEL_6:
      v13 = 2654435761 * self->_numPlansCreatedForResponse;
      if ((has & 8) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  v13 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v14 = 2654435761 * self->_numQueriesCreated;
    if ((has & 0x10) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v14 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_8:
    v15 = 2654435761 * self->_numActionsCreated;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  v15 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v16 = 2654435761 * self->_numStatementsEvaluated;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_19;
  }

LABEL_18:
  v16 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_10:
    v17 = 2654435761 * self->_numStatementsEvaluatedFromPlanner;
    if ((has & 0x80) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v17 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_numResponseGenerationRequests;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_12;
    }

LABEL_21:
    v19 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_13;
    }

LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

LABEL_20:
  v18 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_12:
  v19 = 2654435761 * self->_numSystemResponsesGenerated;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_13:
  v20 = 2654435761 * self->_numSystemPromptsResolved;
LABEL_23:
  v21 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v13 ^ v14;
  v22 = v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ [(PNRODSchemaPNRODMetricDuration *)self->_requestResponseTime hash];
  v23 = v22 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planningTime hash];
  v24 = v23 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryTime hash];
  v25 = v21 ^ v24 ^ [(PNRODSchemaPNRODMetricDuration *)self->_executionTime hash];
  v26 = [(PNRODSchemaPNRODMetricDuration *)self->_responsePreparationTime hash];
  v27 = v26 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planGenerationTime hash];
  v28 = v27 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTime hash];
  return v25 ^ v28 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_115;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    v10 = [v4 clientRequestId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  v6 = [v4 clientSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    v15 = [v4 clientSessionId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  v6 = [v4 rawSessionId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    v20 = [v4 rawSessionId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v22 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
    v25 = [v4 rawQueryEventId];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[88] & 1))
  {
    goto LABEL_115;
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_115;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
  v6 = [v4 toolIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v28 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
    v31 = [v4 toolIds];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
  v6 = [v4 bundleIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
    v36 = [v4 bundleIds];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
  v6 = [v4 requestFeatureTags];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v38 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
    v41 = [v4 requestFeatureTags];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  has = self->_has;
  v44 = (*&has >> 1) & 1;
  v45 = v4[88];
  if (v44 != ((v45 >> 1) & 1))
  {
    goto LABEL_115;
  }

  if (v44)
  {
    numPlansCreated = self->_numPlansCreated;
    if (numPlansCreated != [v4 numPlansCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v47 = (*&has >> 2) & 1;
  if (v47 != ((v45 >> 2) & 1))
  {
    goto LABEL_115;
  }

  if (v47)
  {
    numPlansCreatedForResponse = self->_numPlansCreatedForResponse;
    if (numPlansCreatedForResponse != [v4 numPlansCreatedForResponse])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v49 = (*&has >> 3) & 1;
  if (v49 != ((v45 >> 3) & 1))
  {
    goto LABEL_115;
  }

  if (v49)
  {
    numQueriesCreated = self->_numQueriesCreated;
    if (numQueriesCreated != [v4 numQueriesCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v51 = (*&has >> 4) & 1;
  if (v51 != ((v45 >> 4) & 1))
  {
    goto LABEL_115;
  }

  if (v51)
  {
    numActionsCreated = self->_numActionsCreated;
    if (numActionsCreated != [v4 numActionsCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v53 = (*&has >> 5) & 1;
  if (v53 != ((v45 >> 5) & 1))
  {
    goto LABEL_115;
  }

  if (v53)
  {
    numStatementsEvaluated = self->_numStatementsEvaluated;
    if (numStatementsEvaluated != [v4 numStatementsEvaluated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v55 = (*&has >> 6) & 1;
  if (v55 != ((v45 >> 6) & 1))
  {
    goto LABEL_115;
  }

  if (v55)
  {
    numStatementsEvaluatedFromPlanner = self->_numStatementsEvaluatedFromPlanner;
    if (numStatementsEvaluatedFromPlanner != [v4 numStatementsEvaluatedFromPlanner])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v57 = (*&has >> 7) & 1;
  if (v57 != ((v45 >> 7) & 1))
  {
    goto LABEL_115;
  }

  if (v57)
  {
    numResponseGenerationRequests = self->_numResponseGenerationRequests;
    if (numResponseGenerationRequests != [v4 numResponseGenerationRequests])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v59 = (*&has >> 8) & 1;
  if (v59 != ((v45 >> 8) & 1))
  {
    goto LABEL_115;
  }

  if (v59)
  {
    numSystemResponsesGenerated = self->_numSystemResponsesGenerated;
    if (numSystemResponsesGenerated != [v4 numSystemResponsesGenerated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = v4[88];
  }

  v61 = (*&has >> 9) & 1;
  if (v61 != ((v45 >> 9) & 1))
  {
    goto LABEL_115;
  }

  if (v61)
  {
    numSystemPromptsResolved = self->_numSystemPromptsResolved;
    if (numSystemPromptsResolved != [v4 numSystemPromptsResolved])
    {
      goto LABEL_115;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  v6 = [v4 requestResponseTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v63 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  if (v63)
  {
    v64 = v63;
    v65 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    v66 = [v4 requestResponseTime];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  v6 = [v4 planningTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v68 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  if (v68)
  {
    v69 = v68;
    v70 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    v71 = [v4 planningTime];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  v6 = [v4 queryTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v73 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  if (v73)
  {
    v74 = v73;
    v75 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    v76 = [v4 queryTime];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  v6 = [v4 executionTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v78 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  if (v78)
  {
    v79 = v78;
    v80 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
    v81 = [v4 executionTime];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  v6 = [v4 responsePreparationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v83 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  if (v83)
  {
    v84 = v83;
    v85 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    v86 = [v4 responsePreparationTime];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  v6 = [v4 planGenerationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v88 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  if (v88)
  {
    v89 = v88;
    v90 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    v91 = [v4 planGenerationTime];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  v6 = [v4 queryDecorationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_114;
  }

  v93 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  if (v93)
  {
    v94 = v93;
    v95 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    v96 = [v4 queryDecorationTime];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_114:

    goto LABEL_115;
  }

  v98 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  if (!v98)
  {

LABEL_118:
    v103 = 1;
    goto LABEL_116;
  }

  v99 = v98;
  v100 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  v101 = [v4 failureInfo];
  v102 = [v100 isEqual:v101];

  if (v102)
  {
    goto LABEL_118;
  }

LABEL_115:
  v103 = 0;
LABEL_116:

  return v103;
}

- (void)writeTo:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];

  if (v5)
  {
    v6 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];

  if (v7)
  {
    v8 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];

  if (v9)
  {
    v10 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    PBDataWriterWriteSubmessage();
  }

  v11 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];

  if (v11)
  {
    v12 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v13 = self->_toolIds;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v54;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteStringField();
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v15);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v18 = self->_bundleIds;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v50;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v50 != v21)
        {
          objc_enumerationMutation(v18);
        }

        PBDataWriterWriteStringField();
      }

      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v20);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = self->_requestFeatureTags;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v46;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [*(*(&v45 + 1) + 8 * k) intValue];
        PBDataWriterWriteInt32Field();
      }

      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
    }

    while (v25);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_34:
      if ((has & 8) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_61;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_34;
  }

  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_35:
    if ((has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_62;
  }

LABEL_61:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_36:
    if ((has & 0x20) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_63;
  }

LABEL_62:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_37:
    if ((has & 0x40) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_64;
  }

LABEL_63:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_38:
    if ((has & 0x80) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_64:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_39:
    if ((has & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_66;
  }

LABEL_65:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_40:
    if ((has & 0x200) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_66:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_41:
    PBDataWriterWriteUint32Field();
  }

LABEL_42:
  v29 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];

  if (v29)
  {
    v30 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    PBDataWriterWriteSubmessage();
  }

  v31 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];

  if (v31)
  {
    v32 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    PBDataWriterWriteSubmessage();
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];

  if (v33)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    PBDataWriterWriteSubmessage();
  }

  v35 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];

  if (v35)
  {
    v36 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  v37 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];

  if (v37)
  {
    v38 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    PBDataWriterWriteSubmessage();
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];

  if (v39)
  {
    v40 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    PBDataWriterWriteSubmessage();
  }

  v41 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];

  if (v41)
  {
    v42 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    PBDataWriterWriteSubmessage();
  }

  v43 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];

  if (v43)
  {
    v44 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasNumSystemPromptsResolved:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumSystemResponsesGenerated:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumResponseGenerationRequests:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumStatementsEvaluated:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumActionsCreated:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumQueriesCreated:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumPlansCreatedForResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumPlansCreated:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)requestFeatureTagAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_requestFeatureTags objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addRequestFeatureTag:(int)a3
{
  v3 = *&a3;
  requestFeatureTags = self->_requestFeatureTags;
  if (!requestFeatureTags)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_requestFeatureTags;
    self->_requestFeatureTags = v6;

    requestFeatureTags = self->_requestFeatureTags;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)requestFeatureTags addObject:v8];
}

- (void)addBundleId:(id)a3
{
  v4 = a3;
  bundleIds = self->_bundleIds;
  v8 = v4;
  if (!bundleIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_bundleIds;
    self->_bundleIds = v6;

    v4 = v8;
    bundleIds = self->_bundleIds;
  }

  [(NSArray *)bundleIds addObject:v4];
}

- (void)addToolId:(id)a3
{
  v4 = a3;
  toolIds = self->_toolIds;
  v8 = v4;
  if (!toolIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_toolIds;
    self->_toolIds = v6;

    v4 = v8;
    toolIds = self->_toolIds;
  }

  [(NSArray *)toolIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v43.receiver = self;
  v43.super_class = PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteToolId];
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteBundleId];
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteClientRequestId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteClientSessionId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRawSessionId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRawQueryEventId];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRequestResponseTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deletePlanningTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteQueryTime];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteExecutionTime];
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteResponsePreparationTime];
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deletePlanGenerationTime];
  }

  v36 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteQueryDecorationTime];
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteFailureInfo];
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