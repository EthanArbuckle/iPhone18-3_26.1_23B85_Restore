@interface PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFullPlannerInferenceInvocationSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v68.receiver = self;
  v68.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)&v68 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setClientRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"wasPlanOverridden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary setWasPlanOverridden:](v5, "setWasPlanOverridden:", [v12 BOOLValue]);
    }

    v56 = v12;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"modelAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setModelAssetVersion:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"fullPlannerInferenceInvocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary setFullPlannerInferenceInvocationSource:](v5, "setFullPlannerInferenceInvocationSource:", [v15 longLongValue]);
    }

    v54 = v15;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"standardPlannerMakePlanTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerMakePlanTime:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    objc_opt_class();
    v67 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerQueryDecorationTime:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    objc_opt_class();
    v66 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerPrescribedPlanGeneratorTime:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    objc_opt_class();
    v65 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerGeneratePlanTime:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"planResolverServiceHandleTime"];
    objc_opt_class();
    v64 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanResolverServiceHandleTime:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationServiceHandleTime"];
    objc_opt_class();
    v63 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setResponseGenerationServiceHandleTime:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"planOverridesServiceHandleTime"];
    objc_opt_class();
    v62 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v28];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanOverridesServiceHandleTime:v29];
    }

    v30 = [dictionaryCopy objectForKeyedSubscript:@"fullPlannerServiceHandleTime"];
    objc_opt_class();
    v61 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v30];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setFullPlannerServiceHandleTime:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    objc_opt_class();
    v60 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v32];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setFullPlannerModelInferenceCallTime:v33];
    }

    v53 = v16;
    v34 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v34];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTotalCollectInputsDuration:v35];
    }

    v59 = v6;
    v36 = [dictionaryCopy objectForKeyedSubscript:{@"queryDecorationSpanRetrievalDuration", v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v36];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationSpanRetrievalDuration:v37];
    }

    v58 = v8;
    v38 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v38];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationContextRetrievalDuration:v39];
    }

    v57 = v10;
    v40 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v40];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationToolRetrievalDuration:v41];
    }

    v55 = v13;
    v42 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v42];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTotalRankingDuration:v43];
    }

    v44 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v44];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTupleBuildingDuration:v45];
    }

    v46 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v46];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTupleRankingDuration:v47];
    }

    v48 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v48];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setFailureInfo:v49];
    }

    v50 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self dictionaryRepresentation];
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
  if (self->_clientRequestId)
  {
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
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

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
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

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary fullPlannerInferenceInvocationSource](self, "fullPlannerInferenceInvocationSource")}];
    [dictionary setObject:v10 forKeyedSubscript:@"fullPlannerInferenceInvocationSource"];
  }

  if (self->_fullPlannerModelInferenceCallTime)
  {
    fullPlannerModelInferenceCallTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    dictionaryRepresentation3 = [fullPlannerModelInferenceCallTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    }
  }

  if (self->_fullPlannerServiceHandleTime)
  {
    fullPlannerServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    dictionaryRepresentation4 = [fullPlannerServiceHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"fullPlannerServiceHandleTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"fullPlannerServiceHandleTime"];
    }
  }

  if (self->_modelAssetVersion)
  {
    modelAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
    v18 = [modelAssetVersion copy];
    [dictionary setObject:v18 forKeyedSubscript:@"modelAssetVersion"];
  }

  if (self->_planId)
  {
    planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    dictionaryRepresentation5 = [planId dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"planId"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_planOverridesServiceHandleTime)
  {
    planOverridesServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    dictionaryRepresentation6 = [planOverridesServiceHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"planOverridesServiceHandleTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"planOverridesServiceHandleTime"];
    }
  }

  if (self->_planResolverServiceHandleTime)
  {
    planResolverServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    dictionaryRepresentation7 = [planResolverServiceHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"planResolverServiceHandleTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"planResolverServiceHandleTime"];
    }
  }

  if (self->_queryDecorationContextRetrievalDuration)
  {
    queryDecorationContextRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    dictionaryRepresentation8 = [queryDecorationContextRetrievalDuration dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    }
  }

  if (self->_queryDecorationSpanRetrievalDuration)
  {
    queryDecorationSpanRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    dictionaryRepresentation9 = [queryDecorationSpanRetrievalDuration dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"queryDecorationSpanRetrievalDuration"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"queryDecorationSpanRetrievalDuration"];
    }
  }

  if (self->_queryDecorationToolRetrievalDuration)
  {
    queryDecorationToolRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    dictionaryRepresentation10 = [queryDecorationToolRetrievalDuration dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    }
  }

  if (self->_queryDecorationTotalCollectInputsDuration)
  {
    queryDecorationTotalCollectInputsDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    dictionaryRepresentation11 = [queryDecorationTotalCollectInputsDuration dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    }
  }

  if (self->_queryDecorationTotalRankingDuration)
  {
    queryDecorationTotalRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    dictionaryRepresentation12 = [queryDecorationTotalRankingDuration dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    }
  }

  if (self->_queryDecorationTupleBuildingDuration)
  {
    queryDecorationTupleBuildingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    dictionaryRepresentation13 = [queryDecorationTupleBuildingDuration dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    }
  }

  if (self->_queryDecorationTupleRankingDuration)
  {
    queryDecorationTupleRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    dictionaryRepresentation14 = [queryDecorationTupleRankingDuration dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    }
  }

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    dictionaryRepresentation15 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation15)
    {
      [dictionary setObject:dictionaryRepresentation15 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null15 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null15 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_responseGenerationServiceHandleTime)
  {
    responseGenerationServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    dictionaryRepresentation16 = [responseGenerationServiceHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation16)
    {
      [dictionary setObject:dictionaryRepresentation16 forKeyedSubscript:@"responseGenerationServiceHandleTime"];
    }

    else
    {
      null16 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null16 forKeyedSubscript:@"responseGenerationServiceHandleTime"];
    }
  }

  if (self->_standardPlannerGeneratePlanTime)
  {
    standardPlannerGeneratePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    dictionaryRepresentation17 = [standardPlannerGeneratePlanTime dictionaryRepresentation];
    if (dictionaryRepresentation17)
    {
      [dictionary setObject:dictionaryRepresentation17 forKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    }

    else
    {
      null17 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null17 forKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    }
  }

  if (self->_standardPlannerMakePlanTime)
  {
    standardPlannerMakePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    dictionaryRepresentation18 = [standardPlannerMakePlanTime dictionaryRepresentation];
    if (dictionaryRepresentation18)
    {
      [dictionary setObject:dictionaryRepresentation18 forKeyedSubscript:@"standardPlannerMakePlanTime"];
    }

    else
    {
      null18 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null18 forKeyedSubscript:@"standardPlannerMakePlanTime"];
    }
  }

  if (self->_standardPlannerPrescribedPlanGeneratorTime)
  {
    standardPlannerPrescribedPlanGeneratorTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    dictionaryRepresentation19 = [standardPlannerPrescribedPlanGeneratorTime dictionaryRepresentation];
    if (dictionaryRepresentation19)
    {
      [dictionary setObject:dictionaryRepresentation19 forKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    }

    else
    {
      null19 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null19 forKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    }
  }

  if (self->_standardPlannerQueryDecorationTime)
  {
    standardPlannerQueryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    dictionaryRepresentation20 = [standardPlannerQueryDecorationTime dictionaryRepresentation];
    if (dictionaryRepresentation20)
    {
      [dictionary setObject:dictionaryRepresentation20 forKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    }

    else
    {
      null20 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null20 forKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    }
  }

  if (*&self->_has)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary wasPlanOverridden](self, "wasPlanOverridden")}];
    [dictionary setObject:v67 forKeyedSubscript:@"wasPlanOverridden"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];
  v68 = dictionary;

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_planId hash];
  v4 = [(SISchemaUUID *)self->_clientRequestId hash];
  v5 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_wasPlanOverridden;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_modelAssetVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_fullPlannerInferenceInvocationSource;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerMakePlanTime hash];
  v10 = [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerQueryDecorationTime hash];
  v11 = v10 ^ [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerPrescribedPlanGeneratorTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_standardPlannerGeneratePlanTime hash];
  v13 = v9 ^ v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planResolverServiceHandleTime hash];
  v14 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationServiceHandleTime hash];
  v15 = v14 ^ [(PNRODSchemaPNRODMetricDuration *)self->_planOverridesServiceHandleTime hash];
  v16 = v15 ^ [(PNRODSchemaPNRODMetricDuration *)self->_fullPlannerServiceHandleTime hash];
  v17 = v16 ^ [(PNRODSchemaPNRODMetricDuration *)self->_fullPlannerModelInferenceCallTime hash];
  v18 = v13 ^ v17 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTotalCollectInputsDuration hash];
  v19 = [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationSpanRetrievalDuration hash];
  v20 = v19 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationContextRetrievalDuration hash];
  v21 = v20 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationToolRetrievalDuration hash];
  v22 = v21 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTotalRankingDuration hash];
  v23 = v22 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTupleBuildingDuration hash];
  v24 = v18 ^ v23 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTupleRankingDuration hash];
  return v24 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_113;
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  planId2 = [equalCopy planId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  planId3 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  if (planId3)
  {
    v8 = planId3;
    planId4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    planId5 = [equalCopy planId];
    v11 = [planId4 isEqual:planId5];

    if (!v11)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  planId2 = [equalCopy clientRequestId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  if (clientRequestId)
  {
    v13 = clientRequestId;
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
    clientRequestId3 = [equalCopy clientRequestId];
    v16 = [clientRequestId2 isEqual:clientRequestId3];

    if (!v16)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  planId2 = [equalCopy rawQueryEventId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v18 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v21 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v21)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[192] & 1))
  {
    goto LABEL_113;
  }

  if (*&self->_has)
  {
    wasPlanOverridden = self->_wasPlanOverridden;
    if (wasPlanOverridden != [equalCopy wasPlanOverridden])
    {
      goto LABEL_113;
    }
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
  planId2 = [equalCopy modelAssetVersion];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  modelAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
  if (modelAssetVersion)
  {
    v24 = modelAssetVersion;
    modelAssetVersion2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
    modelAssetVersion3 = [equalCopy modelAssetVersion];
    v27 = [modelAssetVersion2 isEqual:modelAssetVersion3];

    if (!v27)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v28 = (*&self->_has >> 1) & 1;
  if (v28 != ((equalCopy[192] >> 1) & 1))
  {
    goto LABEL_113;
  }

  if (v28)
  {
    fullPlannerInferenceInvocationSource = self->_fullPlannerInferenceInvocationSource;
    if (fullPlannerInferenceInvocationSource != [equalCopy fullPlannerInferenceInvocationSource])
    {
      goto LABEL_113;
    }
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  planId2 = [equalCopy standardPlannerMakePlanTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  standardPlannerMakePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  if (standardPlannerMakePlanTime)
  {
    v31 = standardPlannerMakePlanTime;
    standardPlannerMakePlanTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    standardPlannerMakePlanTime3 = [equalCopy standardPlannerMakePlanTime];
    v34 = [standardPlannerMakePlanTime2 isEqual:standardPlannerMakePlanTime3];

    if (!v34)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  planId2 = [equalCopy standardPlannerQueryDecorationTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  standardPlannerQueryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  if (standardPlannerQueryDecorationTime)
  {
    v36 = standardPlannerQueryDecorationTime;
    standardPlannerQueryDecorationTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    standardPlannerQueryDecorationTime3 = [equalCopy standardPlannerQueryDecorationTime];
    v39 = [standardPlannerQueryDecorationTime2 isEqual:standardPlannerQueryDecorationTime3];

    if (!v39)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  planId2 = [equalCopy standardPlannerPrescribedPlanGeneratorTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  standardPlannerPrescribedPlanGeneratorTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  if (standardPlannerPrescribedPlanGeneratorTime)
  {
    v41 = standardPlannerPrescribedPlanGeneratorTime;
    standardPlannerPrescribedPlanGeneratorTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    standardPlannerPrescribedPlanGeneratorTime3 = [equalCopy standardPlannerPrescribedPlanGeneratorTime];
    v44 = [standardPlannerPrescribedPlanGeneratorTime2 isEqual:standardPlannerPrescribedPlanGeneratorTime3];

    if (!v44)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  planId2 = [equalCopy standardPlannerGeneratePlanTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  standardPlannerGeneratePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  if (standardPlannerGeneratePlanTime)
  {
    v46 = standardPlannerGeneratePlanTime;
    standardPlannerGeneratePlanTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    standardPlannerGeneratePlanTime3 = [equalCopy standardPlannerGeneratePlanTime];
    v49 = [standardPlannerGeneratePlanTime2 isEqual:standardPlannerGeneratePlanTime3];

    if (!v49)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  planId2 = [equalCopy planResolverServiceHandleTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  planResolverServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  if (planResolverServiceHandleTime)
  {
    v51 = planResolverServiceHandleTime;
    planResolverServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    planResolverServiceHandleTime3 = [equalCopy planResolverServiceHandleTime];
    v54 = [planResolverServiceHandleTime2 isEqual:planResolverServiceHandleTime3];

    if (!v54)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  planId2 = [equalCopy responseGenerationServiceHandleTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  responseGenerationServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  if (responseGenerationServiceHandleTime)
  {
    v56 = responseGenerationServiceHandleTime;
    responseGenerationServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    responseGenerationServiceHandleTime3 = [equalCopy responseGenerationServiceHandleTime];
    v59 = [responseGenerationServiceHandleTime2 isEqual:responseGenerationServiceHandleTime3];

    if (!v59)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  planId2 = [equalCopy planOverridesServiceHandleTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  planOverridesServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  if (planOverridesServiceHandleTime)
  {
    v61 = planOverridesServiceHandleTime;
    planOverridesServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    planOverridesServiceHandleTime3 = [equalCopy planOverridesServiceHandleTime];
    v64 = [planOverridesServiceHandleTime2 isEqual:planOverridesServiceHandleTime3];

    if (!v64)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  planId2 = [equalCopy fullPlannerServiceHandleTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  fullPlannerServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  if (fullPlannerServiceHandleTime)
  {
    v66 = fullPlannerServiceHandleTime;
    fullPlannerServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    fullPlannerServiceHandleTime3 = [equalCopy fullPlannerServiceHandleTime];
    v69 = [fullPlannerServiceHandleTime2 isEqual:fullPlannerServiceHandleTime3];

    if (!v69)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  planId2 = [equalCopy fullPlannerModelInferenceCallTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  fullPlannerModelInferenceCallTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  if (fullPlannerModelInferenceCallTime)
  {
    v71 = fullPlannerModelInferenceCallTime;
    fullPlannerModelInferenceCallTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    fullPlannerModelInferenceCallTime3 = [equalCopy fullPlannerModelInferenceCallTime];
    v74 = [fullPlannerModelInferenceCallTime2 isEqual:fullPlannerModelInferenceCallTime3];

    if (!v74)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  planId2 = [equalCopy queryDecorationTotalCollectInputsDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationTotalCollectInputsDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  if (queryDecorationTotalCollectInputsDuration)
  {
    v76 = queryDecorationTotalCollectInputsDuration;
    queryDecorationTotalCollectInputsDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    queryDecorationTotalCollectInputsDuration3 = [equalCopy queryDecorationTotalCollectInputsDuration];
    v79 = [queryDecorationTotalCollectInputsDuration2 isEqual:queryDecorationTotalCollectInputsDuration3];

    if (!v79)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  planId2 = [equalCopy queryDecorationSpanRetrievalDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationSpanRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  if (queryDecorationSpanRetrievalDuration)
  {
    v81 = queryDecorationSpanRetrievalDuration;
    queryDecorationSpanRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    queryDecorationSpanRetrievalDuration3 = [equalCopy queryDecorationSpanRetrievalDuration];
    v84 = [queryDecorationSpanRetrievalDuration2 isEqual:queryDecorationSpanRetrievalDuration3];

    if (!v84)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  planId2 = [equalCopy queryDecorationContextRetrievalDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationContextRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  if (queryDecorationContextRetrievalDuration)
  {
    v86 = queryDecorationContextRetrievalDuration;
    queryDecorationContextRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    queryDecorationContextRetrievalDuration3 = [equalCopy queryDecorationContextRetrievalDuration];
    v89 = [queryDecorationContextRetrievalDuration2 isEqual:queryDecorationContextRetrievalDuration3];

    if (!v89)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  planId2 = [equalCopy queryDecorationToolRetrievalDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationToolRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  if (queryDecorationToolRetrievalDuration)
  {
    v91 = queryDecorationToolRetrievalDuration;
    queryDecorationToolRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    queryDecorationToolRetrievalDuration3 = [equalCopy queryDecorationToolRetrievalDuration];
    v94 = [queryDecorationToolRetrievalDuration2 isEqual:queryDecorationToolRetrievalDuration3];

    if (!v94)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  planId2 = [equalCopy queryDecorationTotalRankingDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationTotalRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  if (queryDecorationTotalRankingDuration)
  {
    v96 = queryDecorationTotalRankingDuration;
    queryDecorationTotalRankingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    queryDecorationTotalRankingDuration3 = [equalCopy queryDecorationTotalRankingDuration];
    v99 = [queryDecorationTotalRankingDuration2 isEqual:queryDecorationTotalRankingDuration3];

    if (!v99)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  planId2 = [equalCopy queryDecorationTupleBuildingDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationTupleBuildingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  if (queryDecorationTupleBuildingDuration)
  {
    v101 = queryDecorationTupleBuildingDuration;
    queryDecorationTupleBuildingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    queryDecorationTupleBuildingDuration3 = [equalCopy queryDecorationTupleBuildingDuration];
    v104 = [queryDecorationTupleBuildingDuration2 isEqual:queryDecorationTupleBuildingDuration3];

    if (!v104)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  planId2 = [equalCopy queryDecorationTupleRankingDuration];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_112;
  }

  queryDecorationTupleRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  if (queryDecorationTupleRankingDuration)
  {
    v106 = queryDecorationTupleRankingDuration;
    queryDecorationTupleRankingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    queryDecorationTupleRankingDuration3 = [equalCopy queryDecorationTupleRankingDuration];
    v109 = [queryDecorationTupleRankingDuration2 isEqual:queryDecorationTupleRankingDuration3];

    if (!v109)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
  planId2 = [equalCopy failureInfo];
  if ((planId != 0) != (planId2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    if (!failureInfo)
    {

LABEL_116:
      v115 = 1;
      goto LABEL_114;
    }

    v111 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v114 = [failureInfo2 isEqual:failureInfo3];

    if (v114)
    {
      goto LABEL_116;
    }
  }

  else
  {
LABEL_112:
  }

LABEL_113:
  v115 = 0;
LABEL_114:

  return v115;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];

  if (planId)
  {
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  modelAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];

  if (modelAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  standardPlannerMakePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];

  if (standardPlannerMakePlanTime)
  {
    standardPlannerMakePlanTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    PBDataWriterWriteSubmessage();
  }

  standardPlannerQueryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];

  if (standardPlannerQueryDecorationTime)
  {
    standardPlannerQueryDecorationTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    PBDataWriterWriteSubmessage();
  }

  standardPlannerPrescribedPlanGeneratorTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];

  if (standardPlannerPrescribedPlanGeneratorTime)
  {
    standardPlannerPrescribedPlanGeneratorTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    PBDataWriterWriteSubmessage();
  }

  standardPlannerGeneratePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];

  if (standardPlannerGeneratePlanTime)
  {
    standardPlannerGeneratePlanTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    PBDataWriterWriteSubmessage();
  }

  planResolverServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];

  if (planResolverServiceHandleTime)
  {
    planResolverServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];

  if (responseGenerationServiceHandleTime)
  {
    responseGenerationServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  planOverridesServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];

  if (planOverridesServiceHandleTime)
  {
    planOverridesServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  fullPlannerServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];

  if (fullPlannerServiceHandleTime)
  {
    fullPlannerServiceHandleTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  fullPlannerModelInferenceCallTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];

  if (fullPlannerModelInferenceCallTime)
  {
    fullPlannerModelInferenceCallTime2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTotalCollectInputsDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];

  if (queryDecorationTotalCollectInputsDuration)
  {
    queryDecorationTotalCollectInputsDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationSpanRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];

  if (queryDecorationSpanRetrievalDuration)
  {
    queryDecorationSpanRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationContextRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];

  if (queryDecorationContextRetrievalDuration)
  {
    queryDecorationContextRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationToolRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];

  if (queryDecorationToolRetrievalDuration)
  {
    queryDecorationToolRetrievalDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTotalRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];

  if (queryDecorationTotalRankingDuration)
  {
    queryDecorationTotalRankingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTupleBuildingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];

  if (queryDecorationTupleBuildingDuration)
  {
    queryDecorationTupleBuildingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTupleRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];

  if (queryDecorationTupleRankingDuration)
  {
    queryDecorationTupleRankingDuration2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];

  v44 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v44 = toCopy;
  }
}

- (void)setHasFullPlannerInferenceInvocationSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v67.receiver = self;
  v67.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v67 applySensitiveConditionsPolicy:policyCopy];
  planId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  v7 = [planId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  v10 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteClientRequestId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  v13 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteRawQueryEventId];
  }

  standardPlannerMakePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  v16 = [standardPlannerMakePlanTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerMakePlanTime];
  }

  standardPlannerQueryDecorationTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  v19 = [standardPlannerQueryDecorationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerQueryDecorationTime];
  }

  standardPlannerPrescribedPlanGeneratorTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  v22 = [standardPlannerPrescribedPlanGeneratorTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerPrescribedPlanGeneratorTime];
  }

  standardPlannerGeneratePlanTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  v25 = [standardPlannerGeneratePlanTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerGeneratePlanTime];
  }

  planResolverServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  v28 = [planResolverServiceHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanResolverServiceHandleTime];
  }

  responseGenerationServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  v31 = [responseGenerationServiceHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteResponseGenerationServiceHandleTime];
  }

  planOverridesServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  v34 = [planOverridesServiceHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanOverridesServiceHandleTime];
  }

  fullPlannerServiceHandleTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  v37 = [fullPlannerServiceHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteFullPlannerServiceHandleTime];
  }

  fullPlannerModelInferenceCallTime = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  v40 = [fullPlannerModelInferenceCallTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteFullPlannerModelInferenceCallTime];
  }

  queryDecorationTotalCollectInputsDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  v43 = [queryDecorationTotalCollectInputsDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTotalCollectInputsDuration];
  }

  queryDecorationSpanRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  v46 = [queryDecorationSpanRetrievalDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationSpanRetrievalDuration];
  }

  queryDecorationContextRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  v49 = [queryDecorationContextRetrievalDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage15 = [v49 suppressMessage];

  if (suppressMessage15)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationContextRetrievalDuration];
  }

  queryDecorationToolRetrievalDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  v52 = [queryDecorationToolRetrievalDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage16 = [v52 suppressMessage];

  if (suppressMessage16)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationToolRetrievalDuration];
  }

  queryDecorationTotalRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  v55 = [queryDecorationTotalRankingDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage17 = [v55 suppressMessage];

  if (suppressMessage17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTotalRankingDuration];
  }

  queryDecorationTupleBuildingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  v58 = [queryDecorationTupleBuildingDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage18 = [v58 suppressMessage];

  if (suppressMessage18)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTupleBuildingDuration];
  }

  queryDecorationTupleRankingDuration = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  v61 = [queryDecorationTupleRankingDuration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage19 = [v61 suppressMessage];

  if (suppressMessage19)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTupleRankingDuration];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
  v64 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage20 = [v64 suppressMessage];

  if (suppressMessage20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteFailureInfo];
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