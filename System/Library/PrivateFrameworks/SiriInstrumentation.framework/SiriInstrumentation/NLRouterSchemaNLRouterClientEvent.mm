@interface NLRouterSchemaNLRouterClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterBridgeHandleContext)nlRouterBridgeHandleContext;
- (NLRouterSchemaNLRouterClientEvent)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterClientEvent)initWithJSON:(id)n;
- (NLRouterSchemaNLRouterHandleContext)nlRouterHandleContext;
- (NLRouterSchemaNLRouterInvalidDecisionEmitted)nLRouterInvalidDecisionEmitted;
- (NLRouterSchemaNLRouterPromptGenerated)nlRouterPromptGenerated;
- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)nlRouterPromptGenerationSignalsCaptured;
- (NLRouterSchemaNLRouterSubComponentHandleContext)nlRouterSubComponentHandleContext;
- (NLRouterSchemaNLRouterSubComponentSetupContext)nlRouterSubComponentSetupContext;
- (NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1)nlRouterSubComponentTriggeredHeuristicRuleTier1;
- (NSData)jsonData;
- (SISchemaInstrumentationMessage)innerEvent;
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setNLRouterInvalidDecisionEmitted:(id)emitted;
- (void)setNlRouterBridgeHandleContext:(id)context;
- (void)setNlRouterHandleContext:(id)context;
- (void)setNlRouterPromptGenerated:(id)generated;
- (void)setNlRouterPromptGenerationSignalsCaptured:(id)captured;
- (void)setNlRouterSubComponentHandleContext:(id)context;
- (void)setNlRouterSubComponentSetupContext:(id)context;
- (void)setNlRouterSubComponentTriggeredHeuristicRuleTier1:(id)tier1;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterClientEvent

