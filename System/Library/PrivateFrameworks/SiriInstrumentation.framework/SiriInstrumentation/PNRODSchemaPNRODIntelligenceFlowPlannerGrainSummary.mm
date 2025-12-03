@interface PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumActionResolverRequests:(BOOL)requests;
- (void)setHasNumClientActionsCreated:(BOOL)created;
- (void)setHasNumPlansCreated:(BOOL)created;
- (void)setHasNumQueriesCreated:(BOOL)created;
- (void)setHasNumQueriesExecuted:(BOOL)executed;
- (void)setHasNumStatementsEvaluated:(BOOL)evaluated;
- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)planner;
- (void)setHasNumSystemPromptsResolved:(BOOL)resolved;
- (void)setHasPlannerGrainStage:(BOOL)stage;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary

- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v76.receiver = self;
  v76.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)&v76 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setClientRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setStatus:](v5, "setStatus:", [v12 longLongValue]);
    }

    v62 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"plannerGrainStage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setPlannerGrainStage:](v5, "setPlannerGrainStage:", [v13 longLongValue]);
    }

    v14 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"numPlansCreated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumPlansCreated:](v5, "setNumPlansCreated:", [v15 unsignedIntValue]);
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"numQueriesCreated"];
    objc_opt_class();
    v75 = v16;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumQueriesCreated:](v5, "setNumQueriesCreated:", [v16 unsignedIntValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"numQueriesExecuted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumQueriesExecuted:](v5, "setNumQueriesExecuted:", [v17 unsignedIntValue]);
    }

    v59 = v17;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"numClientActionsCreated"];
    objc_opt_class();
    v74 = v18;
    v65 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumClientActionsCreated:](v5, "setNumClientActionsCreated:", [v18 unsignedIntValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"numActionResolverRequests"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumActionResolverRequests:](v5, "setNumActionResolverRequests:", [v19 unsignedIntValue]);
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"numStatementsEvaluated"];
    objc_opt_class();
    v73 = v20;
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumStatementsEvaluated:](v5, "setNumStatementsEvaluated:", [v20 unsignedIntValue]);
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumStatementsEvaluatedFromPlanner:](v5, "setNumStatementsEvaluatedFromPlanner:", [v21 unsignedIntValue]);
    }

    v64 = v8;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"numSystemPromptsResolved"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary setNumSystemPromptsResolved:](v5, "setNumSystemPromptsResolved:", [v22 unsignedIntValue]);
    }

    v56 = v22;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"plannerResponseTime"];
    objc_opt_class();
    v72 = v23;
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlannerResponseTime:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"startToLastResolverEventTime"];
    objc_opt_class();
    v71 = v25;
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToLastResolverEventTime:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"startToActionResolverRequestTime"];
    objc_opt_class();
    v70 = v27;
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v27];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToActionResolverRequestTime:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"startToPlanCreatedTime"];
    objc_opt_class();
    v69 = v29;
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v29];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToPlanCreatedTime:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    objc_opt_class();
    v68 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v31];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToLastQueryDecorationEventTime:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    objc_opt_class();
    v67 = v33;
    if (objc_opt_isKindOfClass())
    {
      v34 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v33];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setLastResolverEventToResponseGeneratedTime:v34];
    }

    v35 = [dictionaryCopy objectForKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    objc_opt_class();
    v66 = v35;
    if (objc_opt_isKindOfClass())
    {
      v36 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v35];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setActionResolverRequestToLastResolverEventTime:v36];
    }

    v63 = v10;
    v37 = [dictionaryCopy objectForKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v37];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanCreatedToLastResolverEventTime:v38];
    }

    v61 = v13;
    v39 = [dictionaryCopy objectForKeyedSubscript:{@"planCreatedToActionResolverRequestTime", v37}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v39];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setPlanCreatedToActionResolverRequestTime:v40];
    }

    v60 = v15;
    v41 = [dictionaryCopy objectForKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v42 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v41];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setLastQueryDecorationEventToPlanCreatedTime:v42];
    }

    v58 = v19;
    v43 = [dictionaryCopy objectForKeyedSubscript:@"startToContextRetrievedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v43];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToContextRetrievedTime:v44];
    }

    v57 = v21;
    v45 = [dictionaryCopy objectForKeyedSubscript:@"startToToolsRetrievedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v46 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v45];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToToolsRetrievedTime:v46];
    }

    v47 = [dictionaryCopy objectForKeyedSubscript:@"startToEntitySpanMatchedTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v47];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setStartToEntitySpanMatchedTime:v48];
    }

    v49 = [dictionaryCopy objectForKeyedSubscript:@"resolverTotalQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v50 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v49];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)v5 setResolverTotalQueryTime:v50];
    }

    v51 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self dictionaryRepresentation];
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
  if (self->_actionResolverRequestToLastResolverEventTime)
  {
    actionResolverRequestToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    dictionaryRepresentation = [actionResolverRequestToLastResolverEventTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionResolverRequestToLastResolverEventTime"];
    }
  }

  if (self->_clientRequestId)
  {
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
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

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
    dictionaryRepresentation3 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_lastQueryDecorationEventToPlanCreatedTime)
  {
    lastQueryDecorationEventToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    dictionaryRepresentation4 = [lastQueryDecorationEventToPlanCreatedTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"lastQueryDecorationEventToPlanCreatedTime"];
    }
  }

  if (self->_lastResolverEventToResponseGeneratedTime)
  {
    lastResolverEventToResponseGeneratedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    dictionaryRepresentation5 = [lastResolverEventToResponseGeneratedTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"lastResolverEventToResponseGeneratedTime"];
    }
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numActionResolverRequests](self, "numActionResolverRequests")}];
    [dictionary setObject:v23 forKeyedSubscript:@"numActionResolverRequests"];

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
  [dictionary setObject:v24 forKeyedSubscript:@"numClientActionsCreated"];

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
  [dictionary setObject:v25 forKeyedSubscript:@"numPlansCreated"];

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
  [dictionary setObject:v26 forKeyedSubscript:@"numQueriesCreated"];

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
  [dictionary setObject:v27 forKeyedSubscript:@"numQueriesExecuted"];

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
  [dictionary setObject:v28 forKeyedSubscript:@"numStatementsEvaluated"];

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
  [dictionary setObject:v29 forKeyedSubscript:@"numStatementsEvaluatedFromPlanner"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_34:
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary numSystemPromptsResolved](self, "numSystemPromptsResolved")}];
    [dictionary setObject:v20 forKeyedSubscript:@"numSystemPromptsResolved"];
  }

