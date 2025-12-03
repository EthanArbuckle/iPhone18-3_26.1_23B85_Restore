@interface CNVSchemaCNVClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (CNVSchemaCNVActionCandidatesCollated)actionCandidatesCollated;
- (CNVSchemaCNVActionCandidatesGenerated)actionCandidatesGenerated;
- (CNVSchemaCNVActionCandidatesGeneratedTier1)actionCandidatesGeneratedTier1;
- (CNVSchemaCNVClientEvent)initWithDictionary:(id)dictionary;
- (CNVSchemaCNVClientEvent)initWithJSON:(id)n;
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
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setActionCandidatesCollated:(id)collated;
- (void)setActionCandidatesGenerated:(id)generated;
- (void)setActionCandidatesGeneratedTier1:(id)tier1;
- (void)setCnvUsoGraphTier1:(id)tier1;
- (void)setDecisionEngineResponseReported:(id)reported;
- (void)setDisambiguationContext:(id)context;
- (void)setExecutionCommitContext:(id)context;
- (void)setExecutionOverridesEvaluated:(id)evaluated;
- (void)setExecutionPrepareContext:(id)context;
- (void)setFindFlowContext:(id)context;
- (void)setFlowPluginExecutionContext:(id)context;
- (void)setFlowPluginInputContext:(id)context;
- (void)setFlowPluginLoadContext:(id)context;
- (void)setIntentEagerExecutionContext:(id)context;
- (void)setIntentFinalExecutionContext:(id)context;
- (void)setIntentReformationContext:(id)context;
- (void)setPostFlowPrepareContext:(id)context;
- (void)setPreFlowPrepareContext:(id)context;
- (void)writeTo:(id)to;
@end

@implementation CNVSchemaCNVClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(CNVSchemaCNVClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 0x11)
  {
    return @"com.apple.aiml.siri.cnv.CNVClientEvent";
  }

  else
  {
    return off_1E78D2D10[whichEvent_Type - 2];
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

- (CNVSchemaCNVClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v58.receiver = self;
  v58.super_class = CNVSchemaCNVClientEvent;
  v5 = [(CNVSchemaCNVClientEvent *)&v58 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[CNVSchemaCNVClientEventMetadata alloc] initWithDictionary:v6];
      [(CNVSchemaCNVClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"intentReformationContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[CNVSchemaCNVIntentReformationContext alloc] initWithDictionary:v8];
      [(CNVSchemaCNVClientEvent *)v5 setIntentReformationContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"cnvUsoGraphTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[CNVSchemaCNVUsoGraphTier1 alloc] initWithDictionary:v10];
      [(CNVSchemaCNVClientEvent *)v5 setCnvUsoGraphTier1:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"intentEagerExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[CNVSchemaCNVIntentEagerExecutionContext alloc] initWithDictionary:v12];
      [(CNVSchemaCNVClientEvent *)v5 setIntentEagerExecutionContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"intentFinalExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[CNVSchemaCNVIntentFinalExecutionContext alloc] initWithDictionary:v14];
      [(CNVSchemaCNVClientEvent *)v5 setIntentFinalExecutionContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidatesGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[CNVSchemaCNVActionCandidatesGenerated alloc] initWithDictionary:v16];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesGenerated:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    objc_opt_class();
    v57 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[CNVSchemaCNVActionCandidatesGeneratedTier1 alloc] initWithDictionary:v18];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesGeneratedTier1:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"actionCandidatesCollated"];
    objc_opt_class();
    v56 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[CNVSchemaCNVActionCandidatesCollated alloc] initWithDictionary:v20];
      [(CNVSchemaCNVClientEvent *)v5 setActionCandidatesCollated:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationContext"];
    objc_opt_class();
    v55 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[CNVSchemaCNVDisambiguationContext alloc] initWithDictionary:v22];
      [(CNVSchemaCNVClientEvent *)v5 setDisambiguationContext:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"executionOverridesEvaluated"];
    objc_opt_class();
    v54 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[CNVSchemaCNVExecutionOverridesEvaluated alloc] initWithDictionary:v24];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionOverridesEvaluated:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"executionPrepareContext"];
    objc_opt_class();
    v53 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[CNVSchemaCNVExecutionPrepareContext alloc] initWithDictionary:v26];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionPrepareContext:v27];
    }

    v50 = v10;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"flowPluginLoadContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[CNVSchemaCNVFlowPluginLoadContext alloc] initWithDictionary:v28];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginLoadContext:v29];
    }

    v49 = v12;
    v30 = [dictionaryCopy objectForKeyedSubscript:{@"findFlowContext", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[CNVSchemaCNVFindFlowContext alloc] initWithDictionary:v30];
      [(CNVSchemaCNVClientEvent *)v5 setFindFlowContext:v31];
    }

    v48 = v14;
    v32 = [dictionaryCopy objectForKeyedSubscript:@"flowPluginInputContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[CNVSchemaCNVFlowPluginInputContext alloc] initWithDictionary:v32];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginInputContext:v33];
    }

    v47 = v16;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"flowPluginExecutionContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[CNVSchemaCNVFlowPluginExecutionContext alloc] initWithDictionary:v34];
      [(CNVSchemaCNVClientEvent *)v5 setFlowPluginExecutionContext:v35];
    }

    v52 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:@"preFlowPrepareContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[CNVSchemaCNVPreFlowPrepareContext alloc] initWithDictionary:v36];
      [(CNVSchemaCNVClientEvent *)v5 setPreFlowPrepareContext:v37];
    }

    v51 = v8;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"postFlowPrepareContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[CNVSchemaCNVPostFlowPrepareContext alloc] initWithDictionary:v38];
      [(CNVSchemaCNVClientEvent *)v5 setPostFlowPrepareContext:v39];
    }

    v40 = [dictionaryCopy objectForKeyedSubscript:@"executionCommitContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[CNVSchemaCNVExecutionCommitContext alloc] initWithDictionary:v40];
      [(CNVSchemaCNVClientEvent *)v5 setExecutionCommitContext:v41];
    }

    v42 = [dictionaryCopy objectForKeyedSubscript:@"decisionEngineResponseReported"];
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

