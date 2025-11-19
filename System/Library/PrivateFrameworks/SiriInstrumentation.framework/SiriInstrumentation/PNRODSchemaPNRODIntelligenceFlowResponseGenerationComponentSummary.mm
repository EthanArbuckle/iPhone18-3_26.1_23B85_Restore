@interface PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasResponseInferenceLocation:(BOOL)a3;
- (void)setHasResponseIsFallback:(BOOL)a3;
- (void)setHasResponseIsStaticDialogueProvided:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary

- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary;
  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)&v51 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"planId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setPlanId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"clientRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setClientRequestId:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"rawQueryEventId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaUUID alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setRawQueryEventId:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"responseIsValidInput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsValidInput:](v5, "setResponseIsValidInput:", [v12 BOOLValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"responseIsStaticDialogueProvided"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsStaticDialogueProvided:](v5, "setResponseIsStaticDialogueProvided:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"responseMobileAssetVersion"];
    objc_opt_class();
    v50 = v14;
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseMobileAssetVersion:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"responseInferenceLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseInferenceLocation:](v5, "setResponseInferenceLocation:", [v16 intValue]);
    }

    v42 = v16;
    v17 = [v4 objectForKeyedSubscript:@"responseIsFallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary setResponseIsFallback:](v5, "setResponseIsFallback:", [v17 BOOLValue]);
    }

    v41 = v17;
    v18 = [v4 objectForKeyedSubscript:@"responsePreparationTime"];
    objc_opt_class();
    v49 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponsePreparationTime:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"responseInputValidationTime"];
    objc_opt_class();
    v48 = v20;
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseInputValidationTime:v21];
    }

    v47 = v6;
    v22 = [v4 objectForKeyedSubscript:@"responseOverridesTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseOverridesTime:v23];
    }

    v40 = v22;
    v46 = v8;
    v24 = [v4 objectForKeyedSubscript:@"responseCatalogueRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseCatalogueRetrievalTime:v25];
    }

    v45 = v10;
    v26 = [v4 objectForKeyedSubscript:@"responseCATHydrationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseCATHydrationTime:v27];
    }

    v44 = v12;
    v28 = [v4 objectForKeyedSubscript:@"responseModelInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v28];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseModelInferenceTime:v29];
    }

    v43 = v13;
    v30 = [v4 objectForKeyedSubscript:@"responseHallucinationInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v30];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseHallucinationInferenceTime:v31];
    }

    v32 = [v4 objectForKeyedSubscript:@"responseSafetyInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v32];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseSafetyInferenceTime:v33];
    }

    v34 = [v4 objectForKeyedSubscript:@"responseGenerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v34];
      [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)v5 setResponseGenerationTime:v35];
    }

    v36 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self dictionaryRepresentation];
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
    v4 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
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
    v7 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
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

  if (self->_planId)
  {
    v10 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"planId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"planId"];
    }
  }

  if (self->_rawQueryEventId)
  {
    v13 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"rawQueryEventId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"rawQueryEventId"];
    }
  }

  if (self->_responseCATHydrationTime)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"responseCATHydrationTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"responseCATHydrationTime"];
    }
  }

  if (self->_responseCatalogueRetrievalTime)
  {
    v19 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"responseCatalogueRetrievalTime"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"responseCatalogueRetrievalTime"];
    }
  }

  if (self->_responseGenerationTime)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"responseGenerationTime"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"responseGenerationTime"];
    }
  }

  if (self->_responseHallucinationInferenceTime)
  {
    v25 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"responseHallucinationInferenceTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"responseHallucinationInferenceTime"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInferenceLocation];
    v29 = @"RESPONSEINFERENCELOCTION_UNKNOWN";
    if (v28 == 1)
    {
      v29 = @"RESPONSEINFERENCELOCTION_ON_DEVICE";
    }

    if (v28 == 2)
    {
      v30 = @"RESPONSEINFERENCELOCTION_SERVER";
    }

    else
    {
      v30 = v29;
    }

    [v3 setObject:v30 forKeyedSubscript:@"responseInferenceLocation"];
  }

  if (self->_responseInputValidationTime)
  {
    v31 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"responseInputValidationTime"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"responseInputValidationTime"];
    }
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v40 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary responseIsFallback](self, "responseIsFallback")}];
    [v3 setObject:v40 forKeyedSubscript:@"responseIsFallback"];

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
  [v3 setObject:v41 forKeyedSubscript:@"responseIsStaticDialogueProvided"];

  if (*&self->_has)
  {
LABEL_56:
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary responseIsValidInput](self, "responseIsValidInput")}];
    [v3 setObject:v35 forKeyedSubscript:@"responseIsValidInput"];
  }

