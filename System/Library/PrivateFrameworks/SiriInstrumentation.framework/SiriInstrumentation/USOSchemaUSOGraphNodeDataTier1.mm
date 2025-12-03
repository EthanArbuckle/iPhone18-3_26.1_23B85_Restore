@interface USOSchemaUSOGraphNodeDataTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOGraphNodeDataTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOGraphNodeDataTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addLinkedUsoEntityIdentifiers:(id)identifiers;
- (void)addLinkedUsoEntitySpans:(id)spans;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOGraphNodeDataTier1

- (USOSchemaUSOGraphNodeDataTier1)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = USOSchemaUSOGraphNodeDataTier1;
  v5 = [(USOSchemaUSOGraphNodeDataTier1 *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoNodeData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[USOSchemaUSONodeDataTier1 alloc] initWithDictionary:v6];
      [(USOSchemaUSOGraphNodeDataTier1 *)v5 setLinkedUsoNodeData:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoEntityIdentifiers"];
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

    v17 = [dictionaryCopy objectForKeyedSubscript:@"linkedUsoEntitySpans"];
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

- (USOSchemaUSOGraphNodeDataTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOGraphNodeDataTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOGraphNodeDataTier1 *)self dictionaryRepresentation];
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
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_linkedUsoEntityIdentifiers count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"linkedUsoEntityIdentifiers"];
  }

  if ([(NSArray *)self->_linkedUsoEntitySpans count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array2 addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array2 addObject:null2];
          }
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"linkedUsoEntitySpans"];
  }

  if (self->_linkedUsoNodeData)
  {
    linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
    dictionaryRepresentation3 = [linkedUsoNodeData dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"linkedUsoNodeData"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"linkedUsoNodeData"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v24];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSONodeDataTier1 *)self->_linkedUsoNodeData hash];
  v4 = [(NSArray *)self->_linkedUsoEntityIdentifiers hash]^ v3;
  return v4 ^ [(NSArray *)self->_linkedUsoEntitySpans hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  linkedUsoNodeData2 = [equalCopy linkedUsoNodeData];
  if ((linkedUsoNodeData != 0) == (linkedUsoNodeData2 == 0))
  {
    goto LABEL_16;
  }

  linkedUsoNodeData3 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  if (linkedUsoNodeData3)
  {
    v8 = linkedUsoNodeData3;
    linkedUsoNodeData4 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
    linkedUsoNodeData5 = [equalCopy linkedUsoNodeData];
    v11 = [linkedUsoNodeData4 isEqual:linkedUsoNodeData5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  linkedUsoNodeData2 = [equalCopy linkedUsoEntityIdentifiers];
  if ((linkedUsoNodeData != 0) == (linkedUsoNodeData2 == 0))
  {
    goto LABEL_16;
  }

  linkedUsoEntityIdentifiers = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  if (linkedUsoEntityIdentifiers)
  {
    v13 = linkedUsoEntityIdentifiers;
    linkedUsoEntityIdentifiers2 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
    linkedUsoEntityIdentifiers3 = [equalCopy linkedUsoEntityIdentifiers];
    v16 = [linkedUsoEntityIdentifiers2 isEqual:linkedUsoEntityIdentifiers3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
  linkedUsoNodeData2 = [equalCopy linkedUsoEntitySpans];
  if ((linkedUsoNodeData != 0) != (linkedUsoNodeData2 == 0))
  {
    linkedUsoEntitySpans = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
    if (!linkedUsoEntitySpans)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = linkedUsoEntitySpans;
    linkedUsoEntitySpans2 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
    linkedUsoEntitySpans3 = [equalCopy linkedUsoEntitySpans];
    v21 = [linkedUsoEntitySpans2 isEqual:linkedUsoEntitySpans3];

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
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];

  if (linkedUsoNodeData)
  {
    linkedUsoNodeData2 = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
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

- (void)addLinkedUsoEntitySpans:(id)spans
{
  spansCopy = spans;
  linkedUsoEntitySpans = self->_linkedUsoEntitySpans;
  v8 = spansCopy;
  if (!linkedUsoEntitySpans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_linkedUsoEntitySpans;
    self->_linkedUsoEntitySpans = array;

    spansCopy = v8;
    linkedUsoEntitySpans = self->_linkedUsoEntitySpans;
  }

  [(NSArray *)linkedUsoEntitySpans addObject:spansCopy];
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

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = USOSchemaUSOGraphNodeDataTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v14 applySensitiveConditionsPolicy:policyCopy];
  linkedUsoNodeData = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoNodeData];
  v7 = [linkedUsoNodeData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USOSchemaUSOGraphNodeDataTier1 *)self deleteLinkedUsoNodeData];
  }

  linkedUsoEntityIdentifiers = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntityIdentifiers];
  v10 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedUsoEntityIdentifiers underConditions:policyCopy];
  [(USOSchemaUSOGraphNodeDataTier1 *)self setLinkedUsoEntityIdentifiers:v10];

  linkedUsoEntitySpans = [(USOSchemaUSOGraphNodeDataTier1 *)self linkedUsoEntitySpans];
  v12 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:linkedUsoEntitySpans underConditions:policyCopy];
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