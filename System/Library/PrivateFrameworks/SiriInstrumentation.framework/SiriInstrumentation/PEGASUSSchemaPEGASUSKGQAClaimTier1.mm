@interface PEGASUSSchemaPEGASUSKGQAClaimTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSKGQAClaimTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSKGQAClaimTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addQualifiers:(id)qualifiers;
- (void)addReferences:(id)references;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSKGQAClaimTier1

- (PEGASUSSchemaPEGASUSKGQAClaimTier1)initWithDictionary:(id)dictionary
{
  v45 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v42.receiver = self;
  v42.super_class = PEGASUSSchemaPEGASUSKGQAClaimTier1;
  v5 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)&v42 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)v5 setEntityId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"propId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)v5 setPropId:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v6;
      v12 = [v10 copy];
      [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)v5 setValue:v12];

      v6 = v11;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"qualifiers"];
    objc_opt_class();
    v33 = v10;
    v32 = v13;
    if (objc_opt_isKindOfClass())
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v39;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v39 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v38 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = [[PEGASUSSchemaPEGASUSKGQAQualifierTier1 alloc] initWithDictionary:v19];
              [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)v5 addQualifiers:v20];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v38 objects:v44 count:16];
        }

        while (v16);
      }

      v10 = v33;
      v13 = v32;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"references"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v6;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v35;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v34 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v28 = [[PEGASUSSchemaPEGASUSKGQAReference alloc] initWithDictionary:v27];
              [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)v5 addReferences:v28];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v24);
      }

      v6 = v31;
      v13 = v32;
      v10 = v33;
    }

    v29 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSKGQAClaimTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self dictionaryRepresentation];
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
  v37 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_entityId)
  {
    entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self entityId];
    v5 = [entityId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"entityId"];
  }

  if (self->_propId)
  {
    propId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self propId];
    v7 = [propId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"propId"];
  }

  if ([(NSArray *)self->_qualifiers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = self->_qualifiers;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v32;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
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

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"qualifiers"];
  }

  if ([(NSArray *)self->_references count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = self->_references;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v28;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation2 = [*(*(&v27 + 1) + 8 * j) dictionaryRepresentation];
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

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"references"];
  }

  if (self->_value)
  {
    value = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self value];
    v25 = [value copy];
    [dictionary setObject:v25 forKeyedSubscript:@"value"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v27];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_entityId hash];
  v4 = [(NSString *)self->_propId hash]^ v3;
  v5 = [(NSString *)self->_value hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_qualifiers hash];
  return v6 ^ [(NSArray *)self->_references hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self entityId];
  entityId2 = [equalCopy entityId];
  if ((entityId != 0) == (entityId2 == 0))
  {
    goto LABEL_26;
  }

  entityId3 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self entityId];
  if (entityId3)
  {
    v8 = entityId3;
    entityId4 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self entityId];
    entityId5 = [equalCopy entityId];
    v11 = [entityId4 isEqual:entityId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self propId];
  entityId2 = [equalCopy propId];
  if ((entityId != 0) == (entityId2 == 0))
  {
    goto LABEL_26;
  }

  propId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self propId];
  if (propId)
  {
    v13 = propId;
    propId2 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self propId];
    propId3 = [equalCopy propId];
    v16 = [propId2 isEqual:propId3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self value];
  entityId2 = [equalCopy value];
  if ((entityId != 0) == (entityId2 == 0))
  {
    goto LABEL_26;
  }

  value = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self value];
  if (value)
  {
    v18 = value;
    value2 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self value];
    value3 = [equalCopy value];
    v21 = [value2 isEqual:value3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self qualifiers];
  entityId2 = [equalCopy qualifiers];
  if ((entityId != 0) == (entityId2 == 0))
  {
    goto LABEL_26;
  }

  qualifiers = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self qualifiers];
  if (qualifiers)
  {
    v23 = qualifiers;
    qualifiers2 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self qualifiers];
    qualifiers3 = [equalCopy qualifiers];
    v26 = [qualifiers2 isEqual:qualifiers3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self references];
  entityId2 = [equalCopy references];
  if ((entityId != 0) != (entityId2 == 0))
  {
    references = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self references];
    if (!references)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = references;
    references2 = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self references];
    references3 = [equalCopy references];
    v31 = [references2 isEqual:references3];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  entityId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self entityId];

  if (entityId)
  {
    PBDataWriterWriteStringField();
  }

  propId = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self propId];

  if (propId)
  {
    PBDataWriterWriteStringField();
  }

  value = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self value];

  if (value)
  {
    PBDataWriterWriteStringField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_qualifiers;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v10);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = self->_references;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v15);
  }
}

- (void)addReferences:(id)references
{
  referencesCopy = references;
  references = self->_references;
  v8 = referencesCopy;
  if (!references)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_references;
    self->_references = array;

    referencesCopy = v8;
    references = self->_references;
  }

  [(NSArray *)references addObject:referencesCopy];
}

- (void)addQualifiers:(id)qualifiers
{
  qualifiersCopy = qualifiers;
  qualifiers = self->_qualifiers;
  v8 = qualifiersCopy;
  if (!qualifiers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_qualifiers;
    self->_qualifiers = array;

    qualifiersCopy = v8;
    qualifiers = self->_qualifiers;
  }

  [(NSArray *)qualifiers addObject:qualifiersCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSKGQAClaimTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteEntityId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteEntityId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteEntityId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteEntityId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteValue];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteEntityId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deletePropId];
    [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self deleteValue];
  }

  qualifiers = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self qualifiers];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:qualifiers underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self setQualifiers:v7];

  references = [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self references];
  v9 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:references underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSKGQAClaimTier1 *)self setReferences:v9];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end