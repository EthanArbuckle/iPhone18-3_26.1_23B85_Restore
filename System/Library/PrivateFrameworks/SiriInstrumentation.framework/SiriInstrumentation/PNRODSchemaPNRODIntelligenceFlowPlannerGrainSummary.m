@interface PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumActionResolverRequests:(BOOL)a3;
- (void)setHasNumClientActionsCreated:(BOOL)a3;
- (void)setHasNumPlansCreated:(BOOL)a3;
- (void)setHasNumQueriesCreated:(BOOL)a3;
- (void)setHasNumQueriesExecuted:(BOOL)a3;
- (void)setHasNumStatementsEvaluated:(BOOL)a3;
- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)a3;
- (void)setHasNumSystemPromptsResolved:(BOOL)a3;
- (void)setHasPlannerGrainStage:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v76.receiver = self;
  v76.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)&v76 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setClientRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setStatus:](v5, "setStatus:", [v12 longLongValue]);
    }

    v62 = v12;
    v13 = [v4 objectForKeyedSubscript:@"plannerGrainStage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setPlannerGrainStage:](v5, "setPlannerGrainStage:", [v13 longLongValue]);
    }

    v14 = v6;
    v15 = [v4 objectForKeyedSubscript:@"numPlansCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumPlansCreated:](v5, "setNumPlansCreated:", [v15 unsignedIntValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    v75 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v16 unsignedIntValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"numQueriesExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumQueriesExecuted:](v5, "setNumQueriesExecuted:", [v17 unsignedIntValue]);
    }

    v59 = v17;
    v18 = [v4 objectForKeyedSubscript:@"numClientActionsCreated"];
    objc_opt_class();
    v74 = v18;
    v65 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumClientActionsCreated:](v5, "setNumClientActionsCreated:", [v18 unsignedIntValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"numActionResolverRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumActionResolverRequests:](v5, "setNumActionResolverRequests:", [v19 unsignedIntValue]);
    }

    v20 = [v4 objectForKeyedSubscript:@"numStatementsEvaluated"];
    objc_opt_class();
    v73 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumStatementsEvaluated:](v5, "setNumStatementsEvaluated:", [v20 unsignedIntValue]);
    }

    v21 = [v4 objectForKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumStatementsEvaluatedFromPlanner:](v5, "setNumStatementsEvaluatedFromPlanner:", [v21 unsignedIntValue]);
    }

    v64 = v8;
    v22 = [v4 objectForKeyedSubscript:@"numSystemPromptsResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumSystemPromptsResolved:](v5, "setNumSystemPromptsResolved:", [v22 unsignedIntValue]);
    }

    v56 = v22;
    v23 = [v4 objectForKeyedSubscript:@"plannerResponseTime"];
    objc_opt_class();
    v72 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlannerResponseTime:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"startToLastResolverEventTime"];
    objc_opt_class();
    v71 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToLastResolverEventTime:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"startToActionResolverRequestTime"];
    objc_opt_class();
    v70 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v27];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToActionResolverRequestTime:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"startToPlanCreatedTime"];
    objc_opt_class();
    v69 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v29];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToPlanCreatedTime:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    objc_opt_class();
    v68 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v31];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToLastQueryDecorationEventTime:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    objc_opt_class();
    v67 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v33];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setLastResolverEventToResponseGeneratedTime:v34];
    }

    v35 = [v4 objectForKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    objc_opt_class();
    v66 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v35];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setActionResolverRequestToLastResolverEventTime:v36];
    }

    v63 = v10;
    v37 = [v4 objectForKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v37];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanCreatedToLastResolverEventTime:v38];
    }

    v61 = v13;
    v39 = [v4 objectForKeyedSubscript:{@"planCreatedToActionResolverRequestTime", v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v39];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanCreatedToActionResolverRequestTime:v40];
    }

    v60 = v15;
    v41 = [v4 objectForKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v41];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setLastQueryDecorationEventToPlanCreatedTime:v42];
    }

    v58 = v19;
    v43 = [v4 objectForKeyedSubscript:@"startToContextRetrievedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v43];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToContextRetrievedTime:v44];
    }

    v57 = v21;
    v45 = [v4 objectForKeyedSubscript:@"startToToolsRetrievedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v45];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToToolsRetrievedTime:v46];
    }

    v47 = [v4 objectForKeyedSubscript:@"startToEntitySpanMatchedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v47];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToEntitySpanMatchedTime:v48];
    }

    v49 = [v4 objectForKeyedSubscript:@"resolverTotalQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v49];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setResolverTotalQueryTime:v50];
    }

    v51 = [v4 objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v51];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setFailureInfo:v52];
    }

    v53 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self dictionaryRepresentation];
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
  if (self->_actionResolverRequestToLastResolverEventTime)
  {
    v4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    }
  }

  if (self->_clientRequestId)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_failureInfo)
  {
    v10 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_lastQueryDecorationEventToPlanCreatedTime)
  {
    v13 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    }
  }

  if (self->_lastResolverEventToResponseGeneratedTime)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numActionResolverRequests](self, "numActionResolverRequests")}];
    [v3 setObject:v23 forKeyedSubscript:@"numActionResolverRequests"];

    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_28:
      if ((has & 4) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_40;
    }
  }

  else if ((has & 0x20) == 0)
  {
    goto LABEL_28;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numClientActionsCreated](self, "numClientActionsCreated")}];
  [v3 setObject:v24 forKeyedSubscript:@"numClientActionsCreated"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_29:
    if ((has & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_41;
  }

LABEL_40:
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numPlansCreated](self, "numPlansCreated")}];
  [v3 setObject:v25 forKeyedSubscript:@"numPlansCreated"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_30:
    if ((has & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

LABEL_41:
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numQueriesCreated](self, "numQueriesCreated")}];
  [v3 setObject:v26 forKeyedSubscript:@"numQueriesCreated"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_31:
    if ((has & 0x80) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_43;
  }

LABEL_42:
  v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numQueriesExecuted](self, "numQueriesExecuted")}];
  [v3 setObject:v27 forKeyedSubscript:@"numQueriesExecuted"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_32:
    if ((has & 0x100) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_43:
  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numStatementsEvaluated](self, "numStatementsEvaluated")}];
  [v3 setObject:v28 forKeyedSubscript:@"numStatementsEvaluated"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_33:
    if ((has & 0x200) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_44:
  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numStatementsEvaluatedFromPlanner](self, "numStatementsEvaluatedFromPlanner")}];
  [v3 setObject:v29 forKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_34:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numSystemPromptsResolved](self, "numSystemPromptsResolved")}];
    [v3 setObject:v20 forKeyedSubscript:@"numSystemPromptsResolved"];
  }

