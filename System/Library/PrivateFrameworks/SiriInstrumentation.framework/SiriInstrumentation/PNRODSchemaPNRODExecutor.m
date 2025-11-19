@interface PNRODSchemaPNRODExecutor
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PNRODSchemaPNRODExecutor)initWithDictionary:(id)a3;
- (PNRODSchemaPNRODExecutor)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PNRODSchemaPNRODExecutor

- (PNRODSchemaPNRODExecutor)initWithDictionary:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = PNRODSchemaPNRODExecutor;
  v5 = [(PNRODSchemaPNRODExecutor *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"executorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"planCycleId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaUUID alloc] initWithDictionary:v8];
      [(PNRODSchemaPNRODExecutor *)v5 setPlanCycleId:v9];
    }

    v34 = v8;
    v10 = [v4 objectForKeyedSubscript:@"executorSearchToolQueryType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PNRODSchemaPNRODExecutor setExecutorSearchToolQueryType:](v5, "setExecutorSearchToolQueryType:", [v10 intValue]);
    }

    v33 = v10;
    v11 = [v4 objectForKeyedSubscript:@"executorAppIntentHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v11];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorAppIntentHandleTime:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v13];
      [(PNRODSchemaPNRODExecutor *)v5 setExecutorAppIntentQueryHandleTime:v14];
    }

    v31 = v13;
    v15 = [v4 objectForKeyedSubscript:@"searchToolQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v15];
      [(PNRODSchemaPNRODExecutor *)v5 setSearchToolQueryTime:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"personQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v17];
      [(PNRODSchemaPNRODExecutor *)v5 setPersonQueryTime:v18];
    }

    v32 = v11;
    v19 = [v4 objectForKeyedSubscript:@"stringQueryLocationTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v19];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryLocationTime:v20];
    }

    v35 = v6;
    v21 = [v4 objectForKeyedSubscript:@"stringQueryEntityMatcherTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v21];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryEntityMatcherTime:v22];
    }

    v23 = [v4 objectForKeyedSubscript:@"stringQueryEntityTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v23];
      [(PNRODSchemaPNRODExecutor *)v5 setStringQueryEntityTime:v24];
    }

    v25 = [v4 objectForKeyedSubscript:@"identifierQueryTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[PNRODSchemaPNRODMetricDuration alloc] initWithDictionary:v25];
      [(PNRODSchemaPNRODExecutor *)v5 setIdentifierQueryTime:v26];
    }

    v27 = [v4 objectForKeyedSubscript:@"failureInfo"];
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

- (PNRODSchemaPNRODExecutor)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PNRODSchemaPNRODExecutor *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PNRODSchemaPNRODExecutor *)self dictionaryRepresentation];
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
  if (self->_executorAppIntentHandleTime)
  {
    v4 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"executorAppIntentHandleTime"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"executorAppIntentHandleTime"];
    }
  }

  if (self->_executorAppIntentQueryHandleTime)
  {
    v7 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"executorAppIntentQueryHandleTime"];
    }
  }

  if (self->_executorId)
  {
    v10 = [(PNRODSchemaPNRODExecutor *)self executorId];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"executorId"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"executorId"];
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

    [v3 setObject:v14 forKeyedSubscript:@"executorSearchToolQueryType"];
  }

  if (self->_failureInfo)
  {
    v15 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"failureInfo"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"failureInfo"];
    }
  }

  if (self->_identifierQueryTime)
  {
    v18 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"identifierQueryTime"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"identifierQueryTime"];
    }
  }

  if (self->_personQueryTime)
  {
    v21 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    v22 = [v21 dictionaryRepresentation];
    if (v22)
    {
      [v3 setObject:v22 forKeyedSubscript:@"personQueryTime"];
    }

    else
    {
      v23 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v23 forKeyedSubscript:@"personQueryTime"];
    }
  }

  if (self->_planCycleId)
  {
    v24 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    v25 = [v24 dictionaryRepresentation];
    if (v25)
    {
      [v3 setObject:v25 forKeyedSubscript:@"planCycleId"];
    }

    else
    {
      v26 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v26 forKeyedSubscript:@"planCycleId"];
    }
  }

  if (self->_searchToolQueryTime)
  {
    v27 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    v28 = [v27 dictionaryRepresentation];
    if (v28)
    {
      [v3 setObject:v28 forKeyedSubscript:@"searchToolQueryTime"];
    }

    else
    {
      v29 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v29 forKeyedSubscript:@"searchToolQueryTime"];
    }
  }

  if (self->_stringQueryEntityMatcherTime)
  {
    v30 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    v31 = [v30 dictionaryRepresentation];
    if (v31)
    {
      [v3 setObject:v31 forKeyedSubscript:@"stringQueryEntityMatcherTime"];
    }

    else
    {
      v32 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v32 forKeyedSubscript:@"stringQueryEntityMatcherTime"];
    }
  }

  if (self->_stringQueryEntityTime)
  {
    v33 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    v34 = [v33 dictionaryRepresentation];
    if (v34)
    {
      [v3 setObject:v34 forKeyedSubscript:@"stringQueryEntityTime"];
    }

    else
    {
      v35 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v35 forKeyedSubscript:@"stringQueryEntityTime"];
    }
  }

  if (self->_stringQueryLocationTime)
  {
    v36 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    v37 = [v36 dictionaryRepresentation];
    if (v37)
    {
      [v3 setObject:v37 forKeyedSubscript:@"stringQueryLocationTime"];
    }

    else
    {
      v38 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v38 forKeyedSubscript:@"stringQueryLocationTime"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_60;
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self executorId];
  v6 = [v4 executorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v7 = [(PNRODSchemaPNRODExecutor *)self executorId];
  if (v7)
  {
    v8 = v7;
    v9 = [(PNRODSchemaPNRODExecutor *)self executorId];
    v10 = [v4 executorId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  v6 = [v4 planCycleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v12 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  if (v12)
  {
    v13 = v12;
    v14 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    v15 = [v4 planCycleId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[104] & 1))
  {
    goto LABEL_60;
  }

  if (*&self->_has)
  {
    executorSearchToolQueryType = self->_executorSearchToolQueryType;
    if (executorSearchToolQueryType != [v4 executorSearchToolQueryType])
    {
      goto LABEL_60;
    }
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  v6 = [v4 executorAppIntentHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v18 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  if (v18)
  {
    v19 = v18;
    v20 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    v21 = [v4 executorAppIntentHandleTime];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  v6 = [v4 executorAppIntentQueryHandleTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v23 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  if (v23)
  {
    v24 = v23;
    v25 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    v26 = [v4 executorAppIntentQueryHandleTime];
    v27 = [v25 isEqual:v26];

    if (!v27)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  v6 = [v4 searchToolQueryTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v28 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  if (v28)
  {
    v29 = v28;
    v30 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    v31 = [v4 searchToolQueryTime];
    v32 = [v30 isEqual:v31];

    if (!v32)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  v6 = [v4 personQueryTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v33 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  if (v33)
  {
    v34 = v33;
    v35 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    v36 = [v4 personQueryTime];
    v37 = [v35 isEqual:v36];

    if (!v37)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  v6 = [v4 stringQueryLocationTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v38 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  if (v38)
  {
    v39 = v38;
    v40 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    v41 = [v4 stringQueryLocationTime];
    v42 = [v40 isEqual:v41];

    if (!v42)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  v6 = [v4 stringQueryEntityMatcherTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v43 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  if (v43)
  {
    v44 = v43;
    v45 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    v46 = [v4 stringQueryEntityMatcherTime];
    v47 = [v45 isEqual:v46];

    if (!v47)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  v6 = [v4 stringQueryEntityTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v48 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  if (v48)
  {
    v49 = v48;
    v50 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    v51 = [v4 stringQueryEntityTime];
    v52 = [v50 isEqual:v51];

    if (!v52)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  v6 = [v4 identifierQueryTime];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_59;
  }

  v53 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  if (v53)
  {
    v54 = v53;
    v55 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    v56 = [v4 identifierQueryTime];
    v57 = [v55 isEqual:v56];

    if (!v57)
    {
      goto LABEL_60;
    }
  }

  else
  {
  }

  v5 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
  v6 = [v4 failureInfo];
  if ((v5 != 0) != (v6 == 0))
  {
    v58 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    if (!v58)
    {

LABEL_63:
      v63 = 1;
      goto LABEL_61;
    }

    v59 = v58;
    v60 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    v61 = [v4 failureInfo];
    v62 = [v60 isEqual:v61];

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

- (void)writeTo:(id)a3
{
  v27 = a3;
  v4 = [(PNRODSchemaPNRODExecutor *)self executorId];

  if (v4)
  {
    v5 = [(PNRODSchemaPNRODExecutor *)self executorId];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(PNRODSchemaPNRODExecutor *)self planCycleId];

  if (v6)
  {
    v7 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v8 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];

  if (v8)
  {
    v9 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v10 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];

  if (v10)
  {
    v11 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
    PBDataWriterWriteSubmessage();
  }

  v12 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];

  if (v12)
  {
    v13 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
    PBDataWriterWriteSubmessage();
  }

  v14 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];

  if (v14)
  {
    v15 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
    PBDataWriterWriteSubmessage();
  }

  v16 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];

  if (v16)
  {
    v17 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
    PBDataWriterWriteSubmessage();
  }

  v18 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];

  if (v18)
  {
    v19 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
    PBDataWriterWriteSubmessage();
  }

  v20 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];

  if (v20)
  {
    v21 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
    PBDataWriterWriteSubmessage();
  }

  v22 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];

  if (v22)
  {
    v23 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
    PBDataWriterWriteSubmessage();
  }

  v24 = [(PNRODSchemaPNRODExecutor *)self failureInfo];

  v25 = v27;
  if (v24)
  {
    v26 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
    PBDataWriterWriteSubmessage();

    v25 = v27;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = PNRODSchemaPNRODExecutor;
  v5 = [(SISchemaInstrumentationMessage *)&v40 applySensitiveConditionsPolicy:v4];
  v6 = [(PNRODSchemaPNRODExecutor *)self executorId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorId];
  }

  v9 = [(PNRODSchemaPNRODExecutor *)self planCycleId];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(PNRODSchemaPNRODExecutor *)self deletePlanCycleId];
  }

  v12 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentHandleTime];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorAppIntentHandleTime];
  }

  v15 = [(PNRODSchemaPNRODExecutor *)self executorAppIntentQueryHandleTime];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteExecutorAppIntentQueryHandleTime];
  }

  v18 = [(PNRODSchemaPNRODExecutor *)self searchToolQueryTime];
  v19 = [v18 applySensitiveConditionsPolicy:v4];
  v20 = [v19 suppressMessage];

  if (v20)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteSearchToolQueryTime];
  }

  v21 = [(PNRODSchemaPNRODExecutor *)self personQueryTime];
  v22 = [v21 applySensitiveConditionsPolicy:v4];
  v23 = [v22 suppressMessage];

  if (v23)
  {
    [(PNRODSchemaPNRODExecutor *)self deletePersonQueryTime];
  }

  v24 = [(PNRODSchemaPNRODExecutor *)self stringQueryLocationTime];
  v25 = [v24 applySensitiveConditionsPolicy:v4];
  v26 = [v25 suppressMessage];

  if (v26)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryLocationTime];
  }

  v27 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityMatcherTime];
  v28 = [v27 applySensitiveConditionsPolicy:v4];
  v29 = [v28 suppressMessage];

  if (v29)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryEntityMatcherTime];
  }

  v30 = [(PNRODSchemaPNRODExecutor *)self stringQueryEntityTime];
  v31 = [v30 applySensitiveConditionsPolicy:v4];
  v32 = [v31 suppressMessage];

  if (v32)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteStringQueryEntityTime];
  }

  v33 = [(PNRODSchemaPNRODExecutor *)self identifierQueryTime];
  v34 = [v33 applySensitiveConditionsPolicy:v4];
  v35 = [v34 suppressMessage];

  if (v35)
  {
    [(PNRODSchemaPNRODExecutor *)self deleteIdentifierQueryTime];
  }

  v36 = [(PNRODSchemaPNRODExecutor *)self failureInfo];
  v37 = [v36 applySensitiveConditionsPolicy:v4];
  v38 = [v37 suppressMessage];

  if (v38)
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