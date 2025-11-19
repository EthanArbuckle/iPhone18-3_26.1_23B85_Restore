@interface DODMLASRSchemaDODMLASRConfusionPairTier1
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addCorrectedTokens:(id)a3;
- (void)addRecognizedTokens:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRConfusionPairTier1

- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = DODMLASRSchemaDODMLASRConfusionPairTier1;
  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"recognizedTokens"];
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

    v14 = [v4 objectForKeyedSubscript:@"correctedTokens"];
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

    v22 = [v4 objectForKeyedSubscript:{@"leftContextToken", v28}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)v5 setLeftContextToken:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"rightContextToken"];
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

- (DODMLASRSchemaDODMLASRConfusionPairTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self dictionaryRepresentation];
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
  if (self->_correctedTokens)
  {
    v4 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"correctedTokens"];
  }

  if (self->_leftContextToken)
  {
    v6 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"leftContextToken"];
  }

  if (self->_recognizedTokens)
  {
    v8 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"recognizedTokens"];
  }

  if (self->_rightContextToken)
  {
    v10 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"rightContextToken"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_recognizedTokens hash];
  v4 = [(NSArray *)self->_correctedTokens hash]^ v3;
  v5 = [(NSString *)self->_leftContextToken hash];
  return v4 ^ v5 ^ [(NSString *)self->_rightContextToken hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
  v6 = [v4 recognizedTokens];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
  if (v7)
  {
    v8 = v7;
    v9 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self recognizedTokens];
    v10 = [v4 recognizedTokens];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
  v6 = [v4 correctedTokens];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
  if (v12)
  {
    v13 = v12;
    v14 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self correctedTokens];
    v15 = [v4 correctedTokens];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
  v6 = [v4 leftContextToken];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
  if (v17)
  {
    v18 = v17;
    v19 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];
    v20 = [v4 leftContextToken];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
  v6 = [v4 rightContextToken];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];
    v25 = [v4 rightContextToken];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v15 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self leftContextToken];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }

  v16 = [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self rightContextToken];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addCorrectedTokens:(id)a3
{
  v4 = a3;
  correctedTokens = self->_correctedTokens;
  v8 = v4;
  if (!correctedTokens)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_correctedTokens;
    self->_correctedTokens = v6;

    v4 = v8;
    correctedTokens = self->_correctedTokens;
  }

  [(NSArray *)correctedTokens addObject:v4];
}

- (void)addRecognizedTokens:(id)a3
{
  v4 = a3;
  recognizedTokens = self->_recognizedTokens;
  v8 = v4;
  if (!recognizedTokens)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recognizedTokens;
    self->_recognizedTokens = v6;

    v4 = v8;
    recognizedTokens = self->_recognizedTokens;
  }

  [(NSArray *)recognizedTokens addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DODMLASRSchemaDODMLASRConfusionPairTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([v4 isConditionSet:4])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([v4 isConditionSet:5])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([v4 isConditionSet:6])
  {
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRecognizedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteCorrectedTokens];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteLeftContextToken];
    [(DODMLASRSchemaDODMLASRConfusionPairTier1 *)self deleteRightContextToken];
  }

  if ([v4 isConditionSet:7])
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