LABEL_35:
  if (self->_planCreatedToActionResolverRequestTime)
  {
    planCreatedToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    dictionaryRepresentation6 = [planCreatedToActionResolverRequestTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"planCreatedToActionResolverRequestTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"planCreatedToActionResolverRequestTime"];
    }
  }

  if (self->_planCreatedToLastResolverEventTime)
  {
    planCreatedToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    dictionaryRepresentation7 = [planCreatedToLastResolverEventTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"planCreatedToLastResolverEventTime"];
    }
  }

  if (self->_planId)
  {
    planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    dictionaryRepresentation8 = [planId dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"planId"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"planId"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v37 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary plannerGrainStage](self, "plannerGrainStage")}];
    [dictionary setObject:v37 forKeyedSubscript:@"plannerGrainStage"];
  }

  if (self->_plannerResponseTime)
  {
    plannerResponseTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    dictionaryRepresentation9 = [plannerResponseTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"plannerResponseTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"plannerResponseTime"];
    }
  }

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
    dictionaryRepresentation10 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_resolverTotalQueryTime)
  {
    resolverTotalQueryTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    dictionaryRepresentation11 = [resolverTotalQueryTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"resolverTotalQueryTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"resolverTotalQueryTime"];
    }
  }

  if (self->_startToActionResolverRequestTime)
  {
    startToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    dictionaryRepresentation12 = [startToActionResolverRequestTime dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"startToActionResolverRequestTime"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"startToActionResolverRequestTime"];
    }
  }

  if (self->_startToContextRetrievedTime)
  {
    startToContextRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    dictionaryRepresentation13 = [startToContextRetrievedTime dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"startToContextRetrievedTime"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"startToContextRetrievedTime"];
    }
  }

  if (self->_startToEntitySpanMatchedTime)
  {
    startToEntitySpanMatchedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    dictionaryRepresentation14 = [startToEntitySpanMatchedTime dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"startToEntitySpanMatchedTime"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"startToEntitySpanMatchedTime"];
    }
  }

  if (self->_startToLastQueryDecorationEventTime)
  {
    startToLastQueryDecorationEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    dictionaryRepresentation15 = [startToLastQueryDecorationEventTime dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"startToLastQueryDecorationEventTime"];
    }
  }

  if (self->_startToLastResolverEventTime)
  {
    startToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    dictionaryRepresentation16 = [startToLastResolverEventTime dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"startToLastResolverEventTime"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"startToLastResolverEventTime"];
    }
  }

  if (self->_startToPlanCreatedTime)
  {
    startToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    dictionaryRepresentation17 = [startToPlanCreatedTime dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"startToPlanCreatedTime"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"startToPlanCreatedTime"];
    }
  }

  if (self->_startToToolsRetrievedTime)
  {
    startToToolsRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    dictionaryRepresentation18 = [startToToolsRetrievedTime dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"startToToolsRetrievedTime"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"startToToolsRetrievedTime"];
    }
  }

  if (*&self->_has)
  {
    v68 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary status](self, "status")}];
    [dictionary setObject:v68 forKeyedSubscript:@"status"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v69 = dictionary;

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_131;
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  planId2 = [equalCopy planId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  planId3 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  if (planId3)
  {
    v8 = planId3;
    planId4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    planId5 = [equalCopy planId];
    v11 = [planId4 isEqual:planId5];

    if (!v11)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  planId2 = [equalCopy clientRequestId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  if (clientRequestId)
  {
    v13 = clientRequestId;
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
    clientRequestId3 = [equalCopy clientRequestId];
    v16 = [clientRequestId2 isEqual:clientRequestId3];

    if (!v16)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  planId2 = [equalCopy rawQueryEventId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v18 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v21 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v21)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[100];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_131;
  }

  if (*&has)
  {
    status = self->_status;
    if (status != [equalCopy status])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_131;
  }

  if (v25)
  {
    plannerGrainStage = self->_plannerGrainStage;
    if (plannerGrainStage != [equalCopy plannerGrainStage])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v27 = (*&has >> 2) & 1;
  if (v27 != ((v23 >> 2) & 1))
  {
    goto LABEL_131;
  }

  if (v27)
  {
    numPlansCreated = self->_numPlansCreated;
    if (numPlansCreated != [equalCopy numPlansCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v29 = (*&has >> 3) & 1;
  if (v29 != ((v23 >> 3) & 1))
  {
    goto LABEL_131;
  }

  if (v29)
  {
    numQueriesCreated = self->_numQueriesCreated;
    if (numQueriesCreated != [equalCopy numQueriesCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v31 = (*&has >> 4) & 1;
  if (v31 != ((v23 >> 4) & 1))
  {
    goto LABEL_131;
  }

  if (v31)
  {
    numQueriesExecuted = self->_numQueriesExecuted;
    if (numQueriesExecuted != [equalCopy numQueriesExecuted])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v33 = (*&has >> 5) & 1;
  if (v33 != ((v23 >> 5) & 1))
  {
    goto LABEL_131;
  }

  if (v33)
  {
    numClientActionsCreated = self->_numClientActionsCreated;
    if (numClientActionsCreated != [equalCopy numClientActionsCreated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v35 = (*&has >> 6) & 1;
  if (v35 != ((v23 >> 6) & 1))
  {
    goto LABEL_131;
  }

  if (v35)
  {
    numActionResolverRequests = self->_numActionResolverRequests;
    if (numActionResolverRequests != [equalCopy numActionResolverRequests])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v37 = (*&has >> 7) & 1;
  if (v37 != ((v23 >> 7) & 1))
  {
    goto LABEL_131;
  }

  if (v37)
  {
    numStatementsEvaluated = self->_numStatementsEvaluated;
    if (numStatementsEvaluated != [equalCopy numStatementsEvaluated])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v39 = (*&has >> 8) & 1;
  if (v39 != ((v23 >> 8) & 1))
  {
    goto LABEL_131;
  }

  if (v39)
  {
    numStatementsEvaluatedFromPlanner = self->_numStatementsEvaluatedFromPlanner;
    if (numStatementsEvaluatedFromPlanner != [equalCopy numStatementsEvaluatedFromPlanner])
    {
      goto LABEL_131;
    }

    has = self->_has;
    v23 = equalCopy[100];
  }

  v41 = (*&has >> 9) & 1;
  if (v41 != ((v23 >> 9) & 1))
  {
    goto LABEL_131;
  }

  if (v41)
  {
    numSystemPromptsResolved = self->_numSystemPromptsResolved;
    if (numSystemPromptsResolved != [equalCopy numSystemPromptsResolved])
    {
      goto LABEL_131;
    }
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  planId2 = [equalCopy plannerResponseTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  plannerResponseTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  if (plannerResponseTime)
  {
    v44 = plannerResponseTime;
    plannerResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    plannerResponseTime3 = [equalCopy plannerResponseTime];
    v47 = [plannerResponseTime2 isEqual:plannerResponseTime3];

    if (!v47)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  planId2 = [equalCopy startToLastResolverEventTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  if (startToLastResolverEventTime)
  {
    v49 = startToLastResolverEventTime;
    startToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    startToLastResolverEventTime3 = [equalCopy startToLastResolverEventTime];
    v52 = [startToLastResolverEventTime2 isEqual:startToLastResolverEventTime3];

    if (!v52)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  planId2 = [equalCopy startToActionResolverRequestTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  if (startToActionResolverRequestTime)
  {
    v54 = startToActionResolverRequestTime;
    startToActionResolverRequestTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    startToActionResolverRequestTime3 = [equalCopy startToActionResolverRequestTime];
    v57 = [startToActionResolverRequestTime2 isEqual:startToActionResolverRequestTime3];

    if (!v57)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  planId2 = [equalCopy startToPlanCreatedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  if (startToPlanCreatedTime)
  {
    v59 = startToPlanCreatedTime;
    startToPlanCreatedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    startToPlanCreatedTime3 = [equalCopy startToPlanCreatedTime];
    v62 = [startToPlanCreatedTime2 isEqual:startToPlanCreatedTime3];

    if (!v62)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  planId2 = [equalCopy startToLastQueryDecorationEventTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToLastQueryDecorationEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  if (startToLastQueryDecorationEventTime)
  {
    v64 = startToLastQueryDecorationEventTime;
    startToLastQueryDecorationEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    startToLastQueryDecorationEventTime3 = [equalCopy startToLastQueryDecorationEventTime];
    v67 = [startToLastQueryDecorationEventTime2 isEqual:startToLastQueryDecorationEventTime3];

    if (!v67)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  planId2 = [equalCopy lastResolverEventToResponseGeneratedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  lastResolverEventToResponseGeneratedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  if (lastResolverEventToResponseGeneratedTime)
  {
    v69 = lastResolverEventToResponseGeneratedTime;
    lastResolverEventToResponseGeneratedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    lastResolverEventToResponseGeneratedTime3 = [equalCopy lastResolverEventToResponseGeneratedTime];
    v72 = [lastResolverEventToResponseGeneratedTime2 isEqual:lastResolverEventToResponseGeneratedTime3];

    if (!v72)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  planId2 = [equalCopy actionResolverRequestToLastResolverEventTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  actionResolverRequestToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  if (actionResolverRequestToLastResolverEventTime)
  {
    v74 = actionResolverRequestToLastResolverEventTime;
    actionResolverRequestToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    actionResolverRequestToLastResolverEventTime3 = [equalCopy actionResolverRequestToLastResolverEventTime];
    v77 = [actionResolverRequestToLastResolverEventTime2 isEqual:actionResolverRequestToLastResolverEventTime3];

    if (!v77)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  planId2 = [equalCopy planCreatedToLastResolverEventTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  planCreatedToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  if (planCreatedToLastResolverEventTime)
  {
    v79 = planCreatedToLastResolverEventTime;
    planCreatedToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    planCreatedToLastResolverEventTime3 = [equalCopy planCreatedToLastResolverEventTime];
    v82 = [planCreatedToLastResolverEventTime2 isEqual:planCreatedToLastResolverEventTime3];

    if (!v82)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  planId2 = [equalCopy planCreatedToActionResolverRequestTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  planCreatedToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  if (planCreatedToActionResolverRequestTime)
  {
    v84 = planCreatedToActionResolverRequestTime;
    planCreatedToActionResolverRequestTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    planCreatedToActionResolverRequestTime3 = [equalCopy planCreatedToActionResolverRequestTime];
    v87 = [planCreatedToActionResolverRequestTime2 isEqual:planCreatedToActionResolverRequestTime3];

    if (!v87)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  planId2 = [equalCopy lastQueryDecorationEventToPlanCreatedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  lastQueryDecorationEventToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  if (lastQueryDecorationEventToPlanCreatedTime)
  {
    v89 = lastQueryDecorationEventToPlanCreatedTime;
    lastQueryDecorationEventToPlanCreatedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    lastQueryDecorationEventToPlanCreatedTime3 = [equalCopy lastQueryDecorationEventToPlanCreatedTime];
    v92 = [lastQueryDecorationEventToPlanCreatedTime2 isEqual:lastQueryDecorationEventToPlanCreatedTime3];

    if (!v92)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  planId2 = [equalCopy startToContextRetrievedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToContextRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  if (startToContextRetrievedTime)
  {
    v94 = startToContextRetrievedTime;
    startToContextRetrievedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    startToContextRetrievedTime3 = [equalCopy startToContextRetrievedTime];
    v97 = [startToContextRetrievedTime2 isEqual:startToContextRetrievedTime3];

    if (!v97)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  planId2 = [equalCopy startToToolsRetrievedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToToolsRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  if (startToToolsRetrievedTime)
  {
    v99 = startToToolsRetrievedTime;
    startToToolsRetrievedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    startToToolsRetrievedTime3 = [equalCopy startToToolsRetrievedTime];
    v102 = [startToToolsRetrievedTime2 isEqual:startToToolsRetrievedTime3];

    if (!v102)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  planId2 = [equalCopy startToEntitySpanMatchedTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  startToEntitySpanMatchedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  if (startToEntitySpanMatchedTime)
  {
    v104 = startToEntitySpanMatchedTime;
    startToEntitySpanMatchedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    startToEntitySpanMatchedTime3 = [equalCopy startToEntitySpanMatchedTime];
    v107 = [startToEntitySpanMatchedTime2 isEqual:startToEntitySpanMatchedTime3];

    if (!v107)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  planId2 = [equalCopy resolverTotalQueryTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_130;
  }

  resolverTotalQueryTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  if (resolverTotalQueryTime)
  {
    v109 = resolverTotalQueryTime;
    resolverTotalQueryTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    resolverTotalQueryTime3 = [equalCopy resolverTotalQueryTime];
    v112 = [resolverTotalQueryTime2 isEqual:resolverTotalQueryTime3];

    if (!v112)
    {
      goto LABEL_131;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  planId2 = [equalCopy failureInfo];
  if ((planId != 0) == (planId2 == 0))
  {
LABEL_130:

    goto LABEL_131;
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  if (!failureInfo)
  {

LABEL_134:
    v118 = 1;
    goto LABEL_132;
  }

  v114 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v117 = [failureInfo2 isEqual:failureInfo3];

  if (v117)
  {
    goto LABEL_134;
  }

LABEL_131:
  v118 = 0;
LABEL_132:

  return v118;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];

  if (planId)
  {
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
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
  plannerResponseTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];

  if (plannerResponseTime)
  {
    plannerResponseTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
    PBDataWriterWriteSubmessage();
  }

  startToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];

  if (startToLastResolverEventTime)
  {
    startToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  startToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];

  if (startToActionResolverRequestTime)
  {
    startToActionResolverRequestTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
    PBDataWriterWriteSubmessage();
  }

  startToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];

  if (startToPlanCreatedTime)
  {
    startToPlanCreatedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
    PBDataWriterWriteSubmessage();
  }

  startToLastQueryDecorationEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];

  if (startToLastQueryDecorationEventTime)
  {
    startToLastQueryDecorationEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
    PBDataWriterWriteSubmessage();
  }

  lastResolverEventToResponseGeneratedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];

  if (lastResolverEventToResponseGeneratedTime)
  {
    lastResolverEventToResponseGeneratedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
    PBDataWriterWriteSubmessage();
  }

  actionResolverRequestToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];

  if (actionResolverRequestToLastResolverEventTime)
  {
    actionResolverRequestToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  planCreatedToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];

  if (planCreatedToLastResolverEventTime)
  {
    planCreatedToLastResolverEventTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
    PBDataWriterWriteSubmessage();
  }

  planCreatedToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];

  if (planCreatedToActionResolverRequestTime)
  {
    planCreatedToActionResolverRequestTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
    PBDataWriterWriteSubmessage();
  }

  lastQueryDecorationEventToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];

  if (lastQueryDecorationEventToPlanCreatedTime)
  {
    lastQueryDecorationEventToPlanCreatedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
    PBDataWriterWriteSubmessage();
  }

  startToContextRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];

  if (startToContextRetrievedTime)
  {
    startToContextRetrievedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
    PBDataWriterWriteSubmessage();
  }

  startToToolsRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];

  if (startToToolsRetrievedTime)
  {
    startToToolsRetrievedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
    PBDataWriterWriteSubmessage();
  }

  startToEntitySpanMatchedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];

  if (startToEntitySpanMatchedTime)
  {
    startToEntitySpanMatchedTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
    PBDataWriterWriteSubmessage();
  }

  resolverTotalQueryTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];

  if (resolverTotalQueryTime)
  {
    resolverTotalQueryTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];

  v40 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v40 = toCopy;
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

- (void)setHasNumStatementsEvaluatedFromPlanner:(BOOL)planner
{
  if (planner)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasNumStatementsEvaluated:(BOOL)evaluated
{
  if (evaluated)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasNumActionResolverRequests:(BOOL)requests
{
  if (requests)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasNumClientActionsCreated:(BOOL)created
{
  if (created)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasNumQueriesExecuted:(BOOL)executed
{
  if (executed)
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

- (void)setHasNumPlansCreated:(BOOL)created
{
  if (created)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPlannerGrainStage:(BOOL)stage
{
  if (stage)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v61.receiver = self;
  v61.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v61 applySensitiveConditionsPolicy:policyCopy];
  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planId];
  v7 = [planId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self clientRequestId];
  v10 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteClientRequestId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self rawQueryEventId];
  v13 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteRawQueryEventId];
  }

  plannerResponseTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self plannerResponseTime];
  v16 = [plannerResponseTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlannerResponseTime];
  }

  startToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastResolverEventTime];
  v19 = [startToLastResolverEventTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToLastResolverEventTime];
  }

  startToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToActionResolverRequestTime];
  v22 = [startToActionResolverRequestTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToActionResolverRequestTime];
  }

  startToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToPlanCreatedTime];
  v25 = [startToPlanCreatedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToPlanCreatedTime];
  }

  startToLastQueryDecorationEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToLastQueryDecorationEventTime];
  v28 = [startToLastQueryDecorationEventTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToLastQueryDecorationEventTime];
  }

  lastResolverEventToResponseGeneratedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastResolverEventToResponseGeneratedTime];
  v31 = [lastResolverEventToResponseGeneratedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteLastResolverEventToResponseGeneratedTime];
  }

  actionResolverRequestToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self actionResolverRequestToLastResolverEventTime];
  v34 = [actionResolverRequestToLastResolverEventTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteActionResolverRequestToLastResolverEventTime];
  }

  planCreatedToLastResolverEventTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToLastResolverEventTime];
  v37 = [planCreatedToLastResolverEventTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanCreatedToLastResolverEventTime];
  }

  planCreatedToActionResolverRequestTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self planCreatedToActionResolverRequestTime];
  v40 = [planCreatedToActionResolverRequestTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deletePlanCreatedToActionResolverRequestTime];
  }

  lastQueryDecorationEventToPlanCreatedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self lastQueryDecorationEventToPlanCreatedTime];
  v43 = [lastQueryDecorationEventToPlanCreatedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteLastQueryDecorationEventToPlanCreatedTime];
  }

  startToContextRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToContextRetrievedTime];
  v46 = [startToContextRetrievedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToContextRetrievedTime];
  }

  startToToolsRetrievedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToToolsRetrievedTime];
  v49 = [startToToolsRetrievedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToToolsRetrievedTime];
  }

  startToEntitySpanMatchedTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self startToEntitySpanMatchedTime];
  v52 = [startToEntitySpanMatchedTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteStartToEntitySpanMatchedTime];
  }

  resolverTotalQueryTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self resolverTotalQueryTime];
  v55 = [resolverTotalQueryTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self deleteResolverTotalQueryTime];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self failureInfo];
  v58 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
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