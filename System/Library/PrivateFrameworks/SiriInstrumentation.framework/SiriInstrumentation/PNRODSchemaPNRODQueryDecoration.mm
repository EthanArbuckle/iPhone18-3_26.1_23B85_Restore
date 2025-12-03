@interface PNRODSchemaPNRODQueryDecoration
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODQueryDecoration)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODQueryDecoration)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODQueryDecoration

- (PNRODSchemaPNRODQueryDecoration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v45.receiver = self;
  v45.super_class = PNRODSchemaPNRODQueryDecoration;
  v5 = [(PNRODSchemaPNRODQueryDecoration *)&v45 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODQueryDecoration setQueryDecorationSource:](v5, "setQueryDecorationSource:", [v8 intValue]);
    }

    v42 = v8;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v9];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationHandleTime:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationSpanRetrievalTime:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationContextRetrievalTime:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationToolRetrievalTime:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationRankingTime"];
    objc_opt_class();
    v44 = v17;
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationRankingTime:v18];
    }

    v43 = v6;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationOutputBuildingTime:v20];
    }

    v41 = v9;
    v21 = [dictionaryCopy objectForKeyedSubscript:{@"queryDecorationTupleBuildingTime", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationTupleBuildingTime:v22];
    }

    v40 = v11;
    v23 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationTupleRankingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationTupleRankingTime:v24];
    }

    v39 = v13;
    v25 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationInputCollectionTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationInputCollectionTime:v26];
    }

    v38 = v15;
    v27 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v27];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationToolRetrievalContextTime:v28];
    }

    v29 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v29];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationFetchDynamicEnumerationTime:v30];
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v31];
      [(PNRODSchemaPNRODQueryDecoration *)v5 setQueryDecorationFullPlannerBlockingTime:v32];
    }

    v33 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODQueryDecoration)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODQueryDecoration *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODQueryDecoration *)self dictionaryRepresentation];
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
    failureInfo = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
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

  if (self->_queryDecorationContextRetrievalTime)
  {
    queryDecorationContextRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    dictionaryRepresentation2 = [queryDecorationContextRetrievalTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"queryDecorationContextRetrievalTime"];
    }
  }

  if (self->_queryDecorationFetchDynamicEnumerationTime)
  {
    queryDecorationFetchDynamicEnumerationTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    dictionaryRepresentation3 = [queryDecorationFetchDynamicEnumerationTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"queryDecorationFetchDynamicEnumerationTime"];
    }
  }

  if (self->_queryDecorationFullPlannerBlockingTime)
  {
    queryDecorationFullPlannerBlockingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    dictionaryRepresentation4 = [queryDecorationFullPlannerBlockingTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"queryDecorationFullPlannerBlockingTime"];
    }
  }

  if (self->_queryDecorationHandleTime)
  {
    queryDecorationHandleTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    dictionaryRepresentation5 = [queryDecorationHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"queryDecorationHandleTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"queryDecorationHandleTime"];
    }
  }

  if (self->_queryDecorationID)
  {
    queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    dictionaryRepresentation6 = [queryDecorationID dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"queryDecorationID"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"queryDecorationID"];
    }
  }

  if (self->_queryDecorationInputCollectionTime)
  {
    queryDecorationInputCollectionTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    dictionaryRepresentation7 = [queryDecorationInputCollectionTime dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"queryDecorationInputCollectionTime"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"queryDecorationInputCollectionTime"];
    }
  }

  if (self->_queryDecorationOutputBuildingTime)
  {
    queryDecorationOutputBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    dictionaryRepresentation8 = [queryDecorationOutputBuildingTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"queryDecorationOutputBuildingTime"];
    }
  }

  if (self->_queryDecorationRankingTime)
  {
    queryDecorationRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    dictionaryRepresentation9 = [queryDecorationRankingTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"queryDecorationRankingTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"queryDecorationRankingTime"];
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

    [dictionary setObject:v32 forKeyedSubscript:@"queryDecorationSource"];
  }

  if (self->_queryDecorationSpanRetrievalTime)
  {
    queryDecorationSpanRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    dictionaryRepresentation10 = [queryDecorationSpanRetrievalTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"queryDecorationSpanRetrievalTime"];
    }
  }

  if (self->_queryDecorationToolRetrievalContextTime)
  {
    queryDecorationToolRetrievalContextTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    dictionaryRepresentation11 = [queryDecorationToolRetrievalContextTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"queryDecorationToolRetrievalContextTime"];
    }
  }

  if (self->_queryDecorationToolRetrievalTime)
  {
    queryDecorationToolRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    dictionaryRepresentation12 = [queryDecorationToolRetrievalTime dictionaryRepresentation];
    if (dictionaryRepresentation12)
    {
      [dictionary setObject:dictionaryRepresentation12 forKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    }

    else
    {
      null12 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null12 forKeyedSubscript:@"queryDecorationToolRetrievalTime"];
    }
  }

  if (self->_queryDecorationTupleBuildingTime)
  {
    queryDecorationTupleBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    dictionaryRepresentation13 = [queryDecorationTupleBuildingTime dictionaryRepresentation];
    if (dictionaryRepresentation13)
    {
      [dictionary setObject:dictionaryRepresentation13 forKeyedSubscript:@"queryDecorationTupleBuildingTime"];
    }

    else
    {
      null13 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null13 forKeyedSubscript:@"queryDecorationTupleBuildingTime"];
    }
  }

  if (self->_queryDecorationTupleRankingTime)
  {
    queryDecorationTupleRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    dictionaryRepresentation14 = [queryDecorationTupleRankingTime dictionaryRepresentation];
    if (dictionaryRepresentation14)
    {
      [dictionary setObject:dictionaryRepresentation14 forKeyedSubscript:@"queryDecorationTupleRankingTime"];
    }

    else
    {
      null14 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null14 forKeyedSubscript:@"queryDecorationTupleRankingTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  queryDecorationID2 = [equalCopy queryDecorationID];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationID3 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  if (queryDecorationID3)
  {
    v8 = queryDecorationID3;
    queryDecorationID4 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    queryDecorationID5 = [equalCopy queryDecorationID];
    v11 = [queryDecorationID4 isEqual:queryDecorationID5];

    if (!v11)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[128] & 1))
  {
    goto LABEL_75;
  }

  if (*&self->_has)
  {
    queryDecorationSource = self->_queryDecorationSource;
    if (queryDecorationSource != [equalCopy queryDecorationSource])
    {
      goto LABEL_75;
    }
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  queryDecorationID2 = [equalCopy queryDecorationHandleTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationHandleTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  if (queryDecorationHandleTime)
  {
    v14 = queryDecorationHandleTime;
    queryDecorationHandleTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    queryDecorationHandleTime3 = [equalCopy queryDecorationHandleTime];
    v17 = [queryDecorationHandleTime2 isEqual:queryDecorationHandleTime3];

    if (!v17)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  queryDecorationID2 = [equalCopy queryDecorationSpanRetrievalTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationSpanRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  if (queryDecorationSpanRetrievalTime)
  {
    v19 = queryDecorationSpanRetrievalTime;
    queryDecorationSpanRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    queryDecorationSpanRetrievalTime3 = [equalCopy queryDecorationSpanRetrievalTime];
    v22 = [queryDecorationSpanRetrievalTime2 isEqual:queryDecorationSpanRetrievalTime3];

    if (!v22)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  queryDecorationID2 = [equalCopy queryDecorationContextRetrievalTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationContextRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  if (queryDecorationContextRetrievalTime)
  {
    v24 = queryDecorationContextRetrievalTime;
    queryDecorationContextRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    queryDecorationContextRetrievalTime3 = [equalCopy queryDecorationContextRetrievalTime];
    v27 = [queryDecorationContextRetrievalTime2 isEqual:queryDecorationContextRetrievalTime3];

    if (!v27)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  queryDecorationID2 = [equalCopy queryDecorationToolRetrievalTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationToolRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  if (queryDecorationToolRetrievalTime)
  {
    v29 = queryDecorationToolRetrievalTime;
    queryDecorationToolRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    queryDecorationToolRetrievalTime3 = [equalCopy queryDecorationToolRetrievalTime];
    v32 = [queryDecorationToolRetrievalTime2 isEqual:queryDecorationToolRetrievalTime3];

    if (!v32)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  queryDecorationID2 = [equalCopy queryDecorationRankingTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  if (queryDecorationRankingTime)
  {
    v34 = queryDecorationRankingTime;
    queryDecorationRankingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    queryDecorationRankingTime3 = [equalCopy queryDecorationRankingTime];
    v37 = [queryDecorationRankingTime2 isEqual:queryDecorationRankingTime3];

    if (!v37)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  queryDecorationID2 = [equalCopy queryDecorationOutputBuildingTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationOutputBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  if (queryDecorationOutputBuildingTime)
  {
    v39 = queryDecorationOutputBuildingTime;
    queryDecorationOutputBuildingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    queryDecorationOutputBuildingTime3 = [equalCopy queryDecorationOutputBuildingTime];
    v42 = [queryDecorationOutputBuildingTime2 isEqual:queryDecorationOutputBuildingTime3];

    if (!v42)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  queryDecorationID2 = [equalCopy queryDecorationTupleBuildingTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationTupleBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  if (queryDecorationTupleBuildingTime)
  {
    v44 = queryDecorationTupleBuildingTime;
    queryDecorationTupleBuildingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    queryDecorationTupleBuildingTime3 = [equalCopy queryDecorationTupleBuildingTime];
    v47 = [queryDecorationTupleBuildingTime2 isEqual:queryDecorationTupleBuildingTime3];

    if (!v47)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  queryDecorationID2 = [equalCopy queryDecorationTupleRankingTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationTupleRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  if (queryDecorationTupleRankingTime)
  {
    v49 = queryDecorationTupleRankingTime;
    queryDecorationTupleRankingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    queryDecorationTupleRankingTime3 = [equalCopy queryDecorationTupleRankingTime];
    v52 = [queryDecorationTupleRankingTime2 isEqual:queryDecorationTupleRankingTime3];

    if (!v52)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  queryDecorationID2 = [equalCopy queryDecorationInputCollectionTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationInputCollectionTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  if (queryDecorationInputCollectionTime)
  {
    v54 = queryDecorationInputCollectionTime;
    queryDecorationInputCollectionTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    queryDecorationInputCollectionTime3 = [equalCopy queryDecorationInputCollectionTime];
    v57 = [queryDecorationInputCollectionTime2 isEqual:queryDecorationInputCollectionTime3];

    if (!v57)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  queryDecorationID2 = [equalCopy queryDecorationToolRetrievalContextTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationToolRetrievalContextTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  if (queryDecorationToolRetrievalContextTime)
  {
    v59 = queryDecorationToolRetrievalContextTime;
    queryDecorationToolRetrievalContextTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    queryDecorationToolRetrievalContextTime3 = [equalCopy queryDecorationToolRetrievalContextTime];
    v62 = [queryDecorationToolRetrievalContextTime2 isEqual:queryDecorationToolRetrievalContextTime3];

    if (!v62)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  queryDecorationID2 = [equalCopy queryDecorationFetchDynamicEnumerationTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationFetchDynamicEnumerationTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  if (queryDecorationFetchDynamicEnumerationTime)
  {
    v64 = queryDecorationFetchDynamicEnumerationTime;
    queryDecorationFetchDynamicEnumerationTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    queryDecorationFetchDynamicEnumerationTime3 = [equalCopy queryDecorationFetchDynamicEnumerationTime];
    v67 = [queryDecorationFetchDynamicEnumerationTime2 isEqual:queryDecorationFetchDynamicEnumerationTime3];

    if (!v67)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  queryDecorationID2 = [equalCopy queryDecorationFullPlannerBlockingTime];
  if ((queryDecorationID != 0) == (queryDecorationID2 == 0))
  {
    goto LABEL_74;
  }

  queryDecorationFullPlannerBlockingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  if (queryDecorationFullPlannerBlockingTime)
  {
    v69 = queryDecorationFullPlannerBlockingTime;
    queryDecorationFullPlannerBlockingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    queryDecorationFullPlannerBlockingTime3 = [equalCopy queryDecorationFullPlannerBlockingTime];
    v72 = [queryDecorationFullPlannerBlockingTime2 isEqual:queryDecorationFullPlannerBlockingTime3];

    if (!v72)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
  queryDecorationID2 = [equalCopy failureInfo];
  if ((queryDecorationID != 0) != (queryDecorationID2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    if (!failureInfo)
    {

LABEL_78:
      v78 = 1;
      goto LABEL_76;
    }

    v74 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v77 = [failureInfo2 isEqual:failureInfo3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];

  if (queryDecorationID)
  {
    queryDecorationID2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  queryDecorationHandleTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];

  if (queryDecorationHandleTime)
  {
    queryDecorationHandleTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationSpanRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];

  if (queryDecorationSpanRetrievalTime)
  {
    queryDecorationSpanRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationContextRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];

  if (queryDecorationContextRetrievalTime)
  {
    queryDecorationContextRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationToolRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];

  if (queryDecorationToolRetrievalTime)
  {
    queryDecorationToolRetrievalTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];

  if (queryDecorationRankingTime)
  {
    queryDecorationRankingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationOutputBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];

  if (queryDecorationOutputBuildingTime)
  {
    queryDecorationOutputBuildingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTupleBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];

  if (queryDecorationTupleBuildingTime)
  {
    queryDecorationTupleBuildingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationTupleRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];

  if (queryDecorationTupleRankingTime)
  {
    queryDecorationTupleRankingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationInputCollectionTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];

  if (queryDecorationInputCollectionTime)
  {
    queryDecorationInputCollectionTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationToolRetrievalContextTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];

  if (queryDecorationToolRetrievalContextTime)
  {
    queryDecorationToolRetrievalContextTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationFetchDynamicEnumerationTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];

  if (queryDecorationFetchDynamicEnumerationTime)
  {
    queryDecorationFetchDynamicEnumerationTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
    PBDataWriterWriteSubmessage();
  }

  queryDecorationFullPlannerBlockingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];

  if (queryDecorationFullPlannerBlockingTime)
  {
    queryDecorationFullPlannerBlockingTime2 = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];

  v31 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v31 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v49.receiver = self;
  v49.super_class = PNRODSchemaPNRODQueryDecoration;
  v5 = [(SISchemaInstrumentationMessage *)&v49 applySensitiveConditionsPolicy:policyCopy];
  queryDecorationID = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationID];
  v7 = [queryDecorationID applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationID];
  }

  queryDecorationHandleTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationHandleTime];
  v10 = [queryDecorationHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationHandleTime];
  }

  queryDecorationSpanRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationSpanRetrievalTime];
  v13 = [queryDecorationSpanRetrievalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationSpanRetrievalTime];
  }

  queryDecorationContextRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationContextRetrievalTime];
  v16 = [queryDecorationContextRetrievalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationContextRetrievalTime];
  }

  queryDecorationToolRetrievalTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalTime];
  v19 = [queryDecorationToolRetrievalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationToolRetrievalTime];
  }

  queryDecorationRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationRankingTime];
  v22 = [queryDecorationRankingTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationRankingTime];
  }

  queryDecorationOutputBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationOutputBuildingTime];
  v25 = [queryDecorationOutputBuildingTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationOutputBuildingTime];
  }

  queryDecorationTupleBuildingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleBuildingTime];
  v28 = [queryDecorationTupleBuildingTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationTupleBuildingTime];
  }

  queryDecorationTupleRankingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationTupleRankingTime];
  v31 = [queryDecorationTupleRankingTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationTupleRankingTime];
  }

  queryDecorationInputCollectionTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationInputCollectionTime];
  v34 = [queryDecorationInputCollectionTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationInputCollectionTime];
  }

  queryDecorationToolRetrievalContextTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationToolRetrievalContextTime];
  v37 = [queryDecorationToolRetrievalContextTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationToolRetrievalContextTime];
  }

  queryDecorationFetchDynamicEnumerationTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFetchDynamicEnumerationTime];
  v40 = [queryDecorationFetchDynamicEnumerationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage12 = [v40 suppressMessage];

  if (suppressMessage12)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationFetchDynamicEnumerationTime];
  }

  queryDecorationFullPlannerBlockingTime = [(PNRODSchemaPNRODQueryDecoration *)self queryDecorationFullPlannerBlockingTime];
  v43 = [queryDecorationFullPlannerBlockingTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage13 = [v43 suppressMessage];

  if (suppressMessage13)
  {
    [(PNRODSchemaPNRODQueryDecoration *)self deleteQueryDecorationFullPlannerBlockingTime];
  }

  failureInfo = [(PNRODSchemaPNRODQueryDecoration *)self failureInfo];
  v46 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage14 = [v46 suppressMessage];

  if (suppressMessage14)
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