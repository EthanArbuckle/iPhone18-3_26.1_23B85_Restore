@interface NLRouterSchemaNLRouterPromptGenerated
- (BOOL)isEqual:(id)a3;
- (NLRouterSchemaNLRouterPromptGenerated)initWithDictionary:(id)a3;
- (NLRouterSchemaNLRouterPromptGenerated)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addComponents:(id)a3;
- (void)addDroppedComponents:(id)a3;
- (void)setHasEstimatedSizeInTokens:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NLRouterSchemaNLRouterPromptGenerated

- (NLRouterSchemaNLRouterPromptGenerated)initWithDictionary:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v36.receiver = self;
  v36.super_class = NLRouterSchemaNLRouterPromptGenerated;
  v5 = [(NLRouterSchemaNLRouterPromptGenerated *)&v36 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"components"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v33;
        do
        {
          v12 = 0;
          do
          {
            if (*v33 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v32 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [[NLRouterSchemaNLRouterPromptComponent alloc] initWithDictionary:v13];
              [(NLRouterSchemaNLRouterPromptGenerated *)v5 addComponents:v14];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [v4 objectForKeyedSubscript:@"droppedComponents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v6;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v29;
        do
        {
          v20 = 0;
          do
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * v20);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[NLRouterSchemaNLRouterPromptComponent alloc] initWithDictionary:v21];
              [(NLRouterSchemaNLRouterPromptGenerated *)v5 addDroppedComponents:v22];
            }

            ++v20;
          }

          while (v18 != v20);
          v18 = [v16 countByEnumeratingWithState:&v28 objects:v37 count:16];
        }

        while (v18);
      }

      v6 = v27;
    }

    v23 = [v4 objectForKeyedSubscript:@"totalSizeInTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerated setTotalSizeInTokens:](v5, "setTotalSizeInTokens:", [v23 unsignedIntValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"estimatedSizeInTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerated setEstimatedSizeInTokens:](v5, "setEstimatedSizeInTokens:", [v24 unsignedIntValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterPromptGenerated)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterPromptGenerated *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLRouterSchemaNLRouterPromptGenerated *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_components count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_components;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"components"];
  }

  if ([(NSArray *)self->_droppedComponents count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_droppedComponents;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          if (v18)
          {
            [v12 addObject:v18];
          }

          else
          {
            v19 = [MEMORY[0x1E695DFB0] null];
            [v12 addObject:v19];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"droppedComponents"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLRouterSchemaNLRouterPromptGenerated estimatedSizeInTokens](self, "estimatedSizeInTokens")}];
    [v3 setObject:v21 forKeyedSubscript:@"estimatedSizeInTokens"];

    has = self->_has;
  }

  if (has)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NLRouterSchemaNLRouterPromptGenerated totalSizeInTokens](self, "totalSizeInTokens")}];
    [v3 setObject:v22 forKeyedSubscript:@"totalSizeInTokens"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v24];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_components hash];
  v4 = [(NSArray *)self->_droppedComponents hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_totalSizeInTokens;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_estimatedSizeInTokens;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(NLRouterSchemaNLRouterPromptGenerated *)self components];
  v6 = [v4 components];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(NLRouterSchemaNLRouterPromptGenerated *)self components];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLRouterSchemaNLRouterPromptGenerated *)self components];
    v10 = [v4 components];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(NLRouterSchemaNLRouterPromptGenerated *)self droppedComponents];
  v6 = [v4 droppedComponents];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(NLRouterSchemaNLRouterPromptGenerated *)self droppedComponents];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLRouterSchemaNLRouterPromptGenerated *)self droppedComponents];
    v15 = [v4 droppedComponents];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  has = self->_has;
  v20 = v4[32];
  if ((*&has & 1) == (v20 & 1))
  {
    if (*&has)
    {
      totalSizeInTokens = self->_totalSizeInTokens;
      if (totalSizeInTokens != [v4 totalSizeInTokens])
      {
        goto LABEL_12;
      }

      has = self->_has;
      v20 = v4[32];
    }

    v22 = (*&has >> 1) & 1;
    if (v22 == ((v20 >> 1) & 1))
    {
      if (!v22 || (estimatedSizeInTokens = self->_estimatedSizeInTokens, estimatedSizeInTokens == [v4 estimatedSizeInTokens]))
      {
        v17 = 1;
        goto LABEL_13;
      }
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_components;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_droppedComponents;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasEstimatedSizeInTokens:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addDroppedComponents:(id)a3
{
  v4 = a3;
  droppedComponents = self->_droppedComponents;
  v8 = v4;
  if (!droppedComponents)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_droppedComponents;
    self->_droppedComponents = v6;

    v4 = v8;
    droppedComponents = self->_droppedComponents;
  }

  [(NSArray *)droppedComponents addObject:v4];
}

- (void)addComponents:(id)a3
{
  v4 = a3;
  components = self->_components;
  v8 = v4;
  if (!components)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_components;
    self->_components = v6;

    v4 = v8;
    components = self->_components;
  }

  [(NSArray *)components addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v11.receiver = self;
  v11.super_class = NLRouterSchemaNLRouterPromptGenerated;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  v6 = [(NLRouterSchemaNLRouterPromptGenerated *)self components:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(NLRouterSchemaNLRouterPromptGenerated *)self setComponents:v7];

  v8 = [(NLRouterSchemaNLRouterPromptGenerated *)self droppedComponents];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];

  [(NLRouterSchemaNLRouterPromptGenerated *)self setDroppedComponents:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end