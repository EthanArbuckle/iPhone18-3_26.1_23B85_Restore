@interface ASRSchemaASRManualEditTextClassified
- (ASRSchemaASRManualEditTextClassified)initWithDictionary:(id)a3;
- (ASRSchemaASRManualEditTextClassified)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addManualEdits:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRManualEditTextClassified

- (ASRSchemaASRManualEditTextClassified)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = ASRSchemaASRManualEditTextClassified;
  v5 = [(ASRSchemaASRManualEditTextClassified *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"originalAsrId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(ASRSchemaASRManualEditTextClassified *)v5 setOriginalAsrId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"manualEdits"];
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
              v15 = [[ASRSchemaASRConfusionPairToken alloc] initWithDictionary:v14];
              [(ASRSchemaASRManualEditTextClassified *)v5 addManualEdits:v15];
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

    v16 = [v4 objectForKeyedSubscript:@"fullCorrectedText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 copy];
      [(ASRSchemaASRManualEditTextClassified *)v5 setFullCorrectedText:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (ASRSchemaASRManualEditTextClassified)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRManualEditTextClassified *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRManualEditTextClassified *)self dictionaryRepresentation];
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
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_fullCorrectedText)
  {
    v4 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"fullCorrectedText"];
  }

  if ([(NSArray *)self->_manualEdits count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = self->_manualEdits;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"manualEdits"];
  }

  if (self->_originalAsrId)
  {
    v14 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"originalAsrId"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"originalAsrId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v18];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_originalAsrId hash];
  v4 = [(NSArray *)self->_manualEdits hash]^ v3;
  return v4 ^ [(NSString *)self->_fullCorrectedText hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  v6 = [v4 originalAsrId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    v10 = [v4 originalAsrId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  v6 = [v4 manualEdits];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
    v15 = [v4 manualEdits];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
  v6 = [v4 fullCorrectedText];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];
    v20 = [v4 fullCorrectedText];
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
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];

  if (v5)
  {
    v6 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
    PBDataWriterWriteSubmessage();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_manualEdits;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = [(ASRSchemaASRManualEditTextClassified *)self fullCorrectedText];

  if (v12)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addManualEdits:(id)a3
{
  v4 = a3;
  manualEdits = self->_manualEdits;
  v8 = v4;
  if (!manualEdits)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_manualEdits;
    self->_manualEdits = v6;

    v4 = v8;
    manualEdits = self->_manualEdits;
  }

  [(NSArray *)manualEdits addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ASRSchemaASRManualEditTextClassified;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  if ([v4 isConditionSet:7])
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteManualEdits];
    [(ASRSchemaASRManualEditTextClassified *)self deleteFullCorrectedText];
  }

  v6 = [(ASRSchemaASRManualEditTextClassified *)self originalAsrId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRManualEditTextClassified *)self deleteOriginalAsrId];
  }

  v9 = [(ASRSchemaASRManualEditTextClassified *)self manualEdits];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(ASRSchemaASRManualEditTextClassified *)self setManualEdits:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end