@interface PEGASUSSchemaPEGASUSVideoExecutionTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addResultEntityIds:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSVideoExecutionTier1

- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PEGASUSSchemaPEGASUSVideoExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"resultEntityIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)v5 addResultEntityIds:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"videoTitle", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v14 copy];
      [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)v5 setVideoTitle:v15];
    }

    v16 = [v4 objectForKeyedSubscript:@"isNlsResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoExecutionTier1 setIsNlsResult:](v5, "setIsNlsResult:", [v16 BOOLValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self dictionaryRepresentation];
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
  if (*(&self->_isNlsResult + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSVideoExecutionTier1 isNlsResult](self, "isNlsResult")}];
    [v3 setObject:v4 forKeyedSubscript:@"isNlsResult"];
  }

  if (self->_resultEntityIds)
  {
    v5 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"resultEntityIds"];
  }

  if (self->_videoTitle)
  {
    v7 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
    v8 = [v7 copy];
    [v3 setObject:v8 forKeyedSubscript:@"videoTitle"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_resultEntityIds hash];
  v4 = [(NSString *)self->_videoTitle hash];
  if (*(&self->_isNlsResult + 1))
  {
    v5 = 2654435761 * self->_isNlsResult;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
  v6 = [v4 resultEntityIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self resultEntityIds];
    v10 = [v4 resultEntityIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
  v6 = [v4 videoTitle];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];
    v15 = [v4 videoTitle];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_isNlsResult + 1) == (v4[25] & 1))
  {
    if (!*(&self->_isNlsResult + 1) || (isNlsResult = self->_isNlsResult, isNlsResult == [v4 isNlsResult]))
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

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_resultEntityIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self videoTitle];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if (*(&self->_isNlsResult + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)addResultEntityIds:(id)a3
{
  v4 = a3;
  resultEntityIds = self->_resultEntityIds;
  v8 = v4;
  if (!resultEntityIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_resultEntityIds;
    self->_resultEntityIds = v6;

    v4 = v8;
    resultEntityIds = self->_resultEntityIds;
  }

  [(NSArray *)resultEntityIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSVideoExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteResultEntityIds];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteVideoTitle];
    [(PEGASUSSchemaPEGASUSVideoExecutionTier1 *)self deleteIsNlsResult];
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