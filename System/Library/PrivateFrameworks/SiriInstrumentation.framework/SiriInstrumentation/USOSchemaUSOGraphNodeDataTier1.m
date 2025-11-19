@interface USOSchemaUSOGraphNodeDataTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOGraphNodeDataTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOGraphNodeDataTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLinkedUsoEntityIdentifiers:(id)a3;
- (void)addLinkedUsoEntitySpans:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOGraphNodeDataTier1

- (USOSchemaUSOGraphNodeDataTier1)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = USOSchemaUSOGraphNodeDataTier1;
  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkedUsoNodeData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSONodeDataTier1 alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraphNodeDataTier1 *)v5 setLinkedUsoNodeData:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkedUsoEntityIdentifiers"];
    objc_opt_class();
    v28 = v6;
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[USOSchemaUSOEntityIdentifierTier1 alloc] initWithDictionary:v15];
              [(USOSchemaUSOGraphNodeDataTier1 *)v5 addLinkedUsoEntityIdentifiers:v16];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v6 = v28;
      v8 = v9;
    }

    v17 = [v4 objectForKeyedSubscript:@"linkedUsoEntitySpans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v8;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[USOSchemaUSOEntitySpanTier1 alloc] initWithDictionary:v23];
              [(USOSchemaUSOGraphNodeDataTier1 *)v5 addLinkedUsoEntitySpans:v24];
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v8 = v27;
      v6 = v28;
    }

    v25 = v5;
  }

  return v5;
}

- (USOSchemaUSOGraphNodeDataTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraphNodeDataTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOGraphNodeDataTier1 *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_linkedUsoEntityIdentifiers count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v5 = self->_linkedUsoEntityIdentifiers;
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

    [v3 setObject:v4 forKeyedSubscript:@"linkedUsoEntityIdentifiers"];
  }

  if ([(NSArray *)self->_linkedUsoEntitySpans count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = self->_linkedUsoEntitySpans;
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

    [v3 setObject:v12 forKeyedSubscript:@"linkedUsoEntitySpans"];
  }

  if (self->_linkedUsoNodeData)
  {
    v20 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"linkedUsoNodeData"];
    }

    else
    {
      v22 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v22 forKeyedSubscript:@"linkedUsoNodeData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v24];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSONodeDataTier1 *)self->_linkedUsoNodeData hash];
  v4 = [(NSArray *)self->_linkedUsoEntityIdentifiers hash]^ v3;
  return v4 ^ [(NSArray *)self->_linkedUsoEntitySpans hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  v6 = [v4 linkedUsoNodeData];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  if (v7)
  {
    v8 = v7;
    v9 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
    v10 = [v4 linkedUsoNodeData];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  v6 = [v4 linkedUsoEntityIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
    v15 = [v4 linkedUsoEntityIdentifiers];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
  v6 = [v4 linkedUsoEntitySpans];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
    v20 = [v4 linkedUsoEntitySpans];
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
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];

  if (v5)
  {
    v6 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = self->_linkedUsoEntityIdentifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = self->_linkedUsoEntitySpans;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)addLinkedUsoEntitySpans:(id)a3
{
  v4 = a3;
  linkedUsoEntitySpans = self->_linkedUsoEntitySpans;
  v8 = v4;
  if (!linkedUsoEntitySpans)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoEntitySpans;
    self->_linkedUsoEntitySpans = v6;

    v4 = v8;
    linkedUsoEntitySpans = self->_linkedUsoEntitySpans;
  }

  [(NSArray *)linkedUsoEntitySpans addObject:v4];
}

- (void)addLinkedUsoEntityIdentifiers:(id)a3
{
  v4 = a3;
  linkedUsoEntityIdentifiers = self->_linkedUsoEntityIdentifiers;
  v8 = v4;
  if (!linkedUsoEntityIdentifiers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoEntityIdentifiers;
    self->_linkedUsoEntityIdentifiers = v6;

    v4 = v8;
    linkedUsoEntityIdentifiers = self->_linkedUsoEntityIdentifiers;
  }

  [(NSArray *)linkedUsoEntityIdentifiers addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = USOSchemaUSOGraphNodeDataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:v4];
  v6 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(USOSchemaUSOGraphNodeDataTier1 *)self deleteLinkedUsoNodeData];
  }

  v9 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(USOSchemaUSOGraphNodeDataTier1 *)self setLinkedUsoEntityIdentifiers:v10];

  v11 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(USOSchemaUSOGraphNodeDataTier1 *)self setLinkedUsoEntitySpans:v12];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end