- (CNVSchemaCNVClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CNVSchemaCNVClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CNVSchemaCNVClientEvent *)self dictionaryRepresentation];
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
  if (self->_actionCandidatesCollated)
  {
    actionCandidatesCollated = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    dictionaryRepresentation = [actionCandidatesCollated dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCandidatesCollated"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCandidatesCollated"];
    }
  }

  if (self->_actionCandidatesGenerated)
  {
    actionCandidatesGenerated = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    dictionaryRepresentation2 = [actionCandidatesGenerated dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"actionCandidatesGenerated"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"actionCandidatesGenerated"];
    }
  }

  if (self->_actionCandidatesGeneratedTier1)
  {
    actionCandidatesGeneratedTier1 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    dictionaryRepresentation3 = [actionCandidatesGeneratedTier1 dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"actionCandidatesGeneratedTier1"];
    }
  }

  if (self->_cnvUsoGraphTier1)
  {
    cnvUsoGraphTier1 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    dictionaryRepresentation4 = [cnvUsoGraphTier1 dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"cnvUsoGraphTier1"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"cnvUsoGraphTier1"];
    }
  }

  if (self->_decisionEngineResponseReported)
  {
    decisionEngineResponseReported = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    dictionaryRepresentation5 = [decisionEngineResponseReported dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"decisionEngineResponseReported"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"decisionEngineResponseReported"];
    }
  }

  if (self->_disambiguationContext)
  {
    disambiguationContext = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    dictionaryRepresentation6 = [disambiguationContext dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"disambiguationContext"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"disambiguationContext"];
    }
  }

  if (self->_eventMetadata)
  {
    eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    dictionaryRepresentation7 = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_executionCommitContext)
  {
    executionCommitContext = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    dictionaryRepresentation8 = [executionCommitContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"executionCommitContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"executionCommitContext"];
    }
  }

  if (self->_executionOverridesEvaluated)
  {
    executionOverridesEvaluated = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    dictionaryRepresentation9 = [executionOverridesEvaluated dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"executionOverridesEvaluated"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"executionOverridesEvaluated"];
    }
  }

  if (self->_executionPrepareContext)
  {
    executionPrepareContext = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    dictionaryRepresentation10 = [executionPrepareContext dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"executionPrepareContext"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"executionPrepareContext"];
    }
  }

  if (self->_findFlowContext)
  {
    findFlowContext = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    dictionaryRepresentation11 = [findFlowContext dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"findFlowContext"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"findFlowContext"];
    }
  }

  if (self->_flowPluginExecutionContext)
  {
    flowPluginExecutionContext = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    dictionaryRepresentation12 = [flowPluginExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"flowPluginExecutionContext"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"flowPluginExecutionContext"];
    }
  }

  if (self->_flowPluginInputContext)
  {
    flowPluginInputContext = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    dictionaryRepresentation13 = [flowPluginInputContext dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"flowPluginInputContext"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"flowPluginInputContext"];
    }
  }

  if (self->_flowPluginLoadContext)
  {
    flowPluginLoadContext = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    dictionaryRepresentation14 = [flowPluginLoadContext dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"flowPluginLoadContext"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"flowPluginLoadContext"];
    }
  }

  if (self->_intentEagerExecutionContext)
  {
    intentEagerExecutionContext = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    dictionaryRepresentation15 = [intentEagerExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"intentEagerExecutionContext"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"intentEagerExecutionContext"];
    }
  }

  if (self->_intentFinalExecutionContext)
  {
    intentFinalExecutionContext = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    dictionaryRepresentation16 = [intentFinalExecutionContext dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"intentFinalExecutionContext"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"intentFinalExecutionContext"];
    }
  }

  if (self->_intentReformationContext)
  {
    intentReformationContext = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    dictionaryRepresentation17 = [intentReformationContext dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"intentReformationContext"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"intentReformationContext"];
    }
  }

  if (self->_postFlowPrepareContext)
  {
    postFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    dictionaryRepresentation18 = [postFlowPrepareContext dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"postFlowPrepareContext"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"postFlowPrepareContext"];
    }
  }

  if (self->_preFlowPrepareContext)
  {
    preFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    dictionaryRepresentation19 = [preFlowPrepareContext dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"preFlowPrepareContext"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"preFlowPrepareContext"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_98;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_98;
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  eventMetadata3 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  eventMetadata2 = [equalCopy intentReformationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  intentReformationContext = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  if (intentReformationContext)
  {
    v14 = intentReformationContext;
    intentReformationContext2 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    intentReformationContext3 = [equalCopy intentReformationContext];
    v17 = [intentReformationContext2 isEqual:intentReformationContext3];

    if (!v17)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  eventMetadata2 = [equalCopy cnvUsoGraphTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  cnvUsoGraphTier1 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  if (cnvUsoGraphTier1)
  {
    v19 = cnvUsoGraphTier1;
    cnvUsoGraphTier12 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    cnvUsoGraphTier13 = [equalCopy cnvUsoGraphTier1];
    v22 = [cnvUsoGraphTier12 isEqual:cnvUsoGraphTier13];

    if (!v22)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  eventMetadata2 = [equalCopy intentEagerExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  intentEagerExecutionContext = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  if (intentEagerExecutionContext)
  {
    v24 = intentEagerExecutionContext;
    intentEagerExecutionContext2 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    intentEagerExecutionContext3 = [equalCopy intentEagerExecutionContext];
    v27 = [intentEagerExecutionContext2 isEqual:intentEagerExecutionContext3];

    if (!v27)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  eventMetadata2 = [equalCopy intentFinalExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  intentFinalExecutionContext = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  if (intentFinalExecutionContext)
  {
    v29 = intentFinalExecutionContext;
    intentFinalExecutionContext2 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    intentFinalExecutionContext3 = [equalCopy intentFinalExecutionContext];
    v32 = [intentFinalExecutionContext2 isEqual:intentFinalExecutionContext3];

    if (!v32)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  eventMetadata2 = [equalCopy actionCandidatesGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  actionCandidatesGenerated = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  if (actionCandidatesGenerated)
  {
    v34 = actionCandidatesGenerated;
    actionCandidatesGenerated2 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    actionCandidatesGenerated3 = [equalCopy actionCandidatesGenerated];
    v37 = [actionCandidatesGenerated2 isEqual:actionCandidatesGenerated3];

    if (!v37)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  eventMetadata2 = [equalCopy actionCandidatesGeneratedTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  actionCandidatesGeneratedTier1 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  if (actionCandidatesGeneratedTier1)
  {
    v39 = actionCandidatesGeneratedTier1;
    actionCandidatesGeneratedTier12 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    actionCandidatesGeneratedTier13 = [equalCopy actionCandidatesGeneratedTier1];
    v42 = [actionCandidatesGeneratedTier12 isEqual:actionCandidatesGeneratedTier13];

    if (!v42)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  eventMetadata2 = [equalCopy actionCandidatesCollated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  actionCandidatesCollated = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  if (actionCandidatesCollated)
  {
    v44 = actionCandidatesCollated;
    actionCandidatesCollated2 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    actionCandidatesCollated3 = [equalCopy actionCandidatesCollated];
    v47 = [actionCandidatesCollated2 isEqual:actionCandidatesCollated3];

    if (!v47)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  eventMetadata2 = [equalCopy disambiguationContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  disambiguationContext = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  if (disambiguationContext)
  {
    v49 = disambiguationContext;
    disambiguationContext2 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    disambiguationContext3 = [equalCopy disambiguationContext];
    v52 = [disambiguationContext2 isEqual:disambiguationContext3];

    if (!v52)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  eventMetadata2 = [equalCopy executionOverridesEvaluated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  executionOverridesEvaluated = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  if (executionOverridesEvaluated)
  {
    v54 = executionOverridesEvaluated;
    executionOverridesEvaluated2 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    executionOverridesEvaluated3 = [equalCopy executionOverridesEvaluated];
    v57 = [executionOverridesEvaluated2 isEqual:executionOverridesEvaluated3];

    if (!v57)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  eventMetadata2 = [equalCopy executionPrepareContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  executionPrepareContext = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  if (executionPrepareContext)
  {
    v59 = executionPrepareContext;
    executionPrepareContext2 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    executionPrepareContext3 = [equalCopy executionPrepareContext];
    v62 = [executionPrepareContext2 isEqual:executionPrepareContext3];

    if (!v62)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  eventMetadata2 = [equalCopy flowPluginLoadContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  flowPluginLoadContext = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  if (flowPluginLoadContext)
  {
    v64 = flowPluginLoadContext;
    flowPluginLoadContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    flowPluginLoadContext3 = [equalCopy flowPluginLoadContext];
    v67 = [flowPluginLoadContext2 isEqual:flowPluginLoadContext3];

    if (!v67)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  eventMetadata2 = [equalCopy findFlowContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  findFlowContext = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  if (findFlowContext)
  {
    v69 = findFlowContext;
    findFlowContext2 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    findFlowContext3 = [equalCopy findFlowContext];
    v72 = [findFlowContext2 isEqual:findFlowContext3];

    if (!v72)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  eventMetadata2 = [equalCopy flowPluginInputContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  flowPluginInputContext = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  if (flowPluginInputContext)
  {
    v74 = flowPluginInputContext;
    flowPluginInputContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    flowPluginInputContext3 = [equalCopy flowPluginInputContext];
    v77 = [flowPluginInputContext2 isEqual:flowPluginInputContext3];

    if (!v77)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  eventMetadata2 = [equalCopy flowPluginExecutionContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  flowPluginExecutionContext = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  if (flowPluginExecutionContext)
  {
    v79 = flowPluginExecutionContext;
    flowPluginExecutionContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    flowPluginExecutionContext3 = [equalCopy flowPluginExecutionContext];
    v82 = [flowPluginExecutionContext2 isEqual:flowPluginExecutionContext3];

    if (!v82)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  eventMetadata2 = [equalCopy preFlowPrepareContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  preFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  if (preFlowPrepareContext)
  {
    v84 = preFlowPrepareContext;
    preFlowPrepareContext2 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    preFlowPrepareContext3 = [equalCopy preFlowPrepareContext];
    v87 = [preFlowPrepareContext2 isEqual:preFlowPrepareContext3];

    if (!v87)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  eventMetadata2 = [equalCopy postFlowPrepareContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  postFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  if (postFlowPrepareContext)
  {
    v89 = postFlowPrepareContext;
    postFlowPrepareContext2 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    postFlowPrepareContext3 = [equalCopy postFlowPrepareContext];
    v92 = [postFlowPrepareContext2 isEqual:postFlowPrepareContext3];

    if (!v92)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  eventMetadata2 = [equalCopy executionCommitContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_97;
  }

  executionCommitContext = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  if (executionCommitContext)
  {
    v94 = executionCommitContext;
    executionCommitContext2 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    executionCommitContext3 = [equalCopy executionCommitContext];
    v97 = [executionCommitContext2 isEqual:executionCommitContext3];

    if (!v97)
    {
      goto LABEL_98;
    }
  }

  else
  {
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
  eventMetadata2 = [equalCopy decisionEngineResponseReported];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    decisionEngineResponseReported = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    if (!decisionEngineResponseReported)
    {

LABEL_101:
      v103 = 1;
      goto LABEL_99;
    }

    v99 = decisionEngineResponseReported;
    decisionEngineResponseReported2 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    decisionEngineResponseReported3 = [equalCopy decisionEngineResponseReported];
    v102 = [decisionEngineResponseReported2 isEqual:decisionEngineResponseReported3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  intentReformationContext = [(CNVSchemaCNVClientEvent *)self intentReformationContext];

  if (intentReformationContext)
  {
    intentReformationContext2 = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
    PBDataWriterWriteSubmessage();
  }

  cnvUsoGraphTier1 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];

  if (cnvUsoGraphTier1)
  {
    cnvUsoGraphTier12 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
    PBDataWriterWriteSubmessage();
  }

  intentEagerExecutionContext = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];

  if (intentEagerExecutionContext)
  {
    intentEagerExecutionContext2 = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  intentFinalExecutionContext = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];

  if (intentFinalExecutionContext)
  {
    intentFinalExecutionContext2 = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  actionCandidatesGenerated = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];

  if (actionCandidatesGenerated)
  {
    actionCandidatesGenerated2 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
    PBDataWriterWriteSubmessage();
  }

  actionCandidatesGeneratedTier1 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];

  if (actionCandidatesGeneratedTier1)
  {
    actionCandidatesGeneratedTier12 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
    PBDataWriterWriteSubmessage();
  }

  actionCandidatesCollated = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];

  if (actionCandidatesCollated)
  {
    actionCandidatesCollated2 = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
    PBDataWriterWriteSubmessage();
  }

  disambiguationContext = [(CNVSchemaCNVClientEvent *)self disambiguationContext];

  if (disambiguationContext)
  {
    disambiguationContext2 = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
    PBDataWriterWriteSubmessage();
  }

  executionOverridesEvaluated = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];

  if (executionOverridesEvaluated)
  {
    executionOverridesEvaluated2 = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
    PBDataWriterWriteSubmessage();
  }

  executionPrepareContext = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];

  if (executionPrepareContext)
  {
    executionPrepareContext2 = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  flowPluginLoadContext = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];

  if (flowPluginLoadContext)
  {
    flowPluginLoadContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
    PBDataWriterWriteSubmessage();
  }

  findFlowContext = [(CNVSchemaCNVClientEvent *)self findFlowContext];

  if (findFlowContext)
  {
    findFlowContext2 = [(CNVSchemaCNVClientEvent *)self findFlowContext];
    PBDataWriterWriteSubmessage();
  }

  flowPluginInputContext = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];

  if (flowPluginInputContext)
  {
    flowPluginInputContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
    PBDataWriterWriteSubmessage();
  }

  flowPluginExecutionContext = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];

  if (flowPluginExecutionContext)
  {
    flowPluginExecutionContext2 = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
    PBDataWriterWriteSubmessage();
  }

  preFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];

  if (preFlowPrepareContext)
  {
    preFlowPrepareContext2 = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  postFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];

  if (postFlowPrepareContext)
  {
    postFlowPrepareContext2 = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
    PBDataWriterWriteSubmessage();
  }

  executionCommitContext = [(CNVSchemaCNVClientEvent *)self executionCommitContext];

  if (executionCommitContext)
  {
    executionCommitContext2 = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
    PBDataWriterWriteSubmessage();
  }

  decisionEngineResponseReported = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];

  v41 = toCopy;
  if (decisionEngineResponseReported)
  {
    decisionEngineResponseReported2 = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
    PBDataWriterWriteSubmessage();

    v41 = toCopy;
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

- (void)setDecisionEngineResponseReported:(id)reported
{
  reportedCopy = reported;
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
  if (!reportedCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  decisionEngineResponseReported = self->_decisionEngineResponseReported;
  self->_decisionEngineResponseReported = reportedCopy;
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

- (void)setExecutionCommitContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionCommitContext = self->_executionCommitContext;
  self->_executionCommitContext = contextCopy;
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

- (void)setPostFlowPrepareContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  postFlowPrepareContext = self->_postFlowPrepareContext;
  self->_postFlowPrepareContext = contextCopy;
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

- (void)setPreFlowPrepareContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 16 * (contextCopy != 0);
  preFlowPrepareContext = self->_preFlowPrepareContext;
  self->_preFlowPrepareContext = contextCopy;
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

- (void)setFlowPluginExecutionContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginExecutionContext = self->_flowPluginExecutionContext;
  self->_flowPluginExecutionContext = contextCopy;
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

- (void)setFlowPluginInputContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginInputContext = self->_flowPluginInputContext;
  self->_flowPluginInputContext = contextCopy;
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

- (void)setFindFlowContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  findFlowContext = self->_findFlowContext;
  self->_findFlowContext = contextCopy;
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

- (void)setFlowPluginLoadContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  flowPluginLoadContext = self->_flowPluginLoadContext;
  self->_flowPluginLoadContext = contextCopy;
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

- (void)setExecutionPrepareContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionPrepareContext = self->_executionPrepareContext;
  self->_executionPrepareContext = contextCopy;
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

- (void)setExecutionOverridesEvaluated:(id)evaluated
{
  evaluatedCopy = evaluated;
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
  if (!evaluatedCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  executionOverridesEvaluated = self->_executionOverridesEvaluated;
  self->_executionOverridesEvaluated = evaluatedCopy;
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

- (void)setDisambiguationContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  disambiguationContext = self->_disambiguationContext;
  self->_disambiguationContext = contextCopy;
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

- (void)setActionCandidatesCollated:(id)collated
{
  collatedCopy = collated;
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

  self->_whichEvent_Type = 8 * (collatedCopy != 0);
  actionCandidatesCollated = self->_actionCandidatesCollated;
  self->_actionCandidatesCollated = collatedCopy;
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

- (void)setActionCandidatesGeneratedTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  actionCandidatesGeneratedTier1 = self->_actionCandidatesGeneratedTier1;
  self->_actionCandidatesGeneratedTier1 = tier1Copy;
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

- (void)setActionCandidatesGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  actionCandidatesGenerated = self->_actionCandidatesGenerated;
  self->_actionCandidatesGenerated = generatedCopy;
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

- (void)setIntentFinalExecutionContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  intentFinalExecutionContext = self->_intentFinalExecutionContext;
  self->_intentFinalExecutionContext = contextCopy;
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

- (void)setIntentEagerExecutionContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 4 * (contextCopy != 0);
  intentEagerExecutionContext = self->_intentEagerExecutionContext;
  self->_intentEagerExecutionContext = contextCopy;
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

- (void)setCnvUsoGraphTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v22 = 0;
  }

  self->_whichEvent_Type = v22;
  cnvUsoGraphTier1 = self->_cnvUsoGraphTier1;
  self->_cnvUsoGraphTier1 = tier1Copy;
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

- (void)setIntentReformationContext:(id)context
{
  contextCopy = context;
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

  self->_whichEvent_Type = 2 * (contextCopy != 0);
  intentReformationContext = self->_intentReformationContext;
  self->_intentReformationContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v64.receiver = self;
  v64.super_class = CNVSchemaCNVClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v64 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(CNVSchemaCNVClientEvent *)self deleteEventMetadata];
  }

  intentReformationContext = [(CNVSchemaCNVClientEvent *)self intentReformationContext];
  v10 = [intentReformationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentReformationContext];
  }

  cnvUsoGraphTier1 = [(CNVSchemaCNVClientEvent *)self cnvUsoGraphTier1];
  v13 = [cnvUsoGraphTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(CNVSchemaCNVClientEvent *)self deleteCnvUsoGraphTier1];
  }

  intentEagerExecutionContext = [(CNVSchemaCNVClientEvent *)self intentEagerExecutionContext];
  v16 = [intentEagerExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentEagerExecutionContext];
  }

  intentFinalExecutionContext = [(CNVSchemaCNVClientEvent *)self intentFinalExecutionContext];
  v19 = [intentFinalExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(CNVSchemaCNVClientEvent *)self deleteIntentFinalExecutionContext];
  }

  actionCandidatesGenerated = [(CNVSchemaCNVClientEvent *)self actionCandidatesGenerated];
  v22 = [actionCandidatesGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesGenerated];
  }

  actionCandidatesGeneratedTier1 = [(CNVSchemaCNVClientEvent *)self actionCandidatesGeneratedTier1];
  v25 = [actionCandidatesGeneratedTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesGeneratedTier1];
  }

  actionCandidatesCollated = [(CNVSchemaCNVClientEvent *)self actionCandidatesCollated];
  v28 = [actionCandidatesCollated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(CNVSchemaCNVClientEvent *)self deleteActionCandidatesCollated];
  }

  disambiguationContext = [(CNVSchemaCNVClientEvent *)self disambiguationContext];
  v31 = [disambiguationContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(CNVSchemaCNVClientEvent *)self deleteDisambiguationContext];
  }

  executionOverridesEvaluated = [(CNVSchemaCNVClientEvent *)self executionOverridesEvaluated];
  v34 = [executionOverridesEvaluated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionOverridesEvaluated];
  }

  executionPrepareContext = [(CNVSchemaCNVClientEvent *)self executionPrepareContext];
  v37 = [executionPrepareContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionPrepareContext];
  }

  flowPluginLoadContext = [(CNVSchemaCNVClientEvent *)self flowPluginLoadContext];
  v40 = [flowPluginLoadContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginLoadContext];
  }

  findFlowContext = [(CNVSchemaCNVClientEvent *)self findFlowContext];
  v43 = [findFlowContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFindFlowContext];
  }

  flowPluginInputContext = [(CNVSchemaCNVClientEvent *)self flowPluginInputContext];
  v46 = [flowPluginInputContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginInputContext];
  }

  flowPluginExecutionContext = [(CNVSchemaCNVClientEvent *)self flowPluginExecutionContext];
  v49 = [flowPluginExecutionContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(CNVSchemaCNVClientEvent *)self deleteFlowPluginExecutionContext];
  }

  preFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self preFlowPrepareContext];
  v52 = [preFlowPrepareContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(CNVSchemaCNVClientEvent *)self deletePreFlowPrepareContext];
  }

  postFlowPrepareContext = [(CNVSchemaCNVClientEvent *)self postFlowPrepareContext];
  v55 = [postFlowPrepareContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(CNVSchemaCNVClientEvent *)self deletePostFlowPrepareContext];
  }

  executionCommitContext = [(CNVSchemaCNVClientEvent *)self executionCommitContext];
  v58 = [executionCommitContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(CNVSchemaCNVClientEvent *)self deleteExecutionCommitContext];
  }

  decisionEngineResponseReported = [(CNVSchemaCNVClientEvent *)self decisionEngineResponseReported];
  v61 = [decisionEngineResponseReported applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
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
  eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  cnvId = [eventMetadata cnvId];

  if (cnvId && ([cnvId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(cnvId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    LODWORD(value) = 14;
  }

  else
  {
    eventMetadata2 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId && ([requestId value], (v12 = objc_claimAutoreleasedReturnValue()) != 0) && (v13 = v12, objc_msgSend(requestId, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v15))
    {
      LODWORD(value) = 1;
      cnvId = requestId;
    }

    else
    {
      eventMetadata3 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
      cnvId = [eventMetadata3 subRequestId];

      if (cnvId)
      {
        value = [cnvId value];
        if (value)
        {
          value2 = [cnvId value];
          v18 = [value2 length];

          if (v18)
          {
            LODWORD(value) = 43;
          }

          else
          {
            LODWORD(value) = 0;
          }
        }
      }

      else
      {
        LODWORD(value) = 0;
      }
    }
  }

  return value;
}

- (id)getComponentId
{
  eventMetadata = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  cnvId = [eventMetadata cnvId];

  if (cnvId)
  {
    value = [cnvId value];
    if (value)
    {
      v6 = value;
      value2 = [cnvId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_11;
      }
    }
  }

  eventMetadata2 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (value3)
    {
      v12 = value3;
      value4 = [requestId value];
      v14 = [value4 length];

      if (v14)
      {
        cnvId = requestId;
LABEL_11:
        value5 = cnvId;
        cnvId = value5;
        goto LABEL_13;
      }
    }
  }

  eventMetadata3 = [(CNVSchemaCNVClientEvent *)self eventMetadata];
  cnvId = [eventMetadata3 subRequestId];

  if (cnvId)
  {
    value5 = [cnvId value];
    if (!value5)
    {
      goto LABEL_13;
    }

    value6 = [cnvId value];
    v18 = [value6 length];

    if (v18)
    {
      goto LABEL_11;
    }
  }

  value5 = 0;
LABEL_13:

  return value5;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(CNVSchemaCNVClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 2 > 0x11)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78E9120[whichEvent_Type - 2]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 2 > 0x11)
  {
    return 0;
  }

  else
  {
    return off_1E78E91B0[tag - 2];
  }
}

@end