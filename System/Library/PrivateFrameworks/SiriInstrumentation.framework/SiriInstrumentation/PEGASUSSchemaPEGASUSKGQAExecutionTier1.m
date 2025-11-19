@interface PEGASUSSchemaPEGASUSKGQAExecutionTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addClaims:(id)a3;
- (void)addPrimaryEntities:(id)a3;
- (void)addSecondaryEntities:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSKGQAExecutionTier1

- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithDictionary:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v50.receiver = self;
  v50.super_class = PEGASUSSchemaPEGASUSKGQAExecutionTier1;
  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)&v50 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"primaryEntities"];
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

    v15 = [v4 objectForKeyedSubscript:@"secondaryEntities"];
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

    v24 = [v4 objectForKeyedSubscript:@"answerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [v24 copy];
      [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)v5 setAnswerId:v25];
    }

    v26 = [v4 objectForKeyedSubscript:@"claims"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v36 = v15;
      v37 = v4;
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

      v4 = v37;
      v15 = v36;
    }

    v34 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSKGQAExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self dictionaryRepresentation];
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
  if (self->_answerId)
  {
    v4 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if ([(NSArray *)self->_claims count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
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

          v12 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          if (v12)
          {
            [v6 addObject:v12];
          }

          else
          {
            v13 = [MEMORY[0x1E695DFB0] null];
            [v6 addObject:v13];
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKeyedSubscript:@"claims"];
  }

  if (self->_primaryEntities)
  {
    v14 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"primaryEntities"];
  }

  if (self->_secondaryEntities)
  {
    v16 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
    v17 = [v16 copy];
    [v3 setObject:v17 forKeyedSubscript:@"secondaryEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v19];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_primaryEntities hash];
  v4 = [(NSArray *)self->_secondaryEntities hash]^ v3;
  v5 = [(NSString *)self->_answerId hash];
  return v4 ^ v5 ^ [(NSArray *)self->_claims hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
  v6 = [v4 primaryEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self primaryEntities];
    v10 = [v4 primaryEntities];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
  v6 = [v4 secondaryEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self secondaryEntities];
    v15 = [v4 secondaryEntities];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
  v6 = [v4 answerId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
  if (v17)
  {
    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];
    v20 = [v4 answerId];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
  v6 = [v4 claims];
  if ((v5 != 0) != (v6 == 0))
  {
    v22 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
    if (!v22)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = v22;
    v24 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
    v25 = [v4 claims];
    v26 = [v24 isEqual:v25];

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

- (void)writeTo:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v15 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self answerId];

  if (v15)
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

- (void)addClaims:(id)a3
{
  v4 = a3;
  claims = self->_claims;
  v8 = v4;
  if (!claims)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_claims;
    self->_claims = v6;

    v4 = v8;
    claims = self->_claims;
  }

  [(NSArray *)claims addObject:v4];
}

- (void)addSecondaryEntities:(id)a3
{
  v4 = a3;
  secondaryEntities = self->_secondaryEntities;
  v8 = v4;
  if (!secondaryEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_secondaryEntities;
    self->_secondaryEntities = v6;

    v4 = v8;
    secondaryEntities = self->_secondaryEntities;
  }

  [(NSArray *)secondaryEntities addObject:v4];
}

- (void)addPrimaryEntities:(id)a3
{
  v4 = a3;
  primaryEntities = self->_primaryEntities;
  v8 = v4;
  if (!primaryEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_primaryEntities;
    self->_primaryEntities = v6;

    v4 = v8;
    primaryEntities = self->_primaryEntities;
  }

  [(NSArray *)primaryEntities addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSKGQAExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self deleteAnswerId];
  }

  v6 = [(PEGASUSSchemaPEGASUSKGQAExecutionTier1 *)self claims];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:v4];
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