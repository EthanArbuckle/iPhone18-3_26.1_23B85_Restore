@interface ASRSchemaASRConfusionPairToken
- (ASRSchemaASRConfusionPairToken)initWithDictionary:(id)dictionary;
- (ASRSchemaASRConfusionPairToken)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCorrectedTokens:(id)tokens;
- (void)addRecognizedTokens:(id)tokens;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRConfusionPairToken

- (ASRSchemaASRConfusionPairToken)initWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = ASRSchemaASRConfusionPairToken;
  v5 = [(ASRSchemaASRConfusionPairToken *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recognizedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v30;
        do
        {
          v11 = 0;
          do
          {
            if (*v30 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v29 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(ASRSchemaASRConfusionPairToken *)v5 addRecognizedTokens:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"correctedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v26;
        do
        {
          v19 = 0;
          do
          {
            if (*v26 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v25 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(ASRSchemaASRConfusionPairToken *)v5 addCorrectedTokens:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"recognizedTokensStartIndex", v25}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRConfusionPairToken setRecognizedTokensStartIndex:](v5, "setRecognizedTokensStartIndex:", [v22 intValue]);
    }

    v23 = v5;
  }

  return v5;
}

- (ASRSchemaASRConfusionPairToken)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRConfusionPairToken *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRConfusionPairToken *)self dictionaryRepresentation];
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
  if (self->_correctedTokens)
  {
    correctedTokens = [(ASRSchemaASRConfusionPairToken *)self correctedTokens];
    v5 = [correctedTokens copy];
    [dictionary setObject:v5 forKeyedSubscript:@"correctedTokens"];
  }

  if (self->_recognizedTokens)
  {
    recognizedTokens = [(ASRSchemaASRConfusionPairToken *)self recognizedTokens];
    v7 = [recognizedTokens copy];
    [dictionary setObject:v7 forKeyedSubscript:@"recognizedTokens"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[ASRSchemaASRConfusionPairToken recognizedTokensStartIndex](self, "recognizedTokensStartIndex")}];
    [dictionary setObject:v8 forKeyedSubscript:@"recognizedTokensStartIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_recognizedTokens hash];
  v4 = [(NSArray *)self->_correctedTokens hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_recognizedTokensStartIndex;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  recognizedTokens = [(ASRSchemaASRConfusionPairToken *)self recognizedTokens];
  recognizedTokens2 = [equalCopy recognizedTokens];
  if ((recognizedTokens != 0) == (recognizedTokens2 == 0))
  {
    goto LABEL_11;
  }

  recognizedTokens3 = [(ASRSchemaASRConfusionPairToken *)self recognizedTokens];
  if (recognizedTokens3)
  {
    v8 = recognizedTokens3;
    recognizedTokens4 = [(ASRSchemaASRConfusionPairToken *)self recognizedTokens];
    recognizedTokens5 = [equalCopy recognizedTokens];
    v11 = [recognizedTokens4 isEqual:recognizedTokens5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  recognizedTokens = [(ASRSchemaASRConfusionPairToken *)self correctedTokens];
  recognizedTokens2 = [equalCopy correctedTokens];
  if ((recognizedTokens != 0) == (recognizedTokens2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  correctedTokens = [(ASRSchemaASRConfusionPairToken *)self correctedTokens];
  if (correctedTokens)
  {
    v13 = correctedTokens;
    correctedTokens2 = [(ASRSchemaASRConfusionPairToken *)self correctedTokens];
    correctedTokens3 = [equalCopy correctedTokens];
    v16 = [correctedTokens2 isEqual:correctedTokens3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[28] & 1))
  {
    if ((*&self->_has & 1) == 0 || (recognizedTokensStartIndex = self->_recognizedTokensStartIndex, recognizedTokensStartIndex == [equalCopy recognizedTokensStartIndex]))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_recognizedTokens;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_correctedTokens;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addCorrectedTokens:(id)tokens
{
  tokensCopy = tokens;
  correctedTokens = self->_correctedTokens;
  v8 = tokensCopy;
  if (!correctedTokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_correctedTokens;
    self->_correctedTokens = array;

    tokensCopy = v8;
    correctedTokens = self->_correctedTokens;
  }

  [(NSArray *)correctedTokens addObject:tokensCopy];
}

- (void)addRecognizedTokens:(id)tokens
{
  tokensCopy = tokens;
  recognizedTokens = self->_recognizedTokens;
  v8 = tokensCopy;
  if (!recognizedTokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_recognizedTokens;
    self->_recognizedTokens = array;

    tokensCopy = v8;
    recognizedTokens = self->_recognizedTokens;
  }

  [(NSArray *)recognizedTokens addObject:tokensCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = ASRSchemaASRConfusionPairToken;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(ASRSchemaASRConfusionPairToken *)self deleteRecognizedTokens];
    [(ASRSchemaASRConfusionPairToken *)self deleteCorrectedTokens];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(ASRSchemaASRConfusionPairToken *)self deleteRecognizedTokens];
    [(ASRSchemaASRConfusionPairToken *)self deleteCorrectedTokens];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(ASRSchemaASRConfusionPairToken *)self deleteRecognizedTokens];
    [(ASRSchemaASRConfusionPairToken *)self deleteCorrectedTokens];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(ASRSchemaASRConfusionPairToken *)self deleteRecognizedTokens];
    [(ASRSchemaASRConfusionPairToken *)self deleteCorrectedTokens];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(ASRSchemaASRConfusionPairToken *)self deleteRecognizedTokens];
    [(ASRSchemaASRConfusionPairToken *)self deleteCorrectedTokens];
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