LABEL_57:
  if (self->_responseMobileAssetVersion)
  {
    v36 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
    v37 = [v36 copy];
    [v3 setObject:v37 forKeyedSubscript:@"responseMobileAssetVersion"];
  }

  if (self->_responseModelInferenceTime)
  {
    v38 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    v39 = [v38 dictionaryRepresentation];
    if (v39)
    {
      [v3 setObject:v39 forKeyedSubscript:@"responseModelInferenceTime"];
    }

    else
    {
      v42 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v42 forKeyedSubscript:@"responseModelInferenceTime"];
    }
  }

  if (self->_responseOverridesTime)
  {
    v43 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    v44 = [v43 dictionaryRepresentation];
    if (v44)
    {
      [v3 setObject:v44 forKeyedSubscript:@"responseOverridesTime"];
    }

    else
    {
      v45 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v45 forKeyedSubscript:@"responseOverridesTime"];
    }
  }

  if (self->_responsePreparationTime)
  {
    v46 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    v47 = [v46 dictionaryRepresentation];
    if (v47)
    {
      [v3 setObject:v47 forKeyedSubscript:@"responsePreparationTime"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v48 forKeyedSubscript:@"responsePreparationTime"];
    }
  }

  if (self->_responseSafetyInferenceTime)
  {
    v49 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    v50 = [v49 dictionaryRepresentation];
    if (v50)
    {
      [v3 setObject:v50 forKeyedSubscript:@"responseSafetyInferenceTime"];
    }

    else
    {
      v51 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v51 forKeyedSubscript:@"responseSafetyInferenceTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_86;
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  v6 = [v4 planId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v7 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    v10 = [v4 planId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  v6 = [v4 clientRequestId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
    v15 = [v4 clientRequestId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  v6 = [v4 rawQueryEventId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
    v20 = [v4 rawQueryEventId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  has = self->_has;
  v23 = v4[136];
  if ((*&has & 1) != (v23 & 1))
  {
    goto LABEL_86;
  }

  if (*&has)
  {
    responseIsValidInput = self->_responseIsValidInput;
    if (responseIsValidInput != [v4 responseIsValidInput])
    {
      goto LABEL_86;
    }

    has = self->_has;
    v23 = v4[136];
  }

  v25 = (*&has >> 1) & 1;
  if (v25 != ((v23 >> 1) & 1))
  {
    goto LABEL_86;
  }

  if (v25)
  {
    responseIsStaticDialogueProvided = self->_responseIsStaticDialogueProvided;
    if (responseIsStaticDialogueProvided != [v4 responseIsStaticDialogueProvided])
    {
      goto LABEL_86;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
  v6 = [v4 responseMobileAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
  if (v27)
  {
    v28 = v27;
    v29 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];
    v30 = [v4 responseMobileAssetVersion];
    v31 = [v29 isEqual:v30];

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
  v34 = v4[136];
  if (v33 != ((v34 >> 2) & 1))
  {
    goto LABEL_86;
  }

  if (v33)
  {
    responseInferenceLocation = self->_responseInferenceLocation;
    if (responseInferenceLocation != [v4 responseInferenceLocation])
    {
      goto LABEL_86;
    }

    v32 = self->_has;
    v34 = v4[136];
  }

  v36 = (*&v32 >> 3) & 1;
  if (v36 != ((v34 >> 3) & 1))
  {
    goto LABEL_86;
  }

  if (v36)
  {
    responseIsFallback = self->_responseIsFallback;
    if (responseIsFallback != [v4 responseIsFallback])
    {
      goto LABEL_86;
    }
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  v6 = [v4 responsePreparationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v38 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    v41 = [v4 responsePreparationTime];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  v6 = [v4 responseInputValidationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v43 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    v46 = [v4 responseInputValidationTime];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  v6 = [v4 responseOverridesTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v48 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    v51 = [v4 responseOverridesTime];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  v6 = [v4 responseCatalogueRetrievalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v53 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  if (v53)
  {
    v54 = v53;
    v55 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    v56 = [v4 responseCatalogueRetrievalTime];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  v6 = [v4 responseCATHydrationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v58 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  if (v58)
  {
    v59 = v58;
    v60 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    v61 = [v4 responseCATHydrationTime];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  v6 = [v4 responseModelInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v63 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  if (v63)
  {
    v64 = v63;
    v65 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    v66 = [v4 responseModelInferenceTime];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  v6 = [v4 responseHallucinationInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v68 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  if (v68)
  {
    v69 = v68;
    v70 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    v71 = [v4 responseHallucinationInferenceTime];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  v6 = [v4 responseSafetyInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v73 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  if (v73)
  {
    v74 = v73;
    v75 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    v76 = [v4 responseSafetyInferenceTime];
    v77 = [v75 isEqual:v76];

    if (!v77)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  v6 = [v4 responseGenerationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_85;
  }

  v78 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  if (v78)
  {
    v79 = v78;
    v80 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    v81 = [v4 responseGenerationTime];
    v82 = [v80 isEqual:v81];

    if (!v82)
    {
      goto LABEL_86;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_85:

    goto LABEL_86;
  }

  v83 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  if (!v83)
  {

LABEL_89:
    v88 = 1;
    goto LABEL_87;
  }

  v84 = v83;
  v85 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  v86 = [v4 failureInfo];
  v87 = [v85 isEqual:v86];

  if (v87)
  {
    goto LABEL_89;
  }

LABEL_86:
  v88 = 0;
LABEL_87:

  return v88;
}

- (void)writeTo:(id)a3
{
  v34 = a3;
  v4 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
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

  v11 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseMobileAssetVersion];

  if (v11)
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

  v13 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];

  if (v13)
  {
    v14 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];

  if (v15)
  {
    v16 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];

  if (v17)
  {
    v18 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
    PBDataWriterWriteSubmessage();
  }

  v19 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];

  if (v19)
  {
    v20 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];

  if (v21)
  {
    v22 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
    PBDataWriterWriteSubmessage();
  }

  v23 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];

  if (v23)
  {
    v24 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v25 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];

  if (v25)
  {
    v26 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];

  if (v27)
  {
    v28 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v29 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];

  if (v29)
  {
    v30 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
    PBDataWriterWriteSubmessage();
  }

  v31 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];

  v32 = v34;
  if (v31)
  {
    v33 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v32 = v34;
  }
}

- (void)setHasResponseIsFallback:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResponseInferenceLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasResponseIsStaticDialogueProvided:(BOOL)a3
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
  v46.receiver = self;
  v46.super_class = PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary;
  v5 = [(SISchemaInstrumentationMessage *)&v46 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self planId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deletePlanId];
  }

  v9 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self clientRequestId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteClientRequestId];
  }

  v12 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self rawQueryEventId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteRawQueryEventId];
  }

  v15 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responsePreparationTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponsePreparationTime];
  }

  v18 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseInputValidationTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseInputValidationTime];
  }

  v21 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseOverridesTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseOverridesTime];
  }

  v24 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCatalogueRetrievalTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseCatalogueRetrievalTime];
  }

  v27 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseCATHydrationTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseCATHydrationTime];
  }

  v30 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseModelInferenceTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseModelInferenceTime];
  }

  v33 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseHallucinationInferenceTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseHallucinationInferenceTime];
  }

  v36 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseSafetyInferenceTime];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseSafetyInferenceTime];
  }

  v39 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self responseGenerationTime];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self deleteResponseGenerationTime];
  }

  v42 = [(PNRODSchemaPNRODIntelligenceFlowResponseGenerationComponentSummary *)self failureInfo];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
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