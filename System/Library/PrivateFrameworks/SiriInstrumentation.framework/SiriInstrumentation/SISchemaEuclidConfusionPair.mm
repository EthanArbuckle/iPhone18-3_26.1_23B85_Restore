@interface SISchemaEuclidConfusionPair
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaEuclidConfusionPair)initWithDictionary:(id)a3;
- (SISchemaEuclidConfusionPair)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addSuggestedTokens:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaEuclidConfusionPair

- (SISchemaEuclidConfusionPair)initWithDictionary:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SISchemaEuclidConfusionPair;
  v5 = [(SISchemaEuclidConfusionPair *)&v24 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"recognizedToken"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaEuclidConfusionPair *)v5 setRecognizedToken:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"suggestedTokens"];
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

    v16 = [v4 objectForKeyedSubscript:{@"correctedToken", v20}];
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

- (SISchemaEuclidConfusionPair)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaEuclidConfusionPair *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaEuclidConfusionPair *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_correctedToken)
  {
    v4 = [(SISchemaEuclidConfusionPair *)self correctedToken];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"correctedToken"];
  }

  if (self->_recognizedToken)
  {
    v6 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"recognizedToken"];
  }

  if (self->_suggestedTokens)
  {
    v8 = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"suggestedTokens"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_recognizedToken hash];
  v4 = [(NSArray *)self->_suggestedTokens hash]^ v3;
  return v4 ^ [(NSString *)self->_correctedToken hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
  v6 = [v4 recognizedToken];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
  if (v7)
  {
    v8 = v7;
    v9 = [(SISchemaEuclidConfusionPair *)self recognizedToken];
    v10 = [v4 recognizedToken];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
  v6 = [v4 suggestedTokens];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
  if (v12)
  {
    v13 = v12;
    v14 = [(SISchemaEuclidConfusionPair *)self suggestedTokens];
    v15 = [v4 suggestedTokens];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(SISchemaEuclidConfusionPair *)self correctedToken];
  v6 = [v4 correctedToken];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(SISchemaEuclidConfusionPair *)self correctedToken];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(SISchemaEuclidConfusionPair *)self correctedToken];
    v20 = [v4 correctedToken];
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
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(SISchemaEuclidConfusionPair *)self recognizedToken];

  if (v5)
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

  v11 = [(SISchemaEuclidConfusionPair *)self correctedToken];

  if (v11)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addSuggestedTokens:(id)a3
{
  v4 = a3;
  suggestedTokens = self->_suggestedTokens;
  v8 = v4;
  if (!suggestedTokens)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestedTokens;
    self->_suggestedTokens = v6;

    v4 = v8;
    suggestedTokens = self->_suggestedTokens;
  }

  [(NSArray *)suggestedTokens addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end