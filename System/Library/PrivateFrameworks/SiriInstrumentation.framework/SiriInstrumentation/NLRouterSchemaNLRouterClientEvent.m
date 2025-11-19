@interface NLRouterSchemaNLRouterClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)a3;
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterBridgeHandleContext)nlRouterBridgeHandleContext;
- (NLRouterSchemaNLRouterClientEvent)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterClientEvent)initWithJSON:(id)a3;
- (NLRouterSchemaNLRouterHandleContext)nlRouterHandleContext;
- (NLRouterSchemaNLRouterInvalidDecisionEmitted)nLRouterInvalidDecisionEmitted;
- (NLRouterSchemaNLRouterPromptGenerated)nlRouterPromptGenerated;
- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)nlRouterPromptGenerationSignalsCaptured;
- (NLRouterSchemaNLRouterSubComponentHandleContext)nlRouterSubComponentHandleContext;
- (NLRouterSchemaNLRouterSubComponentSetupContext)nlRouterSubComponentSetupContext;
- (NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1)nlRouterSubComponentTriggeredHeuristicRuleTier1;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)getComponentId;
- (id)qualifiedMessageName;
- (id)suppressMessageUnderConditions;
- (int)componentName;
- (unint64_t)hash;
- (void)deleteNLRouterInvalidDecisionEmitted;
- (void)deleteNlRouterBridgeHandleContext;
- (void)deleteNlRouterHandleContext;
- (void)deleteNlRouterPromptGenerated;
- (void)deleteNlRouterPromptGenerationSignalsCaptured;
- (void)deleteNlRouterSubComponentHandleContext;
- (void)deleteNlRouterSubComponentSetupContext;
- (void)deleteNlRouterSubComponentTriggeredHeuristicRuleTier1;
- (void)setNLRouterInvalidDecisionEmitted:(id)a3;
- (void)setNlRouterBridgeHandleContext:(id)a3;
- (void)setNlRouterHandleContext:(id)a3;
- (void)setNlRouterPromptGenerated:(id)a3;
- (void)setNlRouterPromptGenerationSignalsCaptured:(id)a3;
- (void)setNlRouterSubComponentHandleContext:(id)a3;
- (void)setNlRouterSubComponentSetupContext:(id)a3;
- (void)setNlRouterSubComponentTriggeredHeuristicRuleTier1:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterClientEvent

- (id)qualifiedMessageName
{
  v2 = [(NLRouterSchemaNLRouterClientEvent *)self whichEvent_Type];
  if (v2 - 101 > 7)
  {
    return @"com.apple.aiml.siri.nlrouter.NLRouterClientEvent";
  }

  else
  {
    return off_1E78DB5D0[v2 - 101];
  }
}

