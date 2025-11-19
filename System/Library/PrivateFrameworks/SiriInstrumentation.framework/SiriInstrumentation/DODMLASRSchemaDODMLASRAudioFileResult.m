@interface DODMLASRSchemaDODMLASRAudioFileResult
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRAudioFileResult)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRAudioFileResult)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDecodingResults:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRAudioFileResult

- (DODMLASRSchemaDODMLASRAudioFileResult)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = DODMLASRSchemaDODMLASRAudioFileResult;
  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRAudioFileResult *)v5 setAsrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"decodingResults"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = v6;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        do
        {
          v13 = 0;
          do
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v21 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[DODMLASRSchemaDODMLASRDecodingResult alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASRAudioFileResult *)v5 addDecodingResults:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v11);
      }

      v6 = v20;
    }

    v16 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(DODMLASRSchemaDODMLASRAudioFileResult *)v5 setLinkId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRAudioFileResult)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRAudioFileResult *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asrId)
  {
    v4 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"asrId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"asrId"];
    }
  }

  if ([(NSArray *)self->_decodingResults count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_decodingResults;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"decodingResults"];
  }

  if (self->_linkId)
  {
    v15 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_asrId hash];
  v4 = [(NSArray *)self->_decodingResults hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  v6 = [v4 asrId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
    v10 = [v4 asrId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  v6 = [v4 decodingResults];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
    v15 = [v4 decodingResults];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    v20 = [v4 linkId];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];

  if (v5)
  {
    v6 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_decodingResults;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];

  if (v12)
  {
    v13 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDecodingResults:(id)a3
{
  v4 = a3;
  decodingResults = self->_decodingResults;
  v8 = v4;
  if (!decodingResults)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_decodingResults;
    self->_decodingResults = v6;

    v4 = v8;
    decodingResults = self->_decodingResults;
  }

  [(NSArray *)decodingResults addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRAudioFileResult;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(DODMLASRSchemaDODMLASRAudioFileResult *)self deleteAsrId];
  }

  v9 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(DODMLASRSchemaDODMLASRAudioFileResult *)self setDecodingResults:v10];

  v11 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(DODMLASRSchemaDODMLASRAudioFileResult *)self deleteLinkId];
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