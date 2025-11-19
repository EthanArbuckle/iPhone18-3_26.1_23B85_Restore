@interface FLOWSchemaFLOWKGQAExecutionTier1
- (BOOL)isEqual:(id)a3;
- (FLOWSchemaFLOWKGQAExecutionTier1)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWKGQAExecutionTier1)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addPrimaryEntities:(id)a3;
- (void)addSecondaryEntities:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWKGQAExecutionTier1

- (FLOWSchemaFLOWKGQAExecutionTier1)initWithDictionary:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34.receiver = self;
  v34.super_class = FLOWSchemaFLOWKGQAExecutionTier1;
  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"primaryEntities"];
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

    v14 = [v4 objectForKeyedSubscript:@"secondaryEntities"];
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

    v22 = [v4 objectForKeyedSubscript:{@"answerId", v26}];
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

- (FLOWSchemaFLOWKGQAExecutionTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self dictionaryRepresentation];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_answerId)
  {
    v4 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"answerId"];
  }

  if (self->_primaryEntities)
  {
    v6 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"primaryEntities"];
  }

  if (self->_secondaryEntities)
  {
    v8 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"secondaryEntities"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_primaryEntities hash];
  v4 = [(NSArray *)self->_secondaryEntities hash]^ v3;
  return v4 ^ [(NSString *)self->_answerId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
  v6 = [v4 primaryEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self primaryEntities];
    v10 = [v4 primaryEntities];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
  v6 = [v4 secondaryEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
  if (v12)
  {
    v13 = v12;
    v14 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self secondaryEntities];
    v15 = [v4 secondaryEntities];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
  v6 = [v4 answerId];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];
    v20 = [v4 answerId];
    v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v15 = [(FLOWSchemaFLOWKGQAExecutionTier1 *)self answerId];

  if (v15)
  {
    PBDataWriterWriteStringField();
  }
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
  v7.receiver = self;
  v7.super_class = FLOWSchemaFLOWKGQAExecutionTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:4])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:5])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:6])
  {
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deletePrimaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteSecondaryEntities];
    [(FLOWSchemaFLOWKGQAExecutionTier1 *)self deleteAnswerId];
  }

  if ([v4 isConditionSet:7])
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