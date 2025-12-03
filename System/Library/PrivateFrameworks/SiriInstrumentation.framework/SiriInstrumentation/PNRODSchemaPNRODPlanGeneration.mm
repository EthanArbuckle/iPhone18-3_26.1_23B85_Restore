@interface PNRODSchemaPNRODPlanGeneration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODPlanGeneration)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODPlanGeneration)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPgOverridesMatched:(BOOL)matched;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODPlanGeneration

- (PNRODSchemaPNRODPlanGeneration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v38.receiver = self;
  v38.super_class = PNRODSchemaPNRODPlanGeneration;
  v5 = [(PNRODSchemaPNRODPlanGeneration *)&v38 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPlanCycleId:v7];
    }

    v37 = v6;
    v8 = [dictionaryCopy objectForKeyedSubscript:@"pgModelInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanGeneration setPgModelInterface:](v5, "setPgModelInterface:", [v8 intValue]);
    }

    v36 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"pgModelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgModelIdentifier:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"pgOverridesAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgOverridesAssetVersion:v12];
    }

    v34 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"pgOverridesMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanGeneration setPgOverridesMatched:](v5, "setPgOverridesMatched:", [v13 BOOLValue]);
    }

    v33 = v13;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"pgPlanGenTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgPlanGenTotalTime:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"pgFullPlannerHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerHandleTime:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:{@"pgModelInferenceTime", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgModelInferenceTime:v19];
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"pgOverridesTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgOverridesTime:v21];
    }

    v35 = v9;
    v22 = [dictionaryCopy objectForKeyedSubscript:@"pgPrescribedPlanTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgPrescribedPlanTime:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerPreInferenceTime:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerPostInferenceTime:v27];
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v28];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setFailureInfo:v29];
    }

    v30 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODPlanGeneration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPlanGeneration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODPlanGeneration *)self dictionaryRepresentation];
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
    failureInfo = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
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

  if (self->_pgFullPlannerHandleTime)
  {
    pgFullPlannerHandleTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    dictionaryRepresentation2 = [pgFullPlannerHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"pgFullPlannerHandleTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"pgFullPlannerHandleTime"];
    }
  }

  if (self->_pgFullPlannerPostInferenceTime)
  {
    pgFullPlannerPostInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    dictionaryRepresentation3 = [pgFullPlannerPostInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    }
  }

  if (self->_pgFullPlannerPreInferenceTime)
  {
    pgFullPlannerPreInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    dictionaryRepresentation4 = [pgFullPlannerPreInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    }
  }

  if (self->_pgModelIdentifier)
  {
    pgModelIdentifier = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
    v17 = [pgModelIdentifier copy];
    [dictionary setObject:v17 forKeyedSubscript:@"pgModelIdentifier"];
  }

  if (self->_pgModelInferenceTime)
  {
    pgModelInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    dictionaryRepresentation5 = [pgModelInferenceTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"pgModelInferenceTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"pgModelInferenceTime"];
    }
  }

  if (*&self->_has)
  {
    v21 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInterface]- 1;
    if (v21 > 2)
    {
      v22 = @"PNROD_PGMODELINTERFACE_UNKNOWN";
    }

    else
    {
      v22 = off_1E78E0C78[v21];
    }

    [dictionary setObject:v22 forKeyedSubscript:@"pgModelInterface"];
  }

  if (self->_pgOverridesAssetVersion)
  {
    pgOverridesAssetVersion = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
    v24 = [pgOverridesAssetVersion copy];
    [dictionary setObject:v24 forKeyedSubscript:@"pgOverridesAssetVersion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODPlanGeneration pgOverridesMatched](self, "pgOverridesMatched")}];
    [dictionary setObject:v25 forKeyedSubscript:@"pgOverridesMatched"];
  }

  if (self->_pgOverridesTime)
  {
    pgOverridesTime = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    dictionaryRepresentation6 = [pgOverridesTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"pgOverridesTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"pgOverridesTime"];
    }
  }

  if (self->_pgPlanGenTotalTime)
  {
    pgPlanGenTotalTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    dictionaryRepresentation7 = [pgPlanGenTotalTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"pgPlanGenTotalTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"pgPlanGenTotalTime"];
    }
  }

  if (self->_pgPrescribedPlanTime)
  {
    pgPrescribedPlanTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    dictionaryRepresentation8 = [pgPrescribedPlanTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"pgPrescribedPlanTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"pgPrescribedPlanTime"];
    }
  }

  if (self->_planCycleId)
  {
    planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    dictionaryRepresentation9 = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"planCycleId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_planCycleId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_pgModelInterface;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_pgModelIdentifier hash];
  v6 = [(NSString *)self->_pgOverridesAssetVersion hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_pgOverridesMatched;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_pgPlanGenTotalTime hash];
  v10 = v8 ^ v9 ^ [(PNRODSchemaPNRODMetricDuration *)self->_pgFullPlannerHandleTime hash];
  v11 = [(PNRODSchemaPNRODMetricDuration *)self->_pgModelInferenceTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_pgOverridesTime hash];
  v13 = v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_pgPrescribedPlanTime hash];
  v14 = v10 ^ v13 ^ [(PNRODSchemaPNRODMetricDuration *)self->_pgFullPlannerPreInferenceTime hash];
  v15 = [(PNRODSchemaPNRODMetricDuration *)self->_pgFullPlannerPostInferenceTime hash];
  return v14 ^ v15 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  planCycleId2 = [equalCopy planCycleId];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  planCycleId3 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  if (planCycleId3)
  {
    v8 = planCycleId3;
    planCycleId4 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    planCycleId5 = [equalCopy planCycleId];
    v11 = [planCycleId4 isEqual:planCycleId5];

    if (!v11)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[112] & 1))
  {
    goto LABEL_63;
  }

  if (*&self->_has)
  {
    pgModelInterface = self->_pgModelInterface;
    if (pgModelInterface != [equalCopy pgModelInterface])
    {
      goto LABEL_63;
    }
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
  planCycleId2 = [equalCopy pgModelIdentifier];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgModelIdentifier = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
  if (pgModelIdentifier)
  {
    v14 = pgModelIdentifier;
    pgModelIdentifier2 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
    pgModelIdentifier3 = [equalCopy pgModelIdentifier];
    v17 = [pgModelIdentifier2 isEqual:pgModelIdentifier3];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
  planCycleId2 = [equalCopy pgOverridesAssetVersion];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgOverridesAssetVersion = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
  if (pgOverridesAssetVersion)
  {
    v19 = pgOverridesAssetVersion;
    pgOverridesAssetVersion2 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
    pgOverridesAssetVersion3 = [equalCopy pgOverridesAssetVersion];
    v22 = [pgOverridesAssetVersion2 isEqual:pgOverridesAssetVersion3];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 1) & 1;
  if (v23 != ((equalCopy[112] >> 1) & 1))
  {
    goto LABEL_63;
  }

  if (v23)
  {
    pgOverridesMatched = self->_pgOverridesMatched;
    if (pgOverridesMatched != [equalCopy pgOverridesMatched])
    {
      goto LABEL_63;
    }
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  planCycleId2 = [equalCopy pgPlanGenTotalTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgPlanGenTotalTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  if (pgPlanGenTotalTime)
  {
    v26 = pgPlanGenTotalTime;
    pgPlanGenTotalTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    pgPlanGenTotalTime3 = [equalCopy pgPlanGenTotalTime];
    v29 = [pgPlanGenTotalTime2 isEqual:pgPlanGenTotalTime3];

    if (!v29)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  planCycleId2 = [equalCopy pgFullPlannerHandleTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgFullPlannerHandleTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  if (pgFullPlannerHandleTime)
  {
    v31 = pgFullPlannerHandleTime;
    pgFullPlannerHandleTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    pgFullPlannerHandleTime3 = [equalCopy pgFullPlannerHandleTime];
    v34 = [pgFullPlannerHandleTime2 isEqual:pgFullPlannerHandleTime3];

    if (!v34)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  planCycleId2 = [equalCopy pgModelInferenceTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgModelInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  if (pgModelInferenceTime)
  {
    v36 = pgModelInferenceTime;
    pgModelInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    pgModelInferenceTime3 = [equalCopy pgModelInferenceTime];
    v39 = [pgModelInferenceTime2 isEqual:pgModelInferenceTime3];

    if (!v39)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  planCycleId2 = [equalCopy pgOverridesTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgOverridesTime = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  if (pgOverridesTime)
  {
    v41 = pgOverridesTime;
    pgOverridesTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    pgOverridesTime3 = [equalCopy pgOverridesTime];
    v44 = [pgOverridesTime2 isEqual:pgOverridesTime3];

    if (!v44)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  planCycleId2 = [equalCopy pgPrescribedPlanTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgPrescribedPlanTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  if (pgPrescribedPlanTime)
  {
    v46 = pgPrescribedPlanTime;
    pgPrescribedPlanTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    pgPrescribedPlanTime3 = [equalCopy pgPrescribedPlanTime];
    v49 = [pgPrescribedPlanTime2 isEqual:pgPrescribedPlanTime3];

    if (!v49)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  planCycleId2 = [equalCopy pgFullPlannerPreInferenceTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgFullPlannerPreInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  if (pgFullPlannerPreInferenceTime)
  {
    v51 = pgFullPlannerPreInferenceTime;
    pgFullPlannerPreInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    pgFullPlannerPreInferenceTime3 = [equalCopy pgFullPlannerPreInferenceTime];
    v54 = [pgFullPlannerPreInferenceTime2 isEqual:pgFullPlannerPreInferenceTime3];

    if (!v54)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  planCycleId2 = [equalCopy pgFullPlannerPostInferenceTime];
  if ((planCycleId != 0) == (planCycleId2 == 0))
  {
    goto LABEL_62;
  }

  pgFullPlannerPostInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  if (pgFullPlannerPostInferenceTime)
  {
    v56 = pgFullPlannerPostInferenceTime;
    pgFullPlannerPostInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    pgFullPlannerPostInferenceTime3 = [equalCopy pgFullPlannerPostInferenceTime];
    v59 = [pgFullPlannerPostInferenceTime2 isEqual:pgFullPlannerPostInferenceTime3];

    if (!v59)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
  planCycleId2 = [equalCopy failureInfo];
  if ((planCycleId != 0) != (planCycleId2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    if (!failureInfo)
    {

LABEL_66:
      v65 = 1;
      goto LABEL_64;
    }

    v61 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v64 = [failureInfo2 isEqual:failureInfo3];

    if (v64)
    {
      goto LABEL_66;
    }
  }

  else
  {
LABEL_62:
  }

LABEL_63:
  v65 = 0;
LABEL_64:

  return v65;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];

  if (planCycleId)
  {
    planCycleId2 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  pgModelIdentifier = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];

  if (pgModelIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  pgOverridesAssetVersion = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];

  if (pgOverridesAssetVersion)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  pgPlanGenTotalTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];

  if (pgPlanGenTotalTime)
  {
    pgPlanGenTotalTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    PBDataWriterWriteSubmessage();
  }

  pgFullPlannerHandleTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];

  if (pgFullPlannerHandleTime)
  {
    pgFullPlannerHandleTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    PBDataWriterWriteSubmessage();
  }

  pgModelInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];

  if (pgModelInferenceTime)
  {
    pgModelInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  pgOverridesTime = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];

  if (pgOverridesTime)
  {
    pgOverridesTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    PBDataWriterWriteSubmessage();
  }

  pgPrescribedPlanTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];

  if (pgPrescribedPlanTime)
  {
    pgPrescribedPlanTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    PBDataWriterWriteSubmessage();
  }

  pgFullPlannerPreInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];

  if (pgFullPlannerPreInferenceTime)
  {
    pgFullPlannerPreInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  pgFullPlannerPostInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];

  if (pgFullPlannerPostInferenceTime)
  {
    pgFullPlannerPostInferenceTime2 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];

  v23 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v23 = toCopy;
  }
}

- (void)setHasPgOverridesMatched:(BOOL)matched
{
  if (matched)
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
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODPlanGeneration;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:policyCopy];
  planCycleId = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  v7 = [planCycleId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePlanCycleId];
  }

  pgPlanGenTotalTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  v10 = [pgPlanGenTotalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgPlanGenTotalTime];
  }

  pgFullPlannerHandleTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  v13 = [pgFullPlannerHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerHandleTime];
  }

  pgModelInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  v16 = [pgModelInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgModelInferenceTime];
  }

  pgOverridesTime = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  v19 = [pgOverridesTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgOverridesTime];
  }

  pgPrescribedPlanTime = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  v22 = [pgPrescribedPlanTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgPrescribedPlanTime];
  }

  pgFullPlannerPreInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  v25 = [pgFullPlannerPreInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerPreInferenceTime];
  }

  pgFullPlannerPostInferenceTime = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  v28 = [pgFullPlannerPostInferenceTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerPostInferenceTime];
  }

  failureInfo = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
  v31 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deleteFailureInfo];
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