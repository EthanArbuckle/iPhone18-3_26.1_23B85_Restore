@interface RRSchemaProvisionalRREntityPoolReturned
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolReturned)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRREntityPoolReturned)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCandidateEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRREntityPoolReturned

- (RRSchemaProvisionalRREntityPoolReturned)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = RRSchemaProvisionalRREntityPoolReturned;
  v5 = [(RRSchemaProvisionalRREntityPoolReturned *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateEntities"];
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
              v13 = [RRSchemaProvisionalRRAnnotatedEntity alloc];
              v14 = [(RRSchemaProvisionalRRAnnotatedEntity *)v13 initWithDictionary:v12, v19];
              [(RRSchemaProvisionalRREntityPoolReturned *)v5 addCandidateEntities:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"entityCount", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRREntityPoolReturned setEntityCount:](v5, "setEntityCount:", [v15 unsignedIntValue]);
    }

    v16 = v5;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

- (RRSchemaProvisionalRREntityPoolReturned)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolReturned *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRREntityPoolReturned *)self dictionaryRepresentation];
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
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_candidateEntities count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_candidateEntities;
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"candidateEntities"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[RRSchemaProvisionalRREntityPoolReturned entityCount](self, "entityCount")}];
    [dictionary setObject:v12 forKeyedSubscript:@"entityCount"];
  }

  [(RRSchemaProvisionalRREntityPoolReturned *)self willProduceDictionaryRepresentation:dictionary, v15];
  v13 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_candidateEntities hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_entityCount;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  candidateEntities = [(RRSchemaProvisionalRREntityPoolReturned *)self candidateEntities];
  candidateEntities2 = [equalCopy candidateEntities];
  v7 = candidateEntities2;
  if ((candidateEntities != 0) == (candidateEntities2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  candidateEntities3 = [(RRSchemaProvisionalRREntityPoolReturned *)self candidateEntities];
  if (candidateEntities3)
  {
    v9 = candidateEntities3;
    candidateEntities4 = [(RRSchemaProvisionalRREntityPoolReturned *)self candidateEntities];
    candidateEntities5 = [equalCopy candidateEntities];
    v12 = [candidateEntities4 isEqual:candidateEntities5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((equalCopy[20] & 1) != (*&self->_has & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    entityCount = self->_entityCount;
    if (entityCount != [equalCopy entityCount])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_candidateEntities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    entityCount = self->_entityCount;
    PBDataWriterWriteUint32Field();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)addCandidateEntities:(id)entities
{
  entitiesCopy = entities;
  candidateEntities = self->_candidateEntities;
  v8 = entitiesCopy;
  if (!candidateEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateEntities;
    self->_candidateEntities = array;

    entitiesCopy = v8;
    candidateEntities = self->_candidateEntities;
  }

  [(NSArray *)candidateEntities addObject:entitiesCopy];
}

@end