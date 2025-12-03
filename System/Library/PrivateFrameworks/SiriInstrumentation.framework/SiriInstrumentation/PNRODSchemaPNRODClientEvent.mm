@interface PNRODSchemaPNRODClientEvent
+ (id)getInnerTypeStringByTag:(unint64_t)tag;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODClientEvent)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODClientEvent)initWithJSON:(id)n;
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
- (id)applySensitiveConditionsPolicy:(id)policy;
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
- (void)setPnrodIntelligenceFlowActionGrainSummary:(id)summary;
- (void)setPnrodIntelligenceFlowPlannerGrainSummary:(id)summary;
- (void)setPnrodIntelligenceFlowRequestGrainSummary:(id)summary;
- (void)setPnrodIntelligenceFlowResponseGenerationComponentSummary:(id)summary;
- (void)setPnrodIntelligenceFlowSessionSummary:(id)summary;
- (void)setPnrodPNRODIntelligenceFlowPlannerComponentSummary:(id)summary;
- (void)setPnrodSiriTurnGrainSummary:(id)summary;
- (void)setPnronIntelligenceFlowExecutorComponentSummary:(id)summary;
- (void)setPnronScheduleDebugSummary:(id)summary;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODClientEvent

- (PNRODSchemaPNRODClientEvent)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v32.receiver = self;
  v32.super_class = PNRODSchemaPNRODClientEvent;
  v5 = [(PNRODSchemaPNRODClientEvent *)&v32 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"eventMetadata"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PNRODSchemaPNRODClientEventMetadata alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODClientEvent *)v5 setEventMetadata:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODSiriTurnGrainSummary alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodSiriTurnGrainSummary:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODIntelligenceFlowRequestGrainSummary alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowRequestGrainSummary:v11];
    }

    v30 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODIntelligenceFlowPlannerGrainSummary alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowPlannerGrainSummary:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODIntelligenceFlowActionGrainSummary alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowActionGrainSummary:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODIntelligenceFlowSessionSummary alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowSessionSummary:v17];
    }

    v31 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodPNRODIntelligenceFlowPlannerComponentSummary:v19];
    }

    v20 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnrodIntelligenceFlowResponseGenerationComponentSummary:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODIntelligenceFlowExecutorComponentSummary alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODClientEvent *)v5 setPnronIntelligenceFlowExecutorComponentSummary:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"pnronScheduleDebugSummary"];
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

