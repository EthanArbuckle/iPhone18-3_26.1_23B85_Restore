@interface PNRODSchemaPNRODQueryDecoration
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODQueryDecoration)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODQueryDecoration)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODQueryDecoration

- (PNRODSchemaPNRODQueryDecoration)initWithDictionary:(id)a3
{
  v4 = a3;
  v45.receiver = self;
  v45.super_class = PNRODSchemaPNRODQueryDecoration;
  v5 = [(PNRODSchemaPNRODQueryDecoration *)&v45 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"queryDecorationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"queryDecorationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODQueryDecoration setQueryDecorationSource:](v5, "setQueryDecorationSource:", [v8 intValue]);
    }

    v42 = v8;
    v9 = [v4 objectForKeyedSubscript:@"queryDecorationHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v9];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationHandleTime:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationSpanRetrievalTime:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationContextRetrievalTime:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationToolRetrievalTime:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"queryDecorationRankingTime"];
    objc_opt_class();
    v44 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationRankingTime:v18];
    }

    v43 = v6;
    v19 = [v4 objectForKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationOutputBuildingTime:v20];
    }

    v41 = v9;
    v21 = [v4 objectForKeyedSubscript:{@"queryDecorationTupleBuildingTime", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationTupleBuildingTime:v22];
    }

    v40 = v11;
    v23 = [v4 objectForKeyedSubscript:@"queryDecorationTupleRankingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationTupleRankingTime:v24];
    }

    v39 = v13;
    v25 = [v4 objectForKeyedSubscript:@"queryDecorationInputCollectionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationInputCollectionTime:v26];
    }

    v38 = v15;
    v27 = [v4 objectForKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v27];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationToolRetrievalContextTime:v28];
    }

    v29 = [v4 objectForKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v29];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationFetchDynamicEnumerationTime:v30];
    }

    v31 = [v4 objectForKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v31];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationFullPlannerBlockingTime:v32];
    }

    v33 = [v4 objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v33];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setFailureInfo:v34];
    }

    v35 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODQueryDecoration)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODQueryDecoration *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODQueryDecoration *)self dictionaryRepresentation];
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
    v4 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
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

  if (self->_queryDecorationContextRetrievalTime)
  {
    v7 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    }
  }

  if (self->_queryDecorationFetchDynamicEnumerationTime)
  {
    v10 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    }
  }

  if (self->_queryDecorationFullPlannerBlockingTime)
  {
    v13 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    }
  }

  if (self->_queryDecorationHandleTime)
  {
    v16 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"queryDecorationHandleTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"queryDecorationHandleTime"];
    }
  }

  if (self->_queryDecorationID)
  {
    v19 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"queryDecorationID"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"queryDecorationID"];
    }
  }

  if (self->_queryDecorationInputCollectionTime)
  {
    v22 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"queryDecorationInputCollectionTime"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"queryDecorationInputCollectionTime"];
    }
  }

  if (self->_queryDecorationOutputBuildingTime)
  {
    v25 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    }
  }

  if (self->_queryDecorationRankingTime)
  {
    v28 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"queryDecorationRankingTime"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"queryDecorationRankingTime"];
    }
  }

  if (*&self->_has)
  {
    v31 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSource]- 1;
    if (v31 > 3)
    {
      v32 = @"PNROD_QDSOURCE_UNKNOWN";
    }

    else
    {
      v32 = off_1E78E0C90[v31];
    }

    [v3 setObject:v32 forKeyedSubscript:@"queryDecorationSource"];
  }

  if (self->_queryDecorationSpanRetrievalTime)
  {
    v33 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    }
  }

  if (self->_queryDecorationToolRetrievalContextTime)
  {
    v36 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    }
  }

  if (self->_queryDecorationToolRetrievalTime)
  {
    v39 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    v40 = [v39 dictionaryRepresentation];
    if (v40)
    {
      [v3 setObject:v40 forKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    }

    else
    {
      v41 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v41 forKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    }
  }

  if (self->_queryDecorationTupleBuildingTime)
  {
    v42 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    v43 = [v42 dictionaryRepresentation];
    if (v43)
    {
      [v3 setObject:v43 forKeyedSubscript:@"queryDecorationTupleBuildingTime"];
    }

    else
    {
      v44 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v44 forKeyedSubscript:@"queryDecorationTupleBuildingTime"];
    }
  }

  if (self->_queryDecorationTupleRankingTime)
  {
    v45 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    v46 = [v45 dictionaryRepresentation];
    if (v46)
    {
      [v3 setObject:v46 forKeyedSubscript:@"queryDecorationTupleRankingTime"];
    }

    else
    {
      v47 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v47 forKeyedSubscript:@"queryDecorationTupleRankingTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_queryDecorationID hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_queryDecorationSource;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationHandleTime hash];
  v7 = v5 ^ v6 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationSpanRetrievalTime hash];
  v8 = [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationContextRetrievalTime hash];
  v9 = v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationToolRetrievalTime hash];
  v10 = v7 ^ v9 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationRankingTime hash];
  v11 = [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationOutputBuildingTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTupleBuildingTime hash];
  v13 = v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationTupleRankingTime hash];
  v14 = v10 ^ v13 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationInputCollectionTime hash];
  v15 = [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationToolRetrievalContextTime hash];
  v16 = v15 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationFetchDynamicEnumerationTime hash];
  v17 = v16 ^ [(PNRODSchemaPNRODMetricDuration *)self->_queryDecorationFullPlannerBlockingTime hash];
  return v14 ^ v17 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  v6 = [v4 queryDecorationID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v7 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    v10 = [v4 queryDecorationID];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[128] & 1))
  {
    goto LABEL_75;
  }

  if (*&self->_has)
  {
    queryDecorationSource = self->_queryDecorationSource;
    if (queryDecorationSource != [v4 queryDecorationSource])
    {
      goto LABEL_75;
    }
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  v6 = [v4 queryDecorationHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v13 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  if (v13)
  {
    v14 = v13;
    v15 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    v16 = [v4 queryDecorationHandleTime];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  v6 = [v4 queryDecorationSpanRetrievalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v18 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  if (v18)
  {
    v19 = v18;
    v20 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    v21 = [v4 queryDecorationSpanRetrievalTime];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  v6 = [v4 queryDecorationContextRetrievalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v23 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  if (v23)
  {
    v24 = v23;
    v25 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    v26 = [v4 queryDecorationContextRetrievalTime];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  v6 = [v4 queryDecorationToolRetrievalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v28 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    v31 = [v4 queryDecorationToolRetrievalTime];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  v6 = [v4 queryDecorationRankingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v33 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    v36 = [v4 queryDecorationRankingTime];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  v6 = [v4 queryDecorationOutputBuildingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v38 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    v41 = [v4 queryDecorationOutputBuildingTime];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  v6 = [v4 queryDecorationTupleBuildingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v43 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    v46 = [v4 queryDecorationTupleBuildingTime];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  v6 = [v4 queryDecorationTupleRankingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v48 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    v51 = [v4 queryDecorationTupleRankingTime];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  v6 = [v4 queryDecorationInputCollectionTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v53 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  if (v53)
  {
    v54 = v53;
    v55 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    v56 = [v4 queryDecorationInputCollectionTime];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  v6 = [v4 queryDecorationToolRetrievalContextTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v58 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  if (v58)
  {
    v59 = v58;
    v60 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    v61 = [v4 queryDecorationToolRetrievalContextTime];
    v62 = [v60 isEqual:v61];

    if (!v62)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  v6 = [v4 queryDecorationFetchDynamicEnumerationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v63 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  if (v63)
  {
    v64 = v63;
    v65 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    v66 = [v4 queryDecorationFetchDynamicEnumerationTime];
    v67 = [v65 isEqual:v66];

    if (!v67)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  v6 = [v4 queryDecorationFullPlannerBlockingTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_74;
  }

  v68 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  if (v68)
  {
    v69 = v68;
    v70 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    v71 = [v4 queryDecorationFullPlannerBlockingTime];
    v72 = [v70 isEqual:v71];

    if (!v72)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v73 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    if (!v73)
    {

LABEL_78:
      v78 = 1;
      goto LABEL_76;
    }

    v74 = v73;
    v75 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    v76 = [v4 failureInfo];
    v77 = [v75 isEqual:v76];

    if (v77)
    {
      goto LABEL_78;
    }
  }

  else
  {
LABEL_74:
  }

LABEL_75:
  v78 = 0;
LABEL_76:

  return v78;
}

- (void)writeTo:(id)a3
{
  v33 = a3;
  v4 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];

  if (v22)
  {
    v23 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];

  if (v24)
  {
    v25 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    PBDataWriterWriteSubmessage();
  }

  v26 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];

  if (v26)
  {
    v27 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    PBDataWriterWriteSubmessage();
  }

  v28 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];

  if (v28)
  {
    v29 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    PBDataWriterWriteSubmessage();
  }

  v30 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];

  v31 = v33;
  if (v30)
  {
    v32 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v31 = v33;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = PNRODSchemaPNRODQueryDecoration;
  v5 = [(SISchemaInstrumentationMessage *)&v49 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationID];
  }

  v9 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationHandleTime];
  }

  v12 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationSpanRetrievalTime];
  }

  v15 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationContextRetrievalTime];
  }

  v18 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationToolRetrievalTime];
  }

  v21 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationRankingTime];
  }

  v24 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationOutputBuildingTime];
  }

  v27 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationTupleBuildingTime];
  }

  v30 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationTupleRankingTime];
  }

  v33 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationInputCollectionTime];
  }

  v36 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationToolRetrievalContextTime];
  }

  v39 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  v40 = [v39 applySensitiveConditionsPolicy:v4];
  v41 = [v40 suppressMessage];

  if (v41)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationFetchDynamicEnumerationTime];
  }

  v42 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  v43 = [v42 applySensitiveConditionsPolicy:v4];
  v44 = [v43 suppressMessage];

  if (v44)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationFullPlannerBlockingTime];
  }

  v45 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
  v46 = [v45 applySensitiveConditionsPolicy:v4];
  v47 = [v46 suppressMessage];

  if (v47)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteFailureInfo];
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