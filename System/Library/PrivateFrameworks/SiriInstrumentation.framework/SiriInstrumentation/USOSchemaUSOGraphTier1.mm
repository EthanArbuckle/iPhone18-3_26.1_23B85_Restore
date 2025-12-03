@interface USOSchemaUSOGraphTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOGraphTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOGraphTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLinkedUsoEntityIdentifiers:(id)identifiers;
- (void)addLinkedUsoGraphNodeData:(id)data;
- (void)addLinkedUsoNodeData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOGraphTier1

- (USOSchemaUSOGraphTier1)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = USOSchemaUSOGraphTier1;
  v5 = [(USOSchemaUSOGraphTier1 *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraphTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoNodeData"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoEntityIdentifiers"];
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

    v25 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoGraphNodeData"];
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

- (USOSchemaUSOGraphTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraphTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOGraphTier1 *)self dictionaryRepresentation];
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
  v47 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(USOSchemaUSOGraphTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_linkedUsoEntityIdentifiers count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"linkedUsoEntityIdentifiers"];
  }

  if ([(NSArray *)self->_linkedUsoGraphNodeDatas count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation3)
          {
            [array2 addObject:dictionaryRepresentation3];
          }

          else
          {
            null3 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null3];
          }
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"linkedUsoGraphNodeData"];
  }

  if ([(NSArray *)self->_linkedUsoNodeDatas count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v32 + 1) + 8 * k) dictionaryRepresentation];
          if (dictionaryRepresentation4)
          {
            [array3 addObject:dictionaryRepresentation4];
          }

          else
          {
            null4 = [MEMORY[0x1E695DFB0] null];
            [array3 addObject:null4];
          }
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"linkedUsoNodeData"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v32];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSArray *)self->_linkedUsoNodeDatas hash]^ v3;
  v5 = [(NSArray *)self->_linkedUsoEntityIdentifiers hash];
  return v4 ^ v5 ^ [(NSArray *)self->_linkedUsoGraphNodeDatas hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  linkId = [(USOSchemaUSOGraphTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  linkId3 = [(USOSchemaUSOGraphTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(USOSchemaUSOGraphTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  linkId2 = [equalCopy linkedUsoNodeDatas];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  linkedUsoNodeDatas = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  if (linkedUsoNodeDatas)
  {
    v13 = linkedUsoNodeDatas;
    linkedUsoNodeDatas2 = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
    linkedUsoNodeDatas3 = [equalCopy linkedUsoNodeDatas];
    v16 = [linkedUsoNodeDatas2 isEqual:linkedUsoNodeDatas3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  linkId2 = [equalCopy linkedUsoEntityIdentifiers];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  linkedUsoEntityIdentifiers = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  if (linkedUsoEntityIdentifiers)
  {
    v18 = linkedUsoEntityIdentifiers;
    linkedUsoEntityIdentifiers2 = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
    linkedUsoEntityIdentifiers3 = [equalCopy linkedUsoEntityIdentifiers];
    v21 = [linkedUsoEntityIdentifiers2 isEqual:linkedUsoEntityIdentifiers3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
  linkId2 = [equalCopy linkedUsoGraphNodeDatas];
  if ((linkId != 0) != (linkId2 == 0))
  {
    linkedUsoGraphNodeDatas = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
    if (!linkedUsoGraphNodeDatas)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = linkedUsoGraphNodeDatas;
    linkedUsoGraphNodeDatas2 = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
    linkedUsoGraphNodeDatas3 = [equalCopy linkedUsoGraphNodeDatas];
    v26 = [linkedUsoGraphNodeDatas2 isEqual:linkedUsoGraphNodeDatas3];

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

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkId = [(USOSchemaUSOGraphTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(USOSchemaUSOGraphTier1 *)self linkId];
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

- (void)addLinkedUsoGraphNodeData:(id)data
{
  dataCopy = data;
  linkedUsoGraphNodeDatas = self->_linkedUsoGraphNodeDatas;
  v8 = dataCopy;
  if (!linkedUsoGraphNodeDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoGraphNodeDatas;
    self->_linkedUsoGraphNodeDatas = array;

    dataCopy = v8;
    linkedUsoGraphNodeDatas = self->_linkedUsoGraphNodeDatas;
  }

  [(NSArray *)linkedUsoGraphNodeDatas addObject:dataCopy];
}

- (void)addLinkedUsoEntityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  linkedUsoEntityIdentifiers = self->_linkedUsoEntityIdentifiers;
  v8 = identifiersCopy;
  if (!linkedUsoEntityIdentifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoEntityIdentifiers;
    self->_linkedUsoEntityIdentifiers = array;

    identifiersCopy = v8;
    linkedUsoEntityIdentifiers = self->_linkedUsoEntityIdentifiers;
  }

  [(NSArray *)linkedUsoEntityIdentifiers addObject:identifiersCopy];
}

- (void)addLinkedUsoNodeData:(id)data
{
  dataCopy = data;
  linkedUsoNodeDatas = self->_linkedUsoNodeDatas;
  v8 = dataCopy;
  if (!linkedUsoNodeDatas)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoNodeDatas;
    self->_linkedUsoNodeDatas = array;

    dataCopy = v8;
    linkedUsoNodeDatas = self->_linkedUsoNodeDatas;
  }

  [(NSArray *)linkedUsoNodeDatas addObject:dataCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = USOSchemaUSOGraphTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  linkId = [(USOSchemaUSOGraphTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USOSchemaUSOGraphTier1 *)self deleteLinkId];
  }

  linkedUsoNodeDatas = [(USOSchemaUSOGraphTier1 *)self linkedUsoNodeDatas];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedUsoNodeDatas underConditions:policyCopy];
  [(USOSchemaUSOGraphTier1 *)self setLinkedUsoNodeDatas:v10];

  linkedUsoEntityIdentifiers = [(USOSchemaUSOGraphTier1 *)self linkedUsoEntityIdentifiers];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedUsoEntityIdentifiers underConditions:policyCopy];
  [(USOSchemaUSOGraphTier1 *)self setLinkedUsoEntityIdentifiers:v12];

  linkedUsoGraphNodeDatas = [(USOSchemaUSOGraphTier1 *)self linkedUsoGraphNodeDatas];
  v14 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedUsoGraphNodeDatas underConditions:policyCopy];
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