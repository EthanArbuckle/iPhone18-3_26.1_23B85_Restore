@interface QDSchemaQDContextStatementIdsReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (QDSchemaQDContextStatementIdsReported)initWithDictionary:(id)a3;
- (QDSchemaQDContextStatementIdsReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unsigned)contextualEntityStatementIdsAtIndex:(unint64_t)a3;
- (void)addContextStatementIds:(id)a3;
- (void)addContextualEntityStatementIds:(unsigned int)a3;
- (void)writeTo:(id)a3;
@end

@implementation QDSchemaQDContextStatementIdsReported

- (QDSchemaQDContextStatementIdsReported)initWithDictionary:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31.receiver = self;
  v31.super_class = QDSchemaQDContextStatementIdsReported;
  v5 = [(QDSchemaQDContextStatementIdsReported *)&v31 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contextStatementIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v28;
        do
        {
          v11 = 0;
          do
          {
            if (*v28 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v27 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [[SISchemaUUID alloc] initWithDictionary:v12];
              [(QDSchemaQDContextStatementIdsReported *)v5 addContextStatementIds:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"contextualEntityStatementIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v24;
        do
        {
          v19 = 0;
          do
          {
            if (*v24 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v23 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[QDSchemaQDContextStatementIdsReported addContextualEntityStatementIds:](v5, "addContextualEntityStatementIds:", [v20 unsignedIntValue]);
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v23 objects:v32 count:16];
        }

        while (v17);
      }
    }

    v21 = v5;
  }

  return v5;
}

- (QDSchemaQDContextStatementIdsReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(QDSchemaQDContextStatementIdsReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(QDSchemaQDContextStatementIdsReported *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_contextStatementIds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_contextStatementIds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"contextStatementIds"];
  }

  if ([(NSArray *)self->_contextualEntityStatementIds count])
  {
    v12 = [(QDSchemaQDContextStatementIdsReported *)self contextualEntityStatementIds];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"contextualEntityStatementIds"];
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

  v5 = [(QDSchemaQDContextStatementIdsReported *)self contextStatementIds];
  v6 = [v4 contextStatementIds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(QDSchemaQDContextStatementIdsReported *)self contextStatementIds];
  if (v7)
  {
    v8 = v7;
    v9 = [(QDSchemaQDContextStatementIdsReported *)self contextStatementIds];
    v10 = [v4 contextStatementIds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(QDSchemaQDContextStatementIdsReported *)self contextualEntityStatementIds];
  v6 = [v4 contextualEntityStatementIds];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(QDSchemaQDContextStatementIdsReported *)self contextualEntityStatementIds];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(QDSchemaQDContextStatementIdsReported *)self contextualEntityStatementIds];
    v15 = [v4 contextualEntityStatementIds];
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
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_contextStatementIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_contextualEntityStatementIds;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (unsigned)contextualEntityStatementIdsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_contextualEntityStatementIds objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addContextualEntityStatementIds:(unsigned int)a3
{
  v3 = *&a3;
  contextualEntityStatementIds = self->_contextualEntityStatementIds;
  if (!contextualEntityStatementIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contextualEntityStatementIds;
    self->_contextualEntityStatementIds = v6;

    contextualEntityStatementIds = self->_contextualEntityStatementIds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)contextualEntityStatementIds addObject:v8];
}

- (void)addContextStatementIds:(id)a3
{
  v4 = a3;
  contextStatementIds = self->_contextStatementIds;
  v8 = v4;
  if (!contextStatementIds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_contextStatementIds;
    self->_contextStatementIds = v6;

    v4 = v8;
    contextStatementIds = self->_contextStatementIds;
  }

  [(NSArray *)contextStatementIds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = QDSchemaQDContextStatementIdsReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(QDSchemaQDContextStatementIdsReported *)self contextStatementIds:v9.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];

  [(QDSchemaQDContextStatementIdsReported *)self setContextStatementIds:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end