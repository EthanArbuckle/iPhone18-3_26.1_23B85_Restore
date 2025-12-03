@interface PNRODSchemaPNRODExecutor
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PNRODSchemaPNRODExecutor)initWithDictionary:(id)dictionary;
- (PNRODSchemaPNRODExecutor)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PNRODSchemaPNRODExecutor

- (PNRODSchemaPNRODExecutor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = PNRODSchemaPNRODExecutor;
  v5 = [(PNRODSchemaPNRODExecutor *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODExecutor *)v5 setPlanCycleId:v9];
    }

    v34 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"executorSearchToolQueryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODExecutor setExecutorSearchToolQueryType:](v5, "setExecutorSearchToolQueryType:", [v10 intValue]);
    }

    v33 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"executorAppIntentHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorAppIntentHandleTime:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorAppIntentQueryHandleTime:v14];
    }

    v31 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"searchToolQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODExecutor *)v5 setSearchToolQueryTime:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"personQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODExecutor *)v5 setPersonQueryTime:v18];
    }

    v32 = v11;
    v19 = [dictionaryCopy objectForKeyedSubscript:@"stringQueryLocationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryLocationTime:v20];
    }

    v35 = v6;
    v21 = [dictionaryCopy objectForKeyedSubscript:@"stringQueryEntityMatcherTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryEntityMatcherTime:v22];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"stringQueryEntityTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryEntityTime:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"identifierQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODExecutor *)v5 setIdentifierQueryTime:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"failureInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [[PNRODSchemaPNRODFailureInfo alloc] initWithDictionary:v27];
      [(PNRODSchemaPNRODExecutor *)v5 setFailureInfo:v28];
    }

    v29 = v5;
  }

  return v5;
}

