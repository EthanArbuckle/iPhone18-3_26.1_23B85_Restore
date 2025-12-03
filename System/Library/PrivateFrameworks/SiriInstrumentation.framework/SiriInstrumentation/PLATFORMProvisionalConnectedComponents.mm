@interface PLATFORMProvisionalConnectedComponents
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLATFORMProvisionalConnectedComponents)initWithDictionary:(id)dictionary;
- (PLATFORMProvisionalConnectedComponents)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)addComponentIds:(id)ids;
- (void)writeTo:(id)to;
@end

@implementation PLATFORMProvisionalConnectedComponents

- (PLATFORMProvisionalConnectedComponents)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = PLATFORMProvisionalConnectedComponents;
  v5 = [(PLATFORMProvisionalConnectedComponents *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"componentIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [PLATFORMProvisionalConnectecedComponentIdentifier alloc];
              v14 = [(PLATFORMProvisionalConnectecedComponentIdentifier *)v13 initWithDictionary:v12, v19];
              [(PLATFORMProvisionalConnectedComponents *)v5 addComponentIds:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"representativeId", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[PLATFORMProvisionalConnectecedComponentIdentifier alloc] initWithDictionary:v15];
      [(PLATFORMProvisionalConnectedComponents *)v5 setRepresentativeId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (PLATFORMProvisionalConnectedComponents)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLATFORMProvisionalConnectedComponents *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLATFORMProvisionalConnectedComponents *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_componentIds count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_componentIds;
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

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"componentIds"];
  }

  if (self->_representativeId)
  {
    representativeId = [(PLATFORMProvisionalConnectedComponents *)self representativeId];
    dictionaryRepresentation2 = [representativeId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"representativeId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"representativeId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  componentIds = [(PLATFORMProvisionalConnectedComponents *)self componentIds];
  componentIds2 = [equalCopy componentIds];
  if ((componentIds != 0) == (componentIds2 == 0))
  {
    goto LABEL_11;
  }

  componentIds3 = [(PLATFORMProvisionalConnectedComponents *)self componentIds];
  if (componentIds3)
  {
    v8 = componentIds3;
    componentIds4 = [(PLATFORMProvisionalConnectedComponents *)self componentIds];
    componentIds5 = [equalCopy componentIds];
    v11 = [componentIds4 isEqual:componentIds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  componentIds = [(PLATFORMProvisionalConnectedComponents *)self representativeId];
  componentIds2 = [equalCopy representativeId];
  if ((componentIds != 0) != (componentIds2 == 0))
  {
    representativeId = [(PLATFORMProvisionalConnectedComponents *)self representativeId];
    if (!representativeId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = representativeId;
    representativeId2 = [(PLATFORMProvisionalConnectedComponents *)self representativeId];
    representativeId3 = [equalCopy representativeId];
    v16 = [representativeId2 isEqual:representativeId3];

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

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_componentIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  representativeId = [(PLATFORMProvisionalConnectedComponents *)self representativeId];

  if (representativeId)
  {
    representativeId2 = [(PLATFORMProvisionalConnectedComponents *)self representativeId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addComponentIds:(id)ids
{
  idsCopy = ids;
  componentIds = self->_componentIds;
  v8 = idsCopy;
  if (!componentIds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_componentIds;
    self->_componentIds = array;

    idsCopy = v8;
    componentIds = self->_componentIds;
  }

  [(NSArray *)componentIds addObject:idsCopy];
}

@end