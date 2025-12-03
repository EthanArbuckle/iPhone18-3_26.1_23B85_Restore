@interface PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)requestFeatureTagAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addBundleId:(id)id;
- (void)addRequestFeatureTag:(int)tag;
- (void)addToolId:(id)id;
- (void)setHasNumActionsCreated:(BOOL)created;
- (void)setHasNumPlansCreated:(BOOL)created;
- (void)setHasNumPlansCreatedForResponse:(BOOL)response;
- (void)setHasNumQueriesCreated:(BOOL)created;
- (void)setHasNumResponseGenerationRequests:(BOOL)requests;
- (void)setHasNumStatementsEvaluated:(BOOL)evaluated;
- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)planner;
- (void)setHasNumSystemPromptsResolved:(BOOL)resolved;
- (void)setHasNumSystemResponsesGenerated:(BOOL)generated;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithDictionary:(id)dictionary
{
  v101 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v97.receiver = self;
  v97.super_class = PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)&v97 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setClientRequestId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setClientSessionId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rawSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRawSessionId:v11];
    }

    v77 = v10;
    v78 = v8;
    v79 = v6;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRawQueryEventId:v13];
    }

    v76 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    v84 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setStatus:](v5, "setStatus:", [v14 longLongValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"toolId"];
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

    v23 = [dictionaryCopy objectForKeyedSubscript:@"bundleId"];
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

    v31 = [dictionaryCopy objectForKeyedSubscript:@"requestFeatureTag"];
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

    v38 = [dictionaryCopy objectForKeyedSubscript:@"numPlansCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumPlansCreated:](v5, "setNumPlansCreated:", [v38 unsignedIntValue]);
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"numPlansCreatedForResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumPlansCreatedForResponse:](v5, "setNumPlansCreatedForResponse:", [v39 unsignedIntValue]);
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v40 unsignedIntValue]);
    }

    v73 = v39;
    v41 = [dictionaryCopy objectForKeyedSubscript:@"numActionsCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumActionsCreated:](v5, "setNumActionsCreated:", [v41 unsignedIntValue]);
    }

    v42 = v31;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"numStatementsEvaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumStatementsEvaluated:](v5, "setNumStatementsEvaluated:", [v43 unsignedIntValue]);
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];
    objc_opt_class();
    v81 = v44;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumStatementsEvaluatedFromPlanner:](v5, "setNumStatementsEvaluatedFromPlanner:", [v44 unsignedIntValue]);
    }

    v45 = [dictionaryCopy objectForKeyedSubscript:@"numResponseGenerationRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumResponseGenerationRequests:](v5, "setNumResponseGenerationRequests:", [v45 unsignedIntValue]);
    }

    v69 = v45;
    v46 = [dictionaryCopy objectForKeyedSubscript:@"numSystemResponsesGenerated"];
    objc_opt_class();
    v80 = v46;
    v47 = v42;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumSystemResponsesGenerated:](v5, "setNumSystemResponsesGenerated:", [v80 unsignedIntValue]);
    }

    v74 = v38;
    v48 = [dictionaryCopy objectForKeyedSubscript:@"numSystemPromptsResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary setNumSystemPromptsResolved:](v5, "setNumSystemPromptsResolved:", [v48 unsignedIntValue]);
    }

    v68 = v48;
    v72 = v40;
    v49 = [dictionaryCopy objectForKeyedSubscript:@"requestResponseTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v49];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setRequestResponseTime:v50];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"planningTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v51];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setPlanningTime:v52];
    }

    v71 = v41;
    v53 = [dictionaryCopy objectForKeyedSubscript:@"queryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v53];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setQueryTime:v54];
    }

    v70 = v43;
    v55 = [dictionaryCopy objectForKeyedSubscript:@"executionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v55];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setExecutionTime:v56];
    }

    v75 = v47;
    v57 = [dictionaryCopy objectForKeyedSubscript:{@"responsePreparationTime", v49}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v57];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setResponsePreparationTime:v58];
    }

    v59 = [dictionaryCopy objectForKeyedSubscript:@"planGenerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v59];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setPlanGenerationTime:v60];
    }

    v61 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v62 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v61];
      [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)v5 setQueryDecorationTime:v62];
    }

    v63 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self dictionaryRepresentation];
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
  if (self->_bundleIds)
  {
    bundleIds = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
    v5 = [bundleIds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleId"];
  }

  if (self->_clientRequestId)
  {
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    dictionaryRepresentation = [clientRequestId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_clientSessionId)
  {
    clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    dictionaryRepresentation2 = [clientSessionId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"clientSessionId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"clientSessionId"];
    }
  }

  if (self->_executionTime)
  {
    executionTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
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

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
    dictionaryRepresentation4 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"failureInfo"];
    }
  }

  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numActionsCreated](self, "numActionsCreated")}];
    [dictionary setObject:v22 forKeyedSubscript:@"numActionsCreated"];

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
  [dictionary setObject:v23 forKeyedSubscript:@"numPlansCreated"];

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
  [dictionary setObject:v24 forKeyedSubscript:@"numPlansCreatedForResponse"];

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
  [dictionary setObject:v25 forKeyedSubscript:@"numQueriesCreated"];

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
  [dictionary setObject:v26 forKeyedSubscript:@"numResponseGenerationRequests"];

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
  [dictionary setObject:v27 forKeyedSubscript:@"numStatementsEvaluated"];

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
  [dictionary setObject:v28 forKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];

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
  [dictionary setObject:v29 forKeyedSubscript:@"numSystemPromptsResolved"];

  if ((*&self->_has & 0x100) != 0)
  {
LABEL_32:
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary numSystemResponsesGenerated](self, "numSystemResponsesGenerated")}];
    [dictionary setObject:v19 forKeyedSubscript:@"numSystemResponsesGenerated"];
  }

