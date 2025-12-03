@interface DODMLASRSchemaDODMLASRAudioFileResult
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRAudioFileResult)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRAudioFileResult)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addDecodingResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRAudioFileResult

- (DODMLASRSchemaDODMLASRAudioFileResult)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = DODMLASRSchemaDODMLASRAudioFileResult;
  v5 = [(DODMLASRSchemaDODMLASRAudioFileResult *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"asrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRAudioFileResult *)v5 setAsrId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"decodingResults"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
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

- (DODMLASRSchemaDODMLASRAudioFileResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRAudioFileResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRAudioFileResult *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_asrId)
  {
    asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
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

  if ([(NSArray *)self->_decodingResults count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"decodingResults"];
  }

  if (self->_linkId)
  {
    linkId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_asrId hash];
  v4 = [(NSArray *)self->_decodingResults hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  asrId2 = [equalCopy asrId];
  if ((asrId != 0) == (asrId2 == 0))
  {
    goto LABEL_16;
  }

  asrId3 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  if (asrId3)
  {
    v8 = asrId3;
    asrId4 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
    asrId5 = [equalCopy asrId];
    v11 = [asrId4 isEqual:asrId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  asrId2 = [equalCopy decodingResults];
  if ((asrId != 0) == (asrId2 == 0))
  {
    goto LABEL_16;
  }

  decodingResults = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  if (decodingResults)
  {
    v13 = decodingResults;
    decodingResults2 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
    decodingResults3 = [equalCopy decodingResults];
    v16 = [decodingResults2 isEqual:decodingResults3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
  asrId2 = [equalCopy linkId];
  if ((asrId != 0) != (asrId2 == 0))
  {
    linkId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    if (!linkId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = linkId;
    linkId2 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    linkId3 = [equalCopy linkId];
    v21 = [linkId2 isEqual:linkId3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];

  if (asrId)
  {
    asrId2 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
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

  linkId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];

  if (linkId)
  {
    linkId2 = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDecodingResults:(id)results
{
  resultsCopy = results;
  decodingResults = self->_decodingResults;
  v8 = resultsCopy;
  if (!decodingResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_decodingResults;
    self->_decodingResults = array;

    resultsCopy = v8;
    decodingResults = self->_decodingResults;
  }

  [(NSArray *)decodingResults addObject:resultsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRAudioFileResult;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  asrId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self asrId];
  v7 = [asrId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRAudioFileResult *)self deleteAsrId];
  }

  decodingResults = [(DODMLASRSchemaDODMLASRAudioFileResult *)self decodingResults];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:decodingResults underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRAudioFileResult *)self setDecodingResults:v10];

  linkId = [(DODMLASRSchemaDODMLASRAudioFileResult *)self linkId];
  v12 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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