LABEL_35:
  if (self->_planCreatedToActionResolverRequestTime)
  {
    v21 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"planCreatedToActionResolverRequestTime"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"planCreatedToActionResolverRequestTime"];
    }
  }

  if (self->_planCreatedToLastResolverEventTime)
  {
    v31 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    }
  }

  if (self->_planId)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"planId"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"planId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary plannerGrainStage](self, "plannerGrainStage")}];
    [v3 setObject:v37 forKeyedSubscript:@"plannerGrainStage"];
  }

  if (self->_plannerResponseTime)
  {
    v38 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"plannerResponseTime"];
    }

    else
    {
      v40 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v40 forKeyedSubscript:@"plannerResponseTime"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v41 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
    v42 = [v41 dictionaryRepresentation];
    if (v42)
    {
      [v3 setObject:v42 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      v43 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v43 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_resolverTotalQueryTime)
  {
    v44 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    v45 = [v44 dictionaryRepresentation];
    if (v45)
    {
      [v3 setObject:v45 forKeyedSubscript:@"resolverTotalQueryTime"];
    }

    else
    {
      v46 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v46 forKeyedSubscript:@"resolverTotalQueryTime"];
    }
  }

  if (self->_startToActionResolverRequestTime)
  {
    v47 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    v48 = [v47 dictionaryRepresentation];
    if (v48)
    {
      [v3 setObject:v48 forKeyedSubscript:@"startToActionResolverRequestTime"];
    }

    else
    {
      v49 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v49 forKeyedSubscript:@"startToActionResolverRequestTime"];
    }
  }

  if (self->_startToContextRetrievedTime)
  {
    v50 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    v51 = [v50 dictionaryRepresentation];
    if (v51)
    {
      [v3 setObject:v51 forKeyedSubscript:@"startToContextRetrievedTime"];
    }

    else
    {
      v52 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v52 forKeyedSubscript:@"startToContextRetrievedTime"];
    }
  }

  if (self->_startToEntitySpanMatchedTime)
  {
    v53 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    v54 = [v53 dictionaryRepresentation];
    if (v54)
    {
      [v3 setObject:v54 forKeyedSubscript:@"startToEntitySpanMatchedTime"];
    }

    else
    {
      v55 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v55 forKeyedSubscript:@"startToEntitySpanMatchedTime"];
    }
  }

  if (self->_startToLastQueryDecorationEventTime)
  {
    v56 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    v57 = [v56 dictionaryRepresentation];
    if (v57)
    {
      [v3 setObject:v57 forKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    }

    else
    {
      v58 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v58 forKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    }
  }

  if (self->_startToLastResolverEventTime)
  {
    v59 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    v60 = [v59 dictionaryRepresentation];
    if (v60)
    {
      [v3 setObject:v60 forKeyedSubscript:@"startToLastResolverEventTime"];
    }

    else
    {
      v61 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v61 forKeyedSubscript:@"startToLastResolverEventTime"];
    }
  }

  if (self->_startToPlanCreatedTime)
  {
    v62 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    v63 = [v62 dictionaryRepresentation];
    if (v63)
    {
      [v3 setObject:v63 forKeyedSubscript:@"startToPlanCreatedTime"];
    }

    else
    {
      v64 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v64 forKeyedSubscript:@"startToPlanCreatedTime"];
    }
  }

  if (self->_startToToolsRetrievedTime)
  {
    v65 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    v66 = [v65 dictionaryRepresentation];
    if (v66)
    {
      [v3 setObject:v66 forKeyedSubscript:@"startToToolsRetrievedTime"];
    }

    else
    {
      v67 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v67 forKeyedSubscript:@"startToToolsRetrievedTime"];
    }
  }

  if (*&self->_has)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary status](self, "status")}];
    [v3 setObject:v68 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v69 = v3;

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_planId hash];
  v4 = [(SISchemaUUID *)self->_clientRequestId hash];
  v5 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  has = self->_has;
  if (has)
  {
    v7 = 2654435761 * self->_status;
    if ((has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_plannerGrainStage;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v9 = 2654435761 * self->_numPlansCreated;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v10 = 2654435761 * self->_numQueriesCreated;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v11 = 2654435761 * self->_numQueriesExecuted;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v12 = 2654435761 * self->_numClientActionsCreated;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761 * self->_numActionResolverRequests;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v13 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v14 = 2654435761 * self->_numStatementsEvaluated;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v15 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v16 = 0;
    goto LABEL_22;
  }

LABEL_19:
  v14 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v15 = 2654435761 * self->_numStatementsEvaluatedFromPlanner;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v16 = 2654435761 * self->_numSystemPromptsResolved;
LABEL_22:
  v17 = v4 ^ v3 ^ v5 ^ v7;
  v18 = v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(PNRODSchemaPNRODMetricDuration *)self->_plannerResponseTime hash];
  v19 = v17 ^ v18 ^ [(PNRODSchemaPNRODMetricDuration *)self->_startToLastResolverEventTime hash];
  v20 = [(PNRODSchemaPNRODMetricDuration *)self->_startToActionResolverRequestTime hash];
  v21 = v20 ^ [(PNRODSchemaPNRODMetricDuration *)self->_startToPlanCreatedTime hash];
  v22 = v21 ^ [(PNRODSchemaPNRODMetricDuration *)self->_startToLastQueryDecorationEventTime hash];
  v23 = v19 ^ v22 ^ [(PNRODSchemaPNRODMetricDuration *)self->_lastResolverEventToResponseGeneratedTime hash];
  v24 = [(PNRODSchemaPNRODMetricDuration *)self->_actionResolverRequestToLastResolverEventTime hash];
  v25 = v24 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planCreatedToLastResolverEventTime hash];
  v26 = v25 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planCreatedToActionResolverRequestTime hash];
  v27 = v26 ^ [(PNRODSchemaPNRODMetricDuration *)self->_lastQueryDecorationEventToPlanCreatedTime hash];
  v28 = v23 ^ v27 ^ [(PNRODSchemaPNRODMetricDuration *)self->_startToContextRetrievedTime hash];
  v29 = [(PNRODSchemaPNRODMetricDuration *)self->_startToToolsRetrievedTime hash];
  v30 = v29 ^ [(PNRODSchemaPNRODMetricDuration *)self->_startToEntitySpanMatchedTime hash];
  v31 = v30 ^ [(PNRODSchemaPNRODMetricDuration *)self->_resolverTotalQueryTime hash];
  return v28 ^ v31 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  v6 = [v4 planId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    v10 = [v4 planId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
    v15 = [v4 clientRequestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
    v20 = [v4 rawQueryEventId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[100];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_131;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [v4 status])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_131;
  }

  if (v25)
  {
    plannerGrainStage = self->_plannerGrainStage;
    if (plannerGrainStage != [v4 plannerGrainStage])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v23 >> 2) & 1))
  {
    goto LABEL_131;
  }

  if (v27)
  {
    numPlansCreated = self->_numPlansCreated;
    if (numPlansCreated != [v4 numPlansCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v23 >> 3) & 1))
  {
    goto LABEL_131;
  }

  if (v29)
  {
    numQueriesCreated = self->_numQueriesCreated;
    if (numQueriesCreated != [v4 numQueriesCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v31 = (*&has >> 4) & 1;
  if (v31 != ((v23 >> 4) & 1))
  {
    goto LABEL_131;
  }

  if (v31)
  {
    numQueriesExecuted = self->_numQueriesExecuted;
    if (numQueriesExecuted != [v4 numQueriesExecuted])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v33 = (*&has >> 5) & 1;
  if (v33 != ((v23 >> 5) & 1))
  {
    goto LABEL_131;
  }

  if (v33)
  {
    numClientActionsCreated = self->_numClientActionsCreated;
    if (numClientActionsCreated != [v4 numClientActionsCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v35 = (*&has >> 6) & 1;
  if (v35 != ((v23 >> 6) & 1))
  {
    goto LABEL_131;
  }

  if (v35)
  {
    numActionResolverRequests = self->_numActionResolverRequests;
    if (numActionResolverRequests != [v4 numActionResolverRequests])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v37 = (*&has >> 7) & 1;
  if (v37 != ((v23 >> 7) & 1))
  {
    goto LABEL_131;
  }

  if (v37)
  {
    numStatementsEvaluated = self->_numStatementsEvaluated;
    if (numStatementsEvaluated != [v4 numStatementsEvaluated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v39 = (*&has >> 8) & 1;
  if (v39 != ((v23 >> 8) & 1))
  {
    goto LABEL_131;
  }

  if (v39)
  {
    numStatementsEvaluatedFromPlanner = self->_numStatementsEvaluatedFromPlanner;
    if (numStatementsEvaluatedFromPlanner != [v4 numStatementsEvaluatedFromPlanner])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = v4[100];
  }

  v41 = (*&has >> 9) & 1;
  if (v41 != ((v23 >> 9) & 1))
  {
    goto LABEL_131;
  }

  if (v41)
  {
    numSystemPromptsResolved = self->_numSystemPromptsResolved;
    if (numSystemPromptsResolved != [v4 numSystemPromptsResolved])
    {
      goto LABEL_131;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  v6 = [v4 plannerResponseTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v43 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    v46 = [v4 plannerResponseTime];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  v6 = [v4 startToLastResolverEventTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v48 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    v51 = [v4 startToLastResolverEventTime];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  v6 = [v4 startToActionResolverRequestTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v53 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  if (v53)
  {
    v54 = v53;
    v55 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    v56 = [v4 startToActionResolverRequestTime];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  v6 = [v4 startToPlanCreatedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v58 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  if (v58)
  {
    v59 = v58;
    v60 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    v61 = [v4 startToPlanCreatedTime];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  v6 = [v4 startToLastQueryDecorationEventTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v63 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  if (v63)
  {
    v64 = v63;
    v65 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    v66 = [v4 startToLastQueryDecorationEventTime];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  v6 = [v4 lastResolverEventToResponseGeneratedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v68 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  if (v68)
  {
    v69 = v68;
    v70 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    v71 = [v4 lastResolverEventToResponseGeneratedTime];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  v6 = [v4 actionResolverRequestToLastResolverEventTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v73 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  if (v73)
  {
    v74 = v73;
    v75 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    v76 = [v4 actionResolverRequestToLastResolverEventTime];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  v6 = [v4 planCreatedToLastResolverEventTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v78 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  if (v78)
  {
    v79 = v78;
    v80 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    v81 = [v4 planCreatedToLastResolverEventTime];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  v6 = [v4 planCreatedToActionResolverRequestTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v83 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  if (v83)
  {
    v84 = v83;
    v85 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    v86 = [v4 planCreatedToActionResolverRequestTime];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  v6 = [v4 lastQueryDecorationEventToPlanCreatedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v88 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  if (v88)
  {
    v89 = v88;
    v90 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    v91 = [v4 lastQueryDecorationEventToPlanCreatedTime];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  v6 = [v4 startToContextRetrievedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v93 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  if (v93)
  {
    v94 = v93;
    v95 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    v96 = [v4 startToContextRetrievedTime];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  v6 = [v4 startToToolsRetrievedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v98 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  if (v98)
  {
    v99 = v98;
    v100 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    v101 = [v4 startToToolsRetrievedTime];
    v102 = [v100 isEqual:v101];

    if (!v102)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  v6 = [v4 startToEntitySpanMatchedTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v103 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  if (v103)
  {
    v104 = v103;
    v105 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    v106 = [v4 startToEntitySpanMatchedTime];
    v107 = [v105 isEqual:v106];

    if (!v107)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  v6 = [v4 resolverTotalQueryTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_130;
  }

  v108 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  if (v108)
  {
    v109 = v108;
    v110 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    v111 = [v4 resolverTotalQueryTime];
    v112 = [v110 isEqual:v111];

    if (!v112)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_130:

    goto LABEL_131;
  }

  v113 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  if (!v113)
  {

LABEL_134:
    v118 = 1;
    goto LABEL_132;
  }

  v114 = v113;
  v115 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  v116 = [v4 failureInfo];
  v117 = [v115 isEqual:v116];

  if (v117)
  {
    goto LABEL_134;
  }

LABEL_131:
  v118 = 0;
LABEL_132:

  return v118;
}

- (void)writeTo:(id)a3
{
  v42 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_53;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_54;
  }

LABEL_53:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_55;
  }

LABEL_54:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_56;
  }

LABEL_55:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_13:
    if ((has & 0x40) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_57;
  }

LABEL_56:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_14:
    if ((has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_58;
  }

LABEL_57:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_15:
    if ((has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_59;
  }

LABEL_58:
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_16:
    if ((has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_59:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_17:
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  v11 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];

  if (v11)
  {
    v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];

  if (v13)
  {
    v14 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];

  if (v15)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];

  if (v17)
  {
    v18 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];

  if (v19)
  {
    v20 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];

  if (v21)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    PBDataWriterWriteSubmessage();
  }

  v23 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];

  if (v23)
  {
    v24 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  v25 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];

  if (v25)
  {
    v26 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];

  if (v27)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    PBDataWriterWriteSubmessage();
  }

  v29 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];

  if (v29)
  {
    v30 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    PBDataWriterWriteSubmessage();
  }

  v31 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];

  if (v31)
  {
    v32 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    PBDataWriterWriteSubmessage();
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];

  if (v33)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    PBDataWriterWriteSubmessage();
  }

  v35 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];

  if (v35)
  {
    v36 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    PBDataWriterWriteSubmessage();
  }

  v37 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];

  if (v37)
  {
    v38 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    PBDataWriterWriteSubmessage();
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];

  v40 = v42;
  if (v39)
  {
    v41 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v40 = v42;
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

- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)a3
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

- (void)setHasNumStatementsEvaluated:(BOOL)a3
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

- (void)setHasNumActionResolverRequests:(BOOL)a3
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

- (void)setHasNumClientActionsCreated:(BOOL)a3
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

- (void)setHasNumQueriesExecuted:(BOOL)a3
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

- (void)setHasNumPlansCreated:(BOOL)a3
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

- (void)setHasPlannerGrainStage:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v61.receiver = self;
  v61.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteClientRequestId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteRawQueryEventId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlannerResponseTime];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToLastResolverEventTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToActionResolverRequestTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToPlanCreatedTime];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToLastQueryDecorationEventTime];
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteLastResolverEventToResponseGeneratedTime];
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteActionResolverRequestToLastResolverEventTime];
  }

  v36 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanCreatedToLastResolverEventTime];
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanCreatedToActionResolverRequestTime];
  }

  v42 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteLastQueryDecorationEventToPlanCreatedTime];
  }

  v45 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToContextRetrievedTime];
  }

  v48 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToToolsRetrievedTime];
  }

  v51 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToEntitySpanMatchedTime];
  }

  v54 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteResolverTotalQueryTime];
  }

  v57 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteFailureInfo];
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