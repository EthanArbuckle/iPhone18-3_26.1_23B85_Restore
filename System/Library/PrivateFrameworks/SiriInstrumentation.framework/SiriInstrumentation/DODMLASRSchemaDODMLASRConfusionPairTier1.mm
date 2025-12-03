@interface DODMLASRSchemaDODMLASRConfusionPairTier1
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCorrectedTokens:(id)tokens;
- (void)addRecognizedTokens:(id)tokens;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRConfusionPairTier1

- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = DODMLASRSchemaDODMLASRConfusionPairTier1;
  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)&v36 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recognizedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v33;
        do
        {
          v11 = 0;
          do
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v32 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)v5 addRecognizedTokens:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"correctedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)v5 addCorrectedTokens:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"leftContextToken", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)v5 setLeftContextToken:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"rightContextToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)v5 setRightContextToken:v25];
    }

    v26 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self dictionaryRepresentation];
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
    correctedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
    v5 = [correctedTokens copy];
    [dictionary setObject:v5 forKeyedSubscript:@"correctedTokens"];
  }

  if (self->_leftContextToken)
  {
    leftContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
    v7 = [leftContextToken copy];
    [dictionary setObject:v7 forKeyedSubscript:@"leftContextToken"];
  }

  if (self->_recognizedTokens)
  {
    recognizedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
    v9 = [recognizedTokens copy];
    [dictionary setObject:v9 forKeyedSubscript:@"recognizedTokens"];
  }

  if (self->_rightContextToken)
  {
    rightContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    v11 = [rightContextToken copy];
    [dictionary setObject:v11 forKeyedSubscript:@"rightContextToken"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_recognizedTokens hash];
  v4 = [(NSArray *)self->_correctedTokens hash]^ v3;
  v5 = [(NSString *)self->_leftContextToken hash];
  return v4 ^ v5 ^ [(NSString *)self->_rightContextToken hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  recognizedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
  recognizedTokens2 = [equalCopy recognizedTokens];
  if ((recognizedTokens != 0) == (recognizedTokens2 == 0))
  {
    goto LABEL_21;
  }

  recognizedTokens3 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
  if (recognizedTokens3)
  {
    v8 = recognizedTokens3;
    recognizedTokens4 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
    recognizedTokens5 = [equalCopy recognizedTokens];
    v11 = [recognizedTokens4 isEqual:recognizedTokens5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  recognizedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
  recognizedTokens2 = [equalCopy correctedTokens];
  if ((recognizedTokens != 0) == (recognizedTokens2 == 0))
  {
    goto LABEL_21;
  }

  correctedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
  if (correctedTokens)
  {
    v13 = correctedTokens;
    correctedTokens2 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
    correctedTokens3 = [equalCopy correctedTokens];
    v16 = [correctedTokens2 isEqual:correctedTokens3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  recognizedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
  recognizedTokens2 = [equalCopy leftContextToken];
  if ((recognizedTokens != 0) == (recognizedTokens2 == 0))
  {
    goto LABEL_21;
  }

  leftContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
  if (leftContextToken)
  {
    v18 = leftContextToken;
    leftContextToken2 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
    leftContextToken3 = [equalCopy leftContextToken];
    v21 = [leftContextToken2 isEqual:leftContextToken3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  recognizedTokens = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
  recognizedTokens2 = [equalCopy rightContextToken];
  if ((recognizedTokens != 0) != (recognizedTokens2 == 0))
  {
    rightContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    if (!rightContextToken)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = rightContextToken;
    rightContextToken2 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    rightContextToken3 = [equalCopy rightContextToken];
    v26 = [rightContextToken2 isEqual:rightContextToken3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_recognizedTokens;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_correctedTokens;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  leftContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];

  if (leftContextToken)
  {
    PBDataWriterWriteStringField();
  }

  rightContextToken = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];

  if (rightContextToken)
  {
    PBDataWriterWriteStringField();
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
  v7.super_class = DODMLASRSchemaDODMLASRConfusionPairTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
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