- (PNRODSchemaPNRODClientEvent)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODClientEvent *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODClientEvent *)self dictionaryRepresentation];
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
    eventMetadata = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
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

  if (self->_pnrodIntelligenceFlowActionGrainSummary)
  {
    pnrodIntelligenceFlowActionGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    dictionaryRepresentation2 = [pnrodIntelligenceFlowActionGrainSummary dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pnrodIntelligenceFlowActionGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowPlannerGrainSummary)
  {
    pnrodIntelligenceFlowPlannerGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    dictionaryRepresentation3 = [pnrodIntelligenceFlowPlannerGrainSummary dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pnrodIntelligenceFlowPlannerGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowRequestGrainSummary)
  {
    pnrodIntelligenceFlowRequestGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    dictionaryRepresentation4 = [pnrodIntelligenceFlowRequestGrainSummary dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pnrodIntelligenceFlowRequestGrainSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowResponseGenerationComponentSummary)
  {
    pnrodIntelligenceFlowResponseGenerationComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    dictionaryRepresentation5 = [pnrodIntelligenceFlowResponseGenerationComponentSummary dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"pnrodIntelligenceFlowResponseGenerationComponentSummary"];
    }
  }

  if (self->_pnrodIntelligenceFlowSessionSummary)
  {
    pnrodIntelligenceFlowSessionSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    dictionaryRepresentation6 = [pnrodIntelligenceFlowSessionSummary dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"pnrodIntelligenceFlowSessionSummary"];
    }
  }

  if (self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary)
  {
    pnrodPNRODIntelligenceFlowPlannerComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    dictionaryRepresentation7 = [pnrodPNRODIntelligenceFlowPlannerComponentSummary dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pnrodPNRODIntelligenceFlowPlannerComponentSummary"];
    }
  }

  if (self->_pnrodSiriTurnGrainSummary)
  {
    pnrodSiriTurnGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    dictionaryRepresentation8 = [pnrodSiriTurnGrainSummary dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pnrodSiriTurnGrainSummary"];
    }
  }

  if (self->_pnronIntelligenceFlowExecutorComponentSummary)
  {
    pnronIntelligenceFlowExecutorComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    dictionaryRepresentation9 = [pnronIntelligenceFlowExecutorComponentSummary dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"pnronIntelligenceFlowExecutorComponentSummary"];
    }
  }

  if (self->_pnronScheduleDebugSummary)
  {
    pnronScheduleDebugSummary = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    dictionaryRepresentation10 = [pnronScheduleDebugSummary dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"pnronScheduleDebugSummary"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"pnronScheduleDebugSummary"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_53;
  }

  whichEvent_Type = self->_whichEvent_Type;
  if (whichEvent_Type != [equalCopy whichEvent_Type])
  {
    goto LABEL_53;
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  eventMetadata2 = [equalCopy eventMetadata];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  eventMetadata3 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  if (eventMetadata3)
  {
    v9 = eventMetadata3;
    eventMetadata4 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
    eventMetadata5 = [equalCopy eventMetadata];
    v12 = [eventMetadata4 isEqual:eventMetadata5];

    if (!v12)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  eventMetadata2 = [equalCopy pnrodSiriTurnGrainSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodSiriTurnGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  if (pnrodSiriTurnGrainSummary)
  {
    v14 = pnrodSiriTurnGrainSummary;
    pnrodSiriTurnGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    pnrodSiriTurnGrainSummary3 = [equalCopy pnrodSiriTurnGrainSummary];
    v17 = [pnrodSiriTurnGrainSummary2 isEqual:pnrodSiriTurnGrainSummary3];

    if (!v17)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  eventMetadata2 = [equalCopy pnrodIntelligenceFlowRequestGrainSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodIntelligenceFlowRequestGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  if (pnrodIntelligenceFlowRequestGrainSummary)
  {
    v19 = pnrodIntelligenceFlowRequestGrainSummary;
    pnrodIntelligenceFlowRequestGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    pnrodIntelligenceFlowRequestGrainSummary3 = [equalCopy pnrodIntelligenceFlowRequestGrainSummary];
    v22 = [pnrodIntelligenceFlowRequestGrainSummary2 isEqual:pnrodIntelligenceFlowRequestGrainSummary3];

    if (!v22)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  eventMetadata2 = [equalCopy pnrodIntelligenceFlowPlannerGrainSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodIntelligenceFlowPlannerGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  if (pnrodIntelligenceFlowPlannerGrainSummary)
  {
    v24 = pnrodIntelligenceFlowPlannerGrainSummary;
    pnrodIntelligenceFlowPlannerGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    pnrodIntelligenceFlowPlannerGrainSummary3 = [equalCopy pnrodIntelligenceFlowPlannerGrainSummary];
    v27 = [pnrodIntelligenceFlowPlannerGrainSummary2 isEqual:pnrodIntelligenceFlowPlannerGrainSummary3];

    if (!v27)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  eventMetadata2 = [equalCopy pnrodIntelligenceFlowActionGrainSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodIntelligenceFlowActionGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  if (pnrodIntelligenceFlowActionGrainSummary)
  {
    v29 = pnrodIntelligenceFlowActionGrainSummary;
    pnrodIntelligenceFlowActionGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    pnrodIntelligenceFlowActionGrainSummary3 = [equalCopy pnrodIntelligenceFlowActionGrainSummary];
    v32 = [pnrodIntelligenceFlowActionGrainSummary2 isEqual:pnrodIntelligenceFlowActionGrainSummary3];

    if (!v32)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  eventMetadata2 = [equalCopy pnrodIntelligenceFlowSessionSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodIntelligenceFlowSessionSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  if (pnrodIntelligenceFlowSessionSummary)
  {
    v34 = pnrodIntelligenceFlowSessionSummary;
    pnrodIntelligenceFlowSessionSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    pnrodIntelligenceFlowSessionSummary3 = [equalCopy pnrodIntelligenceFlowSessionSummary];
    v37 = [pnrodIntelligenceFlowSessionSummary2 isEqual:pnrodIntelligenceFlowSessionSummary3];

    if (!v37)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  eventMetadata2 = [equalCopy pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  if (pnrodPNRODIntelligenceFlowPlannerComponentSummary)
  {
    v39 = pnrodPNRODIntelligenceFlowPlannerComponentSummary;
    pnrodPNRODIntelligenceFlowPlannerComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    pnrodPNRODIntelligenceFlowPlannerComponentSummary3 = [equalCopy pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    v42 = [pnrodPNRODIntelligenceFlowPlannerComponentSummary2 isEqual:pnrodPNRODIntelligenceFlowPlannerComponentSummary3];

    if (!v42)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  eventMetadata2 = [equalCopy pnrodIntelligenceFlowResponseGenerationComponentSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnrodIntelligenceFlowResponseGenerationComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  if (pnrodIntelligenceFlowResponseGenerationComponentSummary)
  {
    v44 = pnrodIntelligenceFlowResponseGenerationComponentSummary;
    pnrodIntelligenceFlowResponseGenerationComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    pnrodIntelligenceFlowResponseGenerationComponentSummary3 = [equalCopy pnrodIntelligenceFlowResponseGenerationComponentSummary];
    v47 = [pnrodIntelligenceFlowResponseGenerationComponentSummary2 isEqual:pnrodIntelligenceFlowResponseGenerationComponentSummary3];

    if (!v47)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  eventMetadata2 = [equalCopy pnronIntelligenceFlowExecutorComponentSummary];
  if ((eventMetadata != 0) == (eventMetadata2 == 0))
  {
    goto LABEL_52;
  }

  pnronIntelligenceFlowExecutorComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  if (pnronIntelligenceFlowExecutorComponentSummary)
  {
    v49 = pnronIntelligenceFlowExecutorComponentSummary;
    pnronIntelligenceFlowExecutorComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    pnronIntelligenceFlowExecutorComponentSummary3 = [equalCopy pnronIntelligenceFlowExecutorComponentSummary];
    v52 = [pnronIntelligenceFlowExecutorComponentSummary2 isEqual:pnronIntelligenceFlowExecutorComponentSummary3];

    if (!v52)
    {
      goto LABEL_53;
    }
  }

  else
  {
  }

  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
  eventMetadata2 = [equalCopy pnronScheduleDebugSummary];
  if ((eventMetadata != 0) != (eventMetadata2 == 0))
  {
    pnronScheduleDebugSummary = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    if (!pnronScheduleDebugSummary)
    {

LABEL_56:
      v58 = 1;
      goto LABEL_54;
    }

    v54 = pnronScheduleDebugSummary;
    pnronScheduleDebugSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    pnronScheduleDebugSummary3 = [equalCopy pnronScheduleDebugSummary];
    v57 = [pnronScheduleDebugSummary2 isEqual:pnronScheduleDebugSummary3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];

  if (eventMetadata)
  {
    eventMetadata2 = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
    PBDataWriterWriteSubmessage();
  }

  pnrodSiriTurnGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];

  if (pnrodSiriTurnGrainSummary)
  {
    pnrodSiriTurnGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodIntelligenceFlowRequestGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];

  if (pnrodIntelligenceFlowRequestGrainSummary)
  {
    pnrodIntelligenceFlowRequestGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodIntelligenceFlowPlannerGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];

  if (pnrodIntelligenceFlowPlannerGrainSummary)
  {
    pnrodIntelligenceFlowPlannerGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodIntelligenceFlowActionGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];

  if (pnrodIntelligenceFlowActionGrainSummary)
  {
    pnrodIntelligenceFlowActionGrainSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodIntelligenceFlowSessionSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];

  if (pnrodIntelligenceFlowSessionSummary)
  {
    pnrodIntelligenceFlowSessionSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];

  if (pnrodPNRODIntelligenceFlowPlannerComponentSummary)
  {
    pnrodPNRODIntelligenceFlowPlannerComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  pnrodIntelligenceFlowResponseGenerationComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];

  if (pnrodIntelligenceFlowResponseGenerationComponentSummary)
  {
    pnrodIntelligenceFlowResponseGenerationComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  pnronIntelligenceFlowExecutorComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];

  if (pnronIntelligenceFlowExecutorComponentSummary)
  {
    pnronIntelligenceFlowExecutorComponentSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
    PBDataWriterWriteSubmessage();
  }

  pnronScheduleDebugSummary = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];

  v23 = toCopy;
  if (pnronScheduleDebugSummary)
  {
    pnronScheduleDebugSummary2 = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
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

- (void)setPnronScheduleDebugSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnronScheduleDebugSummary = self->_pnronScheduleDebugSummary;
  self->_pnronScheduleDebugSummary = summaryCopy;
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

- (void)setPnronIntelligenceFlowExecutorComponentSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnronIntelligenceFlowExecutorComponentSummary = self->_pnronIntelligenceFlowExecutorComponentSummary;
  self->_pnronIntelligenceFlowExecutorComponentSummary = summaryCopy;
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

- (void)setPnrodIntelligenceFlowResponseGenerationComponentSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowResponseGenerationComponentSummary = self->_pnrodIntelligenceFlowResponseGenerationComponentSummary;
  self->_pnrodIntelligenceFlowResponseGenerationComponentSummary = summaryCopy;
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

- (void)setPnrodPNRODIntelligenceFlowPlannerComponentSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodPNRODIntelligenceFlowPlannerComponentSummary = self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary;
  self->_pnrodPNRODIntelligenceFlowPlannerComponentSummary = summaryCopy;
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

- (void)setPnrodIntelligenceFlowSessionSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowSessionSummary = self->_pnrodIntelligenceFlowSessionSummary;
  self->_pnrodIntelligenceFlowSessionSummary = summaryCopy;
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

- (void)setPnrodIntelligenceFlowActionGrainSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowActionGrainSummary = self->_pnrodIntelligenceFlowActionGrainSummary;
  self->_pnrodIntelligenceFlowActionGrainSummary = summaryCopy;
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

- (void)setPnrodIntelligenceFlowPlannerGrainSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowPlannerGrainSummary = self->_pnrodIntelligenceFlowPlannerGrainSummary;
  self->_pnrodIntelligenceFlowPlannerGrainSummary = summaryCopy;
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

- (void)setPnrodIntelligenceFlowRequestGrainSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodIntelligenceFlowRequestGrainSummary = self->_pnrodIntelligenceFlowRequestGrainSummary;
  self->_pnrodIntelligenceFlowRequestGrainSummary = summaryCopy;
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

- (void)setPnrodSiriTurnGrainSummary:(id)summary
{
  summaryCopy = summary;
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
  if (!summaryCopy)
  {
    v13 = 0;
  }

  self->_whichEvent_Type = v13;
  pnrodSiriTurnGrainSummary = self->_pnrodSiriTurnGrainSummary;
  self->_pnrodSiriTurnGrainSummary = summaryCopy;
}

- (id)qualifiedMessageName
{
  whichEvent_Type = [(PNRODSchemaPNRODClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    return @"com.apple.aiml.siri.pnrod.PNRODClientEvent";
  }

  else
  {
    return off_1E78E0C18[whichEvent_Type - 101];
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODClientEvent;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  eventMetadata = [(PNRODSchemaPNRODClientEvent *)self eventMetadata];
  v7 = [eventMetadata applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODClientEvent *)self deleteEventMetadata];
  }

  pnrodSiriTurnGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodSiriTurnGrainSummary];
  v10 = [pnrodSiriTurnGrainSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodSiriTurnGrainSummary];
  }

  pnrodIntelligenceFlowRequestGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowRequestGrainSummary];
  v13 = [pnrodIntelligenceFlowRequestGrainSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowRequestGrainSummary];
  }

  pnrodIntelligenceFlowPlannerGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowPlannerGrainSummary];
  v16 = [pnrodIntelligenceFlowPlannerGrainSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowPlannerGrainSummary];
  }

  pnrodIntelligenceFlowActionGrainSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowActionGrainSummary];
  v19 = [pnrodIntelligenceFlowActionGrainSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowActionGrainSummary];
  }

  pnrodIntelligenceFlowSessionSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowSessionSummary];
  v22 = [pnrodIntelligenceFlowSessionSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowSessionSummary];
  }

  pnrodPNRODIntelligenceFlowPlannerComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodPNRODIntelligenceFlowPlannerComponentSummary];
  v25 = [pnrodPNRODIntelligenceFlowPlannerComponentSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodPNRODIntelligenceFlowPlannerComponentSummary];
  }

  pnrodIntelligenceFlowResponseGenerationComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnrodIntelligenceFlowResponseGenerationComponentSummary];
  v28 = [pnrodIntelligenceFlowResponseGenerationComponentSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnrodIntelligenceFlowResponseGenerationComponentSummary];
  }

  pnronIntelligenceFlowExecutorComponentSummary = [(PNRODSchemaPNRODClientEvent *)self pnronIntelligenceFlowExecutorComponentSummary];
  v31 = [pnronIntelligenceFlowExecutorComponentSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODClientEvent *)self deletePnronIntelligenceFlowExecutorComponentSummary];
  }

  pnronScheduleDebugSummary = [(PNRODSchemaPNRODClientEvent *)self pnronScheduleDebugSummary];
  v34 = [pnronScheduleDebugSummary applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
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
  whichEvent_Type = [(PNRODSchemaPNRODClientEvent *)self whichEvent_Type];
  if (whichEvent_Type - 101 > 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&self->super.super.super.super.isa + *off_1E78EAB48[whichEvent_Type - 101]);
  }

  return v4;
}

+ (id)getInnerTypeStringByTag:(unint64_t)tag
{
  if (tag - 101 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E78EAB90[tag - 101];
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