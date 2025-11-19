@interface PNRODSchemaPNRODResponseGeneration
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODResponseGeneration)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODResponseGeneration)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODResponseGeneration

- (PNRODSchemaPNRODResponseGeneration)initWithDictionary:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = PNRODSchemaPNRODResponseGeneration;
  v5 = [(PNRODSchemaPNRODResponseGeneration *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"responseGenerationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"responseGenerationType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODResponseGeneration setResponseGenerationType:](v5, "setResponseGenerationType:", [v8 intValue]);
    }

    v31 = v8;
    v9 = [v4 objectForKeyedSubscript:@"responseGenerationHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v9];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationHandleTime:v10];
    }

    v30 = v9;
    v11 = [v4 objectForKeyedSubscript:@"responseGenerationOverrideTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationOverrideTime:v12];
    }

    v13 = [v4 objectForKeyedSubscript:{@"responseGenerationValidationTime", v11}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationValidationTime:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"responseGenerationCatalogTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationCatalogTime:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"responseGenerationInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationInferenceTime:v18];
    }

    v32 = v6;
    v19 = [v4 objectForKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationHallucinationDetectionTime:v20];
    }

    v21 = [v4 objectForKeyedSubscript:@"responseGenerationGMSCallTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationGMSCallTime:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"responseGenerationCacheManagerTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODResponseGeneration *)v5 setResponseGenerationCacheManagerTime:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODResponseGeneration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODResponseGeneration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODResponseGeneration *)self dictionaryRepresentation];
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
  if (self->_failureInfo)
  {
    v4 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_responseGenerationCacheManagerTime)
  {
    v7 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"responseGenerationCacheManagerTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"responseGenerationCacheManagerTime"];
    }
  }

  if (self->_responseGenerationCatalogTime)
  {
    v10 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"responseGenerationCatalogTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"responseGenerationCatalogTime"];
    }
  }

  if (self->_responseGenerationGMSCallTime)
  {
    v13 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"responseGenerationGMSCallTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"responseGenerationGMSCallTime"];
    }
  }

  if (self->_responseGenerationHallucinationDetectionTime)
  {
    v16 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"responseGenerationHallucinationDetectionTime"];
    }
  }

  if (self->_responseGenerationHandleTime)
  {
    v19 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"responseGenerationHandleTime"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"responseGenerationHandleTime"];
    }
  }

  if (self->_responseGenerationID)
  {
    v22 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"responseGenerationID"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"responseGenerationID"];
    }
  }

  if (self->_responseGenerationInferenceTime)
  {
    v25 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"responseGenerationInferenceTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"responseGenerationInferenceTime"];
    }
  }

  if (self->_responseGenerationOverrideTime)
  {
    v28 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"responseGenerationOverrideTime"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"responseGenerationOverrideTime"];
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

    [v3 setObject:v32 forKeyedSubscript:@"responseGenerationType"];
  }

  if (self->_responseGenerationValidationTime)
  {
    v33 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"responseGenerationValidationTime"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"responseGenerationValidationTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_55;
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  v6 = [v4 responseGenerationID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v7 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    v10 = [v4 responseGenerationID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[96] & 1))
  {
    goto LABEL_55;
  }

  if (*&self->_has)
  {
    responseGenerationType = self->_responseGenerationType;
    if (responseGenerationType != [v4 responseGenerationType])
    {
      goto LABEL_55;
    }
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  v6 = [v4 responseGenerationHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v13 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  if (v13)
  {
    v14 = v13;
    v15 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    v16 = [v4 responseGenerationHandleTime];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  v6 = [v4 responseGenerationOverrideTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v18 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  if (v18)
  {
    v19 = v18;
    v20 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    v21 = [v4 responseGenerationOverrideTime];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  v6 = [v4 responseGenerationValidationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v23 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  if (v23)
  {
    v24 = v23;
    v25 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    v26 = [v4 responseGenerationValidationTime];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  v6 = [v4 responseGenerationCatalogTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v28 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    v31 = [v4 responseGenerationCatalogTime];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  v6 = [v4 responseGenerationInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v33 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    v36 = [v4 responseGenerationInferenceTime];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  v6 = [v4 responseGenerationHallucinationDetectionTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v38 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    v41 = [v4 responseGenerationHallucinationDetectionTime];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  v6 = [v4 responseGenerationGMSCallTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v43 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    v46 = [v4 responseGenerationGMSCallTime];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  v6 = [v4 responseGenerationCacheManagerTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_54;
  }

  v48 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    v51 = [v4 responseGenerationCacheManagerTime];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_55;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v53 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    if (!v53)
    {

LABEL_58:
      v58 = 1;
      goto LABEL_56;
    }

    v54 = v53;
    v55 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    v56 = [v4 failureInfo];
    v57 = [v55 isEqual:v56];

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

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];

  v23 = v25;
  if (v22)
  {
    v24 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = PNRODSchemaPNRODResponseGeneration;
  v5 = [(SISchemaInstrumentationMessage *)&v37 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationID];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationID];
  }

  v9 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHandleTime];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationHandleTime];
  }

  v12 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationOverrideTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationOverrideTime];
  }

  v15 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationValidationTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationValidationTime];
  }

  v18 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCatalogTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationCatalogTime];
  }

  v21 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationInferenceTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationInferenceTime];
  }

  v24 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationHallucinationDetectionTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationHallucinationDetectionTime];
  }

  v27 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationGMSCallTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationGMSCallTime];
  }

  v30 = [(PNRODSchemaPNRODResponseGeneration *)self responseGenerationCacheManagerTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODResponseGeneration *)self deleteResponseGenerationCacheManagerTime];
  }

  v33 = [(PNRODSchemaPNRODResponseGeneration *)self failureInfo];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
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