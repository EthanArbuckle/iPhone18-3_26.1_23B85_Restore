@interface PNRODSchemaPNRODClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODClientEvent)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODClientEvent)initWithJSON:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)pnrodIntelligenceFlowActionGrainSummary;
- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)pnronIntelligenceFlowExecutorComponentSummary;
- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)pnrodPNRODIntelligenceFlowPlannerComponentSummary;
- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)pnrodIntelligenceFlowPlannerGrainSummary;
- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)pnrodIntelligenceFlowRequestGrainSummary;
- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)pnrodIntelligenceFlowResponseGenerationComponentSummary;
- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)pnrodIntelligenceFlowSessionSummary;
- (PNRODSchemaPNRODScheduleDebugSummary)pnronScheduleDebugSummary;
- (PNRODSchemaPNRODSiriTurnGrainSummary)pnrodSiriTurnGrainSummary;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)clockIsolationLevel;
- (unint64_t)hash;
- (void)deletePnrodIntelligenceFlowActionGrainSummary;
- (void)deletePnrodIntelligenceFlowPlannerGrainSummary;
- (void)deletePnrodIntelligenceFlowRequestGrainSummary;
- (void)deletePnrodIntelligenceFlowResponseGenerationComponentSummary;
- (void)deletePnrodIntelligenceFlowSessionSummary;
- (void)deletePnrodPNRODIntelligenceFlowPlannerComponentSummary;
- (void)deletePnrodSiriTurnGrainSummary;
- (void)deletePnronIntelligenceFlowExecutorComponentSummary;
- (void)deletePnronScheduleDebugSummary;
- (void)setPnrodIntelligenceFlowActionGrainSummary:(id)a3;
- (void)setPnrodIntelligenceFlowPlannerGrainSummary:(id)a3;
- (void)setPnrodIntelligenceFlowRequestGrainSummary:(id)a3;
- (void)setPnrodIntelligenceFlowResponseGenerationComponentSummary:(id)a3;
- (void)setPnrodIntelligenceFlowSessionSummary:(id)a3;
- (void)setPnrodPNRODIntelligenceFlowPlannerComponentSummary:(id)a3;
- (void)setPnrodSiriTurnGrainSummary:(id)a3;
- (void)setPnronIntelligenceFlowExecutorComponentSummary:(id)a3;
- (void)setPnronScheduleDebugSummary:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODClientEvent

- (PNRODSchemaPNRODClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = PNRODSchemaPNRODClientEvent;
  v5 = [(PNRODSchemaPNRODClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PNRODSchemaPNRODClientEventMetadata alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODSiriTurnGrainSummary alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodSiriTurnGrainSummary:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowRequestGrainSummary:v11];
    }

    v30 = v10;
    v12 = [v4 objectForKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowPlannerGrainSummary:v13];
    }

    v29 = v12;
    v14 = [v4 objectForKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowActionGrainSummary:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODIntelligenceFlowSessionSummary alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowSessionSummary:v17];
    }

    v31 = v8;
    v18 = [v4 objectForKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodPNRODIntelligenceFlowPlannerComponentSummary:v19];
    }

    v20 = v6;
    v21 = [v4 objectForKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowResponseGenerationComponentSummary:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnronIntelligenceFlowExecutorComponentSummary:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"pnronScheduleDebugSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODScheduleDebugSummary alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnronScheduleDebugSummary:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    v4 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_pnrodIntelligenceFlowActionGrainSummary)
  {
    v7 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowPlannerGrainSummary)
  {
    v10 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowRequestGrainSummary)
  {
    v13 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowResponseGenerationComponentSummary)
  {
    v16 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowSessionSummary)
  {
    v19 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    }
  }

  if (self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary)
  {
    v22 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    }
  }

  if (self->_pnrodSiriTurnGrainSummary)
  {
    v25 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    }
  }

  if (self->_pnronIntelligenceFlowExecutorComponentSummary)
  {
    v28 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    }
  }

  if (self->_pnronScheduleDebugSummary)
  {
    v31 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"pnronScheduleDebugSummary"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"pnronScheduleDebugSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(PNRODSchemaPNRODClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(PNRODSchemaPNRODSiriTurnGrainSummary *)self->_pnrodSiriTurnGrainSummary hash]^ v3;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary *)self->_pnrodIntelligenceFlowRequestGrainSummary hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary *)self->_pnrodIntelligenceFlowPlannerGrainSummary hash];
  v7 = [(PNRODSchemaPNRODIntelligenceFlowActionGrainSummary *)self->_pnrodIntelligenceFlowActionGrainSummary hash];
  v8 = v7 ^ [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self->_pnrodIntelligenceFlowSessionSummary hash];
  v9 = v6 ^ v8 ^ [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary hash];
  v10 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self->_pnrodIntelligenceFlowResponseGenerationComponentSummary hash];
  v11 = v10 ^ [(PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary *)self->_pnronIntelligenceFlowExecutorComponentSummary hash];
  return v9 ^ v11 ^ [(PNRODSchemaPNRODScheduleDebugSummary *)self->_pnronScheduleDebugSummary hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_53;
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v8 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  v7 = [v4 pnrodSiriTurnGrainSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v13 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  if (v13)
  {
    v14 = v13;
    v15 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    v16 = [v4 pnrodSiriTurnGrainSummary];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  v7 = [v4 pnrodIntelligenceFlowRequestGrainSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v18 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  if (v18)
  {
    v19 = v18;
    v20 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    v21 = [v4 pnrodIntelligenceFlowRequestGrainSummary];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  v7 = [v4 pnrodIntelligenceFlowPlannerGrainSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v23 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  if (v23)
  {
    v24 = v23;
    v25 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    v26 = [v4 pnrodIntelligenceFlowPlannerGrainSummary];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  v7 = [v4 pnrodIntelligenceFlowActionGrainSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v28 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    v31 = [v4 pnrodIntelligenceFlowActionGrainSummary];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  v7 = [v4 pnrodIntelligenceFlowSessionSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v33 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    v36 = [v4 pnrodIntelligenceFlowSessionSummary];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  v7 = [v4 pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v38 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    v41 = [v4 pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  v7 = [v4 pnrodIntelligenceFlowResponseGenerationComponentSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v43 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    v46 = [v4 pnrodIntelligenceFlowResponseGenerationComponentSummary];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  v7 = [v4 pnronIntelligenceFlowExecutorComponentSummary];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_52;
  }

  v48 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    v51 = [v4 pnronIntelligenceFlowExecutorComponentSummary];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
  v7 = [v4 pnronScheduleDebugSummary];
  if ((v6 != 0) != (v7 == 0))
  {
    v53 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    if (!v53)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = v53;
    v55 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    v56 = [v4 pnronScheduleDebugSummary];
    v57 = [v55 isEqual:v56];

    if (v57)
    {
      goto LABEL_56;
    }
  }

  else
  {
LABEL_52:
  }

LABEL_53:
  v58 = 0;
LABEL_54:

  return v58;
}

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];

  v23 = v25;
  if (v22)
  {
    v24 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (void)deletePnronScheduleDebugSummary
{
  if (self->_whichEvent_Type == 109)
  {
    self->_whichEvent_Type = 0;
    self->_pnronScheduleDebugSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODScheduleDebugSummary)pnronScheduleDebugSummary
{
  if (self->_whichEvent_Type == 109)
  {
    v3 = self->_pnronScheduleDebugSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnronScheduleDebugSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  v13 = 109;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = v4;
}

- (void)deletePnronIntelligenceFlowExecutorComponentSummary
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_pnronIntelligenceFlowExecutorComponentSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary)pnronIntelligenceFlowExecutorComponentSummary
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_pnronIntelligenceFlowExecutorComponentSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnronIntelligenceFlowExecutorComponentSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 108;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = v4;
}

- (void)deletePnrodIntelligenceFlowResponseGenerationComponentSummary
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)pnrodIntelligenceFlowResponseGenerationComponentSummary
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodIntelligenceFlowResponseGenerationComponentSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 107;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = v4;
}

- (void)deletePnrodPNRODIntelligenceFlowPlannerComponentSummary
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)pnrodPNRODIntelligenceFlowPlannerComponentSummary
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodPNRODIntelligenceFlowPlannerComponentSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 106;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = v4;
}

- (void)deletePnrodIntelligenceFlowSessionSummary
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodIntelligenceFlowSessionSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)pnrodIntelligenceFlowSessionSummary
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_pnrodIntelligenceFlowSessionSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodIntelligenceFlowSessionSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 105;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = v4;
}

- (void)deletePnrodIntelligenceFlowActionGrainSummary
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodIntelligenceFlowActionGrainSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowActionGrainSummary)pnrodIntelligenceFlowActionGrainSummary
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_pnrodIntelligenceFlowActionGrainSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodIntelligenceFlowActionGrainSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 104;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = v4;
}

- (void)deletePnrodIntelligenceFlowPlannerGrainSummary
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary)pnrodIntelligenceFlowPlannerGrainSummary
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodIntelligenceFlowPlannerGrainSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 103;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = v4;
}

- (void)deletePnrodIntelligenceFlowRequestGrainSummary
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodIntelligenceFlowRequestGrainSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary)pnrodIntelligenceFlowRequestGrainSummary
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_pnrodIntelligenceFlowRequestGrainSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodIntelligenceFlowRequestGrainSummary:(id)a3
{
  v4 = a3;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 102;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = v4;
}

- (void)deletePnrodSiriTurnGrainSummary
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_pnrodSiriTurnGrainSummary = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (PNRODSchemaPNRODSiriTurnGrainSummary)pnrodSiriTurnGrainSummary
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_pnrodSiriTurnGrainSummary;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPnrodSiriTurnGrainSummary:(id)a3
{
  v4 = a3;
  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = 0;

  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = 0;

  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = 0;

  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = 0;

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = 0;

  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = 0;

  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = 0;

  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = 0;

  v13 = 101;
  if (!v4)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = v4;
}

- (id)qualifiedMessageName
{
  v2 = [(PNRODSchemaPNRODClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 8)
  {
    return @"com.apple.aiml.siri.pnrod.PNRODClientEvent";
  }

  else
  {
    return off_1E78E0C18[v2 - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODClientEvent *)self deleteEventMetadata];
  }

  v9 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodSiriTurnGrainSummary];
  }

  v12 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowRequestGrainSummary];
  }

  v15 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowPlannerGrainSummary];
  }

  v18 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowActionGrainSummary];
  }

  v21 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowSessionSummary];
  }

  v24 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodPNRODIntelligenceFlowPlannerComponentSummary];
  }

  v27 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowResponseGenerationComponentSummary];
  }

  v30 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnronIntelligenceFlowExecutorComponentSummary];
  }

  v33 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnronScheduleDebugSummary];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(PNRODSchemaPNRODClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAB48[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EAB90[a3 - 101];
  }
}

- (int)clockIsolationLevel
{
  if ([(PNRODSchemaPNRODClientEvent *)self whichEvent_Type]- 101 >= 9)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

@end