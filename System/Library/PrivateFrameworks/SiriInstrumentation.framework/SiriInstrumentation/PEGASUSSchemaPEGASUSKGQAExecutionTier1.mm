@interface PEGASUSSchemaPEGASUSKGQAExecutionTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addClaims:(id)claims;
- (void)addPrimaryEntities:(id)entities;
- (void)addSecondaryEntities:(id)entities;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSKGQAExecutionTier1

- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithDictionary:(id)dictionary
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v50.receiver = self;
  v50.super_class = PEGASUSSchemaPEGASUSKGQAExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)&v50 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primaryEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v7 = v6;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v47;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v47 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = [v13 copy];
              [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)v5 addPrimaryEntities:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v46 objects:v53 count:16];
        }

        while (v10);
      }

      v6 = v7;
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"secondaryEntities"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = v15;
      v17 = v15;
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v43;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v42 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = [v22 copy];
              [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)v5 addSecondaryEntities:v23];
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
        }

        while (v19);
      }

      v15 = v16;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"answerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)v5 setAnswerId:v25];
    }

    v26 = [dictionaryCopy objectForKeyedSubscript:@"claims"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v15;
      v37 = dictionaryCopy;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v27 = v26;
      v28 = [v27 countByEnumeratingWithState:&v38 objects:v51 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v39;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v39 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v38 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v33 = [[PEGASUSSchemaPEGASUSKGQAClaimTier1 alloc] initWithDictionary:v32];
              [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)v5 addClaims:v33];
            }
          }

          v29 = [v27 countByEnumeratingWithState:&v38 objects:v51 count:16];
        }

        while (v29);
      }

      dictionaryCopy = v37;
      v15 = v36;
    }

    v34 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self dictionaryRepresentation];
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
  if (self->_answerId)
  {
    answerId = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
    v5 = [answerId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if ([(NSArray *)self->_claims count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_claims;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
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

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [dictionary setObject:array forKeyedSubscript:@"claims"];
  }

  if (self->_primaryEntities)
  {
    primaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
    v15 = [primaryEntities copy];
    [dictionary setObject:v15 forKeyedSubscript:@"primaryEntities"];
  }

  if (self->_secondaryEntities)
  {
    secondaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
    v17 = [secondaryEntities copy];
    [dictionary setObject:v17 forKeyedSubscript:@"secondaryEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v19];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_primaryEntities hash];
  v4 = [(NSArray *)self->_secondaryEntities hash]^ v3;
  v5 = [(NSString *)self->_answerId hash];
  return v4 ^ v5 ^ [(NSArray *)self->_claims hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  primaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
  primaryEntities2 = [equalCopy primaryEntities];
  if ((primaryEntities != 0) == (primaryEntities2 == 0))
  {
    goto LABEL_21;
  }

  primaryEntities3 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
  if (primaryEntities3)
  {
    v8 = primaryEntities3;
    primaryEntities4 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
    primaryEntities5 = [equalCopy primaryEntities];
    v11 = [primaryEntities4 isEqual:primaryEntities5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  primaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
  primaryEntities2 = [equalCopy secondaryEntities];
  if ((primaryEntities != 0) == (primaryEntities2 == 0))
  {
    goto LABEL_21;
  }

  secondaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
  if (secondaryEntities)
  {
    v13 = secondaryEntities;
    secondaryEntities2 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
    secondaryEntities3 = [equalCopy secondaryEntities];
    v16 = [secondaryEntities2 isEqual:secondaryEntities3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  primaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
  primaryEntities2 = [equalCopy answerId];
  if ((primaryEntities != 0) == (primaryEntities2 == 0))
  {
    goto LABEL_21;
  }

  answerId = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
  if (answerId)
  {
    v18 = answerId;
    answerId2 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
    answerId3 = [equalCopy answerId];
    v21 = [answerId2 isEqual:answerId3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  primaryEntities = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
  primaryEntities2 = [equalCopy claims];
  if ((primaryEntities != 0) != (primaryEntities2 == 0))
  {
    claims = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
    if (!claims)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = claims;
    claims2 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
    claims3 = [equalCopy claims];
    v26 = [claims2 isEqual:claims3];

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
  v36 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = self->_primaryEntities;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = self->_secondaryEntities;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  answerId = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];

  if (answerId)
  {
    PBDataWriterWriteStringField();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v16 = self->_claims;
  v17 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(v16);
        }

        PBDataWriterWriteSubmessage();
        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSArray *)v16 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v18);
  }
}

- (void)addClaims:(id)claims
{
  claimsCopy = claims;
  claims = self->_claims;
  v8 = claimsCopy;
  if (!claims)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_claims;
    self->_claims = array;

    claimsCopy = v8;
    claims = self->_claims;
  }

  [(NSArray *)claims addObject:claimsCopy];
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
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSKGQAExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  claims = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:claims underConditions:policyCopy];
  [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self setClaims:v7];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end