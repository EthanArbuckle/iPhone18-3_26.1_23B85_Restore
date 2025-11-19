@interface INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addChoiceDependentSignals:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated;
  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"commonSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCEPervasiveEntityResolutionCommonSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)v5 setCommonSignals:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"choiceDependentSignals"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v6;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          v13 = 0;
          do
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * v13);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [[INFERENCESchemaINFERENCEPervasiveEntityResolutionChoiceDependentSignals alloc] initWithDictionary:v14];
              [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)v5 addChoiceDependentSignals:v15];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v11);
      }

      v6 = v18;
    }

    v16 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_choiceDependentSignals count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_choiceDependentSignals;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"choiceDependentSignals"];
  }

  if (self->_commonSignals)
  {
    v12 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"commonSignals"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"commonSignals"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v16];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
  v6 = [v4 commonSignals];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
  if (v7)
  {
    v8 = v7;
    v9 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
    v10 = [v4 commonSignals];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self choiceDependentSignals];
  v6 = [v4 choiceDependentSignals];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self choiceDependentSignals];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self choiceDependentSignals];
    v15 = [v4 choiceDependentSignals];
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
  v5 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_choiceDependentSignals;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)addChoiceDependentSignals:(id)a3
{
  v4 = a3;
  choiceDependentSignals = self->_choiceDependentSignals;
  v8 = v4;
  if (!choiceDependentSignals)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_choiceDependentSignals;
    self->_choiceDependentSignals = v6;

    v4 = v8;
    choiceDependentSignals = self->_choiceDependentSignals;
  }

  [(NSArray *)choiceDependentSignals addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated;
  v5 = [(SISchemaInstrumentationMessage *)&v12 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self commonSignals];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self deleteCommonSignals];
  }

  v9 = [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self choiceDependentSignals];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated *)self setChoiceDependentSignals:v10];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end