LABEL_33:
  if (self->_planGenerationTime)
  {
    planGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    dictionaryRepresentation5 = [planGenerationTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"planGenerationTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"planGenerationTime"];
    }
  }

  if (self->_planningTime)
  {
    planningTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    dictionaryRepresentation6 = [planningTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"planningTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"planningTime"];
    }
  }

  if (self->_queryDecorationTime)
  {
    queryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    dictionaryRepresentation7 = [queryDecorationTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"queryDecorationTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"queryDecorationTime"];
    }
  }

  if (self->_queryTime)
  {
    queryTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    dictionaryRepresentation8 = [queryTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"queryTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"queryTime"];
    }
  }

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
    dictionaryRepresentation9 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_rawSessionId)
  {
    rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    dictionaryRepresentation10 = [rawSessionId dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"rawSessionId"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"rawSessionId"];
    }
  }

  if ([(NSArray *)self->_requestFeatureTags count])
  {
    requestFeatureTags = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
    v47 = [requestFeatureTags copy];
    [dictionary setObject:v47 forKeyedSubscript:@"requestFeatureTag"];
  }

  if (self->_requestResponseTime)
  {
    requestResponseTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    dictionaryRepresentation11 = [requestResponseTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"requestResponseTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"requestResponseTime"];
    }
  }

  if (self->_responsePreparationTime)
  {
    responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    dictionaryRepresentation12 = [responsePreparationTime dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"responsePreparationTime"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"responsePreparationTime"];
    }
  }

  if (*&self->_has)
  {
    v54 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary status](self, "status")}];
    [dictionary setObject:v54 forKeyedSubscript:@"status"];
  }

  if (self->_toolIds)
  {
    toolIds = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
    v56 = [toolIds copy];
    [dictionary setObject:v56 forKeyedSubscript:@"toolId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v57 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_115;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  clientRequestId2 = [equalCopy clientRequestId];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  clientRequestId3 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  if (clientRequestId3)
  {
    v8 = clientRequestId3;
    clientRequestId4 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    clientRequestId5 = [equalCopy clientRequestId];
    v11 = [clientRequestId4 isEqual:clientRequestId5];

    if (!v11)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  clientRequestId2 = [equalCopy clientSessionId];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  if (clientSessionId)
  {
    v13 = clientSessionId;
    clientSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    clientSessionId3 = [equalCopy clientSessionId];
    v16 = [clientSessionId2 isEqual:clientSessionId3];

    if (!v16)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  clientRequestId2 = [equalCopy rawSessionId];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  if (rawSessionId)
  {
    v18 = rawSessionId;
    rawSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    rawSessionId3 = [equalCopy rawSessionId];
    v21 = [rawSessionId2 isEqual:rawSessionId3];

    if (!v21)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  clientRequestId2 = [equalCopy rawQueryEventId];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v23 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v26 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v26)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[88] & 1))
  {
    goto LABEL_115;
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_115;
    }
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
  clientRequestId2 = [equalCopy toolIds];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  toolIds = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
  if (toolIds)
  {
    v29 = toolIds;
    toolIds2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self toolIds];
    toolIds3 = [equalCopy toolIds];
    v32 = [toolIds2 isEqual:toolIds3];

    if (!v32)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
  clientRequestId2 = [equalCopy bundleIds];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  bundleIds = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
  if (bundleIds)
  {
    v34 = bundleIds;
    bundleIds2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self bundleIds];
    bundleIds3 = [equalCopy bundleIds];
    v37 = [bundleIds2 isEqual:bundleIds3];

    if (!v37)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
  clientRequestId2 = [equalCopy requestFeatureTags];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  requestFeatureTags = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
  if (requestFeatureTags)
  {
    v39 = requestFeatureTags;
    requestFeatureTags2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestFeatureTags];
    requestFeatureTags3 = [equalCopy requestFeatureTags];
    v42 = [requestFeatureTags2 isEqual:requestFeatureTags3];

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
  v45 = equalCopy[88];
  if (v44 != ((v45 >> 1) & 1))
  {
    goto LABEL_115;
  }

  if (v44)
  {
    numPlansCreated = self->_numPlansCreated;
    if (numPlansCreated != [equalCopy numPlansCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v47 = (*&has >> 2) & 1;
  if (v47 != ((v45 >> 2) & 1))
  {
    goto LABEL_115;
  }

  if (v47)
  {
    numPlansCreatedForResponse = self->_numPlansCreatedForResponse;
    if (numPlansCreatedForResponse != [equalCopy numPlansCreatedForResponse])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v49 = (*&has >> 3) & 1;
  if (v49 != ((v45 >> 3) & 1))
  {
    goto LABEL_115;
  }

  if (v49)
  {
    numQueriesCreated = self->_numQueriesCreated;
    if (numQueriesCreated != [equalCopy numQueriesCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v51 = (*&has >> 4) & 1;
  if (v51 != ((v45 >> 4) & 1))
  {
    goto LABEL_115;
  }

  if (v51)
  {
    numActionsCreated = self->_numActionsCreated;
    if (numActionsCreated != [equalCopy numActionsCreated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v53 = (*&has >> 5) & 1;
  if (v53 != ((v45 >> 5) & 1))
  {
    goto LABEL_115;
  }

  if (v53)
  {
    numStatementsEvaluated = self->_numStatementsEvaluated;
    if (numStatementsEvaluated != [equalCopy numStatementsEvaluated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v55 = (*&has >> 6) & 1;
  if (v55 != ((v45 >> 6) & 1))
  {
    goto LABEL_115;
  }

  if (v55)
  {
    numStatementsEvaluatedFromPlanner = self->_numStatementsEvaluatedFromPlanner;
    if (numStatementsEvaluatedFromPlanner != [equalCopy numStatementsEvaluatedFromPlanner])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v57 = (*&has >> 7) & 1;
  if (v57 != ((v45 >> 7) & 1))
  {
    goto LABEL_115;
  }

  if (v57)
  {
    numResponseGenerationRequests = self->_numResponseGenerationRequests;
    if (numResponseGenerationRequests != [equalCopy numResponseGenerationRequests])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v59 = (*&has >> 8) & 1;
  if (v59 != ((v45 >> 8) & 1))
  {
    goto LABEL_115;
  }

  if (v59)
  {
    numSystemResponsesGenerated = self->_numSystemResponsesGenerated;
    if (numSystemResponsesGenerated != [equalCopy numSystemResponsesGenerated])
    {
      goto LABEL_115;
    }

    has = self->_has;
    v45 = equalCopy[88];
  }

  v61 = (*&has >> 9) & 1;
  if (v61 != ((v45 >> 9) & 1))
  {
    goto LABEL_115;
  }

  if (v61)
  {
    numSystemPromptsResolved = self->_numSystemPromptsResolved;
    if (numSystemPromptsResolved != [equalCopy numSystemPromptsResolved])
    {
      goto LABEL_115;
    }
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  clientRequestId2 = [equalCopy requestResponseTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  requestResponseTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  if (requestResponseTime)
  {
    v64 = requestResponseTime;
    requestResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    requestResponseTime3 = [equalCopy requestResponseTime];
    v67 = [requestResponseTime2 isEqual:requestResponseTime3];

    if (!v67)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  clientRequestId2 = [equalCopy planningTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  planningTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  if (planningTime)
  {
    v69 = planningTime;
    planningTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    planningTime3 = [equalCopy planningTime];
    v72 = [planningTime2 isEqual:planningTime3];

    if (!v72)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  clientRequestId2 = [equalCopy queryTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  queryTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  if (queryTime)
  {
    v74 = queryTime;
    queryTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    queryTime3 = [equalCopy queryTime];
    v77 = [queryTime2 isEqual:queryTime3];

    if (!v77)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  clientRequestId2 = [equalCopy executionTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  if (executionTime)
  {
    v79 = executionTime;
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
    executionTime3 = [equalCopy executionTime];
    v82 = [executionTime2 isEqual:executionTime3];

    if (!v82)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  clientRequestId2 = [equalCopy responsePreparationTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  if (responsePreparationTime)
  {
    v84 = responsePreparationTime;
    responsePreparationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    responsePreparationTime3 = [equalCopy responsePreparationTime];
    v87 = [responsePreparationTime2 isEqual:responsePreparationTime3];

    if (!v87)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  clientRequestId2 = [equalCopy planGenerationTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  planGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  if (planGenerationTime)
  {
    v89 = planGenerationTime;
    planGenerationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    planGenerationTime3 = [equalCopy planGenerationTime];
    v92 = [planGenerationTime2 isEqual:planGenerationTime3];

    if (!v92)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  clientRequestId2 = [equalCopy queryDecorationTime];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
    goto LABEL_114;
  }

  queryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  if (queryDecorationTime)
  {
    v94 = queryDecorationTime;
    queryDecorationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    queryDecorationTime3 = [equalCopy queryDecorationTime];
    v97 = [queryDecorationTime2 isEqual:queryDecorationTime3];

    if (!v97)
    {
      goto LABEL_115;
    }
  }

  else
  {
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  clientRequestId2 = [equalCopy failureInfo];
  if ((clientRequestId != 0) == (clientRequestId2 == 0))
  {
LABEL_114:

    goto LABEL_115;
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  if (!failureInfo)
  {

LABEL_118:
    v103 = 1;
    goto LABEL_116;
  }

  v99 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v102 = [failureInfo2 isEqual:failureInfo3];

  if (v102)
  {
    goto LABEL_118;
  }

LABEL_115:
  v103 = 0;
LABEL_116:

  return v103;
}

- (void)writeTo:(id)to
{
  v60 = *MEMORY[0x1E69E9840];
  toCopy = to;
  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];

  if (clientSessionId)
  {
    clientSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
    PBDataWriterWriteSubmessage();
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];

  if (rawSessionId)
  {
    rawSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
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
  requestResponseTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];

  if (requestResponseTime)
  {
    requestResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
    PBDataWriterWriteSubmessage();
  }

  planningTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];

  if (planningTime)
  {
    planningTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
    PBDataWriterWriteSubmessage();
  }

  queryTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];

  if (queryTime)
  {
    queryTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
    PBDataWriterWriteSubmessage();
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];

  if (executionTime)
  {
    executionTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
    PBDataWriterWriteSubmessage();
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];

  if (responsePreparationTime)
  {
    responsePreparationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
    PBDataWriterWriteSubmessage();
  }

  planGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];

  if (planGenerationTime)
  {
    planGenerationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];

  if (queryDecorationTime)
  {
    queryDecorationTime2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];

  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (void)setHasNumSystemPromptsResolved:(BOOL)resolved
{
  if (resolved)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasNumSystemResponsesGenerated:(BOOL)generated
{
  if (generated)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumResponseGenerationRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)planner
{
  if (planner)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumStatementsEvaluated:(BOOL)evaluated
{
  if (evaluated)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumActionsCreated:(BOOL)created
{
  if (created)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNumQueriesCreated:(BOOL)created
{
  if (created)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNumPlansCreatedForResponse:(BOOL)response
{
  if (response)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNumPlansCreated:(BOOL)created
{
  if (created)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (int)requestFeatureTagAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_requestFeatureTags objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addRequestFeatureTag:(int)tag
{
  v3 = *&tag;
  requestFeatureTags = self->_requestFeatureTags;
  if (!requestFeatureTags)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_requestFeatureTags;
    self->_requestFeatureTags = array;

    requestFeatureTags = self->_requestFeatureTags;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)requestFeatureTags addObject:v8];
}

- (void)addBundleId:(id)id
{
  idCopy = id;
  bundleIds = self->_bundleIds;
  v8 = idCopy;
  if (!bundleIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_bundleIds;
    self->_bundleIds = array;

    idCopy = v8;
    bundleIds = self->_bundleIds;
  }

  [(NSArray *)bundleIds addObject:idCopy];
}

- (void)addToolId:(id)id
{
  idCopy = id;
  toolIds = self->_toolIds;
  v8 = idCopy;
  if (!toolIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_toolIds;
    self->_toolIds = array;

    idCopy = v8;
    toolIds = self->_toolIds;
  }

  [(NSArray *)toolIds addObject:idCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v43.receiver = self;
  v43.super_class = PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v43 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteToolId];
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteBundleId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientRequestId];
  v7 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteClientRequestId];
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self clientSessionId];
  v10 = [clientSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteClientSessionId];
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawSessionId];
  v13 = [rawSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRawSessionId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self rawQueryEventId];
  v16 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRawQueryEventId];
  }

  requestResponseTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self requestResponseTime];
  v19 = [requestResponseTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteRequestResponseTime];
  }

  planningTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planningTime];
  v22 = [planningTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deletePlanningTime];
  }

  queryTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryTime];
  v25 = [queryTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteQueryTime];
  }

  executionTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self executionTime];
  v28 = [executionTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteExecutionTime];
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self responsePreparationTime];
  v31 = [responsePreparationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteResponsePreparationTime];
  }

  planGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self planGenerationTime];
  v34 = [planGenerationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deletePlanGenerationTime];
  }

  queryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self queryDecorationTime];
  v37 = [queryDecorationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self deleteQueryDecorationTime];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self failureInfo];
  v40 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
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