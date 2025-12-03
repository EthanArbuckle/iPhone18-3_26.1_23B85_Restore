@interface PNRODSchemaPNRODSearch
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODSearch)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODSearch)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODSearch

- (PNRODSchemaPNRODSearch)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODSearch;
  v5 = [(PNRODSchemaPNRODSearch *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODSearch *)v5 setSearchToolId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"searchTotalHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODSearch *)v5 setSearchTotalHandleTime:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"spotlightTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODSearch *)v5 setSpotlightTotalTime:v11];
    }

    v32 = v8;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"answerSynthesisTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODSearch *)v5 setAnswerSynthesisTime:v13];
    }

    v31 = v10;
    v14 = [dictionaryCopy objectForKeyedSubscript:{@"searchGlobalSearchTime", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODSearch *)v5 setSearchGlobalSearchTime:v15];
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"searchHallucinationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODSearch *)v5 setSearchHallucinationTime:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"searchStartToSpotlightEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODSearch *)v5 setSearchStartToSpotlightEnd:v19];
    }

    v33 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODSearch *)v5 setSearchStartToGlobalSearchEnd:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"preSearchTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODSearch *)v5 setPreSearchTime:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"postSearchTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODSearch *)v5 setPostSearchTime:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v26];
      [(PNRODSchemaPNRODSearch *)v5 setFailureInfo:v27];
    }

    v28 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODSearch)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODSearch *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODSearch *)self dictionaryRepresentation];
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
  if (self->_answerSynthesisTime)
  {
    answerSynthesisTime = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    dictionaryRepresentation = [answerSynthesisTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"answerSynthesisTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"answerSynthesisTime"];
    }
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODSearch *)self failureInfo];
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

  if (self->_postSearchTime)
  {
    postSearchTime = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    dictionaryRepresentation3 = [postSearchTime dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"postSearchTime"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"postSearchTime"];
    }
  }

  if (self->_preSearchTime)
  {
    preSearchTime = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    dictionaryRepresentation4 = [preSearchTime dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"preSearchTime"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"preSearchTime"];
    }
  }

  if (self->_searchGlobalSearchTime)
  {
    searchGlobalSearchTime = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    dictionaryRepresentation5 = [searchGlobalSearchTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"searchGlobalSearchTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"searchGlobalSearchTime"];
    }
  }

  if (self->_searchHallucinationTime)
  {
    searchHallucinationTime = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    dictionaryRepresentation6 = [searchHallucinationTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"searchHallucinationTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"searchHallucinationTime"];
    }
  }

  if (self->_searchStartToGlobalSearchEnd)
  {
    searchStartToGlobalSearchEnd = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    dictionaryRepresentation7 = [searchStartToGlobalSearchEnd dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    }
  }

  if (self->_searchStartToSpotlightEnd)
  {
    searchStartToSpotlightEnd = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    dictionaryRepresentation8 = [searchStartToSpotlightEnd dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"searchStartToSpotlightEnd"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"searchStartToSpotlightEnd"];
    }
  }

  if (self->_searchToolId)
  {
    searchToolId = [(PNRODSchemaPNRODSearch *)self searchToolId];
    dictionaryRepresentation9 = [searchToolId dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_searchTotalHandleTime)
  {
    searchTotalHandleTime = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    dictionaryRepresentation10 = [searchTotalHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"searchTotalHandleTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"searchTotalHandleTime"];
    }
  }

  if (self->_spotlightTotalTime)
  {
    spotlightTotalTime = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    dictionaryRepresentation11 = [spotlightTotalTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"spotlightTotalTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"spotlightTotalTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_searchToolId hash];
  v4 = [(PNRODSchemaPNRODMetricDuration *)self->_searchTotalHandleTime hash]^ v3;
  v5 = [(PNRODSchemaPNRODMetricDuration *)self->_spotlightTotalTime hash];
  v6 = v4 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_answerSynthesisTime hash];
  v7 = [(PNRODSchemaPNRODMetricDuration *)self->_searchGlobalSearchTime hash];
  v8 = v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_searchHallucinationTime hash];
  v9 = v6 ^ v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_searchStartToSpotlightEnd hash];
  v10 = [(PNRODSchemaPNRODMetricDuration *)self->_searchStartToGlobalSearchEnd hash];
  v11 = v10 ^ [(PNRODSchemaPNRODMetricDuration *)self->_preSearchTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_postSearchTime hash];
  return v9 ^ v12 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchToolId];
  searchToolId2 = [equalCopy searchToolId];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchToolId3 = [(PNRODSchemaPNRODSearch *)self searchToolId];
  if (searchToolId3)
  {
    v8 = searchToolId3;
    searchToolId4 = [(PNRODSchemaPNRODSearch *)self searchToolId];
    searchToolId5 = [equalCopy searchToolId];
    v11 = [searchToolId4 isEqual:searchToolId5];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  searchToolId2 = [equalCopy searchTotalHandleTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchTotalHandleTime = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  if (searchTotalHandleTime)
  {
    v13 = searchTotalHandleTime;
    searchTotalHandleTime2 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    searchTotalHandleTime3 = [equalCopy searchTotalHandleTime];
    v16 = [searchTotalHandleTime2 isEqual:searchTotalHandleTime3];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  searchToolId2 = [equalCopy spotlightTotalTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  spotlightTotalTime = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  if (spotlightTotalTime)
  {
    v18 = spotlightTotalTime;
    spotlightTotalTime2 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    spotlightTotalTime3 = [equalCopy spotlightTotalTime];
    v21 = [spotlightTotalTime2 isEqual:spotlightTotalTime3];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  searchToolId2 = [equalCopy answerSynthesisTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  answerSynthesisTime = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  if (answerSynthesisTime)
  {
    v23 = answerSynthesisTime;
    answerSynthesisTime2 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    answerSynthesisTime3 = [equalCopy answerSynthesisTime];
    v26 = [answerSynthesisTime2 isEqual:answerSynthesisTime3];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  searchToolId2 = [equalCopy searchGlobalSearchTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchGlobalSearchTime = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  if (searchGlobalSearchTime)
  {
    v28 = searchGlobalSearchTime;
    searchGlobalSearchTime2 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    searchGlobalSearchTime3 = [equalCopy searchGlobalSearchTime];
    v31 = [searchGlobalSearchTime2 isEqual:searchGlobalSearchTime3];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  searchToolId2 = [equalCopy searchHallucinationTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchHallucinationTime = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  if (searchHallucinationTime)
  {
    v33 = searchHallucinationTime;
    searchHallucinationTime2 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    searchHallucinationTime3 = [equalCopy searchHallucinationTime];
    v36 = [searchHallucinationTime2 isEqual:searchHallucinationTime3];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  searchToolId2 = [equalCopy searchStartToSpotlightEnd];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchStartToSpotlightEnd = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  if (searchStartToSpotlightEnd)
  {
    v38 = searchStartToSpotlightEnd;
    searchStartToSpotlightEnd2 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    searchStartToSpotlightEnd3 = [equalCopy searchStartToSpotlightEnd];
    v41 = [searchStartToSpotlightEnd2 isEqual:searchStartToSpotlightEnd3];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  searchToolId2 = [equalCopy searchStartToGlobalSearchEnd];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  searchStartToGlobalSearchEnd = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  if (searchStartToGlobalSearchEnd)
  {
    v43 = searchStartToGlobalSearchEnd;
    searchStartToGlobalSearchEnd2 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    searchStartToGlobalSearchEnd3 = [equalCopy searchStartToGlobalSearchEnd];
    v46 = [searchStartToGlobalSearchEnd2 isEqual:searchStartToGlobalSearchEnd3];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  searchToolId2 = [equalCopy preSearchTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  preSearchTime = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  if (preSearchTime)
  {
    v48 = preSearchTime;
    preSearchTime2 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    preSearchTime3 = [equalCopy preSearchTime];
    v51 = [preSearchTime2 isEqual:preSearchTime3];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  searchToolId2 = [equalCopy postSearchTime];
  if ((searchToolId != 0) == (searchToolId2 == 0))
  {
    goto LABEL_56;
  }

  postSearchTime = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  if (postSearchTime)
  {
    v53 = postSearchTime;
    postSearchTime2 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    postSearchTime3 = [equalCopy postSearchTime];
    v56 = [postSearchTime2 isEqual:postSearchTime3];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  searchToolId = [(PNRODSchemaPNRODSearch *)self failureInfo];
  searchToolId2 = [equalCopy failureInfo];
  if ((searchToolId != 0) != (searchToolId2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODSearch *)self failureInfo];
    if (!failureInfo)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODSearch *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v61 = [failureInfo2 isEqual:failureInfo3];

    if (v61)
    {
      goto LABEL_60;
    }
  }

  else
  {
LABEL_56:
  }

LABEL_57:
  v62 = 0;
LABEL_58:

  return v62;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  searchToolId = [(PNRODSchemaPNRODSearch *)self searchToolId];

  if (searchToolId)
  {
    searchToolId2 = [(PNRODSchemaPNRODSearch *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  searchTotalHandleTime = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];

  if (searchTotalHandleTime)
  {
    searchTotalHandleTime2 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    PBDataWriterWriteSubmessage();
  }

  spotlightTotalTime = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];

  if (spotlightTotalTime)
  {
    spotlightTotalTime2 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    PBDataWriterWriteSubmessage();
  }

  answerSynthesisTime = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];

  if (answerSynthesisTime)
  {
    answerSynthesisTime2 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    PBDataWriterWriteSubmessage();
  }

  searchGlobalSearchTime = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];

  if (searchGlobalSearchTime)
  {
    searchGlobalSearchTime2 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    PBDataWriterWriteSubmessage();
  }

  searchHallucinationTime = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];

  if (searchHallucinationTime)
  {
    searchHallucinationTime2 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    PBDataWriterWriteSubmessage();
  }

  searchStartToSpotlightEnd = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];

  if (searchStartToSpotlightEnd)
  {
    searchStartToSpotlightEnd2 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    PBDataWriterWriteSubmessage();
  }

  searchStartToGlobalSearchEnd = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];

  if (searchStartToGlobalSearchEnd)
  {
    searchStartToGlobalSearchEnd2 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    PBDataWriterWriteSubmessage();
  }

  preSearchTime = [(PNRODSchemaPNRODSearch *)self preSearchTime];

  if (preSearchTime)
  {
    preSearchTime2 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    PBDataWriterWriteSubmessage();
  }

  postSearchTime = [(PNRODSchemaPNRODSearch *)self postSearchTime];

  if (postSearchTime)
  {
    postSearchTime2 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODSearch *)self failureInfo];

  v25 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODSearch *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v25 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = PNRODSchemaPNRODSearch;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  searchToolId = [(PNRODSchemaPNRODSearch *)self searchToolId];
  v7 = [searchToolId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchToolId];
  }

  searchTotalHandleTime = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  v10 = [searchTotalHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchTotalHandleTime];
  }

  spotlightTotalTime = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  v13 = [spotlightTotalTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSpotlightTotalTime];
  }

  answerSynthesisTime = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  v16 = [answerSynthesisTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODSearch *)self deleteAnswerSynthesisTime];
  }

  searchGlobalSearchTime = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  v19 = [searchGlobalSearchTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchGlobalSearchTime];
  }

  searchHallucinationTime = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  v22 = [searchHallucinationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchHallucinationTime];
  }

  searchStartToSpotlightEnd = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  v25 = [searchStartToSpotlightEnd applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchStartToSpotlightEnd];
  }

  searchStartToGlobalSearchEnd = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  v28 = [searchStartToGlobalSearchEnd applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchStartToGlobalSearchEnd];
  }

  preSearchTime = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  v31 = [preSearchTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODSearch *)self deletePreSearchTime];
  }

  postSearchTime = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  v34 = [postSearchTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODSearch *)self deletePostSearchTime];
  }

  failureInfo = [(PNRODSchemaPNRODSearch *)self failureInfo];
  v37 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODSearch *)self deleteFailureInfo];
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