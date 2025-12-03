@interface PNRODSchemaPNRODResponseGeneration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODResponseGeneration)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODResponseGeneration)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODResponseGeneration

- (PNRODSchemaPNRODResponseGeneration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = PNRODSchemaPNRODResponseGeneration;
  v5 = [(PNRODSchemaPNRODResponseGeneration *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODResponseGeneration setResponseGenerationType:](v5, "setResponseGenerationType:", [v8 intValue]);
    }

    v31 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v9];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationHandleTime:v10];
    }

    v30 = v9;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationOverrideTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationOverrideTime:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:{@"responseGenerationValidationTime", v11}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationValidationTime:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationCatalogTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationCatalogTime:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationInferenceTime:v18];
    }

    v32 = v6;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationHallucinationDetectionTime:v20];
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationGMSCallTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationGMSCallTime:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"responseGenerationCacheManagerTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationCacheManagerTime:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setFailureInfo:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODResponseGeneration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODResponseGeneration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODResponseGeneration *)self dictionaryRepresentation];
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
  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    dictionaryRepresentation = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_responseGenerationCacheManagerTime)
  {
    responseGenerationCacheManagerTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    dictionaryRepresentation2 = [responseGenerationCacheManagerTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"responseGenerationCacheManagerTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"responseGenerationCacheManagerTime"];
    }
  }

  if (self->_responseGenerationCatalogTime)
  {
    responseGenerationCatalogTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    dictionaryRepresentation3 = [responseGenerationCatalogTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"responseGenerationCatalogTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"responseGenerationCatalogTime"];
    }
  }

  if (self->_responseGenerationGMSCallTime)
  {
    responseGenerationGMSCallTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    dictionaryRepresentation4 = [responseGenerationGMSCallTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"responseGenerationGMSCallTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"responseGenerationGMSCallTime"];
    }
  }

  if (self->_responseGenerationHallucinationDetectionTime)
  {
    responseGenerationHallucinationDetectionTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    dictionaryRepresentation5 = [responseGenerationHallucinationDetectionTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    }
  }

  if (self->_responseGenerationHandleTime)
  {
    responseGenerationHandleTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    dictionaryRepresentation6 = [responseGenerationHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"responseGenerationHandleTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"responseGenerationHandleTime"];
    }
  }

  if (self->_responseGenerationID)
  {
    responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    dictionaryRepresentation7 = [responseGenerationID dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"responseGenerationID"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"responseGenerationID"];
    }
  }

  if (self->_responseGenerationInferenceTime)
  {
    responseGenerationInferenceTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    dictionaryRepresentation8 = [responseGenerationInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"responseGenerationInferenceTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"responseGenerationInferenceTime"];
    }
  }

  if (self->_responseGenerationOverrideTime)
  {
    responseGenerationOverrideTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    dictionaryRepresentation9 = [responseGenerationOverrideTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"responseGenerationOverrideTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"responseGenerationOverrideTime"];
    }
  }

  if (*&self->_has)
  {
    v31 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationType]- 1;
    if (v31 > 7)
    {
      v32 = @"PNROD_RGRESPONSESOURCE_UNKNOWN";
    }

    else
    {
      v32 = off_1E78E0CB0[v31];
    }

    [dictionary setObject:v32 forKeyedSubscript:@"responseGenerationType"];
  }

  if (self->_responseGenerationValidationTime)
  {
    responseGenerationValidationTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    dictionaryRepresentation10 = [responseGenerationValidationTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"responseGenerationValidationTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"responseGenerationValidationTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_responseGenerationID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_responseGenerationType;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationHandleTime hash];
  v7 = v5 ^ v6 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationOverrideTime hash];
  v8 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationValidationTime hash];
  v9 = v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationCatalogTime hash];
  v10 = v7 ^ v9 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationInferenceTime hash];
  v11 = [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationHallucinationDetectionTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationGMSCallTime hash];
  v13 = v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_responseGenerationCacheManagerTime hash];
  return v10 ^ v13 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  responseGenerationID2 = [equalCopy responseGenerationID];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationID3 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  if (responseGenerationID3)
  {
    v8 = responseGenerationID3;
    responseGenerationID4 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    responseGenerationID5 = [equalCopy responseGenerationID];
    v11 = [responseGenerationID4 isEqual:responseGenerationID5];

    if (!v11)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[96] & 1))
  {
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    responseGenerationType = self->_responseGenerationType;
    if (responseGenerationType != [equalCopy responseGenerationType])
    {
      goto LABEL_55;
    }
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  responseGenerationID2 = [equalCopy responseGenerationHandleTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationHandleTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  if (responseGenerationHandleTime)
  {
    v14 = responseGenerationHandleTime;
    responseGenerationHandleTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    responseGenerationHandleTime3 = [equalCopy responseGenerationHandleTime];
    v17 = [responseGenerationHandleTime2 isEqual:responseGenerationHandleTime3];

    if (!v17)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  responseGenerationID2 = [equalCopy responseGenerationOverrideTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationOverrideTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  if (responseGenerationOverrideTime)
  {
    v19 = responseGenerationOverrideTime;
    responseGenerationOverrideTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    responseGenerationOverrideTime3 = [equalCopy responseGenerationOverrideTime];
    v22 = [responseGenerationOverrideTime2 isEqual:responseGenerationOverrideTime3];

    if (!v22)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  responseGenerationID2 = [equalCopy responseGenerationValidationTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationValidationTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  if (responseGenerationValidationTime)
  {
    v24 = responseGenerationValidationTime;
    responseGenerationValidationTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    responseGenerationValidationTime3 = [equalCopy responseGenerationValidationTime];
    v27 = [responseGenerationValidationTime2 isEqual:responseGenerationValidationTime3];

    if (!v27)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  responseGenerationID2 = [equalCopy responseGenerationCatalogTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationCatalogTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  if (responseGenerationCatalogTime)
  {
    v29 = responseGenerationCatalogTime;
    responseGenerationCatalogTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    responseGenerationCatalogTime3 = [equalCopy responseGenerationCatalogTime];
    v32 = [responseGenerationCatalogTime2 isEqual:responseGenerationCatalogTime3];

    if (!v32)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  responseGenerationID2 = [equalCopy responseGenerationInferenceTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationInferenceTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  if (responseGenerationInferenceTime)
  {
    v34 = responseGenerationInferenceTime;
    responseGenerationInferenceTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    responseGenerationInferenceTime3 = [equalCopy responseGenerationInferenceTime];
    v37 = [responseGenerationInferenceTime2 isEqual:responseGenerationInferenceTime3];

    if (!v37)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  responseGenerationID2 = [equalCopy responseGenerationHallucinationDetectionTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationHallucinationDetectionTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  if (responseGenerationHallucinationDetectionTime)
  {
    v39 = responseGenerationHallucinationDetectionTime;
    responseGenerationHallucinationDetectionTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    responseGenerationHallucinationDetectionTime3 = [equalCopy responseGenerationHallucinationDetectionTime];
    v42 = [responseGenerationHallucinationDetectionTime2 isEqual:responseGenerationHallucinationDetectionTime3];

    if (!v42)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  responseGenerationID2 = [equalCopy responseGenerationGMSCallTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationGMSCallTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  if (responseGenerationGMSCallTime)
  {
    v44 = responseGenerationGMSCallTime;
    responseGenerationGMSCallTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    responseGenerationGMSCallTime3 = [equalCopy responseGenerationGMSCallTime];
    v47 = [responseGenerationGMSCallTime2 isEqual:responseGenerationGMSCallTime3];

    if (!v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  responseGenerationID2 = [equalCopy responseGenerationCacheManagerTime];
  if ((responseGenerationID != 0) == (responseGenerationID2 == 0))
  {
    goto LABEL_54;
  }

  responseGenerationCacheManagerTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  if (responseGenerationCacheManagerTime)
  {
    v49 = responseGenerationCacheManagerTime;
    responseGenerationCacheManagerTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    responseGenerationCacheManagerTime3 = [equalCopy responseGenerationCacheManagerTime];
    v52 = [responseGenerationCacheManagerTime2 isEqual:responseGenerationCacheManagerTime3];

    if (!v52)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
  responseGenerationID2 = [equalCopy failureInfo];
  if ((responseGenerationID != 0) != (responseGenerationID2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    if (!failureInfo)
    {

LABEL_58:
      v58 = 1;
      goto LABEL_56;
    }

    v54 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v57 = [failureInfo2 isEqual:failureInfo3];

    if (v57)
    {
      goto LABEL_58;
    }
  }

  else
  {
LABEL_54:
  }

LABEL_55:
  v58 = 0;
LABEL_56:

  return v58;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];

  if (responseGenerationID)
  {
    responseGenerationID2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  responseGenerationHandleTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];

  if (responseGenerationHandleTime)
  {
    responseGenerationHandleTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationOverrideTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];

  if (responseGenerationOverrideTime)
  {
    responseGenerationOverrideTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationValidationTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];

  if (responseGenerationValidationTime)
  {
    responseGenerationValidationTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationCatalogTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];

  if (responseGenerationCatalogTime)
  {
    responseGenerationCatalogTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationInferenceTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];

  if (responseGenerationInferenceTime)
  {
    responseGenerationInferenceTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationHallucinationDetectionTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];

  if (responseGenerationHallucinationDetectionTime)
  {
    responseGenerationHallucinationDetectionTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationGMSCallTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];

  if (responseGenerationGMSCallTime)
  {
    responseGenerationGMSCallTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    PBDataWriterWriteSubmessage();
  }

  responseGenerationCacheManagerTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];

  if (responseGenerationCacheManagerTime)
  {
    responseGenerationCacheManagerTime2 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];

  v23 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODResponseGeneration;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:policyCopy];
  responseGenerationID = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  v7 = [responseGenerationID applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationID];
  }

  responseGenerationHandleTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  v10 = [responseGenerationHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationHandleTime];
  }

  responseGenerationOverrideTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  v13 = [responseGenerationOverrideTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationOverrideTime];
  }

  responseGenerationValidationTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  v16 = [responseGenerationValidationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationValidationTime];
  }

  responseGenerationCatalogTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  v19 = [responseGenerationCatalogTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationCatalogTime];
  }

  responseGenerationInferenceTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  v22 = [responseGenerationInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationInferenceTime];
  }

  responseGenerationHallucinationDetectionTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  v25 = [responseGenerationHallucinationDetectionTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationHallucinationDetectionTime];
  }

  responseGenerationGMSCallTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  v28 = [responseGenerationGMSCallTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationGMSCallTime];
  }

  responseGenerationCacheManagerTime = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  v31 = [responseGenerationCacheManagerTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationCacheManagerTime];
  }

  failureInfo = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
  v34 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteFailureInfo];
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