- (id)qualifiedMessageName
{
  whichEvent_Type = [(NLRouterSchemaNLRouterClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    return @"com.apple.aiml.siri.nlrouter.NLRouterClientEvent";
  }

  else
  {
    return off_1E78DB5D0[whichEvent_Type - 101];
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

- (NLRouterSchemaNLRouterClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = NLRouterSchemaNLRouterClientEvent;
  v5 = [(NLRouterSchemaNLRouterClientEvent *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLRouterSchemaNLRouterClientEventMetadata alloc] initWithDictionary:v6];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setEventMetadata:v7];
    }

    v27 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterHandleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLRouterSchemaNLRouterHandleContext alloc] initWithDictionary:v8];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterHandleContext:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:{@"nlRouterBridgeHandleContext", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLRouterSchemaNLRouterBridgeHandleContext alloc] initWithDictionary:v10];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterBridgeHandleContext:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[NLRouterSchemaNLRouterSubComponentHandleContext alloc] initWithDictionary:v12];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentHandleContext:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[NLRouterSchemaNLRouterSubComponentSetupContext alloc] initWithDictionary:v14];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentSetupContext:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[NLRouterSchemaNLRouterSubComponentTriggeredHeuristicRuleTier1 alloc] initWithDictionary:v16];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterSubComponentTriggeredHeuristicRuleTier1:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured alloc] initWithDictionary:v18];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterPromptGenerationSignalsCaptured:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"nlRouterPromptGenerated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[NLRouterSchemaNLRouterPromptGenerated alloc] initWithDictionary:v20];
      [(NLRouterSchemaNLRouterClientEvent *)v5 setNlRouterPromptGenerated:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
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

- (NLRouterSchemaNLRouterClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterClientEvent *)self dictionaryRepresentation];
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
  if (self->_eventMetadata)
  {
    eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    dictionaryRepresentation = [eventMetadata dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"eventMetadata"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"eventMetadata"];
    }
  }

  if (self->_nLRouterInvalidDecisionEmitted)
  {
    nLRouterInvalidDecisionEmitted = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    dictionaryRepresentation2 = [nLRouterInvalidDecisionEmitted dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"nLRouterInvalidDecisionEmitted"];
    }
  }

  if (self->_nlRouterBridgeHandleContext)
  {
    nlRouterBridgeHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    dictionaryRepresentation3 = [nlRouterBridgeHandleContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"nlRouterBridgeHandleContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"nlRouterBridgeHandleContext"];
    }
  }

  if (self->_nlRouterHandleContext)
  {
    nlRouterHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    dictionaryRepresentation4 = [nlRouterHandleContext dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"nlRouterHandleContext"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"nlRouterHandleContext"];
    }
  }

  if (self->_nlRouterPromptGenerated)
  {
    nlRouterPromptGenerated = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    dictionaryRepresentation5 = [nlRouterPromptGenerated dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"nlRouterPromptGenerated"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"nlRouterPromptGenerated"];
    }
  }

  if (self->_nlRouterPromptGenerationSignalsCaptured)
  {
    nlRouterPromptGenerationSignalsCaptured = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    dictionaryRepresentation6 = [nlRouterPromptGenerationSignalsCaptured dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"nlRouterPromptGenerationSignalsCaptured"];
    }
  }

  if (self->_nlRouterSubComponentHandleContext)
  {
    nlRouterSubComponentHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    dictionaryRepresentation7 = [nlRouterSubComponentHandleContext dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"nlRouterSubComponentHandleContext"];
    }
  }

  if (self->_nlRouterSubComponentSetupContext)
  {
    nlRouterSubComponentSetupContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    dictionaryRepresentation8 = [nlRouterSubComponentSetupContext dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"nlRouterSubComponentSetupContext"];
    }
  }

  if (self->_nlRouterSubComponentTriggeredHeuristicRuleTier1)
  {
    nlRouterSubComponentTriggeredHeuristicRuleTier1 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    dictionaryRepresentation9 = [nlRouterSubComponentTriggeredHeuristicRuleTier1 dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"nlRouterSubComponentTriggeredHeuristicRuleTier1"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_48;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_48;
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  eventMetadata3 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  eventMetadata2 = [equalCopy nlRouterHandleContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  if (nlRouterHandleContext)
  {
    v14 = nlRouterHandleContext;
    nlRouterHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    nlRouterHandleContext3 = [equalCopy nlRouterHandleContext];
    v17 = [nlRouterHandleContext2 isEqual:nlRouterHandleContext3];

    if (!v17)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  eventMetadata2 = [equalCopy nlRouterBridgeHandleContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterBridgeHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  if (nlRouterBridgeHandleContext)
  {
    v19 = nlRouterBridgeHandleContext;
    nlRouterBridgeHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    nlRouterBridgeHandleContext3 = [equalCopy nlRouterBridgeHandleContext];
    v22 = [nlRouterBridgeHandleContext2 isEqual:nlRouterBridgeHandleContext3];

    if (!v22)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  eventMetadata2 = [equalCopy nlRouterSubComponentHandleContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterSubComponentHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  if (nlRouterSubComponentHandleContext)
  {
    v24 = nlRouterSubComponentHandleContext;
    nlRouterSubComponentHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    nlRouterSubComponentHandleContext3 = [equalCopy nlRouterSubComponentHandleContext];
    v27 = [nlRouterSubComponentHandleContext2 isEqual:nlRouterSubComponentHandleContext3];

    if (!v27)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  eventMetadata2 = [equalCopy nlRouterSubComponentSetupContext];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterSubComponentSetupContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  if (nlRouterSubComponentSetupContext)
  {
    v29 = nlRouterSubComponentSetupContext;
    nlRouterSubComponentSetupContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    nlRouterSubComponentSetupContext3 = [equalCopy nlRouterSubComponentSetupContext];
    v32 = [nlRouterSubComponentSetupContext2 isEqual:nlRouterSubComponentSetupContext3];

    if (!v32)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  eventMetadata2 = [equalCopy nlRouterSubComponentTriggeredHeuristicRuleTier1];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  if (nlRouterSubComponentTriggeredHeuristicRuleTier1)
  {
    v34 = nlRouterSubComponentTriggeredHeuristicRuleTier1;
    nlRouterSubComponentTriggeredHeuristicRuleTier12 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    nlRouterSubComponentTriggeredHeuristicRuleTier13 = [equalCopy nlRouterSubComponentTriggeredHeuristicRuleTier1];
    v37 = [nlRouterSubComponentTriggeredHeuristicRuleTier12 isEqual:nlRouterSubComponentTriggeredHeuristicRuleTier13];

    if (!v37)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  eventMetadata2 = [equalCopy nlRouterPromptGenerationSignalsCaptured];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterPromptGenerationSignalsCaptured = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  if (nlRouterPromptGenerationSignalsCaptured)
  {
    v39 = nlRouterPromptGenerationSignalsCaptured;
    nlRouterPromptGenerationSignalsCaptured2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    nlRouterPromptGenerationSignalsCaptured3 = [equalCopy nlRouterPromptGenerationSignalsCaptured];
    v42 = [nlRouterPromptGenerationSignalsCaptured2 isEqual:nlRouterPromptGenerationSignalsCaptured3];

    if (!v42)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  eventMetadata2 = [equalCopy nlRouterPromptGenerated];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_47;
  }

  nlRouterPromptGenerated = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  if (nlRouterPromptGenerated)
  {
    v44 = nlRouterPromptGenerated;
    nlRouterPromptGenerated2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    nlRouterPromptGenerated3 = [equalCopy nlRouterPromptGenerated];
    v47 = [nlRouterPromptGenerated2 isEqual:nlRouterPromptGenerated3];

    if (!v47)
    {
      goto LABEL_48;
    }
  }

  else
  {
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
  eventMetadata2 = [equalCopy nLRouterInvalidDecisionEmitted];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    nLRouterInvalidDecisionEmitted = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    if (!nLRouterInvalidDecisionEmitted)
    {

LABEL_51:
      v53 = 1;
      goto LABEL_49;
    }

    v49 = nLRouterInvalidDecisionEmitted;
    nLRouterInvalidDecisionEmitted2 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    nLRouterInvalidDecisionEmitted3 = [equalCopy nLRouterInvalidDecisionEmitted];
    v52 = [nLRouterInvalidDecisionEmitted2 isEqual:nLRouterInvalidDecisionEmitted3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  nlRouterHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];

  if (nlRouterHandleContext)
  {
    nlRouterHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
    PBDataWriterWriteSubmessage();
  }

  nlRouterBridgeHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];

  if (nlRouterBridgeHandleContext)
  {
    nlRouterBridgeHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
    PBDataWriterWriteSubmessage();
  }

  nlRouterSubComponentHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];

  if (nlRouterSubComponentHandleContext)
  {
    nlRouterSubComponentHandleContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
    PBDataWriterWriteSubmessage();
  }

  nlRouterSubComponentSetupContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];

  if (nlRouterSubComponentSetupContext)
  {
    nlRouterSubComponentSetupContext2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
    PBDataWriterWriteSubmessage();
  }

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];

  if (nlRouterSubComponentTriggeredHeuristicRuleTier1)
  {
    nlRouterSubComponentTriggeredHeuristicRuleTier12 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
    PBDataWriterWriteSubmessage();
  }

  nlRouterPromptGenerationSignalsCaptured = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];

  if (nlRouterPromptGenerationSignalsCaptured)
  {
    nlRouterPromptGenerationSignalsCaptured2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
    PBDataWriterWriteSubmessage();
  }

  nlRouterPromptGenerated = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];

  if (nlRouterPromptGenerated)
  {
    nlRouterPromptGenerated2 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
    PBDataWriterWriteSubmessage();
  }

  nLRouterInvalidDecisionEmitted = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];

  v21 = toCopy;
  if (nLRouterInvalidDecisionEmitted)
  {
    nLRouterInvalidDecisionEmitted2 = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
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

- (void)setNLRouterInvalidDecisionEmitted:(id)emitted
{
  emittedCopy = emitted;
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
  if (!emittedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nLRouterInvalidDecisionEmitted = self->_nLRouterInvalidDecisionEmitted;
  self->_nLRouterInvalidDecisionEmitted = emittedCopy;
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

- (void)setNlRouterPromptGenerated:(id)generated
{
  generatedCopy = generated;
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
  if (!generatedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterPromptGenerated = self->_nlRouterPromptGenerated;
  self->_nlRouterPromptGenerated = generatedCopy;
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

- (void)setNlRouterPromptGenerationSignalsCaptured:(id)captured
{
  capturedCopy = captured;
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
  if (!capturedCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterPromptGenerationSignalsCaptured = self->_nlRouterPromptGenerationSignalsCaptured;
  self->_nlRouterPromptGenerationSignalsCaptured = capturedCopy;
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

- (void)setNlRouterSubComponentTriggeredHeuristicRuleTier1:(id)tier1
{
  tier1Copy = tier1;
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
  if (!tier1Copy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentTriggeredHeuristicRuleTier1 = self->_nlRouterSubComponentTriggeredHeuristicRuleTier1;
  self->_nlRouterSubComponentTriggeredHeuristicRuleTier1 = tier1Copy;
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

- (void)setNlRouterSubComponentSetupContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentSetupContext = self->_nlRouterSubComponentSetupContext;
  self->_nlRouterSubComponentSetupContext = contextCopy;
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

- (void)setNlRouterSubComponentHandleContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterSubComponentHandleContext = self->_nlRouterSubComponentHandleContext;
  self->_nlRouterSubComponentHandleContext = contextCopy;
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

- (void)setNlRouterBridgeHandleContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterBridgeHandleContext = self->_nlRouterBridgeHandleContext;
  self->_nlRouterBridgeHandleContext = contextCopy;
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

- (void)setNlRouterHandleContext:(id)context
{
  contextCopy = context;
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
  if (!contextCopy)
  {
    v12 = 0;
  }

  self->_whichEvent_Type = v12;
  nlRouterHandleContext = self->_nlRouterHandleContext;
  self->_nlRouterHandleContext = contextCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = NLRouterSchemaNLRouterClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteEventMetadata];
  }

  nlRouterHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterHandleContext];
  v10 = [nlRouterHandleContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterHandleContext];
  }

  nlRouterBridgeHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterBridgeHandleContext];
  v13 = [nlRouterBridgeHandleContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterBridgeHandleContext];
  }

  nlRouterSubComponentHandleContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentHandleContext];
  v16 = [nlRouterSubComponentHandleContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentHandleContext];
  }

  nlRouterSubComponentSetupContext = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentSetupContext];
  v19 = [nlRouterSubComponentSetupContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentSetupContext];
  }

  nlRouterSubComponentTriggeredHeuristicRuleTier1 = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterSubComponentTriggeredHeuristicRuleTier1];
  v22 = [nlRouterSubComponentTriggeredHeuristicRuleTier1 applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterSubComponentTriggeredHeuristicRuleTier1];
  }

  nlRouterPromptGenerationSignalsCaptured = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerationSignalsCaptured];
  v25 = [nlRouterPromptGenerationSignalsCaptured applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterPromptGenerationSignalsCaptured];
  }

  nlRouterPromptGenerated = [(NLRouterSchemaNLRouterClientEvent *)self nlRouterPromptGenerated];
  v28 = [nlRouterPromptGenerated applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(NLRouterSchemaNLRouterClientEvent *)self deleteNlRouterPromptGenerated];
  }

  nLRouterInvalidDecisionEmitted = [(NLRouterSchemaNLRouterClientEvent *)self nLRouterInvalidDecisionEmitted];
  v31 = [nLRouterInvalidDecisionEmitted applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
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
  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  nlRouterId = [eventMetadata nlRouterId];

  if (nlRouterId && ([nlRouterId value], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(nlRouterId, "value"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = 42;
  }

  else
  {
    eventMetadata2 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
    requestId = [eventMetadata2 requestId];

    if (requestId)
    {
      value = [requestId value];
      if (value)
      {
        v13 = value;
        value2 = [requestId value];
        v9 = [value2 length] != 0;
      }

      else
      {
        v9 = 0;
      }

      nlRouterId = requestId;
    }

    else
    {
      v9 = 0;
      nlRouterId = 0;
    }
  }

  return v9;
}

- (id)getComponentId
{
  eventMetadata = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  nlRouterId = [eventMetadata nlRouterId];

  if (nlRouterId)
  {
    value = [nlRouterId value];
    if (value)
    {
      v6 = value;
      value2 = [nlRouterId value];
      v8 = [value2 length];

      if (v8)
      {
        goto LABEL_8;
      }
    }
  }

  eventMetadata2 = [(NLRouterSchemaNLRouterClientEvent *)self eventMetadata];
  requestId = [eventMetadata2 requestId];

  if (requestId)
  {
    value3 = [requestId value];
    if (!value3)
    {
      goto LABEL_10;
    }

    value4 = [requestId value];
    v13 = [value4 length];

    if (v13)
    {
      nlRouterId = requestId;
LABEL_8:
      value3 = nlRouterId;
      requestId = value3;
      goto LABEL_10;
    }
  }

  value3 = 0;
LABEL_10:

  return value3;
}

- (SISchemaInstrumentationMessage)innerEvent
{
  whichEvent_Type = [(NLRouterSchemaNLRouterClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 7)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EA158[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E78EA198[tag - 101];
  }
}

@end