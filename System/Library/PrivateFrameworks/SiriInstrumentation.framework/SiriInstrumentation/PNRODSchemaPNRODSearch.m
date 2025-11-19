@interface PNRODSchemaPNRODSearch
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODSearch)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODSearch)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODSearch

- (PNRODSchemaPNRODSearch)initWithDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PNRODSchemaPNRODSearch;
  v5 = [(PNRODSchemaPNRODSearch *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"searchToolId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODSearch *)v5 setSearchToolId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"searchTotalHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODSearch *)v5 setSearchTotalHandleTime:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"spotlightTotalTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v10];
      [(PNRODSchemaPNRODSearch *)v5 setSpotlightTotalTime:v11];
    }

    v32 = v8;
    v12 = [v4 objectForKeyedSubscript:@"answerSynthesisTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v12];
      [(PNRODSchemaPNRODSearch *)v5 setAnswerSynthesisTime:v13];
    }

    v31 = v10;
    v14 = [v4 objectForKeyedSubscript:{@"searchGlobalSearchTime", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v14];
      [(PNRODSchemaPNRODSearch *)v5 setSearchGlobalSearchTime:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"searchHallucinationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v16];
      [(PNRODSchemaPNRODSearch *)v5 setSearchHallucinationTime:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"searchStartToSpotlightEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v18];
      [(PNRODSchemaPNRODSearch *)v5 setSearchStartToSpotlightEnd:v19];
    }

    v33 = v6;
    v20 = [v4 objectForKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v20];
      [(PNRODSchemaPNRODSearch *)v5 setSearchStartToGlobalSearchEnd:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"preSearchTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v22];
      [(PNRODSchemaPNRODSearch *)v5 setPreSearchTime:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"postSearchTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v24];
      [(PNRODSchemaPNRODSearch *)v5 setPostSearchTime:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODSearch)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODSearch *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODSearch *)self dictionaryRepresentation];
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
  if (self->_answerSynthesisTime)
  {
    v4 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"answerSynthesisTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"answerSynthesisTime"];
    }
  }

  if (self->_failureInfo)
  {
    v7 = [(PNRODSchemaPNRODSearch *)self failureInfo];
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

  if (self->_postSearchTime)
  {
    v10 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"postSearchTime"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"postSearchTime"];
    }
  }

  if (self->_preSearchTime)
  {
    v13 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"preSearchTime"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"preSearchTime"];
    }
  }

  if (self->_searchGlobalSearchTime)
  {
    v16 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    v17 = [v16 dictionaryRepresentation];
    if (v17)
    {
      [v3 setObject:v17 forKeyedSubscript:@"searchGlobalSearchTime"];
    }

    else
    {
      v18 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v18 forKeyedSubscript:@"searchGlobalSearchTime"];
    }
  }

  if (self->_searchHallucinationTime)
  {
    v19 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    v20 = [v19 dictionaryRepresentation];
    if (v20)
    {
      [v3 setObject:v20 forKeyedSubscript:@"searchHallucinationTime"];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v21 forKeyedSubscript:@"searchHallucinationTime"];
    }
  }

  if (self->_searchStartToGlobalSearchEnd)
  {
    v22 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    v23 = [v22 dictionaryRepresentation];
    if (v23)
    {
      [v3 setObject:v23 forKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"searchStartToGlobalSearchEnd"];
    }
  }

  if (self->_searchStartToSpotlightEnd)
  {
    v25 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"searchStartToSpotlightEnd"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"searchStartToSpotlightEnd"];
    }
  }

  if (self->_searchToolId)
  {
    v28 = [(PNRODSchemaPNRODSearch *)self searchToolId];
    v29 = [v28 dictionaryRepresentation];
    if (v29)
    {
      [v3 setObject:v29 forKeyedSubscript:@"searchToolId"];
    }

    else
    {
      v30 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v30 forKeyedSubscript:@"searchToolId"];
    }
  }

  if (self->_searchTotalHandleTime)
  {
    v31 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    v32 = [v31 dictionaryRepresentation];
    if (v32)
    {
      [v3 setObject:v32 forKeyedSubscript:@"searchTotalHandleTime"];
    }

    else
    {
      v33 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v33 forKeyedSubscript:@"searchTotalHandleTime"];
    }
  }

  if (self->_spotlightTotalTime)
  {
    v34 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    v35 = [v34 dictionaryRepresentation];
    if (v35)
    {
      [v3 setObject:v35 forKeyedSubscript:@"spotlightTotalTime"];
    }

    else
    {
      v36 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v36 forKeyedSubscript:@"spotlightTotalTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchToolId];
  v6 = [v4 searchToolId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v7 = [(PNRODSchemaPNRODSearch *)self searchToolId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODSearch *)self searchToolId];
    v10 = [v4 searchToolId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  v6 = [v4 searchTotalHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v12 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    v15 = [v4 searchTotalHandleTime];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  v6 = [v4 spotlightTotalTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v17 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  if (v17)
  {
    v18 = v17;
    v19 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    v20 = [v4 spotlightTotalTime];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  v6 = [v4 answerSynthesisTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v22 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  if (v22)
  {
    v23 = v22;
    v24 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    v25 = [v4 answerSynthesisTime];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  v6 = [v4 searchGlobalSearchTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v27 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  if (v27)
  {
    v28 = v27;
    v29 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    v30 = [v4 searchGlobalSearchTime];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  v6 = [v4 searchHallucinationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v32 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  if (v32)
  {
    v33 = v32;
    v34 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    v35 = [v4 searchHallucinationTime];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  v6 = [v4 searchStartToSpotlightEnd];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v37 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  if (v37)
  {
    v38 = v37;
    v39 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    v40 = [v4 searchStartToSpotlightEnd];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  v6 = [v4 searchStartToGlobalSearchEnd];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v42 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  if (v42)
  {
    v43 = v42;
    v44 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    v45 = [v4 searchStartToGlobalSearchEnd];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  v6 = [v4 preSearchTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v47 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  if (v47)
  {
    v48 = v47;
    v49 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    v50 = [v4 preSearchTime];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  v6 = [v4 postSearchTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_56;
  }

  v52 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  if (v52)
  {
    v53 = v52;
    v54 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    v55 = [v4 postSearchTime];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODSearch *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v57 = [(PNRODSchemaPNRODSearch *)self failureInfo];
    if (!v57)
    {

LABEL_60:
      v62 = 1;
      goto LABEL_58;
    }

    v58 = v57;
    v59 = [(PNRODSchemaPNRODSearch *)self failureInfo];
    v60 = [v4 failureInfo];
    v61 = [v59 isEqual:v60];

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

- (void)writeTo:(id)a3
{
  v27 = a3;
  v4 = [(PNRODSchemaPNRODSearch *)self searchToolId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODSearch *)self searchToolId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODSearch *)self preSearchTime];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODSearch *)self postSearchTime];

  if (v22)
  {
    v23 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(PNRODSchemaPNRODSearch *)self failureInfo];

  v25 = v27;
  if (v24)
  {
    v26 = [(PNRODSchemaPNRODSearch *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v25 = v27;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PNRODSchemaPNRODSearch;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODSearch *)self searchToolId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchToolId];
  }

  v9 = [(PNRODSchemaPNRODSearch *)self searchTotalHandleTime];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchTotalHandleTime];
  }

  v12 = [(PNRODSchemaPNRODSearch *)self spotlightTotalTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSpotlightTotalTime];
  }

  v15 = [(PNRODSchemaPNRODSearch *)self answerSynthesisTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODSearch *)self deleteAnswerSynthesisTime];
  }

  v18 = [(PNRODSchemaPNRODSearch *)self searchGlobalSearchTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchGlobalSearchTime];
  }

  v21 = [(PNRODSchemaPNRODSearch *)self searchHallucinationTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchHallucinationTime];
  }

  v24 = [(PNRODSchemaPNRODSearch *)self searchStartToSpotlightEnd];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchStartToSpotlightEnd];
  }

  v27 = [(PNRODSchemaPNRODSearch *)self searchStartToGlobalSearchEnd];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODSearch *)self deleteSearchStartToGlobalSearchEnd];
  }

  v30 = [(PNRODSchemaPNRODSearch *)self preSearchTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODSearch *)self deletePreSearchTime];
  }

  v33 = [(PNRODSchemaPNRODSearch *)self postSearchTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODSearch *)self deletePostSearchTime];
  }

  v36 = [(PNRODSchemaPNRODSearch *)self failureInfo];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
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