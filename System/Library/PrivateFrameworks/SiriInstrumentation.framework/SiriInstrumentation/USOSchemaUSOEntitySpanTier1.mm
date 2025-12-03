@interface USOSchemaUSOEntitySpanTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEntitySpanTier1)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEntitySpanTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAlternatives:(id)alternatives;
- (void)addProperties:(id)properties;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEntitySpanTier1

- (USOSchemaUSOEntitySpanTier1)initWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v39.receiver = self;
  v39.super_class = USOSchemaUSOEntitySpanTier1;
  v5 = [(USOSchemaUSOEntitySpanTier1 *)&v39 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpanTier1 setIndex:](v5, "setIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"originAppId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSOEntitySpanTier1 *)v5 setOriginAppId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"properties"];
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

    v18 = [dictionaryCopy objectForKeyedSubscript:@"alternatives"];
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

    v26 = [dictionaryCopy objectForKeyedSubscript:@"originEntityId"];
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

- (USOSchemaUSOEntitySpanTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntitySpanTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEntitySpanTier1 *)self dictionaryRepresentation];
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
  v36 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_alternatives count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"alternatives"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpanTier1 index](self, "index")}];
    [dictionary setObject:v12 forKeyedSubscript:@"index"];
  }

  if (self->_originAppId)
  {
    originAppId = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
    v14 = [originAppId copy];
    [dictionary setObject:v14 forKeyedSubscript:@"originAppId"];
  }

  if (self->_originEntityId)
  {
    originEntityId = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    v16 = [originEntityId copy];
    [dictionary setObject:v16 forKeyedSubscript:@"originEntityId"];
  }

  if ([(NSArray *)self->_properties count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v26 + 1) + 8 * j) dictionaryRepresentation];
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

        v20 = [(NSArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v20);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"properties"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    index = self->_index;
    if (index != [equalCopy index])
    {
      goto LABEL_25;
    }
  }

  originAppId = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
  originAppId2 = [equalCopy originAppId];
  if ((originAppId != 0) == (originAppId2 == 0))
  {
    goto LABEL_24;
  }

  originAppId3 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
  if (originAppId3)
  {
    v9 = originAppId3;
    originAppId4 = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];
    originAppId5 = [equalCopy originAppId];
    v12 = [originAppId4 isEqual:originAppId5];

    if (!v12)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  originAppId = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  originAppId2 = [equalCopy properties];
  if ((originAppId != 0) == (originAppId2 == 0))
  {
    goto LABEL_24;
  }

  properties = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  if (properties)
  {
    v14 = properties;
    properties2 = [(USOSchemaUSOEntitySpanTier1 *)self properties];
    properties3 = [equalCopy properties];
    v17 = [properties2 isEqual:properties3];

    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  originAppId = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  originAppId2 = [equalCopy alternatives];
  if ((originAppId != 0) == (originAppId2 == 0))
  {
    goto LABEL_24;
  }

  alternatives = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  if (alternatives)
  {
    v19 = alternatives;
    alternatives2 = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
    alternatives3 = [equalCopy alternatives];
    v22 = [alternatives2 isEqual:alternatives3];

    if (!v22)
    {
      goto LABEL_25;
    }
  }

  else
  {
  }

  originAppId = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
  originAppId2 = [equalCopy originEntityId];
  if ((originAppId != 0) != (originAppId2 == 0))
  {
    originEntityId = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    if (!originEntityId)
    {

LABEL_28:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = originEntityId;
    originEntityId2 = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];
    originEntityId3 = [equalCopy originEntityId];
    v27 = [originEntityId2 isEqual:originEntityId3];

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

- (void)writeTo:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  originAppId = [(USOSchemaUSOEntitySpanTier1 *)self originAppId];

  if (originAppId)
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

  originEntityId = [(USOSchemaUSOEntitySpanTier1 *)self originEntityId];

  if (originEntityId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addAlternatives:(id)alternatives
{
  alternativesCopy = alternatives;
  alternatives = self->_alternatives;
  v8 = alternativesCopy;
  if (!alternatives)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_alternatives;
    self->_alternatives = array;

    alternativesCopy = v8;
    alternatives = self->_alternatives;
  }

  [(NSArray *)alternatives addObject:alternativesCopy];
}

- (void)addProperties:(id)properties
{
  propertiesCopy = properties;
  properties = self->_properties;
  v8 = propertiesCopy;
  if (!properties)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_properties;
    self->_properties = array;

    propertiesCopy = v8;
    properties = self->_properties;
  }

  [(NSArray *)properties addObject:propertiesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v11.receiver = self;
  v11.super_class = USOSchemaUSOEntitySpanTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginAppId];
    [(USOSchemaUSOEntitySpanTier1 *)self deleteOriginEntityId];
  }

  properties = [(USOSchemaUSOEntitySpanTier1 *)self properties];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:properties underConditions:policyCopy];
  [(USOSchemaUSOEntitySpanTier1 *)self setProperties:v7];

  alternatives = [(USOSchemaUSOEntitySpanTier1 *)self alternatives];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:alternatives underConditions:policyCopy];
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