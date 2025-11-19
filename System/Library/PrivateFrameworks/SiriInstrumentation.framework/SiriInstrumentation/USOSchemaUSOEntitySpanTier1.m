@interface USOSchemaUSOEntitySpanTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOEntitySpanTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOEntitySpanTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlternatives:(id)a3;
- (void)addProperties:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOEntitySpanTier1

- (USOSchemaUSOEntitySpanTier1)initWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v39.receiver = self;
  v39.super_class = USOSchemaUSOEntitySpanTier1;
  v5 = [(USOSchemaUSOEntitySpanTier1 *)&v39 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpanTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"originAppId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSOEntitySpanTier1 *)v5 setOriginAppId:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"properties"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v10 = v9;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v36;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v36 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = [[USOSchemaUSOSpanPropertyTier1 alloc] initWithDictionary:v16];
              [(USOSchemaUSOEntitySpanTier1 *)v5 addProperties:v17];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v13);
      }

      v9 = v10;
    }

    v18 = [v4 objectForKeyedSubscript:@"alternatives"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v9;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v32;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v31 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = [[USOSchemaUSOAsrAlternativeTier1 alloc] initWithDictionary:v24];
              [(USOSchemaUSOEntitySpanTier1 *)v5 addAlternatives:v25];
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v21);
      }

      v9 = v30;
    }

    v26 = [v4 objectForKeyedSubscript:@"originEntityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [v26 copy];
      [(USOSchemaUSOEntitySpanTier1 *)v5 setOriginEntityId:v27];
    }

    v28 = v5;
  }

  return v5;
}

- (USOSchemaUSOEntitySpanTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntitySpanTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOEntitySpanTier1 *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v5 = self->_alternatives;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v31;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v31 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"alternatives"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpanTier1 index](self, "index")}];
    [v3 setObject:v12 forKeyedSubscript:@"index"];
  }

  if (self->_originAppId)
  {
    v13 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
    v14 = [v13 copy];
    [v3 setObject:v14 forKeyedSubscript:@"originAppId"];
  }

  if (self->_originEntityId)
  {
    v15 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    v16 = [v15 copy];
    [v3 setObject:v16 forKeyedSubscript:@"originEntityId"];
  }

  if ([(NSArray *)self->_properties count])
  {
    v17 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v18 = self->_properties;
    v19 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
          if (v23)
          {
            [v17 addObject:v23];
          }

          else
          {
            v24 = [MEMORY[0x1E695DFB0] null];
            [v17 addObject:v24];
          }
        }

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    [v3 setObject:v17 forKeyedSubscript:@"properties"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_index;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_originAppId hash]^ v3;
  v5 = [(NSArray *)self->_properties hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_alternatives hash];
  return v6 ^ [(NSString *)self->_originEntityId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (v4[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [v4 index])
    {
      goto LABEL_25;
    }
  }

  v6 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
  v7 = [v4 originAppId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v8 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
  if (v8)
  {
    v9 = v8;
    v10 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
    v11 = [v4 originAppId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  v7 = [v4 properties];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v13 = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  if (v13)
  {
    v14 = v13;
    v15 = [(USOSchemaUSOEntitySpanTier1 *)self properties];
    v16 = [v4 properties];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  v7 = [v4 alternatives];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_24;
  }

  v18 = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  if (v18)
  {
    v19 = v18;
    v20 = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
    v21 = [v4 alternatives];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  v6 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
  v7 = [v4 originEntityId];
  if ((v6 != 0) != (v7 == 0))
  {
    v23 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    if (!v23)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = v23;
    v25 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    v26 = [v4 originEntityId];
    v27 = [v25 isEqual:v26];

    if (v27)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_24:
  }

LABEL_25:
  v28 = 0;
LABEL_26:

  return v28;
}

- (void)writeTo:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v5 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = self->_properties;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = self->_alternatives;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];

  if (v16)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addAlternatives:(id)a3
{
  v4 = a3;
  alternatives = self->_alternatives;
  v8 = v4;
  if (!alternatives)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = v6;

    v4 = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:v4];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = USOSchemaUSOEntitySpanTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([v4 isConditionSet:4])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([v4 isConditionSet:5])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([v4 isConditionSet:6])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([v4 isConditionSet:7])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  v6 = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
  [(USOSchemaUSOEntitySpanTier1 *)self setProperties:v7];

  v8 = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v8 underConditions:v4];
  [(USOSchemaUSOEntitySpanTier1 *)self setAlternatives:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end