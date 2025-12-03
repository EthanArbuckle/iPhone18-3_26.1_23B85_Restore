@interface SISchemaEuclidConfusionPair
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaEuclidConfusionPair)initWithDictionary:(id)dictionary;
- (SISchemaEuclidConfusionPair)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestedTokens:(id)tokens;
- (void)writeTo:(id)to;
@end

@implementation SISchemaEuclidConfusionPair

- (SISchemaEuclidConfusionPair)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = SISchemaEuclidConfusionPair;
  v5 = [(SISchemaEuclidConfusionPair *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"recognizedToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaEuclidConfusionPair *)v5 setRecognizedToken:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestedTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v14 copy];
              [(SISchemaEuclidConfusionPair *)v5 addSuggestedTokens:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:{@"correctedToken", v20}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(SISchemaEuclidConfusionPair *)v5 setCorrectedToken:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (SISchemaEuclidConfusionPair)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaEuclidConfusionPair *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaEuclidConfusionPair *)self dictionaryRepresentation];
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
  if (self->_correctedToken)
  {
    correctedToken = [(SISchemaEuclidConfusionPair *)self correctedToken];
    v5 = [correctedToken copy];
    [dictionary setObject:v5 forKeyedSubscript:@"correctedToken"];
  }

  if (self->_recognizedToken)
  {
    recognizedToken = [(SISchemaEuclidConfusionPair *)self recognizedToken];
    v7 = [recognizedToken copy];
    [dictionary setObject:v7 forKeyedSubscript:@"recognizedToken"];
  }

  if (self->_suggestedTokens)
  {
    suggestedTokens = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
    v9 = [suggestedTokens copy];
    [dictionary setObject:v9 forKeyedSubscript:@"suggestedTokens"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recognizedToken hash];
  v4 = [(NSArray *)self->_suggestedTokens hash]^ v3;
  return v4 ^ [(NSString *)self->_correctedToken hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  recognizedToken = [(SISchemaEuclidConfusionPair *)self recognizedToken];
  recognizedToken2 = [equalCopy recognizedToken];
  if ((recognizedToken != 0) == (recognizedToken2 == 0))
  {
    goto LABEL_16;
  }

  recognizedToken3 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
  if (recognizedToken3)
  {
    v8 = recognizedToken3;
    recognizedToken4 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
    recognizedToken5 = [equalCopy recognizedToken];
    v11 = [recognizedToken4 isEqual:recognizedToken5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  recognizedToken = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
  recognizedToken2 = [equalCopy suggestedTokens];
  if ((recognizedToken != 0) == (recognizedToken2 == 0))
  {
    goto LABEL_16;
  }

  suggestedTokens = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
  if (suggestedTokens)
  {
    v13 = suggestedTokens;
    suggestedTokens2 = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
    suggestedTokens3 = [equalCopy suggestedTokens];
    v16 = [suggestedTokens2 isEqual:suggestedTokens3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  recognizedToken = [(SISchemaEuclidConfusionPair *)self correctedToken];
  recognizedToken2 = [equalCopy correctedToken];
  if ((recognizedToken != 0) != (recognizedToken2 == 0))
  {
    correctedToken = [(SISchemaEuclidConfusionPair *)self correctedToken];
    if (!correctedToken)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = correctedToken;
    correctedToken2 = [(SISchemaEuclidConfusionPair *)self correctedToken];
    correctedToken3 = [equalCopy correctedToken];
    v21 = [correctedToken2 isEqual:correctedToken3];

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
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  recognizedToken = [(SISchemaEuclidConfusionPair *)self recognizedToken];

  if (recognizedToken)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_suggestedTokens;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  correctedToken = [(SISchemaEuclidConfusionPair *)self correctedToken];

  if (correctedToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addSuggestedTokens:(id)tokens
{
  tokensCopy = tokens;
  suggestedTokens = self->_suggestedTokens;
  v8 = tokensCopy;
  if (!suggestedTokens)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestedTokens;
    self->_suggestedTokens = array;

    tokensCopy = v8;
    suggestedTokens = self->_suggestedTokens;
  }

  [(NSArray *)suggestedTokens addObject:tokensCopy];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end