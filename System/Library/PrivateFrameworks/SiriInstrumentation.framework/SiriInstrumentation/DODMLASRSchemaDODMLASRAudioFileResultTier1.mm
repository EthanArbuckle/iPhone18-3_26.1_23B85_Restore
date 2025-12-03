@interface DODMLASRSchemaDODMLASRAudioFileResultTier1
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRAudioFileResultTier1)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRAudioFileResultTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addOneBestTranscripts:(id)transcripts;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRAudioFileResultTier1

- (DODMLASRSchemaDODMLASRAudioFileResultTier1)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = DODMLASRSchemaDODMLASRAudioFileResultTier1;
  v5 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recognitionResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ASRSchemaASRRecognitionResultTier1 alloc] initWithDictionary:v6];
      [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)v5 setRecognitionResult:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"oneBestTranscripts"];
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
              v15 = [[ASRSchemaASROneBestTranscriptTier1 alloc] initWithDictionary:v14];
              [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)v5 addOneBestTranscripts:v15];
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
      [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)v5 setLinkId:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRAudioFileResultTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self dictionaryRepresentation];
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
  if (self->_linkId)
  {
    linkId = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_oneBestTranscripts count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = self->_oneBestTranscripts;
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

    [dictionary setObject:array forKeyedSubscript:@"oneBestTranscripts"];
  }

  if (self->_recognitionResult)
  {
    recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
    dictionaryRepresentation3 = [recognitionResult dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"recognitionResult"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"recognitionResult"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ASRSchemaASRRecognitionResultTier1 *)self->_recognitionResult hash];
  v4 = [(NSArray *)self->_oneBestTranscripts hash]^ v3;
  return v4 ^ [(SISchemaUUID *)self->_linkId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
  recognitionResult2 = [equalCopy recognitionResult];
  if ((recognitionResult != 0) == (recognitionResult2 == 0))
  {
    goto LABEL_16;
  }

  recognitionResult3 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
  if (recognitionResult3)
  {
    v8 = recognitionResult3;
    recognitionResult4 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
    recognitionResult5 = [equalCopy recognitionResult];
    v11 = [recognitionResult4 isEqual:recognitionResult5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self oneBestTranscripts];
  recognitionResult2 = [equalCopy oneBestTranscripts];
  if ((recognitionResult != 0) == (recognitionResult2 == 0))
  {
    goto LABEL_16;
  }

  oneBestTranscripts = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self oneBestTranscripts];
  if (oneBestTranscripts)
  {
    v13 = oneBestTranscripts;
    oneBestTranscripts2 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self oneBestTranscripts];
    oneBestTranscripts3 = [equalCopy oneBestTranscripts];
    v16 = [oneBestTranscripts2 isEqual:oneBestTranscripts3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
  recognitionResult2 = [equalCopy linkId];
  if ((recognitionResult != 0) != (recognitionResult2 == 0))
  {
    linkId = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
    if (!linkId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = linkId;
    linkId2 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
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
  recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];

  if (recognitionResult)
  {
    recognitionResult2 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_oneBestTranscripts;
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

  linkId = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addOneBestTranscripts:(id)transcripts
{
  transcriptsCopy = transcripts;
  oneBestTranscripts = self->_oneBestTranscripts;
  v8 = transcriptsCopy;
  if (!oneBestTranscripts)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_oneBestTranscripts;
    self->_oneBestTranscripts = array;

    transcriptsCopy = v8;
    oneBestTranscripts = self->_oneBestTranscripts;
  }

  [(NSArray *)oneBestTranscripts addObject:transcriptsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRAudioFileResultTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  recognitionResult = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self recognitionResult];
  v7 = [recognitionResult applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self deleteRecognitionResult];
  }

  oneBestTranscripts = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self oneBestTranscripts];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:oneBestTranscripts underConditions:policyCopy];
  [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self setOneBestTranscripts:v10];

  linkId = [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self linkId];
  v12 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
  {
    [(DODMLASRSchemaDODMLASRAudioFileResultTier1 *)self deleteLinkId];
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