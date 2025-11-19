@interface CNVSchemaCNVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNVSchemaCNVActionCandidatesCollated)actionCandidatesCollated;
- (CNVSchemaCNVActionCandidatesGenerated)actionCandidatesGenerated;
- (CNVSchemaCNVActionCandidatesGeneratedTier1)actionCandidatesGeneratedTier1;
- (CNVSchemaCNVClientEvent)initWithDictionary:(id)a3;
- (CNVSchemaCNVClientEvent)initWithJSON:(id)a3;
- (CNVSchemaCNVDecisionEngineResponseReported)decisionEngineResponseReported;
- (CNVSchemaCNVDisambiguationContext)disambiguationContext;
- (CNVSchemaCNVExecutionCommitContext)executionCommitContext;
- (CNVSchemaCNVExecutionOverridesEvaluated)executionOverridesEvaluated;
- (CNVSchemaCNVExecutionPrepareContext)executionPrepareContext;
- (CNVSchemaCNVFindFlowContext)findFlowContext;
- (CNVSchemaCNVFlowPluginExecutionContext)flowPluginExecutionContext;
- (CNVSchemaCNVFlowPluginInputContext)flowPluginInputContext;
- (CNVSchemaCNVFlowPluginLoadContext)flowPluginLoadContext;
- (CNVSchemaCNVIntentEagerExecutionContext)intentEagerExecutionContext;
- (CNVSchemaCNVIntentFinalExecutionContext)intentFinalExecutionContext;
- (CNVSchemaCNVIntentReformationContext)intentReformationContext;
- (CNVSchemaCNVPostFlowPrepareContext)postFlowPrepareContext;
- (CNVSchemaCNVPreFlowPrepareContext)preFlowPrepareContext;
- (CNVSchemaCNVUsoGraphTier1)cnvUsoGraphTier1;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteActionCandidatesCollated;
- (void)deleteActionCandidatesGenerated;
- (void)deleteActionCandidatesGeneratedTier1;
- (void)deleteCnvUsoGraphTier1;
- (void)deleteDecisionEngineResponseReported;
- (void)deleteDisambiguationContext;
- (void)deleteExecutionCommitContext;
- (void)deleteExecutionOverridesEvaluated;
- (void)deleteExecutionPrepareContext;
- (void)deleteFindFlowContext;
- (void)deleteFlowPluginExecutionContext;
- (void)deleteFlowPluginInputContext;
- (void)deleteFlowPluginLoadContext;
- (void)deleteIntentEagerExecutionContext;
- (void)deleteIntentFinalExecutionContext;
- (void)deleteIntentReformationContext;
- (void)deletePostFlowPrepareContext;
- (void)deletePreFlowPrepareContext;
- (void)setActionCandidatesCollated:(id)a3;
- (void)setActionCandidatesGenerated:(id)a3;
- (void)setActionCandidatesGeneratedTier1:(id)a3;
- (void)setCnvUsoGraphTier1:(id)a3;
- (void)setDecisionEngineResponseReported:(id)a3;
- (void)setDisambiguationContext:(id)a3;
- (void)setExecutionCommitContext:(id)a3;
- (void)setExecutionOverridesEvaluated:(id)a3;
- (void)setExecutionPrepareContext:(id)a3;
- (void)setFindFlowContext:(id)a3;
- (void)setFlowPluginExecutionContext:(id)a3;
- (void)setFlowPluginInputContext:(id)a3;
- (void)setFlowPluginLoadContext:(id)a3;
- (void)setIntentEagerExecutionContext:(id)a3;
- (void)setIntentFinalExecutionContext:(id)a3;
- (void)setIntentReformationContext:(id)a3;
- (void)setPostFlowPrepareContext:(id)a3;
- (void)setPreFlowPrepareContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CNVSchemaCNVClientEvent

- (id)qualifiedMessageName
{
  v2 = [(CNVSchemaCNVClientEvent *)self whichEvent_Type];
  if (v2 - 2 > 0x11)
  {
    return @"com.apple.aiml.siri.cnv.CNVClientEvent";
  }

  else
  {
    return off_1E78D2D10[v2 - 2];
  }
}

