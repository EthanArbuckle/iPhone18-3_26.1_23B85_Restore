@interface FLOWSchemaFLOWKGQAExecutionTier1
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWKGQAExecutionTier1)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWKGQAExecutionTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPrimaryEntities:(id)entities;
- (void)addSecondaryEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWKGQAExecutionTier1

- (FLOWSchemaFLOWKGQAExecutionTier1)initWithDictionary:(id)dictionary
{
  v37 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = FLOWSchemaFLOWKGQAExecutionTier1;
  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primaryEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
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

            v12 = *(*(&v30 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(FLOWSchemaFLOWKGQAExecutionTier1 *)v5 addPrimaryEntities:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v30 objects:v36 count:16];
        }

        while (v9);
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"secondaryEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          v19 = 0;
          do
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * v19);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [v20 copy];
              [(FLOWSchemaFLOWKGQAExecutionTier1 *)v5 addSecondaryEntities:v21];
            }

            ++v19;
          }

          while (v17 != v19);
          v17 = [v15 countByEnumeratingWithState:&v26 objects:v35 count:16];
        }

        while (v17);
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:{@"answerId", v26}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [v22 copy];
      [(FLOWSchemaFLOWKGQAExecutionTier1 *)v5 setAnswerId:v23];
    }

    v24 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWKGQAExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self dictionaryRepresentation];
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_answerId)
  {
    answerId = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    v5 = [answerId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if (self->_primaryEntities)
  {
    primaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
    v7 = [primaryEntities copy];
    [dictionary setObject:v7 forKeyedSubscript:@"primaryEntities"];
  }

  if (self->_secondaryEntities)
  {
    secondaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
    v9 = [secondaryEntities copy];
    [dictionary setObject:v9 forKeyedSubscript:@"secondaryEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_primaryEntities hash];
  v4 = [(NSArray *)self->_secondaryEntities hash]^ v3;
  return v4 ^ [(NSString *)self->_answerId hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  primaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
  primaryEntities2 = [equalCopy primaryEntities];
  if ((primaryEntities != 0) == (primaryEntities2 == 0))
  {
    goto LABEL_16;
  }

  primaryEntities3 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
  if (primaryEntities3)
  {
    v8 = primaryEntities3;
    primaryEntities4 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
    primaryEntities5 = [equalCopy primaryEntities];
    v11 = [primaryEntities4 isEqual:primaryEntities5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  primaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
  primaryEntities2 = [equalCopy secondaryEntities];
  if ((primaryEntities != 0) == (primaryEntities2 == 0))
  {
    goto LABEL_16;
  }

  secondaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
  if (secondaryEntities)
  {
    v13 = secondaryEntities;
    secondaryEntities2 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
    secondaryEntities3 = [equalCopy secondaryEntities];
    v16 = [secondaryEntities2 isEqual:secondaryEntities3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  primaryEntities = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
  primaryEntities2 = [equalCopy answerId];
  if ((primaryEntities != 0) != (primaryEntities2 == 0))
  {
    answerId = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    if (!answerId)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = answerId;
    answerId2 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    answerId3 = [equalCopy answerId];
    v21 = [answerId2 isEqual:answerId3];

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
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_primaryEntities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_secondaryEntities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  answerId = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];

  if (answerId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)addSecondaryEntities:(id)entities
{
  entitiesCopy = entities;
  secondaryEntities = self->_secondaryEntities;
  v8 = entitiesCopy;
  if (!secondaryEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_secondaryEntities;
    self->_secondaryEntities = array;

    entitiesCopy = v8;
    secondaryEntities = self->_secondaryEntities;
  }

  [(NSArray *)secondaryEntities addObject:entitiesCopy];
}

- (void)addPrimaryEntities:(id)entities
{
  entitiesCopy = entities;
  primaryEntities = self->_primaryEntities;
  v8 = entitiesCopy;
  if (!primaryEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_primaryEntities;
    self->_primaryEntities = array;

    entitiesCopy = v8;
    primaryEntities = self->_primaryEntities;
  }

  [(NSArray *)primaryEntities addObject:entitiesCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWKGQAExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
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