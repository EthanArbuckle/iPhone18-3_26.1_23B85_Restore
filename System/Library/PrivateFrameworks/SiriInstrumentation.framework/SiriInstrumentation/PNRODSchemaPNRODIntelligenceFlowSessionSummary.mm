@interface PNRODSchemaPNRODIntelligenceFlowSessionSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowSessionSummary

- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = PNRODSchemaPNRODIntelligenceFlowSessionSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"clientSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setClientSessionId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"rawSessionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setRawSessionId:v9];
    }

    v27 = v6;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"standardPlannerSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setStandardPlannerSetupTime:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:{@"queryDecorationServiceSetupTime", v8}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setQueryDecorationServiceSetupTime:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"fullPlannerServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setFullPlannerServiceSetupTime:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"planOverridesServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setPlanOverridesServiceSetupTime:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"planResolverServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setPlanResolverServiceSetupTime:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationServiceSetupTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setResponseGenerationServiceSetupTime:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)v5 setFailureInfo:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowSessionSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self dictionaryRepresentation];
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
  if (self->_clientSessionId)
  {
    clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    dictionaryRepresentation = [clientSessionId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"clientSessionId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"clientSessionId"];
    }
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    dictionaryRepresentation2 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_fullPlannerServiceSetupTime)
  {
    fullPlannerServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    dictionaryRepresentation3 = [fullPlannerServiceSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fullPlannerServiceSetupTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"fullPlannerServiceSetupTime"];
    }
  }

  if (self->_planOverridesServiceSetupTime)
  {
    planOverridesServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    dictionaryRepresentation4 = [planOverridesServiceSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"planOverridesServiceSetupTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"planOverridesServiceSetupTime"];
    }
  }

  if (self->_planResolverServiceSetupTime)
  {
    planResolverServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    dictionaryRepresentation5 = [planResolverServiceSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"planResolverServiceSetupTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"planResolverServiceSetupTime"];
    }
  }

  if (self->_queryDecorationServiceSetupTime)
  {
    queryDecorationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    dictionaryRepresentation6 = [queryDecorationServiceSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"queryDecorationServiceSetupTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"queryDecorationServiceSetupTime"];
    }
  }

  if (self->_rawSessionId)
  {
    rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    dictionaryRepresentation7 = [rawSessionId dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"rawSessionId"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"rawSessionId"];
    }
  }

  if (self->_responseGenerationServiceSetupTime)
  {
    responseGenerationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    dictionaryRepresentation8 = [responseGenerationServiceSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"responseGenerationServiceSetupTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"responseGenerationServiceSetupTime"];
    }
  }

  if (self->_standardPlannerSetupTime)
  {
    standardPlannerSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    dictionaryRepresentation9 = [standardPlannerSetupTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"standardPlannerSetupTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"standardPlannerSetupTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_clientSessionId hash];
  v4 = [(SISchemaUUID *)self->_rawSessionId hash]^ v3;
  v5 = [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerSetupTime hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationServiceSetupTime hash];
  v7 = [(PNRODSchemaPNRODMetricDuration *)self->_fullPlannerServiceSetupTime hash];
  v8 = v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planOverridesServiceSetupTime hash];
  v9 = v6 ^ v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planResolverServiceSetupTime hash];
  v10 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationServiceSetupTime hash];
  return v9 ^ v10 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  clientSessionId2 = [equalCopy clientSessionId];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  clientSessionId3 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  if (clientSessionId3)
  {
    v8 = clientSessionId3;
    clientSessionId4 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    clientSessionId5 = [equalCopy clientSessionId];
    v11 = [clientSessionId4 isEqual:clientSessionId5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  clientSessionId2 = [equalCopy rawSessionId];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  if (rawSessionId)
  {
    v13 = rawSessionId;
    rawSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    rawSessionId3 = [equalCopy rawSessionId];
    v16 = [rawSessionId2 isEqual:rawSessionId3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  clientSessionId2 = [equalCopy standardPlannerSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  standardPlannerSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  if (standardPlannerSetupTime)
  {
    v18 = standardPlannerSetupTime;
    standardPlannerSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    standardPlannerSetupTime3 = [equalCopy standardPlannerSetupTime];
    v21 = [standardPlannerSetupTime2 isEqual:standardPlannerSetupTime3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  clientSessionId2 = [equalCopy queryDecorationServiceSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  queryDecorationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  if (queryDecorationServiceSetupTime)
  {
    v23 = queryDecorationServiceSetupTime;
    queryDecorationServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    queryDecorationServiceSetupTime3 = [equalCopy queryDecorationServiceSetupTime];
    v26 = [queryDecorationServiceSetupTime2 isEqual:queryDecorationServiceSetupTime3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  clientSessionId2 = [equalCopy fullPlannerServiceSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  fullPlannerServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  if (fullPlannerServiceSetupTime)
  {
    v28 = fullPlannerServiceSetupTime;
    fullPlannerServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    fullPlannerServiceSetupTime3 = [equalCopy fullPlannerServiceSetupTime];
    v31 = [fullPlannerServiceSetupTime2 isEqual:fullPlannerServiceSetupTime3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  clientSessionId2 = [equalCopy planOverridesServiceSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  planOverridesServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  if (planOverridesServiceSetupTime)
  {
    v33 = planOverridesServiceSetupTime;
    planOverridesServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    planOverridesServiceSetupTime3 = [equalCopy planOverridesServiceSetupTime];
    v36 = [planOverridesServiceSetupTime2 isEqual:planOverridesServiceSetupTime3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  clientSessionId2 = [equalCopy planResolverServiceSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  planResolverServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  if (planResolverServiceSetupTime)
  {
    v38 = planResolverServiceSetupTime;
    planResolverServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    planResolverServiceSetupTime3 = [equalCopy planResolverServiceSetupTime];
    v41 = [planResolverServiceSetupTime2 isEqual:planResolverServiceSetupTime3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  clientSessionId2 = [equalCopy responseGenerationServiceSetupTime];
  if ((clientSessionId != 0) == (clientSessionId2 == 0))
  {
    goto LABEL_46;
  }

  responseGenerationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  if (responseGenerationServiceSetupTime)
  {
    v43 = responseGenerationServiceSetupTime;
    responseGenerationServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    responseGenerationServiceSetupTime3 = [equalCopy responseGenerationServiceSetupTime];
    v46 = [responseGenerationServiceSetupTime2 isEqual:responseGenerationServiceSetupTime3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
  clientSessionId2 = [equalCopy failureInfo];
  if ((clientSessionId != 0) != (clientSessionId2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    if (!failureInfo)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v51 = [failureInfo2 isEqual:failureInfo3];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];

  if (clientSessionId)
  {
    clientSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
    PBDataWriterWriteSubmessage();
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];

  if (rawSessionId)
  {
    rawSessionId2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
    PBDataWriterWriteSubmessage();
  }

  standardPlannerSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];

  if (standardPlannerSetupTime)
  {
    standardPlannerSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];

  if (queryDecorationServiceSetupTime)
  {
    queryDecorationServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  fullPlannerServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];

  if (fullPlannerServiceSetupTime)
  {
    fullPlannerServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  planOverridesServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];

  if (planOverridesServiceSetupTime)
  {
    planOverridesServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  planResolverServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];

  if (planResolverServiceSetupTime)
  {
    planResolverServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];

  if (responseGenerationServiceSetupTime)
  {
    responseGenerationServiceSetupTime2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];

  v21 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v21 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODIntelligenceFlowSessionSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  clientSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self clientSessionId];
  v7 = [clientSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteClientSessionId];
  }

  rawSessionId = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self rawSessionId];
  v10 = [rawSessionId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteRawSessionId];
  }

  standardPlannerSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self standardPlannerSetupTime];
  v13 = [standardPlannerSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteStandardPlannerSetupTime];
  }

  queryDecorationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self queryDecorationServiceSetupTime];
  v16 = [queryDecorationServiceSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteQueryDecorationServiceSetupTime];
  }

  fullPlannerServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self fullPlannerServiceSetupTime];
  v19 = [fullPlannerServiceSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteFullPlannerServiceSetupTime];
  }

  planOverridesServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planOverridesServiceSetupTime];
  v22 = [planOverridesServiceSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deletePlanOverridesServiceSetupTime];
  }

  planResolverServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self planResolverServiceSetupTime];
  v25 = [planResolverServiceSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deletePlanResolverServiceSetupTime];
  }

  responseGenerationServiceSetupTime = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self responseGenerationServiceSetupTime];
  v28 = [responseGenerationServiceSetupTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteResponseGenerationServiceSetupTime];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self failureInfo];
  v31 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODIntelligenceFlowSessionSummary *)self deleteFailureInfo];
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