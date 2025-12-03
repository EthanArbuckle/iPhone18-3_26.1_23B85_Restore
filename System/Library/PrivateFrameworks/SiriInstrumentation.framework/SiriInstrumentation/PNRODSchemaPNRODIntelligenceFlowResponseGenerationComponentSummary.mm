@interface PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseInferenceLocation:(BOOL)location;
- (void)setHasResponseIsFallback:(BOOL)fallback;
- (void)setHasResponseIsStaticDialogueProvided:(BOOL)provided;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v51.receiver = self;
  v51.super_class = PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)&v51 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setPlanId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setClientRequestId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"responseIsValidInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsValidInput:](v5, "setResponseIsValidInput:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"responseIsStaticDialogueProvided"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsStaticDialogueProvided:](v5, "setResponseIsStaticDialogueProvided:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"responseMobileAssetVersion"];
    objc_opt_class();
    v50 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseMobileAssetVersion:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"responseInferenceLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseInferenceLocation:](v5, "setResponseInferenceLocation:", [v16 intValue]);
    }

    v42 = v16;
    v17 = [dictionaryCopy objectForKeyedSubscript:@"responseIsFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsFallback:](v5, "setResponseIsFallback:", [v17 BOOLValue]);
    }

    v41 = v17;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"responsePreparationTime"];
    objc_opt_class();
    v49 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponsePreparationTime:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"responseInputValidationTime"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseInputValidationTime:v21];
    }

    v47 = v6;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"responseOverridesTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseOverridesTime:v23];
    }

    v40 = v22;
    v46 = v8;
    v24 = [dictionaryCopy objectForKeyedSubscript:@"responseCatalogueRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseCatalogueRetrievalTime:v25];
    }

    v45 = v10;
    v26 = [dictionaryCopy objectForKeyedSubscript:@"responseCATHydrationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseCATHydrationTime:v27];
    }

    v44 = v12;
    v28 = [dictionaryCopy objectForKeyedSubscript:@"responseModelInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v28];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseModelInferenceTime:v29];
    }

    v43 = v13;
    v30 = [dictionaryCopy objectForKeyedSubscript:@"responseHallucinationInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v30];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseHallucinationInferenceTime:v31];
    }

    v32 = [dictionaryCopy objectForKeyedSubscript:@"responseSafetyInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v32];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseSafetyInferenceTime:v33];
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v34];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseGenerationTime:v35];
    }

    v36 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v36];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setFailureInfo:v37];
    }

    v38 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self dictionaryRepresentation];
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
    clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
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
    failureInfo = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
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

  if (self->_planId)
  {
    planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    dictionaryRepresentation3 = [planId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"planId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_rawQueryEventId)
  {
    rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
    dictionaryRepresentation4 = [rawQueryEventId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_responseCATHydrationTime)
  {
    responseCATHydrationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    dictionaryRepresentation5 = [responseCATHydrationTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"responseCATHydrationTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"responseCATHydrationTime"];
    }
  }

  if (self->_responseCatalogueRetrievalTime)
  {
    responseCatalogueRetrievalTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    dictionaryRepresentation6 = [responseCatalogueRetrievalTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"responseCatalogueRetrievalTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"responseCatalogueRetrievalTime"];
    }
  }

  if (self->_responseGenerationTime)
  {
    responseGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    dictionaryRepresentation7 = [responseGenerationTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"responseGenerationTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"responseGenerationTime"];
    }
  }

  if (self->_responseHallucinationInferenceTime)
  {
    responseHallucinationInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    dictionaryRepresentation8 = [responseHallucinationInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"responseHallucinationInferenceTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"responseHallucinationInferenceTime"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    responseInferenceLocation = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInferenceLocation];
    v29 = @"RESPONSEINFERENCELOCTION_UNKNOWN";
    if (responseInferenceLocation == 1)
    {
      v29 = @"RESPONSEINFERENCELOCTION_ON_DEVICE";
    }

    if (responseInferenceLocation == 2)
    {
      v30 = @"RESPONSEINFERENCELOCTION_SERVER";
    }

    else
    {
      v30 = v29;
    }

    [dictionary setObject:v30 forKeyedSubscript:@"responseInferenceLocation"];
  }

  if (self->_responseInputValidationTime)
  {
    responseInputValidationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    dictionaryRepresentation9 = [responseInputValidationTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"responseInputValidationTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"responseInputValidationTime"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary responseIsFallback](self, "responseIsFallback")}];
    [dictionary setObject:v40 forKeyedSubscript:@"responseIsFallback"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_55:
      if ((has & 1) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_55;
  }

  v41 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary responseIsStaticDialogueProvided](self, "responseIsStaticDialogueProvided")}];
  [dictionary setObject:v41 forKeyedSubscript:@"responseIsStaticDialogueProvided"];

  if (*&self->_has)
  {
LABEL_56:
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary responseIsValidInput](self, "responseIsValidInput")}];
    [dictionary setObject:v35 forKeyedSubscript:@"responseIsValidInput"];
  }

LABEL_57:
  if (self->_responseMobileAssetVersion)
  {
    responseMobileAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
    v37 = [responseMobileAssetVersion copy];
    [dictionary setObject:v37 forKeyedSubscript:@"responseMobileAssetVersion"];
  }

  if (self->_responseModelInferenceTime)
  {
    responseModelInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    dictionaryRepresentation10 = [responseModelInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"responseModelInferenceTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"responseModelInferenceTime"];
    }
  }

  if (self->_responseOverridesTime)
  {
    responseOverridesTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    dictionaryRepresentation11 = [responseOverridesTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"responseOverridesTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"responseOverridesTime"];
    }
  }

  if (self->_responsePreparationTime)
  {
    responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    dictionaryRepresentation12 = [responsePreparationTime dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"responsePreparationTime"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"responsePreparationTime"];
    }
  }

  if (self->_responseSafetyInferenceTime)
  {
    responseSafetyInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    dictionaryRepresentation13 = [responseSafetyInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"responseSafetyInferenceTime"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"responseSafetyInferenceTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_planId hash];
  v4 = [(SISchemaUUID *)self->_clientRequestId hash];
  v5 = [(SISchemaUUID *)self->_rawQueryEventId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_responseIsValidInput;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_responseIsStaticDialogueProvided;
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = [(NSString *)self->_responseMobileAssetVersion hash];
  if ((*&self->_has & 4) != 0)
  {
    v9 = 2654435761 * self->_responseInferenceLocation;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v9 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v10 = 2654435761 * self->_responseIsFallback;
LABEL_11:
  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responsePreparationTime hash];
  v13 = v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseInputValidationTime hash];
  v14 = v11 ^ v13 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseOverridesTime hash];
  v15 = [(PNRODSchemaPNRODMetricDuration *)self->_responseCatalogueRetrievalTime hash];
  v16 = v15 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseCATHydrationTime hash];
  v17 = v16 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseModelInferenceTime hash];
  v18 = v17 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseHallucinationInferenceTime hash];
  v19 = v14 ^ v18 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseSafetyInferenceTime hash];
  v20 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationTime hash];
  return v19 ^ v20 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_86;
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  planId2 = [equalCopy planId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  planId3 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  if (planId3)
  {
    v8 = planId3;
    planId4 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    planId5 = [equalCopy planId];
    v11 = [planId4 isEqual:planId5];

    if (!v11)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  planId2 = [equalCopy clientRequestId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  if (clientRequestId)
  {
    v13 = clientRequestId;
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
    clientRequestId3 = [equalCopy clientRequestId];
    v16 = [clientRequestId2 isEqual:clientRequestId3];

    if (!v16)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  planId2 = [equalCopy rawQueryEventId];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  if (rawQueryEventId)
  {
    v18 = rawQueryEventId;
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
    rawQueryEventId3 = [equalCopy rawQueryEventId];
    v21 = [rawQueryEventId2 isEqual:rawQueryEventId3];

    if (!v21)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = equalCopy[136];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_86;
  }

  if (*&has)
  {
    responseIsValidInput = self->_responseIsValidInput;
    if (responseIsValidInput != [equalCopy responseIsValidInput])
    {
      goto LABEL_86;
    }

    has = self->_has;
    v23 = equalCopy[136];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_86;
  }

  if (v25)
  {
    responseIsStaticDialogueProvided = self->_responseIsStaticDialogueProvided;
    if (responseIsStaticDialogueProvided != [equalCopy responseIsStaticDialogueProvided])
    {
      goto LABEL_86;
    }
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
  planId2 = [equalCopy responseMobileAssetVersion];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseMobileAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
  if (responseMobileAssetVersion)
  {
    v28 = responseMobileAssetVersion;
    responseMobileAssetVersion2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
    responseMobileAssetVersion3 = [equalCopy responseMobileAssetVersion];
    v31 = [responseMobileAssetVersion2 isEqual:responseMobileAssetVersion3];

    if (!v31)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v32 = self->_has;
  v33 = (*&v32 >> 2) & 1;
  v34 = equalCopy[136];
  if (v33 != ((v34 >> 2) & 1))
  {
    goto LABEL_86;
  }

  if (v33)
  {
    responseInferenceLocation = self->_responseInferenceLocation;
    if (responseInferenceLocation != [equalCopy responseInferenceLocation])
    {
      goto LABEL_86;
    }

    v32 = self->_has;
    v34 = equalCopy[136];
  }

  v36 = (*&v32 >> 3) & 1;
  if (v36 != ((v34 >> 3) & 1))
  {
    goto LABEL_86;
  }

  if (v36)
  {
    responseIsFallback = self->_responseIsFallback;
    if (responseIsFallback != [equalCopy responseIsFallback])
    {
      goto LABEL_86;
    }
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  planId2 = [equalCopy responsePreparationTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  if (responsePreparationTime)
  {
    v39 = responsePreparationTime;
    responsePreparationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    responsePreparationTime3 = [equalCopy responsePreparationTime];
    v42 = [responsePreparationTime2 isEqual:responsePreparationTime3];

    if (!v42)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  planId2 = [equalCopy responseInputValidationTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseInputValidationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  if (responseInputValidationTime)
  {
    v44 = responseInputValidationTime;
    responseInputValidationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    responseInputValidationTime3 = [equalCopy responseInputValidationTime];
    v47 = [responseInputValidationTime2 isEqual:responseInputValidationTime3];

    if (!v47)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  planId2 = [equalCopy responseOverridesTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseOverridesTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  if (responseOverridesTime)
  {
    v49 = responseOverridesTime;
    responseOverridesTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    responseOverridesTime3 = [equalCopy responseOverridesTime];
    v52 = [responseOverridesTime2 isEqual:responseOverridesTime3];

    if (!v52)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  planId2 = [equalCopy responseCatalogueRetrievalTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseCatalogueRetrievalTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  if (responseCatalogueRetrievalTime)
  {
    v54 = responseCatalogueRetrievalTime;
    responseCatalogueRetrievalTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    responseCatalogueRetrievalTime3 = [equalCopy responseCatalogueRetrievalTime];
    v57 = [responseCatalogueRetrievalTime2 isEqual:responseCatalogueRetrievalTime3];

    if (!v57)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  planId2 = [equalCopy responseCATHydrationTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseCATHydrationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  if (responseCATHydrationTime)
  {
    v59 = responseCATHydrationTime;
    responseCATHydrationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    responseCATHydrationTime3 = [equalCopy responseCATHydrationTime];
    v62 = [responseCATHydrationTime2 isEqual:responseCATHydrationTime3];

    if (!v62)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  planId2 = [equalCopy responseModelInferenceTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseModelInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  if (responseModelInferenceTime)
  {
    v64 = responseModelInferenceTime;
    responseModelInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    responseModelInferenceTime3 = [equalCopy responseModelInferenceTime];
    v67 = [responseModelInferenceTime2 isEqual:responseModelInferenceTime3];

    if (!v67)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  planId2 = [equalCopy responseHallucinationInferenceTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseHallucinationInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  if (responseHallucinationInferenceTime)
  {
    v69 = responseHallucinationInferenceTime;
    responseHallucinationInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    responseHallucinationInferenceTime3 = [equalCopy responseHallucinationInferenceTime];
    v72 = [responseHallucinationInferenceTime2 isEqual:responseHallucinationInferenceTime3];

    if (!v72)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  planId2 = [equalCopy responseSafetyInferenceTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseSafetyInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  if (responseSafetyInferenceTime)
  {
    v74 = responseSafetyInferenceTime;
    responseSafetyInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    responseSafetyInferenceTime3 = [equalCopy responseSafetyInferenceTime];
    v77 = [responseSafetyInferenceTime2 isEqual:responseSafetyInferenceTime3];

    if (!v77)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  planId2 = [equalCopy responseGenerationTime];
  if ((planId != 0) == (planId2 == 0))
  {
    goto LABEL_85;
  }

  responseGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  if (responseGenerationTime)
  {
    v79 = responseGenerationTime;
    responseGenerationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    responseGenerationTime3 = [equalCopy responseGenerationTime];
    v82 = [responseGenerationTime2 isEqual:responseGenerationTime3];

    if (!v82)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  planId2 = [equalCopy failureInfo];
  if ((planId != 0) == (planId2 == 0))
  {
LABEL_85:

    goto LABEL_86;
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  if (!failureInfo)
  {

LABEL_89:
    v88 = 1;
    goto LABEL_87;
  }

  v84 = failureInfo;
  failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  failureInfo3 = [equalCopy failureInfo];
  v87 = [failureInfo2 isEqual:failureInfo3];

  if (v87)
  {
    goto LABEL_89;
  }

LABEL_86:
  v88 = 0;
LABEL_87:

  return v88;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];

  if (planId)
  {
    planId2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];

  if (clientRequestId)
  {
    clientRequestId2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];

  if (rawQueryEventId)
  {
    rawQueryEventId2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  responseMobileAssetVersion = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];

  if (responseMobileAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
    v12 = self->_has;
  }

  if ((v12 & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];

  if (responsePreparationTime)
  {
    responsePreparationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    PBDataWriterWriteSubmessage();
  }

  responseInputValidationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];

  if (responseInputValidationTime)
  {
    responseInputValidationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    PBDataWriterWriteSubmessage();
  }

  responseOverridesTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];

  if (responseOverridesTime)
  {
    responseOverridesTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    PBDataWriterWriteSubmessage();
  }

  responseCatalogueRetrievalTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];

  if (responseCatalogueRetrievalTime)
  {
    responseCatalogueRetrievalTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  responseCATHydrationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];

  if (responseCATHydrationTime)
  {
    responseCATHydrationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    PBDataWriterWriteSubmessage();
  }

  responseModelInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];

  if (responseModelInferenceTime)
  {
    responseModelInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  responseHallucinationInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];

  if (responseHallucinationInferenceTime)
  {
    responseHallucinationInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  responseSafetyInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];

  if (responseSafetyInferenceTime)
  {
    responseSafetyInferenceTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];

  if (responseGenerationTime)
  {
    responseGenerationTime2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];

  v32 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v32 = toCopy;
  }
}

- (void)setHasResponseIsFallback:(BOOL)fallback
{
  if (fallback)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseInferenceLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasResponseIsStaticDialogueProvided:(BOOL)provided
{
  if (provided)
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
  v46.receiver = self;
  v46.super_class = PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:policyCopy];
  planId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  v7 = [planId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deletePlanId];
  }

  clientRequestId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  v10 = [clientRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteClientRequestId];
  }

  rawQueryEventId = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  v13 = [rawQueryEventId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteRawQueryEventId];
  }

  responsePreparationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  v16 = [responsePreparationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponsePreparationTime];
  }

  responseInputValidationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  v19 = [responseInputValidationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseInputValidationTime];
  }

  responseOverridesTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  v22 = [responseOverridesTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseOverridesTime];
  }

  responseCatalogueRetrievalTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  v25 = [responseCatalogueRetrievalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseCatalogueRetrievalTime];
  }

  responseCATHydrationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  v28 = [responseCATHydrationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseCATHydrationTime];
  }

  responseModelInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  v31 = [responseModelInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseModelInferenceTime];
  }

  responseHallucinationInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  v34 = [responseHallucinationInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseHallucinationInferenceTime];
  }

  responseSafetyInferenceTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  v37 = [responseSafetyInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseSafetyInferenceTime];
  }

  responseGenerationTime = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  v40 = [responseGenerationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseGenerationTime];
  }

  failureInfo = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  v43 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteFailureInfo];
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