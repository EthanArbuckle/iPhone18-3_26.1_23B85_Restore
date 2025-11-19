@interface PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasFullPlannerInferenceInvocationSource:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v68.receiver = self;
  v68.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)&v68 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setClientRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"wasPlanOverridden"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary setWasPlanOverridden:](v5, "setWasPlanOverridden:", [v12 BOOLValue]);
    }

    v56 = v12;
    v13 = [v4 objectForKeyedSubscript:@"modelAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setModelAssetVersion:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"fullPlannerInferenceInvocationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary setFullPlannerInferenceInvocationSource:](v5, "setFullPlannerInferenceInvocationSource:", [v15 longLongValue]);
    }

    v54 = v15;
    v16 = [v4 objectForKeyedSubscript:@"standardPlannerMakePlanTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerMakePlanTime:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    objc_opt_class();
    v67 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerQueryDecorationTime:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    objc_opt_class();
    v66 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerPrescribedPlanGeneratorTime:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    objc_opt_class();
    v65 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setStandardPlannerGeneratePlanTime:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"planResolverServiceHandleTime"];
    objc_opt_class();
    v64 = v24;
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanResolverServiceHandleTime:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"responseGenerationServiceHandleTime"];
    objc_opt_class();
    v63 = v26;
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setResponseGenerationServiceHandleTime:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"planOverridesServiceHandleTime"];
    objc_opt_class();
    v62 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v28];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setPlanOverridesServiceHandleTime:v29];
    }

    v30 = [v4 objectForKeyedSubscript:@"fullPlannerServiceHandleTime"];
    objc_opt_class();
    v61 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v30];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setFullPlannerServiceHandleTime:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    objc_opt_class();
    v60 = v32;
    if (objc_opt_isKindOfClass())
    {
      v33 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v32];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setFullPlannerModelInferenceCallTime:v33];
    }

    v53 = v16;
    v34 = [v4 objectForKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v34];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTotalCollectInputsDuration:v35];
    }

    v59 = v6;
    v36 = [v4 objectForKeyedSubscript:{@"queryDecorationSpanRetrievalDuration", v34}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v36];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationSpanRetrievalDuration:v37];
    }

    v58 = v8;
    v38 = [v4 objectForKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v38];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationContextRetrievalDuration:v39];
    }

    v57 = v10;
    v40 = [v4 objectForKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v40];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationToolRetrievalDuration:v41];
    }

    v55 = v13;
    v42 = [v4 objectForKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v43 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v42];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTotalRankingDuration:v43];
    }

    v44 = [v4 objectForKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v45 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v44];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTupleBuildingDuration:v45];
    }

    v46 = [v4 objectForKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v46];
      [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)v5 setQueryDecorationTupleRankingDuration:v47];
    }

    v48 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self dictionaryRepresentation];
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
  if (self->_clientRequestId)
  {
    v4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"clientRequestId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"clientRequestId"];
    }
  }

  if (self->_failureInfo)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"failureInfo"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary fullPlannerInferenceInvocationSource](self, "fullPlannerInferenceInvocationSource")}];
    [v3 setObject:v10 forKeyedSubscript:@"fullPlannerInferenceInvocationSource"];
  }

  if (self->_fullPlannerModelInferenceCallTime)
  {
    v11 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"fullPlannerModelInferenceCallTime"];
    }
  }

  if (self->_fullPlannerServiceHandleTime)
  {
    v14 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"fullPlannerServiceHandleTime"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"fullPlannerServiceHandleTime"];
    }
  }

  if (self->_modelAssetVersion)
  {
    v17 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"modelAssetVersion"];
  }

  if (self->_planId)
  {
    v19 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"planId"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_planOverridesServiceHandleTime)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"planOverridesServiceHandleTime"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"planOverridesServiceHandleTime"];
    }
  }

  if (self->_planResolverServiceHandleTime)
  {
    v25 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"planResolverServiceHandleTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"planResolverServiceHandleTime"];
    }
  }

  if (self->_queryDecorationContextRetrievalDuration)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"queryDecorationContextRetrievalDuration"];
    }
  }

  if (self->_queryDecorationSpanRetrievalDuration)
  {
    v31 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"queryDecorationSpanRetrievalDuration"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"queryDecorationSpanRetrievalDuration"];
    }
  }

  if (self->_queryDecorationToolRetrievalDuration)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"queryDecorationToolRetrievalDuration"];
    }
  }

  if (self->_queryDecorationTotalCollectInputsDuration)
  {
    v37 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    v38 = [v37 dictionaryRepresentation];
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    }

    else
    {
      v39 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v39 forKeyedSubscript:@"queryDecorationTotalCollectInputsDuration"];
    }
  }

  if (self->_queryDecorationTotalRankingDuration)
  {
    v40 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    v41 = [v40 dictionaryRepresentation];
    if (v41)
    {
      [v3 setObject:v41 forKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"queryDecorationTotalRankingDuration"];
    }
  }

  if (self->_queryDecorationTupleBuildingDuration)
  {
    v43 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"queryDecorationTupleBuildingDuration"];
    }
  }

  if (self->_queryDecorationTupleRankingDuration)
  {
    v46 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"queryDecorationTupleRankingDuration"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v49 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_responseGenerationServiceHandleTime)
  {
    v52 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    v53 = [v52 dictionaryRepresentation];
    if (v53)
    {
      [v3 setObject:v53 forKeyedSubscript:@"responseGenerationServiceHandleTime"];
    }

    else
    {
      v54 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v54 forKeyedSubscript:@"responseGenerationServiceHandleTime"];
    }
  }

  if (self->_standardPlannerGeneratePlanTime)
  {
    v55 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    v56 = [v55 dictionaryRepresentation];
    if (v56)
    {
      [v3 setObject:v56 forKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    }

    else
    {
      v57 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v57 forKeyedSubscript:@"standardPlannerGeneratePlanTime"];
    }
  }

  if (self->_standardPlannerMakePlanTime)
  {
    v58 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    v59 = [v58 dictionaryRepresentation];
    if (v59)
    {
      [v3 setObject:v59 forKeyedSubscript:@"standardPlannerMakePlanTime"];
    }

    else
    {
      v60 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v60 forKeyedSubscript:@"standardPlannerMakePlanTime"];
    }
  }

  if (self->_standardPlannerPrescribedPlanGeneratorTime)
  {
    v61 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    v62 = [v61 dictionaryRepresentation];
    if (v62)
    {
      [v3 setObject:v62 forKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    }

    else
    {
      v63 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v63 forKeyedSubscript:@"standardPlannerPrescribedPlanGeneratorTime"];
    }
  }

  if (self->_standardPlannerQueryDecorationTime)
  {
    v64 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    v65 = [v64 dictionaryRepresentation];
    if (v65)
    {
      [v3 setObject:v65 forKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    }

    else
    {
      v66 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v66 forKeyedSubscript:@"standardPlannerQueryDecorationTime"];
    }
  }

  if (*&self->_has)
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary wasPlanOverridden](self, "wasPlanOverridden")}];
    [v3 setObject:v67 forKeyedSubscript:@"wasPlanOverridden"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];
  v68 = v3;

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_113;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  v6 = [v4 planId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    v10 = [v4 planId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
    v15 = [v4 clientRequestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    v20 = [v4 rawQueryEventId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[192] & 1))
  {
    goto LABEL_113;
  }

  if (*&self->_has)
  {
    wasPlanOverridden = self->_wasPlanOverridden;
    if (wasPlanOverridden != [v4 wasPlanOverridden])
    {
      goto LABEL_113;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
  v6 = [v4 modelAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v23 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
  if (v23)
  {
    v24 = v23;
    v25 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];
    v26 = [v4 modelAssetVersion];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v28 = (*&self->_has >> 1) & 1;
  if (v28 != ((v4[192] >> 1) & 1))
  {
    goto LABEL_113;
  }

  if (v28)
  {
    fullPlannerInferenceInvocationSource = self->_fullPlannerInferenceInvocationSource;
    if (fullPlannerInferenceInvocationSource != [v4 fullPlannerInferenceInvocationSource])
    {
      goto LABEL_113;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  v6 = [v4 standardPlannerMakePlanTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  if (v30)
  {
    v31 = v30;
    v32 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    v33 = [v4 standardPlannerMakePlanTime];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  v6 = [v4 standardPlannerQueryDecorationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v35 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  if (v35)
  {
    v36 = v35;
    v37 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    v38 = [v4 standardPlannerQueryDecorationTime];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  v6 = [v4 standardPlannerPrescribedPlanGeneratorTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v40 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  if (v40)
  {
    v41 = v40;
    v42 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    v43 = [v4 standardPlannerPrescribedPlanGeneratorTime];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  v6 = [v4 standardPlannerGeneratePlanTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v45 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  if (v45)
  {
    v46 = v45;
    v47 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    v48 = [v4 standardPlannerGeneratePlanTime];
    v49 = [v47 isEqual:v48];

    if (!v49)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  v6 = [v4 planResolverServiceHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v50 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  if (v50)
  {
    v51 = v50;
    v52 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    v53 = [v4 planResolverServiceHandleTime];
    v54 = [v52 isEqual:v53];

    if (!v54)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  v6 = [v4 responseGenerationServiceHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v55 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  if (v55)
  {
    v56 = v55;
    v57 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    v58 = [v4 responseGenerationServiceHandleTime];
    v59 = [v57 isEqual:v58];

    if (!v59)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  v6 = [v4 planOverridesServiceHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v60 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  if (v60)
  {
    v61 = v60;
    v62 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    v63 = [v4 planOverridesServiceHandleTime];
    v64 = [v62 isEqual:v63];

    if (!v64)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  v6 = [v4 fullPlannerServiceHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v65 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  if (v65)
  {
    v66 = v65;
    v67 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    v68 = [v4 fullPlannerServiceHandleTime];
    v69 = [v67 isEqual:v68];

    if (!v69)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  v6 = [v4 fullPlannerModelInferenceCallTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v70 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  if (v70)
  {
    v71 = v70;
    v72 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    v73 = [v4 fullPlannerModelInferenceCallTime];
    v74 = [v72 isEqual:v73];

    if (!v74)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  v6 = [v4 queryDecorationTotalCollectInputsDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v75 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  if (v75)
  {
    v76 = v75;
    v77 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    v78 = [v4 queryDecorationTotalCollectInputsDuration];
    v79 = [v77 isEqual:v78];

    if (!v79)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  v6 = [v4 queryDecorationSpanRetrievalDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v80 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  if (v80)
  {
    v81 = v80;
    v82 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    v83 = [v4 queryDecorationSpanRetrievalDuration];
    v84 = [v82 isEqual:v83];

    if (!v84)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  v6 = [v4 queryDecorationContextRetrievalDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v85 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  if (v85)
  {
    v86 = v85;
    v87 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    v88 = [v4 queryDecorationContextRetrievalDuration];
    v89 = [v87 isEqual:v88];

    if (!v89)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  v6 = [v4 queryDecorationToolRetrievalDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v90 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  if (v90)
  {
    v91 = v90;
    v92 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    v93 = [v4 queryDecorationToolRetrievalDuration];
    v94 = [v92 isEqual:v93];

    if (!v94)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  v6 = [v4 queryDecorationTotalRankingDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v95 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  if (v95)
  {
    v96 = v95;
    v97 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    v98 = [v4 queryDecorationTotalRankingDuration];
    v99 = [v97 isEqual:v98];

    if (!v99)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  v6 = [v4 queryDecorationTupleBuildingDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v100 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  if (v100)
  {
    v101 = v100;
    v102 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    v103 = [v4 queryDecorationTupleBuildingDuration];
    v104 = [v102 isEqual:v103];

    if (!v104)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  v6 = [v4 queryDecorationTupleRankingDuration];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_112;
  }

  v105 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  if (v105)
  {
    v106 = v105;
    v107 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    v108 = [v4 queryDecorationTupleRankingDuration];
    v109 = [v107 isEqual:v108];

    if (!v109)
    {
      goto LABEL_113;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v110 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    if (!v110)
    {

LABEL_116:
      v115 = 1;
      goto LABEL_114;
    }

    v111 = v110;
    v112 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    v113 = [v4 failureInfo];
    v114 = [v112 isEqual:v113];

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

- (void)writeTo:(id)a3
{
  v46 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v10 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self modelAssetVersion];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v11 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];

  if (v11)
  {
    v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];

  if (v13)
  {
    v14 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];

  if (v15)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];

  if (v17)
  {
    v18 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];

  if (v19)
  {
    v20 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];

  if (v21)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v23 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];

  if (v23)
  {
    v24 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v25 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];

  if (v25)
  {
    v26 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];

  if (v27)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
    PBDataWriterWriteSubmessage();
  }

  v29 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];

  if (v29)
  {
    v30 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
    PBDataWriterWriteSubmessage();
  }

  v31 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];

  if (v31)
  {
    v32 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];

  if (v33)
  {
    v34 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  v35 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];

  if (v35)
  {
    v36 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
    PBDataWriterWriteSubmessage();
  }

  v37 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];

  if (v37)
  {
    v38 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
    PBDataWriterWriteSubmessage();
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];

  if (v39)
  {
    v40 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
    PBDataWriterWriteSubmessage();
  }

  v41 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];

  if (v41)
  {
    v42 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
    PBDataWriterWriteSubmessage();
  }

  v43 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];

  v44 = v46;
  if (v43)
  {
    v45 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v44 = v46;
  }
}

- (void)setHasFullPlannerInferenceInvocationSource:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v67.receiver = self;
  v67.super_class = PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v67 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self clientRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteClientRequestId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self rawQueryEventId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteRawQueryEventId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerMakePlanTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerMakePlanTime];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerQueryDecorationTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerQueryDecorationTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerPrescribedPlanGeneratorTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerPrescribedPlanGeneratorTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self standardPlannerGeneratePlanTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteStandardPlannerGeneratePlanTime];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planResolverServiceHandleTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanResolverServiceHandleTime];
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self responseGenerationServiceHandleTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteResponseGenerationServiceHandleTime];
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self planOverridesServiceHandleTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deletePlanOverridesServiceHandleTime];
  }

  v36 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerServiceHandleTime];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteFullPlannerServiceHandleTime];
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self fullPlannerModelInferenceCallTime];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteFullPlannerModelInferenceCallTime];
  }

  v42 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalCollectInputsDuration];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTotalCollectInputsDuration];
  }

  v45 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationSpanRetrievalDuration];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationSpanRetrievalDuration];
  }

  v48 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationContextRetrievalDuration];
  v49 = [v48 applySensitiveConditionsPolicy:v4];
  v50 = [v49 suppressMessage];

  if (v50)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationContextRetrievalDuration];
  }

  v51 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationToolRetrievalDuration];
  v52 = [v51 applySensitiveConditionsPolicy:v4];
  v53 = [v52 suppressMessage];

  if (v53)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationToolRetrievalDuration];
  }

  v54 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTotalRankingDuration];
  v55 = [v54 applySensitiveConditionsPolicy:v4];
  v56 = [v55 suppressMessage];

  if (v56)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTotalRankingDuration];
  }

  v57 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleBuildingDuration];
  v58 = [v57 applySensitiveConditionsPolicy:v4];
  v59 = [v58 suppressMessage];

  if (v59)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTupleBuildingDuration];
  }

  v60 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self queryDecorationTupleRankingDuration];
  v61 = [v60 applySensitiveConditionsPolicy:v4];
  v62 = [v61 suppressMessage];

  if (v62)
  {
    [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self deleteQueryDecorationTupleRankingDuration];
  }

  v63 = [(PNRODSchemaPNRODIntelligenceFlowPlannerComponentSummary *)self failureInfo];
  v64 = [v63 applySensitiveConditionsPolicy:v4];
  v65 = [v64 suppressMessage];

  if (v65)
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