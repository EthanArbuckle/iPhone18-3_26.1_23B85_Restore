@interface DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConfusionPairs:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults

- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithDictionary:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 setDatapackVersion:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"confusionPairs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v6;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v25;
        do
        {
          v13 = 0;
          do
          {
            if (*v25 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v24 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[DODMLASRSchemaDODMLASRConfusionPair alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 addConfusionPairs:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v11);
      }

      v6 = v23;
    }

    v16 = [v4 objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 setAsrId:v17];
    }

    v18 = [v4 objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults setErrorCode:](v5, "setErrorCode:", [v18 intValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = [[SISchemaUUID alloc] initWithDictionary:v19];
      [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 setLinkId:v20];
    }

    v21 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asrId)
  {
    v4 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
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

  if ([(NSArray *)self->_confusionPairs count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_confusionPairs;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"confusionPairs"];
  }

  if (self->_datapackVersion)
  {
    v15 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"datapackVersion"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults errorCode](self, "errorCode")}];
    [v3 setObject:v17 forKeyedSubscript:@"errorCode"];
  }

  if (self->_linkId)
  {
    v18 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v22];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_datapackVersion hash];
  v4 = [(NSArray *)self->_confusionPairs hash];
  v5 = [(SISchemaUUID *)self->_asrId hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_errorCode;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
  v6 = [v4 datapackVersion];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v7 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
    v10 = [v4 datapackVersion];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  v6 = [v4 confusionPairs];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v12 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
    v15 = [v4 confusionPairs];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  v6 = [v4 asrId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_24;
  }

  v17 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  if (v17)
  {
    v18 = v17;
    v19 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
    v20 = [v4 asrId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [v4 errorCode])
    {
      goto LABEL_25;
    }
  }

  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v23 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    v26 = [v4 linkId];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_confusionPairs;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v11 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];

  if (v11)
  {
    v12 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v13 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];

  if (v13)
  {
    v14 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addConfusionPairs:(id)a3
{
  v4 = a3;
  confusionPairs = self->_confusionPairs;
  v8 = v4;
  if (!confusionPairs)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_confusionPairs;
    self->_confusionPairs = v6;

    v4 = v8;
    confusionPairs = self->_confusionPairs;
  }

  [(NSArray *)confusionPairs addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self setConfusionPairs:v7];

  v8 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  v9 = [v8 applySensitiveConditionsPolicy:v4];
  v10 = [v9 suppressMessage];

  if (v10)
  {
    [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self deleteAsrId];
  }

  v11 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self deleteLinkId];
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