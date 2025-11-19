@interface DODMLASRSchemaDODMLASRUtteranceInfo
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRUtteranceInfo)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRUtteranceInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResults:(id)a3;
- (void)setHasEndTimeInNs:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRUtteranceInfo

- (DODMLASRSchemaDODMLASRUtteranceInfo)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = DODMLASRSchemaDODMLASRUtteranceInfo;
  v5 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"results"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [DODMLASRSchemaDODMLASRResultInfo alloc];
              v14 = [(DODMLASRSchemaDODMLASRResultInfo *)v13 initWithDictionary:v12, v19];
              [(DODMLASRSchemaDODMLASRUtteranceInfo *)v5 addResults:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [v4 objectForKeyedSubscript:{@"startTimeInNs", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUtteranceInfo setStartTimeInNs:](v5, "setStartTimeInNs:", [v15 unsignedLongLongValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"endTimeInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUtteranceInfo setEndTimeInNs:](v5, "setEndTimeInNs:", [v16 unsignedLongLongValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRUtteranceInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRUtteranceInfo endTimeInNs](self, "endTimeInNs")}];
    [v3 setObject:v4 forKeyedSubscript:@"endTimeInNs"];
  }

  if ([(NSArray *)self->_results count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_results;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          if (v11)
          {
            [v5 addObject:v11];
          }

          else
          {
            v12 = [MEMORY[0x1E695DFB0] null];
            [v5 addObject:v12];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"results"];
  }

  if (*&self->_has)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[DODMLASRSchemaDODMLASRUtteranceInfo startTimeInNs](self, "startTimeInNs")}];
    [v3 setObject:v13 forKeyedSubscript:@"startTimeInNs"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_results hash];
  if (*&self->_has)
  {
    v4 = 2654435761u * self->_startTimeInNs;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761u * self->_endTimeInNs;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self results];
  v6 = [v4 results];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self results];
  if (v8)
  {
    v9 = v8;
    v10 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self results];
    v11 = [v4 results];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[32];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (*&has)
  {
    startTimeInNs = self->_startTimeInNs;
    if (startTimeInNs == [v4 startTimeInNs])
    {
      has = self->_has;
      v14 = v4[32];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    endTimeInNs = self->_endTimeInNs;
    if (endTimeInNs != [v4 endTimeInNs])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint64Field();
  }
}

- (void)setHasEndTimeInNs:(BOOL)a3
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

- (void)addResults:(id)a3
{
  v4 = a3;
  results = self->_results;
  v8 = v4;
  if (!results)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = v6;

    v4 = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = DODMLASRSchemaDODMLASRUtteranceInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRUtteranceInfo *)self results:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(DODMLASRSchemaDODMLASRUtteranceInfo *)self setResults:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end