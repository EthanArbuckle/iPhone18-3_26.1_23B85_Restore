@interface PNRODSchemaPNRODPlanGeneration
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODPlanGeneration)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODPlanGeneration)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPgOverridesMatched:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODPlanGeneration

- (PNRODSchemaPNRODPlanGeneration)initWithDictionary:(id)a3
{
  v4 = a3;
  v38.receiver = self;
  v38.super_class = PNRODSchemaPNRODPlanGeneration;
  v5 = [(PNRODSchemaPNRODPlanGeneration *)&v38 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPlanCycleId:v7];
    }

    v37 = v6;
    v8 = [v4 objectForKeyedSubscript:@"pgModelInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanGeneration setPgModelInterface:](v5, "setPgModelInterface:", [v8 intValue]);
    }

    v36 = v8;
    v9 = [v4 objectForKeyedSubscript:@"pgModelIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgModelIdentifier:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"pgOverridesAssetVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgOverridesAssetVersion:v12];
    }

    v34 = v11;
    v13 = [v4 objectForKeyedSubscript:@"pgOverridesMatched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODPlanGeneration setPgOverridesMatched:](v5, "setPgOverridesMatched:", [v13 BOOLValue]);
    }

    v33 = v13;
    v14 = [v4 objectForKeyedSubscript:@"pgPlanGenTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgPlanGenTotalTime:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"pgFullPlannerHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerHandleTime:v17];
    }

    v18 = [v4 objectForKeyedSubscript:{@"pgModelInferenceTime", v14}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgModelInferenceTime:v19];
    }

    v20 = [v4 objectForKeyedSubscript:@"pgOverridesTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgOverridesTime:v21];
    }

    v35 = v9;
    v22 = [v4 objectForKeyedSubscript:@"pgPrescribedPlanTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgPrescribedPlanTime:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerPreInferenceTime:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODPlanGeneration *)v5 setPgFullPlannerPostInferenceTime:v27];
    }

    v28 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODPlanGeneration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODPlanGeneration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODPlanGeneration *)self dictionaryRepresentation];
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
    v4 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
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

  if (self->_pgFullPlannerHandleTime)
  {
    v7 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"pgFullPlannerHandleTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"pgFullPlannerHandleTime"];
    }
  }

  if (self->_pgFullPlannerPostInferenceTime)
  {
    v10 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"pgFullPlannerPostInferenceTime"];
    }
  }

  if (self->_pgFullPlannerPreInferenceTime)
  {
    v13 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"pgFullPlannerPreInferenceTime"];
    }
  }

  if (self->_pgModelIdentifier)
  {
    v16 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"pgModelIdentifier"];
  }

  if (self->_pgModelInferenceTime)
  {
    v18 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"pgModelInferenceTime"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"pgModelInferenceTime"];
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

    [v3 setObject:v22 forKeyedSubscript:@"pgModelInterface"];
  }

  if (self->_pgOverridesAssetVersion)
  {
    v23 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"pgOverridesAssetVersion"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[PNRODSchemaPNRODPlanGeneration pgOverridesMatched](self, "pgOverridesMatched")}];
    [v3 setObject:v25 forKeyedSubscript:@"pgOverridesMatched"];
  }

  if (self->_pgOverridesTime)
  {
    v26 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    v27 = [v26 dictionaryRepresentation];
    if (v27)
    {
      [v3 setObject:v27 forKeyedSubscript:@"pgOverridesTime"];
    }

    else
    {
      v28 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v28 forKeyedSubscript:@"pgOverridesTime"];
    }
  }

  if (self->_pgPlanGenTotalTime)
  {
    v29 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    v30 = [v29 dictionaryRepresentation];
    if (v30)
    {
      [v3 setObject:v30 forKeyedSubscript:@"pgPlanGenTotalTime"];
    }

    else
    {
      v31 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v31 forKeyedSubscript:@"pgPlanGenTotalTime"];
    }
  }

  if (self->_pgPrescribedPlanTime)
  {
    v32 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    v33 = [v32 dictionaryRepresentation];
    if (v33)
    {
      [v3 setObject:v33 forKeyedSubscript:@"pgPrescribedPlanTime"];
    }

    else
    {
      v34 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v34 forKeyedSubscript:@"pgPrescribedPlanTime"];
    }
  }

  if (self->_planCycleId)
  {
    v35 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    v36 = [v35 dictionaryRepresentation];
    if (v36)
    {
      [v3 setObject:v36 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      v37 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v37 forKeyedSubscript:@"planCycleId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  v6 = [v4 planCycleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v7 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    v10 = [v4 planCycleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[112] & 1))
  {
    goto LABEL_63;
  }

  if (*&self->_has)
  {
    pgModelInterface = self->_pgModelInterface;
    if (pgModelInterface != [v4 pgModelInterface])
    {
      goto LABEL_63;
    }
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
  v6 = [v4 pgModelIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v13 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];
    v16 = [v4 pgModelIdentifier];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
  v6 = [v4 pgOverridesAssetVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v18 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
  if (v18)
  {
    v19 = v18;
    v20 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];
    v21 = [v4 pgOverridesAssetVersion];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v23 = (*&self->_has >> 1) & 1;
  if (v23 != ((v4[112] >> 1) & 1))
  {
    goto LABEL_63;
  }

  if (v23)
  {
    pgOverridesMatched = self->_pgOverridesMatched;
    if (pgOverridesMatched != [v4 pgOverridesMatched])
    {
      goto LABEL_63;
    }
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  v6 = [v4 pgPlanGenTotalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v25 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  if (v25)
  {
    v26 = v25;
    v27 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    v28 = [v4 pgPlanGenTotalTime];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  v6 = [v4 pgFullPlannerHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v30 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  if (v30)
  {
    v31 = v30;
    v32 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    v33 = [v4 pgFullPlannerHandleTime];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  v6 = [v4 pgModelInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v35 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  if (v35)
  {
    v36 = v35;
    v37 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    v38 = [v4 pgModelInferenceTime];
    v39 = [v37 isEqual:v38];

    if (!v39)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  v6 = [v4 pgOverridesTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v40 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  if (v40)
  {
    v41 = v40;
    v42 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    v43 = [v4 pgOverridesTime];
    v44 = [v42 isEqual:v43];

    if (!v44)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  v6 = [v4 pgPrescribedPlanTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v45 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  if (v45)
  {
    v46 = v45;
    v47 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    v48 = [v4 pgPrescribedPlanTime];
    v49 = [v47 isEqual:v48];

    if (!v49)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  v6 = [v4 pgFullPlannerPreInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v50 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  if (v50)
  {
    v51 = v50;
    v52 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    v53 = [v4 pgFullPlannerPreInferenceTime];
    v54 = [v52 isEqual:v53];

    if (!v54)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  v6 = [v4 pgFullPlannerPostInferenceTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_62;
  }

  v55 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  if (v55)
  {
    v56 = v55;
    v57 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    v58 = [v4 pgFullPlannerPostInferenceTime];
    v59 = [v57 isEqual:v58];

    if (!v59)
    {
      goto LABEL_63;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v60 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    if (!v60)
    {

LABEL_66:
      v65 = 1;
      goto LABEL_64;
    }

    v61 = v60;
    v62 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    v63 = [v4 failureInfo];
    v64 = [v62 isEqual:v63];

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

- (void)writeTo:(id)a3
{
  v25 = a3;
  v4 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesAssetVersion];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v8 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];

  v23 = v25;
  if (v22)
  {
    v24 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v23 = v25;
  }
}

- (void)setHasPgOverridesMatched:(BOOL)a3
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
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODPlanGeneration;
  v5 = [(SISchemaInstrumentationMessage *)&v34 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODPlanGeneration *)self planCycleId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePlanCycleId];
  }

  v9 = [(PNRODSchemaPNRODPlanGeneration *)self pgPlanGenTotalTime];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgPlanGenTotalTime];
  }

  v12 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerHandleTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerHandleTime];
  }

  v15 = [(PNRODSchemaPNRODPlanGeneration *)self pgModelInferenceTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgModelInferenceTime];
  }

  v18 = [(PNRODSchemaPNRODPlanGeneration *)self pgOverridesTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgOverridesTime];
  }

  v21 = [(PNRODSchemaPNRODPlanGeneration *)self pgPrescribedPlanTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgPrescribedPlanTime];
  }

  v24 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPreInferenceTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerPreInferenceTime];
  }

  v27 = [(PNRODSchemaPNRODPlanGeneration *)self pgFullPlannerPostInferenceTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODPlanGeneration *)self deletePgFullPlannerPostInferenceTime];
  }

  v30 = [(PNRODSchemaPNRODPlanGeneration *)self failureInfo];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
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