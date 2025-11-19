@interface ASRSchemaASRJitLanguageModelEnrollmentEndedTier1
- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithDictionary:(id)a3;
- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addDialogContext:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRJitLanguageModelEnrollmentEndedTier1

- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithDictionary:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = ASRSchemaASRJitLanguageModelEnrollmentEndedTier1;
  v5 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dialogContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          v11 = 0;
          do
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)v5 addDialogContext:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"linkId", v18}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [[SISchemaUUID alloc] initWithDictionary:v14];
      [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)v5 setLinkId:v15];
    }

    v16 = v5;
  }

  return v5;
}

- (ASRSchemaASRJitLanguageModelEnrollmentEndedTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dictionaryRepresentation];
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
  if (self->_dialogContexts)
  {
    v4 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"dialogContext"];
  }

  if (self->_linkId)
  {
    v6 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v8 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v8 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
  v6 = [v4 dialogContexts];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
  if (v7)
  {
    v8 = v7;
    v9 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self dialogContexts];
    v10 = [v4 dialogContexts];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    v15 = [v4 linkId];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_dialogContexts;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];

  if (v10)
  {
    v11 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addDialogContext:(id)a3
{
  v4 = a3;
  dialogContexts = self->_dialogContexts;
  v8 = v4;
  if (!dialogContexts)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_dialogContexts;
    self->_dialogContexts = v6;

    v4 = v8;
    dialogContexts = self->_dialogContexts;
  }

  [(NSArray *)dialogContexts addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ASRSchemaASRJitLanguageModelEnrollmentEndedTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([v4 isConditionSet:4])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([v4 isConditionSet:5])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([v4 isConditionSet:6])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  if ([v4 isConditionSet:7])
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteDialogContext];
  }

  v6 = [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(ASRSchemaASRJitLanguageModelEnrollmentEndedTier1 *)self deleteLinkId];
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