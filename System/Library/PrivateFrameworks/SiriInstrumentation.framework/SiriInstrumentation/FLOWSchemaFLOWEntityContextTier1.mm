@interface FLOWSchemaFLOWEntityContextTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWEntityContextTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWEntityContextTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addEntitiesPresented:(id)presented;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWEntityContextTier1

- (FLOWSchemaFLOWEntityContextTier1)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = FLOWSchemaFLOWEntityContextTier1;
  v5 = [(FLOWSchemaFLOWEntityContextTier1 *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(FLOWSchemaFLOWEntityContextTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"entitiesPresented"];
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

    v16 = [dictionaryCopy objectForKeyedSubscript:@"entitySelected"];
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

- (FLOWSchemaFLOWEntityContextTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWEntityContextTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWEntityContextTier1 *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_entitiesPresenteds count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"entitiesPresented"];
  }

  if (self->_entitySelected)
  {
    entitySelected = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    dictionaryRepresentation2 = [entitySelected dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"entitySelected"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"entitySelected"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
    dictionaryRepresentation3 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_entitiesPresenteds hash]^ v3;
  return v4 ^ [(FLOWSchemaFLOWEntityTier1 *)self->_entitySelected hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  linkId2 = [equalCopy entitiesPresenteds];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  entitiesPresenteds = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  if (entitiesPresenteds)
  {
    v13 = entitiesPresenteds;
    entitiesPresenteds2 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
    entitiesPresenteds3 = [equalCopy entitiesPresenteds];
    v16 = [entitiesPresenteds2 isEqual:entitiesPresenteds3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
  linkId2 = [equalCopy entitySelected];
  if ((linkId != 0) != (linkId2 == 0))
  {
    entitySelected = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    if (!entitySelected)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = entitySelected;
    entitySelected2 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    entitySelected3 = [equalCopy entitySelected];
    v21 = [entitySelected2 isEqual:entitySelected3];

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

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
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

  entitySelected = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];

  if (entitySelected)
  {
    entitySelected2 = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addEntitiesPresented:(id)presented
{
  presentedCopy = presented;
  entitiesPresenteds = self->_entitiesPresenteds;
  v8 = presentedCopy;
  if (!entitiesPresenteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_entitiesPresenteds;
    self->_entitiesPresenteds = array;

    presentedCopy = v8;
    entitiesPresenteds = self->_entitiesPresenteds;
  }

  [(NSArray *)entitiesPresenteds addObject:presentedCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = FLOWSchemaFLOWEntityContextTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(FLOWSchemaFLOWEntityContextTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(FLOWSchemaFLOWEntityContextTier1 *)self deleteLinkId];
  }

  entitiesPresenteds = [(FLOWSchemaFLOWEntityContextTier1 *)self entitiesPresenteds];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:entitiesPresenteds underConditions:policyCopy];
  [(FLOWSchemaFLOWEntityContextTier1 *)self setEntitiesPresenteds:v10];

  entitySelected = [(FLOWSchemaFLOWEntityContextTier1 *)self entitySelected];
  v12 = [entitySelected applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v12 suppressMessage];

  if (suppressMessage2)
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