- (CNVSchemaCNVActionCandidatesGeneratedTier1)actionCandidatesGeneratedTier1
{
  if (self->_whichEvent_Type == 7)
  {
    v3 = self->_actionCandidatesGeneratedTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVActionCandidatesCollated)actionCandidatesCollated
{
  if (self->_whichEvent_Type == 8)
  {
    v3 = self->_actionCandidatesCollated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVDisambiguationContext)disambiguationContext
{
  if (self->_whichEvent_Type == 9)
  {
    v3 = self->_disambiguationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVExecutionOverridesEvaluated)executionOverridesEvaluated
{
  if (self->_whichEvent_Type == 10)
  {
    v3 = self->_executionOverridesEvaluated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVExecutionPrepareContext)executionPrepareContext
{
  if (self->_whichEvent_Type == 11)
  {
    v3 = self->_executionPrepareContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentReformationContext)intentReformationContext
{
  if (self->_whichEvent_Type == 2)
  {
    v3 = self->_intentReformationContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVUsoGraphTier1)cnvUsoGraphTier1
{
  if (self->_whichEvent_Type == 3)
  {
    v3 = self->_cnvUsoGraphTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentEagerExecutionContext)intentEagerExecutionContext
{
  if (self->_whichEvent_Type == 4)
  {
    v3 = self->_intentEagerExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVIntentFinalExecutionContext)intentFinalExecutionContext
{
  if (self->_whichEvent_Type == 5)
  {
    v3 = self->_intentFinalExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVActionCandidatesGenerated)actionCandidatesGenerated
{
  if (self->_whichEvent_Type == 6)
  {
    v3 = self->_actionCandidatesGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVFlowPluginLoadContext)flowPluginLoadContext
{
  if (self->_whichEvent_Type == 12)
  {
    v3 = self->_flowPluginLoadContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVFindFlowContext)findFlowContext
{
  if (self->_whichEvent_Type == 13)
  {
    v3 = self->_findFlowContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVFlowPluginInputContext)flowPluginInputContext
{
  if (self->_whichEvent_Type == 14)
  {
    v3 = self->_flowPluginInputContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVFlowPluginExecutionContext)flowPluginExecutionContext
{
  if (self->_whichEvent_Type == 15)
  {
    v3 = self->_flowPluginExecutionContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVPreFlowPrepareContext)preFlowPrepareContext
{
  if (self->_whichEvent_Type == 16)
  {
    v3 = self->_preFlowPrepareContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVPostFlowPrepareContext)postFlowPrepareContext
{
  if (self->_whichEvent_Type == 17)
  {
    v3 = self->_postFlowPrepareContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVExecutionCommitContext)executionCommitContext
{
  if (self->_whichEvent_Type == 18)
  {
    v3 = self->_executionCommitContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVDecisionEngineResponseReported)decisionEngineResponseReported
{
  if (self->_whichEvent_Type == 19)
  {
    v3 = self->_decisionEngineResponseReported;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (CNVSchemaCNVClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v58.receiver = self;
  v58.super_class = CNVSchemaCNVClientEvent;
  v5 = [(CNVSchemaCNVClientEvent *)&v58 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CNVSchemaCNVClientEventMetadata alloc] initWithDictionary:v6];
      [(CNVSchemaCNVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"intentReformationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CNVSchemaCNVIntentReformationContext alloc] initWithDictionary:v8];
      [(CNVSchemaCNVClientEvent *)v5 setIntentReformationContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"cnvUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CNVSchemaCNVUsoGraphTier1 alloc] initWithDictionary:v10];
      [(CNVSchemaCNVClientEvent *)v5 setCnvUsoGraphTier1:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"intentEagerExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CNVSchemaCNVIntentEagerExecutionContext alloc] initWithDictionary:v12];
      [(CNVSchemaCNVClientEvent *)v5 setIntentEagerExecutionContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"intentFinalExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CNVSchemaCNVIntentFinalExecutionContext alloc] initWithDictionary:v14];
      [(CNVSchemaCNVClientEvent *)v5 setIntentFinalExecutionContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"actionCandidatesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CNVSchemaCNVActionCandidatesGenerated alloc] initWithDictionary:v16];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesGenerated:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    objc_opt_class();
    v57 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CNVSchemaCNVActionCandidatesGeneratedTier1 alloc] initWithDictionary:v18];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesGeneratedTier1:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"actionCandidatesCollated"];
    objc_opt_class();
    v56 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[CNVSchemaCNVActionCandidatesCollated alloc] initWithDictionary:v20];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesCollated:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"disambiguationContext"];
    objc_opt_class();
    v55 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[CNVSchemaCNVDisambiguationContext alloc] initWithDictionary:v22];
      [(CNVSchemaCNVClientEvent *)v5 setDisambiguationContext:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"executionOverridesEvaluated"];
    objc_opt_class();
    v54 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[CNVSchemaCNVExecutionOverridesEvaluated alloc] initWithDictionary:v24];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionOverridesEvaluated:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"executionPrepareContext"];
    objc_opt_class();
    v53 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[CNVSchemaCNVExecutionPrepareContext alloc] initWithDictionary:v26];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionPrepareContext:v27];
    }

    v50 = v10;
    v28 = [v4 objectForKeyedSubscript:@"flowPluginLoadContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[CNVSchemaCNVFlowPluginLoadContext alloc] initWithDictionary:v28];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginLoadContext:v29];
    }

    v49 = v12;
    v30 = [v4 objectForKeyedSubscript:{@"findFlowContext", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[CNVSchemaCNVFindFlowContext alloc] initWithDictionary:v30];
      [(CNVSchemaCNVClientEvent *)v5 setFindFlowContext:v31];
    }

    v48 = v14;
    v32 = [v4 objectForKeyedSubscript:@"flowPluginInputContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[CNVSchemaCNVFlowPluginInputContext alloc] initWithDictionary:v32];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginInputContext:v33];
    }

    v47 = v16;
    v34 = [v4 objectForKeyedSubscript:@"flowPluginExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[CNVSchemaCNVFlowPluginExecutionContext alloc] initWithDictionary:v34];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginExecutionContext:v35];
    }

    v52 = v6;
    v36 = [v4 objectForKeyedSubscript:@"preFlowPrepareContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[CNVSchemaCNVPreFlowPrepareContext alloc] initWithDictionary:v36];
      [(CNVSchemaCNVClientEvent *)v5 setPreFlowPrepareContext:v37];
    }

    v51 = v8;
    v38 = [v4 objectForKeyedSubscript:@"postFlowPrepareContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[CNVSchemaCNVPostFlowPrepareContext alloc] initWithDictionary:v38];
      [(CNVSchemaCNVClientEvent *)v5 setPostFlowPrepareContext:v39];
    }

    v40 = [v4 objectForKeyedSubscript:@"executionCommitContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[CNVSchemaCNVExecutionCommitContext alloc] initWithDictionary:v40];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionCommitContext:v41];
    }

    v42 = [v4 objectForKeyedSubscript:@"decisionEngineResponseReported"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[CNVSchemaCNVDecisionEngineResponseReported alloc] initWithDictionary:v42];
      [(CNVSchemaCNVClientEvent *)v5 setDecisionEngineResponseReported:v43];
    }

    v44 = v5;
  }

  return v5;
}

- (CNVSchemaCNVClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(CNVSchemaCNVClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(CNVSchemaCNVClientEvent *)self dictionaryRepresentation];
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
  if (self->_actionCandidatesCollated)
  {
    v4 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionCandidatesCollated"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionCandidatesCollated"];
    }
  }

  if (self->_actionCandidatesGenerated)
  {
    v7 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"actionCandidatesGenerated"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"actionCandidatesGenerated"];
    }
  }

  if (self->_actionCandidatesGeneratedTier1)
  {
    v10 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    }
  }

  if (self->_cnvUsoGraphTier1)
  {
    v13 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"cnvUsoGraphTier1"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"cnvUsoGraphTier1"];
    }
  }

  if (self->_decisionEngineResponseReported)
  {
    v16 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"decisionEngineResponseReported"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"decisionEngineResponseReported"];
    }
  }

  if (self->_disambiguationContext)
  {
    v19 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"disambiguationContext"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"disambiguationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    v22 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionCommitContext)
  {
    v25 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"executionCommitContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"executionCommitContext"];
    }
  }

  if (self->_executionOverridesEvaluated)
  {
    v28 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"executionOverridesEvaluated"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"executionOverridesEvaluated"];
    }
  }

  if (self->_executionPrepareContext)
  {
    v31 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"executionPrepareContext"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"executionPrepareContext"];
    }
  }

  if (self->_findFlowContext)
  {
    v34 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"findFlowContext"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"findFlowContext"];
    }
  }

  if (self->_flowPluginExecutionContext)
  {
    v37 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"flowPluginExecutionContext"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"flowPluginExecutionContext"];
    }
  }

  if (self->_flowPluginInputContext)
  {
    v40 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"flowPluginInputContext"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"flowPluginInputContext"];
    }
  }

  if (self->_flowPluginLoadContext)
  {
    v43 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"flowPluginLoadContext"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"flowPluginLoadContext"];
    }
  }

  if (self->_intentEagerExecutionContext)
  {
    v46 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"intentEagerExecutionContext"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"intentEagerExecutionContext"];
    }
  }

  if (self->_intentFinalExecutionContext)
  {
    v49 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"intentFinalExecutionContext"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"intentFinalExecutionContext"];
    }
  }

  if (self->_intentReformationContext)
  {
    v52 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"intentReformationContext"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"intentReformationContext"];
    }
  }

  if (self->_postFlowPrepareContext)
  {
    v55 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"postFlowPrepareContext"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"postFlowPrepareContext"];
    }
  }

  if (self->_preFlowPrepareContext)
  {
    v58 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"preFlowPrepareContext"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"preFlowPrepareContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(CNVSchemaCNVClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(CNVSchemaCNVIntentReformationContext *)self->_intentReformationContext hash]^ v3;
  v5 = [(CNVSchemaCNVUsoGraphTier1 *)self->_cnvUsoGraphTier1 hash];
  v6 = v4 ^ v5 ^ [(CNVSchemaCNVIntentEagerExecutionContext *)self->_intentEagerExecutionContext hash];
  v7 = [(CNVSchemaCNVIntentFinalExecutionContext *)self->_intentFinalExecutionContext hash];
  v8 = v7 ^ [(CNVSchemaCNVActionCandidatesGenerated *)self->_actionCandidatesGenerated hash];
  v9 = v6 ^ v8 ^ [(CNVSchemaCNVActionCandidatesGeneratedTier1 *)self->_actionCandidatesGeneratedTier1 hash];
  v10 = [(CNVSchemaCNVActionCandidatesCollated *)self->_actionCandidatesCollated hash];
  v11 = v10 ^ [(CNVSchemaCNVDisambiguationContext *)self->_disambiguationContext hash];
  v12 = v11 ^ [(CNVSchemaCNVExecutionOverridesEvaluated *)self->_executionOverridesEvaluated hash];
  v13 = v9 ^ v12 ^ [(CNVSchemaCNVExecutionPrepareContext *)self->_executionPrepareContext hash];
  v14 = [(CNVSchemaCNVFlowPluginLoadContext *)self->_flowPluginLoadContext hash];
  v15 = v14 ^ [(CNVSchemaCNVFindFlowContext *)self->_findFlowContext hash];
  v16 = v15 ^ [(CNVSchemaCNVFlowPluginInputContext *)self->_flowPluginInputContext hash];
  v17 = v16 ^ [(CNVSchemaCNVFlowPluginExecutionContext *)self->_flowPluginExecutionContext hash];
  v18 = v13 ^ v17 ^ [(CNVSchemaCNVPreFlowPrepareContext *)self->_preFlowPrepareContext hash];
  v19 = [(CNVSchemaCNVPostFlowPrepareContext *)self->_postFlowPrepareContext hash];
  v20 = v19 ^ [(CNVSchemaCNVExecutionCommitContext *)self->_executionCommitContext hash];
  return v18 ^ v20 ^ [(CNVSchemaCNVDecisionEngineResponseReported *)self->_decisionEngineResponseReported hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_98;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_98;
  }

  v6 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v8 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  v7 = [v4 intentReformationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v13 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    v16 = [v4 intentReformationContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  v7 = [v4 cnvUsoGraphTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v18 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  if (v18)
  {
    v19 = v18;
    v20 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    v21 = [v4 cnvUsoGraphTier1];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  v7 = [v4 intentEagerExecutionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v23 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    v26 = [v4 intentEagerExecutionContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  v7 = [v4 intentFinalExecutionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v28 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    v31 = [v4 intentFinalExecutionContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  v7 = [v4 actionCandidatesGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v33 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  if (v33)
  {
    v34 = v33;
    v35 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    v36 = [v4 actionCandidatesGenerated];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  v7 = [v4 actionCandidatesGeneratedTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v38 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  if (v38)
  {
    v39 = v38;
    v40 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    v41 = [v4 actionCandidatesGeneratedTier1];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  v7 = [v4 actionCandidatesCollated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v43 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  if (v43)
  {
    v44 = v43;
    v45 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    v46 = [v4 actionCandidatesCollated];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  v7 = [v4 disambiguationContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v48 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  if (v48)
  {
    v49 = v48;
    v50 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    v51 = [v4 disambiguationContext];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  v7 = [v4 executionOverridesEvaluated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v53 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  if (v53)
  {
    v54 = v53;
    v55 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    v56 = [v4 executionOverridesEvaluated];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  v7 = [v4 executionPrepareContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v58 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  if (v58)
  {
    v59 = v58;
    v60 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    v61 = [v4 executionPrepareContext];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  v7 = [v4 flowPluginLoadContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v63 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  if (v63)
  {
    v64 = v63;
    v65 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    v66 = [v4 flowPluginLoadContext];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  v7 = [v4 findFlowContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v68 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  if (v68)
  {
    v69 = v68;
    v70 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    v71 = [v4 findFlowContext];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  v7 = [v4 flowPluginInputContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v73 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  if (v73)
  {
    v74 = v73;
    v75 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    v76 = [v4 flowPluginInputContext];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  v7 = [v4 flowPluginExecutionContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v78 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  if (v78)
  {
    v79 = v78;
    v80 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    v81 = [v4 flowPluginExecutionContext];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  v7 = [v4 preFlowPrepareContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v83 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  if (v83)
  {
    v84 = v83;
    v85 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    v86 = [v4 preFlowPrepareContext];
    v87 = [v85 isEqual:v86];

    if (!v87)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  v7 = [v4 postFlowPrepareContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v88 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  if (v88)
  {
    v89 = v88;
    v90 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    v91 = [v4 postFlowPrepareContext];
    v92 = [v90 isEqual:v91];

    if (!v92)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  v7 = [v4 executionCommitContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_97;
  }

  v93 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  if (v93)
  {
    v94 = v93;
    v95 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    v96 = [v4 executionCommitContext];
    v97 = [v95 isEqual:v96];

    if (!v97)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  v6 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
  v7 = [v4 decisionEngineResponseReported];
  if ((v6 != 0) != (v7 == 0))
  {
    v98 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    if (!v98)
    {

LABEL_101:
      v103 = 1;
      goto LABEL_99;
    }

    v99 = v98;
    v100 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    v101 = [v4 decisionEngineResponseReported];
    v102 = [v100 isEqual:v101];

    if (v102)
    {
      goto LABEL_101;
    }
  }

  else
  {
LABEL_97:
  }

LABEL_98:
  v103 = 0;
LABEL_99:

  return v103;
}

- (void)writeTo:(id)a3
{
  v43 = a3;
  v4 = [(CNVSchemaCNVClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];

  if (v6)
  {
    v7 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];

  if (v8)
  {
    v9 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];

  if (v10)
  {
    v11 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];

  if (v12)
  {
    v13 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];

  if (v14)
  {
    v15 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];

  if (v16)
  {
    v17 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];

  if (v18)
  {
    v19 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];

  if (v20)
  {
    v21 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];

  if (v22)
  {
    v23 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];

  if (v24)
  {
    v25 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];

  if (v26)
  {
    v27 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(CNVSchemaCNVClientEvent *)self findFlowContext];

  if (v28)
  {
    v29 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];

  if (v30)
  {
    v31 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    PBDataWriterWriteSubmessage();
  }

  v32 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];

  if (v32)
  {
    v33 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  v34 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];

  if (v34)
  {
    v35 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  v36 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];

  if (v36)
  {
    v37 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  v38 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];

  if (v38)
  {
    v39 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    PBDataWriterWriteSubmessage();
  }

  v40 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];

  v41 = v43;
  if (v40)
  {
    v42 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    PBDataWriterWriteSubmessage();

    v41 = v43;
  }
}

- (void)deleteDecisionEngineResponseReported
{
  if (self->_whichEvent_Type == 19)
  {
    self->_whichEvent_Type = 0;
    self->_decisionEngineResponseReported = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDecisionEngineResponseReported:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  v22 = 19;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = v4;
}

- (void)deleteExecutionCommitContext
{
  if (self->_whichEvent_Type == 18)
  {
    self->_whichEvent_Type = 0;
    self->_executionCommitContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setExecutionCommitContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 18;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = v4;
}

- (void)deletePostFlowPrepareContext
{
  if (self->_whichEvent_Type == 17)
  {
    self->_whichEvent_Type = 0;
    self->_postFlowPrepareContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPostFlowPrepareContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 17;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = v4;
}

- (void)deletePreFlowPrepareContext
{
  if (self->_whichEvent_Type == 16)
  {
    self->_whichEvent_Type = 0;
    self->_preFlowPrepareContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setPreFlowPrepareContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  self->_whichEvent_Type = 16 * (v4 != 0);
  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = v4;
}

- (void)deleteFlowPluginExecutionContext
{
  if (self->_whichEvent_Type == 15)
  {
    self->_whichEvent_Type = 0;
    self->_flowPluginExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowPluginExecutionContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 15;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = v4;
}

- (void)deleteFlowPluginInputContext
{
  if (self->_whichEvent_Type == 14)
  {
    self->_whichEvent_Type = 0;
    self->_flowPluginInputContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowPluginInputContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 14;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = v4;
}

- (void)deleteFindFlowContext
{
  if (self->_whichEvent_Type == 13)
  {
    self->_whichEvent_Type = 0;
    self->_findFlowContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFindFlowContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 13;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = v4;
}

- (void)deleteFlowPluginLoadContext
{
  if (self->_whichEvent_Type == 12)
  {
    self->_whichEvent_Type = 0;
    self->_flowPluginLoadContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setFlowPluginLoadContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 12;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = v4;
}

- (void)deleteExecutionPrepareContext
{
  if (self->_whichEvent_Type == 11)
  {
    self->_whichEvent_Type = 0;
    self->_executionPrepareContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setExecutionPrepareContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 11;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = v4;
}

- (void)deleteExecutionOverridesEvaluated
{
  if (self->_whichEvent_Type == 10)
  {
    self->_whichEvent_Type = 0;
    self->_executionOverridesEvaluated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setExecutionOverridesEvaluated:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 10;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = v4;
}

- (void)deleteDisambiguationContext
{
  if (self->_whichEvent_Type == 9)
  {
    self->_whichEvent_Type = 0;
    self->_disambiguationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setDisambiguationContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 9;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = v4;
}

- (void)deleteActionCandidatesCollated
{
  if (self->_whichEvent_Type == 8)
  {
    self->_whichEvent_Type = 0;
    self->_actionCandidatesCollated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setActionCandidatesCollated:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  self->_whichEvent_Type = 8 * (v4 != 0);
  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = v4;
}

- (void)deleteActionCandidatesGeneratedTier1
{
  if (self->_whichEvent_Type == 7)
  {
    self->_whichEvent_Type = 0;
    self->_actionCandidatesGeneratedTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setActionCandidatesGeneratedTier1:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 7;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = v4;
}

- (void)deleteActionCandidatesGenerated
{
  if (self->_whichEvent_Type == 6)
  {
    self->_whichEvent_Type = 0;
    self->_actionCandidatesGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setActionCandidatesGenerated:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 6;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = v4;
}

- (void)deleteIntentFinalExecutionContext
{
  if (self->_whichEvent_Type == 5)
  {
    self->_whichEvent_Type = 0;
    self->_intentFinalExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntentFinalExecutionContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 5;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = v4;
}

- (void)deleteIntentEagerExecutionContext
{
  if (self->_whichEvent_Type == 4)
  {
    self->_whichEvent_Type = 0;
    self->_intentEagerExecutionContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntentEagerExecutionContext:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  self->_whichEvent_Type = 4 * (v4 != 0);
  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = v4;
}

- (void)deleteCnvUsoGraphTier1
{
  if (self->_whichEvent_Type == 3)
  {
    self->_whichEvent_Type = 0;
    self->_cnvUsoGraphTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setCnvUsoGraphTier1:(id)a3
{
  v4 = a3;
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  v22 = 3;
  if (!v4)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = v4;
}

- (void)deleteIntentReformationContext
{
  if (self->_whichEvent_Type == 2)
  {
    self->_whichEvent_Type = 0;
    self->_intentReformationContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setIntentReformationContext:(id)a3
{
  v4 = a3;
  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = 0;

  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = 0;

  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = 0;

  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = 0;

  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = 0;

  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = 0;

  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = 0;

  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = 0;

  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = 0;

  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = 0;

  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = 0;

  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = 0;

  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = 0;

  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = 0;

  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = 0;

  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = 0;

  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = 0;

  self->_whichEvent_Type = 2 * (v4 != 0);
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v64.receiver = self;
  v64.super_class = CNVSchemaCNVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v64 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  v6 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(CNVSchemaCNVClientEvent *)self deleteEventMetadata];
  }

  v9 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentReformationContext];
  }

  v12 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  v15 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentEagerExecutionContext];
  }

  v18 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentFinalExecutionContext];
  }

  v21 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesGenerated];
  }

  v24 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesGeneratedTier1];
  }

  v27 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesCollated];
  }

  v30 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(CNVSchemaCNVClientEvent *)self deleteDisambiguationContext];
  }

  v33 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionOverridesEvaluated];
  }

  v36 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionPrepareContext];
  }

  v39 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginLoadContext];
  }

  v42 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFindFlowContext];
  }

  v45 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginInputContext];
  }

  v48 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginExecutionContext];
  }

  v51 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(CNVSchemaCNVClientEvent *)self deletePreFlowPrepareContext];
  }

  v54 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(CNVSchemaCNVClientEvent *)self deletePostFlowPrepareContext];
  }

  v57 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionCommitContext];
  }

  v60 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(CNVSchemaCNVClientEvent *)self deleteDecisionEngineResponseReported];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

- (int)componentName
{
  v3 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v4 = [v3 cnvId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(v9) = 14;
  }

  else
  {
    v10 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11 && ([v11 value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(v9) = 1;
      v4 = v11;
    }

    else
    {
      v16 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
      v4 = [v16 subRequestId];

      if (v4)
      {
        v9 = [v4 value];
        if (v9)
        {
          v17 = [v4 value];
          v18 = [v17 length];

          if (v18)
          {
            LODWORD(v9) = 43;
          }

          else
          {
            LODWORD(v9) = 0;
          }
        }
      }

      else
      {
        LODWORD(v9) = 0;
      }
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v4 = [v3 cnvId];

  if (v4)
  {
    v5 = [v4 value];
    if (v5)
    {
      v6 = v5;
      v7 = [v4 value];
      v8 = [v7 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  v9 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (v11)
    {
      v12 = v11;
      v13 = [v10 value];
      v14 = [v13 length];

      if (v14)
      {
        v4 = v10;
LABEL_11:
        v16 = v4;
        v4 = v16;
        goto LABEL_13;
      }
    }
  }

  v15 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v4 = [v15 subRequestId];

  if (v4)
  {
    v16 = [v4 value];
    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v4 value];
    v18 = [v17 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(CNVSchemaCNVClientEvent *)self whichEvent_Type];
  if (v3 - 2 > 0x11)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9120[v3 - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 2 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1E78E91B0[a3 - 2];
  }
}

@end