- (NLRouterSchemaNLRouterSubComponentSetupContext)nlRouterSubComponentSetupContext
{
  if (self->_whichEvent_Type == 104)
  {
    v3 = self->_nlRouterSubComponentSetupContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1)nlRouterSubComponentTriggeredHeuristicRuleTier1
{
  if (self->_whichEvent_Type == 105)
  {
    v3 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)nlRouterPromptGenerationSignalsCaptured
{
  if (self->_whichEvent_Type == 106)
  {
    v3 = self->_nlRouterPromptGenerationSignalsCaptured;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterPromptGenerated)nlRouterPromptGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    v3 = self->_nlRouterPromptGenerated;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterSubComponentHandleContext)nlRouterSubComponentHandleContext
{
  if (self->_whichEvent_Type == 103)
  {
    v3 = self->_nlRouterSubComponentHandleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterHandleContext)nlRouterHandleContext
{
  if (self->_whichEvent_Type == 101)
  {
    v3 = self->_nlRouterHandleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterBridgeHandleContext)nlRouterBridgeHandleContext
{
  if (self->_whichEvent_Type == 102)
  {
    v3 = self->_nlRouterBridgeHandleContext;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NLRouterSchemaNLRouterClientEvent)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = NLRouterSchemaNLRouterClientEvent;
  v5 = [(NLRouterSchemaNLRouterClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLRouterSchemaNLRouterClientEventMetadata alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [v4 objectForKeyedSubscript:@"nlRouterHandleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLRouterSchemaNLRouterHandleContext alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterHandleContext:v9];
    }

    v10 = [v4 objectForKeyedSubscript:{@"nlRouterBridgeHandleContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLRouterSchemaNLRouterBridgeHandleContext alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterBridgeHandleContext:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLRouterSchemaNLRouterSubComponentHandleContext alloc] initWithDictionary:v12];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentHandleContext:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLRouterSchemaNLRouterSubComponentSetupContext alloc] initWithDictionary:v14];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentSetupContext:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1 alloc] initWithDictionary:v16];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentTriggeredHeuristicRuleTier1:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured alloc] initWithDictionary:v18];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterPromptGenerationSignalsCaptured:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"nlRouterPromptGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLRouterSchemaNLRouterPromptGenerated alloc] initWithDictionary:v20];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterPromptGenerated:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[NLRouterSchemaNLRouterInvalidDecisionEmitted alloc] initWithDictionary:v22];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNLRouterInvalidDecisionEmitted:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterClientEvent)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterClientEvent *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterClientEvent *)self dictionaryRepresentation];
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
    v4 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
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

  if (self->_nLRouterInvalidDecisionEmitted)
  {
    v7 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
    }
  }

  if (self->_nlRouterBridgeHandleContext)
  {
    v10 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"nlRouterBridgeHandleContext"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"nlRouterBridgeHandleContext"];
    }
  }

  if (self->_nlRouterHandleContext)
  {
    v13 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"nlRouterHandleContext"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"nlRouterHandleContext"];
    }
  }

  if (self->_nlRouterPromptGenerated)
  {
    v16 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"nlRouterPromptGenerated"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"nlRouterPromptGenerated"];
    }
  }

  if (self->_nlRouterPromptGenerationSignalsCaptured)
  {
    v19 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    }
  }

  if (self->_nlRouterSubComponentHandleContext)
  {
    v22 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    }
  }

  if (self->_nlRouterSubComponentSetupContext)
  {
    v25 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    }
  }

  if (self->_nlRouterSubComponentTriggeredHeuristicRuleTier1)
  {
    v28 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NLRouterSchemaNLRouterClientEventMetadata *)self->_eventMetadata hash];
  v4 = [(NLRouterSchemaNLRouterHandleContext *)self->_nlRouterHandleContext hash]^ v3;
  v5 = [(NLRouterSchemaNLRouterBridgeHandleContext *)self->_nlRouterBridgeHandleContext hash];
  v6 = v4 ^ v5 ^ [(NLRouterSchemaNLRouterSubComponentHandleContext *)self->_nlRouterSubComponentHandleContext hash];
  v7 = [(NLRouterSchemaNLRouterSubComponentSetupContext *)self->_nlRouterSubComponentSetupContext hash];
  v8 = v7 ^ [(NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1 *)self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 hash];
  v9 = v6 ^ v8 ^ [(NLRouterSchemaNLRouterPromptGenerationSignalsCaptured *)self->_nlRouterPromptGenerationSignalsCaptured hash];
  v10 = [(NLRouterSchemaNLRouterPromptGenerated *)self->_nlRouterPromptGenerated hash];
  return v9 ^ v10 ^ [(NLRouterSchemaNLRouterInvalidDecisionEmitted *)self->_nLRouterInvalidDecisionEmitted hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [v4 whichEvent_Type])
  {
    goto LABEL_48;
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v7 = [v4 eventMetadata];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v8 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  if (v8)
  {
    v9 = v8;
    v10 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    v11 = [v4 eventMetadata];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  v7 = [v4 nlRouterHandleContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v13 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  if (v13)
  {
    v14 = v13;
    v15 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    v16 = [v4 nlRouterHandleContext];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  v7 = [v4 nlRouterBridgeHandleContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v18 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  if (v18)
  {
    v19 = v18;
    v20 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    v21 = [v4 nlRouterBridgeHandleContext];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  v7 = [v4 nlRouterSubComponentHandleContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v23 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  if (v23)
  {
    v24 = v23;
    v25 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    v26 = [v4 nlRouterSubComponentHandleContext];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  v7 = [v4 nlRouterSubComponentSetupContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v28 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  if (v28)
  {
    v29 = v28;
    v30 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    v31 = [v4 nlRouterSubComponentSetupContext];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  v7 = [v4 nlRouterSubComponentTriggeredHeuristicRuleTier1];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v33 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  if (v33)
  {
    v34 = v33;
    v35 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    v36 = [v4 nlRouterSubComponentTriggeredHeuristicRuleTier1];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  v7 = [v4 nlRouterPromptGenerationSignalsCaptured];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v38 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  if (v38)
  {
    v39 = v38;
    v40 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    v41 = [v4 nlRouterPromptGenerationSignalsCaptured];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  v7 = [v4 nlRouterPromptGenerated];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_47;
  }

  v43 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  if (v43)
  {
    v44 = v43;
    v45 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    v46 = [v4 nlRouterPromptGenerated];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
  v7 = [v4 nLRouterInvalidDecisionEmitted];
  if ((v6 != 0) != (v7 == 0))
  {
    v48 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    if (!v48)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = v48;
    v50 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    v51 = [v4 nLRouterInvalidDecisionEmitted];
    v52 = [v50 isEqual:v51];

    if (v52)
    {
      goto LABEL_51;
    }
  }

  else
  {
LABEL_47:
  }

LABEL_48:
  v53 = 0;
LABEL_49:

  return v53;
}

- (void)writeTo:(id)a3
{
  v23 = a3;
  v4 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];

  if (v4)
  {
    v5 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];

  if (v6)
  {
    v7 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];

  if (v8)
  {
    v9 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];

  if (v10)
  {
    v11 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];

  if (v12)
  {
    v13 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];

  if (v14)
  {
    v15 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];

  if (v16)
  {
    v17 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];

  if (v18)
  {
    v19 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];

  v21 = v23;
  if (v20)
  {
    v22 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    PBDataWriterWriteSubmessage();

    v21 = v23;
  }
}

- (void)deleteNLRouterInvalidDecisionEmitted
{
  if (self->_whichEvent_Type == 108)
  {
    self->_whichEvent_Type = 0;
    self->_nLRouterInvalidDecisionEmitted = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NLRouterSchemaNLRouterInvalidDecisionEmitted)nLRouterInvalidDecisionEmitted
{
  if (self->_whichEvent_Type == 108)
  {
    v3 = self->_nLRouterInvalidDecisionEmitted;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setNLRouterInvalidDecisionEmitted:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  v12 = 108;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = v4;
}

- (void)deleteNlRouterPromptGenerated
{
  if (self->_whichEvent_Type == 107)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterPromptGenerated = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterPromptGenerated:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 107;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = v4;
}

- (void)deleteNlRouterPromptGenerationSignalsCaptured
{
  if (self->_whichEvent_Type == 106)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterPromptGenerationSignalsCaptured = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterPromptGenerationSignalsCaptured:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 106;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = v4;
}

- (void)deleteNlRouterSubComponentTriggeredHeuristicRuleTier1
{
  if (self->_whichEvent_Type == 105)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterSubComponentTriggeredHeuristicRuleTier1:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 105;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = v4;
}

- (void)deleteNlRouterSubComponentSetupContext
{
  if (self->_whichEvent_Type == 104)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterSubComponentSetupContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterSubComponentSetupContext:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 104;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = v4;
}

- (void)deleteNlRouterSubComponentHandleContext
{
  if (self->_whichEvent_Type == 103)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterSubComponentHandleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterSubComponentHandleContext:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 103;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = v4;
}

- (void)deleteNlRouterBridgeHandleContext
{
  if (self->_whichEvent_Type == 102)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterBridgeHandleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterBridgeHandleContext:(id)a3
{
  v4 = a3;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 102;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = v4;
}

- (void)deleteNlRouterHandleContext
{
  if (self->_whichEvent_Type == 101)
  {
    self->_whichEvent_Type = 0;
    self->_nlRouterHandleContext = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (void)setNlRouterHandleContext:(id)a3
{
  v4 = a3;
  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = 0;

  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = 0;

  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = 0;

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = 0;

  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = 0;

  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = 0;

  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = 0;

  v12 = 101;
  if (!v4)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = v4;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = NLRouterSchemaNLRouterClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([v4 isConditionSet:4])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([v4 isConditionSet:5])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([v4 isConditionSet:6])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([v4 isConditionSet:7])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  v6 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteEventMetadata];
  }

  v9 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterHandleContext];
  }

  v12 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterBridgeHandleContext];
  }

  v15 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentHandleContext];
  }

  v18 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentSetupContext];
  }

  v21 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  v24 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterPromptGenerationSignalsCaptured];
  }

  v27 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterPromptGenerated];
  }

  v30 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNLRouterInvalidDecisionEmitted];
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
  v3 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v4 = [v3 nlRouterId];

  if (v4 && ([v4 value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 42;
  }

  else
  {
    v10 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    v11 = [v10 requestId];

    if (v11)
    {
      v12 = [v11 value];
      if (v12)
      {
        v13 = v12;
        v14 = [v11 value];
        v9 = [v14 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v11;
    }

    else
    {
      v9 = 0;
      v4 = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  v3 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v4 = [v3 nlRouterId];

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
        goto LABEL_8;
      }
    }
  }

  v9 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v10 = [v9 requestId];

  if (v10)
  {
    v11 = [v10 value];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = [v10 value];
    v13 = [v12 length];

    if (v13)
    {
      v4 = v10;
LABEL_8:
      v11 = v4;
      v10 = v11;
      goto LABEL_10;
    }
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  v3 = [(NLRouterSchemaNLRouterClientEvent *)self whichEvent_Type];
  if (v3 - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA158[v3 - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)a3
{
  if (a3 - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EA198[a3 - 101];
  }
}

@end