- (PNRODSchemaPNRODExecutor)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODExecutor *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PNRODSchemaPNRODExecutor *)self dictionaryRepresentation];
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
  if (self->_executorAppIntentHandleTime)
  {
    executorAppIntentHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    dictionaryRepresentation = [executorAppIntentHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"executorAppIntentHandleTime"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"executorAppIntentHandleTime"];
    }
  }

  if (self->_executorAppIntentQueryHandleTime)
  {
    executorAppIntentQueryHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    dictionaryRepresentation2 = [executorAppIntentQueryHandleTime dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    }
  }

  if (self->_executorId)
  {
    executorId = [(PNRODSchemaPNRODExecutor *)self executorId];
    dictionaryRepresentation3 = [executorId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"executorId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"executorId"];
    }
  }

  if (*&self->_has)
  {
    v13 = [(PNRODSchemaPNRODExecutor *)self executorSearchToolQueryType]- 1;
    if (v13 > 2)
    {
      v14 = @"EXECUTORSEARCHTOOLQUERYTYPE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78E0C60[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"executorSearchToolQueryType"];
  }

  if (self->_failureInfo)
  {
    failureInfo = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    dictionaryRepresentation4 = [failureInfo dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_identifierQueryTime)
  {
    identifierQueryTime = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    dictionaryRepresentation5 = [identifierQueryTime dictionaryRepresentation];
    if (dictionaryRepresentation5)
    {
      [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"identifierQueryTime"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null5 forKeyedSubscript:@"identifierQueryTime"];
    }
  }

  if (self->_personQueryTime)
  {
    personQueryTime = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    dictionaryRepresentation6 = [personQueryTime dictionaryRepresentation];
    if (dictionaryRepresentation6)
    {
      [dictionary setObject:dictionaryRepresentation6 forKeyedSubscript:@"personQueryTime"];
    }

    else
    {
      null6 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null6 forKeyedSubscript:@"personQueryTime"];
    }
  }

  if (self->_planCycleId)
  {
    planCycleId = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    dictionaryRepresentation7 = [planCycleId dictionaryRepresentation];
    if (dictionaryRepresentation7)
    {
      [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      null7 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null7 forKeyedSubscript:@"planCycleId"];
    }
  }

  if (self->_searchToolQueryTime)
  {
    searchToolQueryTime = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    dictionaryRepresentation8 = [searchToolQueryTime dictionaryRepresentation];
    if (dictionaryRepresentation8)
    {
      [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"searchToolQueryTime"];
    }

    else
    {
      null8 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null8 forKeyedSubscript:@"searchToolQueryTime"];
    }
  }

  if (self->_stringQueryEntityMatcherTime)
  {
    stringQueryEntityMatcherTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    dictionaryRepresentation9 = [stringQueryEntityMatcherTime dictionaryRepresentation];
    if (dictionaryRepresentation9)
    {
      [dictionary setObject:dictionaryRepresentation9 forKeyedSubscript:@"stringQueryEntityMatcherTime"];
    }

    else
    {
      null9 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null9 forKeyedSubscript:@"stringQueryEntityMatcherTime"];
    }
  }

  if (self->_stringQueryEntityTime)
  {
    stringQueryEntityTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    dictionaryRepresentation10 = [stringQueryEntityTime dictionaryRepresentation];
    if (dictionaryRepresentation10)
    {
      [dictionary setObject:dictionaryRepresentation10 forKeyedSubscript:@"stringQueryEntityTime"];
    }

    else
    {
      null10 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null10 forKeyedSubscript:@"stringQueryEntityTime"];
    }
  }

  if (self->_stringQueryLocationTime)
  {
    stringQueryLocationTime = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    dictionaryRepresentation11 = [stringQueryLocationTime dictionaryRepresentation];
    if (dictionaryRepresentation11)
    {
      [dictionary setObject:dictionaryRepresentation11 forKeyedSubscript:@"stringQueryLocationTime"];
    }

    else
    {
      null11 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null11 forKeyedSubscript:@"stringQueryLocationTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_executorId hash];
  v4 = [(SISchemaUUID *)self->_planCycleId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_executorSearchToolQueryType;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(PNRODSchemaPNRODMetricDuration *)self->_executorAppIntentHandleTime hash];
  v7 = [(PNRODSchemaPNRODMetricDuration *)self->_executorAppIntentQueryHandleTime hash];
  v8 = v7 ^ [(PNRODSchemaPNRODMetricDuration *)self->_searchToolQueryTime hash];
  v9 = v6 ^ v8 ^ [(PNRODSchemaPNRODMetricDuration *)self->_personQueryTime hash];
  v10 = [(PNRODSchemaPNRODMetricDuration *)self->_stringQueryLocationTime hash];
  v11 = v10 ^ [(PNRODSchemaPNRODMetricDuration *)self->_stringQueryEntityMatcherTime hash];
  v12 = v11 ^ [(PNRODSchemaPNRODMetricDuration *)self->_stringQueryEntityTime hash];
  v13 = v9 ^ v12 ^ [(PNRODSchemaPNRODMetricDuration *)self->_identifierQueryTime hash];
  return v13 ^ [(PNRODSchemaPNRODFailureInfo *)self->_failureInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self executorId];
  executorId2 = [equalCopy executorId];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  executorId3 = [(PNRODSchemaPNRODExecutor *)self executorId];
  if (executorId3)
  {
    v8 = executorId3;
    executorId4 = [(PNRODSchemaPNRODExecutor *)self executorId];
    executorId5 = [equalCopy executorId];
    v11 = [executorId4 isEqual:executorId5];

    if (!v11)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  executorId2 = [equalCopy planCycleId];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  planCycleId = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  if (planCycleId)
  {
    v13 = planCycleId;
    planCycleId2 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    planCycleId3 = [equalCopy planCycleId];
    v16 = [planCycleId2 isEqual:planCycleId3];

    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[104] & 1))
  {
    goto LABEL_60;
  }

  if (*&self->_has)
  {
    executorSearchToolQueryType = self->_executorSearchToolQueryType;
    if (executorSearchToolQueryType != [equalCopy executorSearchToolQueryType])
    {
      goto LABEL_60;
    }
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  executorId2 = [equalCopy executorAppIntentHandleTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  executorAppIntentHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  if (executorAppIntentHandleTime)
  {
    v19 = executorAppIntentHandleTime;
    executorAppIntentHandleTime2 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    executorAppIntentHandleTime3 = [equalCopy executorAppIntentHandleTime];
    v22 = [executorAppIntentHandleTime2 isEqual:executorAppIntentHandleTime3];

    if (!v22)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  executorId2 = [equalCopy executorAppIntentQueryHandleTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  executorAppIntentQueryHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  if (executorAppIntentQueryHandleTime)
  {
    v24 = executorAppIntentQueryHandleTime;
    executorAppIntentQueryHandleTime2 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    executorAppIntentQueryHandleTime3 = [equalCopy executorAppIntentQueryHandleTime];
    v27 = [executorAppIntentQueryHandleTime2 isEqual:executorAppIntentQueryHandleTime3];

    if (!v27)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  executorId2 = [equalCopy searchToolQueryTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  searchToolQueryTime = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  if (searchToolQueryTime)
  {
    v29 = searchToolQueryTime;
    searchToolQueryTime2 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    searchToolQueryTime3 = [equalCopy searchToolQueryTime];
    v32 = [searchToolQueryTime2 isEqual:searchToolQueryTime3];

    if (!v32)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  executorId2 = [equalCopy personQueryTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  personQueryTime = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  if (personQueryTime)
  {
    v34 = personQueryTime;
    personQueryTime2 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    personQueryTime3 = [equalCopy personQueryTime];
    v37 = [personQueryTime2 isEqual:personQueryTime3];

    if (!v37)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  executorId2 = [equalCopy stringQueryLocationTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  stringQueryLocationTime = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  if (stringQueryLocationTime)
  {
    v39 = stringQueryLocationTime;
    stringQueryLocationTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    stringQueryLocationTime3 = [equalCopy stringQueryLocationTime];
    v42 = [stringQueryLocationTime2 isEqual:stringQueryLocationTime3];

    if (!v42)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  executorId2 = [equalCopy stringQueryEntityMatcherTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  stringQueryEntityMatcherTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  if (stringQueryEntityMatcherTime)
  {
    v44 = stringQueryEntityMatcherTime;
    stringQueryEntityMatcherTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    stringQueryEntityMatcherTime3 = [equalCopy stringQueryEntityMatcherTime];
    v47 = [stringQueryEntityMatcherTime2 isEqual:stringQueryEntityMatcherTime3];

    if (!v47)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  executorId2 = [equalCopy stringQueryEntityTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  stringQueryEntityTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  if (stringQueryEntityTime)
  {
    v49 = stringQueryEntityTime;
    stringQueryEntityTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    stringQueryEntityTime3 = [equalCopy stringQueryEntityTime];
    v52 = [stringQueryEntityTime2 isEqual:stringQueryEntityTime3];

    if (!v52)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  executorId2 = [equalCopy identifierQueryTime];
  if ((executorId != 0) == (executorId2 == 0))
  {
    goto LABEL_59;
  }

  identifierQueryTime = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  if (identifierQueryTime)
  {
    v54 = identifierQueryTime;
    identifierQueryTime2 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    identifierQueryTime3 = [equalCopy identifierQueryTime];
    v57 = [identifierQueryTime2 isEqual:identifierQueryTime3];

    if (!v57)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  executorId = [(PNRODSchemaPNRODExecutor *)self failureInfo];
  executorId2 = [equalCopy failureInfo];
  if ((executorId != 0) != (executorId2 == 0))
  {
    failureInfo = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    if (!failureInfo)
    {

LABEL_63:
      v63 = 1;
      goto LABEL_61;
    }

    v59 = failureInfo;
    failureInfo2 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    failureInfo3 = [equalCopy failureInfo];
    v62 = [failureInfo2 isEqual:failureInfo3];

    if (v62)
    {
      goto LABEL_63;
    }
  }

  else
  {
LABEL_59:
  }

LABEL_60:
  v63 = 0;
LABEL_61:

  return v63;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  executorId = [(PNRODSchemaPNRODExecutor *)self executorId];

  if (executorId)
  {
    executorId2 = [(PNRODSchemaPNRODExecutor *)self executorId];
    PBDataWriterWriteSubmessage();
  }

  planCycleId = [(PNRODSchemaPNRODExecutor *)self planCycleId];

  if (planCycleId)
  {
    planCycleId2 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  executorAppIntentHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];

  if (executorAppIntentHandleTime)
  {
    executorAppIntentHandleTime2 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    PBDataWriterWriteSubmessage();
  }

  executorAppIntentQueryHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];

  if (executorAppIntentQueryHandleTime)
  {
    executorAppIntentQueryHandleTime2 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    PBDataWriterWriteSubmessage();
  }

  searchToolQueryTime = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];

  if (searchToolQueryTime)
  {
    searchToolQueryTime2 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    PBDataWriterWriteSubmessage();
  }

  personQueryTime = [(PNRODSchemaPNRODExecutor *)self personQueryTime];

  if (personQueryTime)
  {
    personQueryTime2 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    PBDataWriterWriteSubmessage();
  }

  stringQueryLocationTime = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];

  if (stringQueryLocationTime)
  {
    stringQueryLocationTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    PBDataWriterWriteSubmessage();
  }

  stringQueryEntityMatcherTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];

  if (stringQueryEntityMatcherTime)
  {
    stringQueryEntityMatcherTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    PBDataWriterWriteSubmessage();
  }

  stringQueryEntityTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];

  if (stringQueryEntityTime)
  {
    stringQueryEntityTime2 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    PBDataWriterWriteSubmessage();
  }

  identifierQueryTime = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];

  if (identifierQueryTime)
  {
    identifierQueryTime2 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    PBDataWriterWriteSubmessage();
  }

  failureInfo = [(PNRODSchemaPNRODExecutor *)self failureInfo];

  v25 = toCopy;
  if (failureInfo)
  {
    failureInfo2 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v25 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v40.receiver = self;
  v40.super_class = PNRODSchemaPNRODExecutor;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:policyCopy];
  executorId = [(PNRODSchemaPNRODExecutor *)self executorId];
  v7 = [executorId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorId];
  }

  planCycleId = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  v10 = [planCycleId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PNRODSchemaPNRODExecutor *)self deletePlanCycleId];
  }

  executorAppIntentHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  v13 = [executorAppIntentHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorAppIntentHandleTime];
  }

  executorAppIntentQueryHandleTime = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  v16 = [executorAppIntentQueryHandleTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorAppIntentQueryHandleTime];
  }

  searchToolQueryTime = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  v19 = [searchToolQueryTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage5 = [v19 suppressMessage];

  if (suppressMessage5)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteSearchToolQueryTime];
  }

  personQueryTime = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  v22 = [personQueryTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage6 = [v22 suppressMessage];

  if (suppressMessage6)
  {
    [(PNRODSchemaPNRODExecutor *)self deletePersonQueryTime];
  }

  stringQueryLocationTime = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  v25 = [stringQueryLocationTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage7 = [v25 suppressMessage];

  if (suppressMessage7)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryLocationTime];
  }

  stringQueryEntityMatcherTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  v28 = [stringQueryEntityMatcherTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage8 = [v28 suppressMessage];

  if (suppressMessage8)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryEntityMatcherTime];
  }

  stringQueryEntityTime = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  v31 = [stringQueryEntityTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage9 = [v31 suppressMessage];

  if (suppressMessage9)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryEntityTime];
  }

  identifierQueryTime = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  v34 = [identifierQueryTime applySensitiveConditionsPolicy:policyCopy];
  suppressMessage10 = [v34 suppressMessage];

  if (suppressMessage10)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteIdentifierQueryTime];
  }

  failureInfo = [(PNRODSchemaPNRODExecutor *)self failureInfo];
  v37 = [failureInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage11 = [v37 suppressMessage];

  if (suppressMessage11)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteFailureInfo];
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