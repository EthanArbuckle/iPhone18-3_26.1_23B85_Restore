@interface USOSchemaUSOGraphTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOGraphTier1)initWithDictionary:(id)a3;
- (USOSchemaUSOGraphTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLinkedUsoEntityIdentifiers:(id)a3;
- (void)addLinkedUsoGraphNodeData:(id)a3;
- (void)addLinkedUsoNodeData:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOGraphTier1

- (USOSchemaUSOGraphTier1)initWithDictionary:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = USOSchemaUSOGraphTier1;
  v5 = [(USOSchemaUSOGraphTier1 *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraphTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"linkedUsoNodeData"];
    objc_opt_class();
    v37 = v8;
    if (objc_opt_isKindOfClass())
    {
      v9 = v6;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v47;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v47 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [[USOSchemaUSONodeDataTier1 alloc] initWithDictionary:v15];
              [(USOSchemaUSOGraphTier1 *)v5 addLinkedUsoNodeData:v16];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v12);
      }

      v6 = v9;
    }

    v17 = [v4 objectForKeyedSubscript:@"linkedUsoEntityIdentifiers"];
    objc_opt_class();
    v36 = v17;
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = [[USOSchemaUSOEntityIdentifierTier1 alloc] initWithDictionary:v23];
              [(USOSchemaUSOGraphTier1 *)v5 addLinkedUsoEntityIdentifiers:v24];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v20);
      }
    }

    v25 = [v4 objectForKeyedSubscript:@"linkedUsoGraphNodeData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v6;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v38 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = [[USOSchemaUSOGraphNodeDataTier1 alloc] initWithDictionary:v31];
              [(USOSchemaUSOGraphTier1 *)v5 addLinkedUsoGraphNodeData:v32];
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v28);
      }

      v6 = v35;
      v17 = v36;
    }

    v33 = v5;
  }

  return v5;
}

- (USOSchemaUSOGraphTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraphTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOGraphTier1 *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    v4 = [(USOSchemaUSOGraphTier1 *)self linkId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_linkedUsoEntityIdentifiers count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = self->_linkedUsoEntityIdentifiers;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v41;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v41 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (v13)
          {
            [v7 addObject:v13];
          }

          else
          {
            v14 = [MEMORY[0x1E695DFB0] null];
            [v7 addObject:v14];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKeyedSubscript:@"linkedUsoEntityIdentifiers"];
  }

  if ([(NSArray *)self->_linkedUsoGraphNodeDatas count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v16 = self->_linkedUsoGraphNodeDatas;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          if (v21)
          {
            [v15 addObject:v21];
          }

          else
          {
            v22 = [MEMORY[0x1E695DFB0] null];
            [v15 addObject:v22];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"linkedUsoGraphNodeData"];
  }

  if ([(NSArray *)self->_linkedUsoNodeDatas count])
  {
    v23 = [MEMORY[0x1E695DF70] array];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = self->_linkedUsoNodeDatas;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v32 + 1) + 8 * k) dictionaryRepresentation];
          if (v29)
          {
            [v23 addObject:v29];
          }

          else
          {
            v30 = [MEMORY[0x1E695DFB0] null];
            [v23 addObject:v30];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKeyedSubscript:@"linkedUsoNodeData"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v32];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_linkedUsoNodeDatas hash]^ v3;
  v5 = [(NSArray *)self->_linkedUsoEntityIdentifiers hash];
  return v4 ^ v5 ^ [(NSArray *)self->_linkedUsoGraphNodeDatas hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(USOSchemaUSOGraphTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(USOSchemaUSOGraphTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(USOSchemaUSOGraphTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  v6 = [v4 linkedUsoNodeDatas];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
    v15 = [v4 linkedUsoNodeDatas];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  v6 = [v4 linkedUsoEntityIdentifiers];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  if (v17)
  {
    v18 = v17;
    v19 = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
    v20 = [v4 linkedUsoEntityIdentifiers];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
  v6 = [v4 linkedUsoGraphNodeDatas];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
    v25 = [v4 linkedUsoGraphNodeDatas];
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
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(USOSchemaUSOGraphTier1 *)self linkId];

  if (v5)
  {
    v6 = [(USOSchemaUSOGraphTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = self->_linkedUsoNodeDatas;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      v11 = 0;
      do
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v9);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_linkedUsoEntityIdentifiers;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_linkedUsoGraphNodeDatas;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }
}

- (void)addLinkedUsoGraphNodeData:(id)a3
{
  v4 = a3;
  linkedUsoGraphNodeDatas = self->_linkedUsoGraphNodeDatas;
  v8 = v4;
  if (!linkedUsoGraphNodeDatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoGraphNodeDatas;
    self->_linkedUsoGraphNodeDatas = v6;

    v4 = v8;
    linkedUsoGraphNodeDatas = self->_linkedUsoGraphNodeDatas;
  }

  [(NSArray *)linkedUsoGraphNodeDatas addObject:v4];
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

- (void)addLinkedUsoNodeData:(id)a3
{
  v4 = a3;
  linkedUsoNodeDatas = self->_linkedUsoNodeDatas;
  v8 = v4;
  if (!linkedUsoNodeDatas)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoNodeDatas;
    self->_linkedUsoNodeDatas = v6;

    v4 = v8;
    linkedUsoNodeDatas = self->_linkedUsoNodeDatas;
  }

  [(NSArray *)linkedUsoNodeDatas addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = USOSchemaUSOGraphTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(USOSchemaUSOGraphTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(USOSchemaUSOGraphTier1 *)self deleteLinkId];
  }

  v9 = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(USOSchemaUSOGraphTier1 *)self setLinkedUsoNodeDatas:v10];

  v11 = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v11 underConditions:v4];
  [(USOSchemaUSOGraphTier1 *)self setLinkedUsoEntityIdentifiers:v12];

  v13 = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v13 underConditions:v4];
  [(USOSchemaUSOGraphTier1 *)self setLinkedUsoGraphNodeDatas:v14];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end