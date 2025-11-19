@interface FLOWSchemaFLOWEntityContextTier1
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWEntityContextTier1)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWEntityContextTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntitiesPresented:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWEntityContextTier1

- (FLOWSchemaFLOWEntityContextTier1)initWithDictionary:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWEntityContextTier1;
  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)&v25 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWEntityContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"entitiesPresented"];
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
              v15 = [[FLOWSchemaFLOWEntityTier1 alloc] initWithDictionary:v14];
              [(FLOWSchemaFLOWEntityContextTier1 *)v5 addEntitiesPresented:v15];
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

    v16 = [v4 objectForKeyedSubscript:@"entitySelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [[FLOWSchemaFLOWEntityTier1 alloc] initWithDictionary:v16];
      [(FLOWSchemaFLOWEntityContextTier1 *)v5 setEntitySelected:v17];
    }

    v18 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWEntityContextTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWEntityContextTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWEntityContextTier1 *)self dictionaryRepresentation];
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
  v24 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entitiesPresenteds count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_entitiesPresenteds;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"entitiesPresented"];
  }

  if (self->_entitySelected)
  {
    v12 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"entitySelected"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"entitySelected"];
    }
  }

  if (self->_linkId)
  {
    v15 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
    v16 = [v15 dictionaryRepresentation];
    if (v16)
    {
      [v3 setObject:v16 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v17 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v17 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_entitiesPresenteds hash]^ v3;
  return v4 ^ [(FLOWSchemaFLOWEntityTier1 *)self->_entitySelected hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  v6 = [v4 linkId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
    v10 = [v4 linkId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  v6 = [v4 entitiesPresenteds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
    v15 = [v4 entitiesPresenteds];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
  v6 = [v4 entitySelected];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    v20 = [v4 entitySelected];
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
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];

  if (v5)
  {
    v6 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_entitiesPresenteds;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v12 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];

  if (v12)
  {
    v13 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addEntitiesPresented:(id)a3
{
  v4 = a3;
  entitiesPresenteds = self->_entitiesPresenteds;
  v8 = v4;
  if (!entitiesPresenteds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_entitiesPresenteds;
    self->_entitiesPresenteds = v6;

    v4 = v8;
    entitiesPresenteds = self->_entitiesPresenteds;
  }

  [(NSArray *)entitiesPresenteds addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWEntityContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(FLOWSchemaFLOWEntityContextTier1 *)self deleteLinkId];
  }

  v9 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v9 underConditions:v4];
  [(FLOWSchemaFLOWEntityContextTier1 *)self setEntitiesPresenteds:v10];

  v11 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
  v12 = [v11 applySensitiveConditionsPolicy:v4];
  v13 = [v12 suppressMessage];

  if (v13)
  {
    [(FLOWSchemaFLOWEntityContextTier1 *)self deleteEntitySelected];
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