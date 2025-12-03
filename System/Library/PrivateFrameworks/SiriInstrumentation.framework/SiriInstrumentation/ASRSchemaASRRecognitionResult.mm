@interface ASRSchemaASRRecognitionResult
- (ASRSchemaASRRecognitionResult)initWithDictionary:(id)dictionary;
- (ASRSchemaASRRecognitionResult)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPhrases:(id)phrases;
- (void)addUtterances:(id)utterances;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRRecognitionResult

- (ASRSchemaASRRecognitionResult)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = ASRSchemaASRRecognitionResult;
  v5 = [(ASRSchemaASRRecognitionResult *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRRecognitionResult *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"phrases"];
    objc_opt_class();
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[ASRSchemaASRPhrase alloc] initWithDictionary:v15];
              [(ASRSchemaASRRecognitionResult *)v5 addPhrases:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v6 = v28;
      v8 = v9;
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"utterances"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[ASRSchemaASRUtterance alloc] initWithDictionary:v23];
              [(ASRSchemaASRRecognitionResult *)v5 addUtterances:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = v27;
      v6 = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (ASRSchemaASRRecognitionResult)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRRecognitionResult *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRRecognitionResult *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(ASRSchemaASRRecognitionResult *)self linkId];
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

  if ([(NSArray *)self->_phrases count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = self->_phrases;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v29;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v29 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"phrases"];
  }

  if ([(NSArray *)self->_utterances count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_utterances;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"utterances"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v24];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_phrases hash]^ v3;
  return v4 ^ [(NSArray *)self->_utterances hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(ASRSchemaASRRecognitionResult *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(ASRSchemaASRRecognitionResult *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(ASRSchemaASRRecognitionResult *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(ASRSchemaASRRecognitionResult *)self phrases];
  linkId2 = [equalCopy phrases];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  phrases = [(ASRSchemaASRRecognitionResult *)self phrases];
  if (phrases)
  {
    v13 = phrases;
    phrases2 = [(ASRSchemaASRRecognitionResult *)self phrases];
    phrases3 = [equalCopy phrases];
    v16 = [phrases2 isEqual:phrases3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(ASRSchemaASRRecognitionResult *)self utterances];
  linkId2 = [equalCopy utterances];
  if ((linkId != 0) != (linkId2 == 0))
  {
    utterances = [(ASRSchemaASRRecognitionResult *)self utterances];
    if (!utterances)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = utterances;
    utterances2 = [(ASRSchemaASRRecognitionResult *)self utterances];
    utterances3 = [equalCopy utterances];
    v21 = [utterances2 isEqual:utterances3];

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
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(ASRSchemaASRRecognitionResult *)self linkId];

  if (linkId)
  {
    linkId2 = [(ASRSchemaASRRecognitionResult *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_phrases;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_utterances;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addUtterances:(id)utterances
{
  utterancesCopy = utterances;
  utterances = self->_utterances;
  v8 = utterancesCopy;
  if (!utterances)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_utterances;
    self->_utterances = array;

    utterancesCopy = v8;
    utterances = self->_utterances;
  }

  [(NSArray *)utterances addObject:utterancesCopy];
}

- (void)addPhrases:(id)phrases
{
  phrasesCopy = phrases;
  phrases = self->_phrases;
  v8 = phrasesCopy;
  if (!phrases)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_phrases;
    self->_phrases = array;

    phrasesCopy = v8;
    phrases = self->_phrases;
  }

  [(NSArray *)phrases addObject:phrasesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = ASRSchemaASRRecognitionResult;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(ASRSchemaASRRecognitionResult *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ASRSchemaASRRecognitionResult *)self deleteLinkId];
  }

  phrases = [(ASRSchemaASRRecognitionResult *)self phrases];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:phrases underConditions:policyCopy];
  [(ASRSchemaASRRecognitionResult *)self setPhrases:v10];

  utterances = [(ASRSchemaASRRecognitionResult *)self utterances];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:utterances underConditions:policyCopy];
  [(ASRSchemaASRRecognitionResult *)self setUtterances:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end