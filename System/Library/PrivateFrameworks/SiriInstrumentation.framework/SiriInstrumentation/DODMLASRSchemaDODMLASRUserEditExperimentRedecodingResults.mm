@interface DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addConfusionPairs:(id)pairs;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults

- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithDictionary:(id)dictionary
{
  v30 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v28.receiver = self;
  v28.super_class = DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults;
  v5 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)&v28 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"datapackVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 setDatapackVersion:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"confusionPairs"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[SISchemaUUID alloc] initWithDictionary:v16];
      [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)v5 setAsrId:v17];
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"errorCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults setErrorCode:](v5, "setErrorCode:", [v18 intValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
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

- (DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self dictionaryRepresentation];
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
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asrId)
  {
    asrId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
    dictionaryRepresentation = [asrId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"asrId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"asrId"];
    }
  }

  if ([(NSArray *)self->_confusionPairs count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"confusionPairs"];
  }

  if (self->_datapackVersion)
  {
    datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
    v16 = [datapackVersion copy];
    [dictionary setObject:v16 forKeyedSubscript:@"datapackVersion"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithInt:{-[DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults errorCode](self, "errorCode")}];
    [dictionary setObject:v17 forKeyedSubscript:@"errorCode"];
  }

  if (self->_linkId)
  {
    linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v22];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
  datapackVersion2 = [equalCopy datapackVersion];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_24;
  }

  datapackVersion3 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
  if (datapackVersion3)
  {
    v8 = datapackVersion3;
    datapackVersion4 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];
    datapackVersion5 = [equalCopy datapackVersion];
    v11 = [datapackVersion4 isEqual:datapackVersion5];

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  datapackVersion2 = [equalCopy confusionPairs];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_24;
  }

  confusionPairs = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  if (confusionPairs)
  {
    v13 = confusionPairs;
    confusionPairs2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
    confusionPairs3 = [equalCopy confusionPairs];
    v16 = [confusionPairs2 isEqual:confusionPairs3];

    if (!v16)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  datapackVersion2 = [equalCopy asrId];
  if ((datapackVersion != 0) == (datapackVersion2 == 0))
  {
    goto LABEL_24;
  }

  asrId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  if (asrId)
  {
    v18 = asrId;
    asrId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
    asrId3 = [equalCopy asrId];
    v21 = [asrId2 isEqual:asrId3];

    if (!v21)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode != [equalCopy errorCode])
    {
      goto LABEL_25;
    }
  }

  datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
  datapackVersion2 = [equalCopy linkId];
  if ((datapackVersion != 0) != (datapackVersion2 == 0))
  {
    linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    if (!linkId)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = linkId;
    linkId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    linkId3 = [equalCopy linkId];
    v27 = [linkId2 isEqual:linkId3];

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

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  datapackVersion = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self datapackVersion];

  if (datapackVersion)
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

  asrId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];

  if (asrId)
  {
    asrId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];

  if (linkId)
  {
    linkId2 = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addConfusionPairs:(id)pairs
{
  pairsCopy = pairs;
  confusionPairs = self->_confusionPairs;
  v8 = pairsCopy;
  if (!confusionPairs)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_confusionPairs;
    self->_confusionPairs = array;

    pairsCopy = v8;
    confusionPairs = self->_confusionPairs;
  }

  [(NSArray *)confusionPairs addObject:pairsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  confusionPairs = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self confusionPairs];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:confusionPairs underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self setConfusionPairs:v7];

  asrId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self asrId];
  v9 = [asrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v9 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self deleteAsrId];
  }

  linkId = [(DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults *)self linkId];
  v12 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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