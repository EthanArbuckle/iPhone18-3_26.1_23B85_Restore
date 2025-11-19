@interface FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage
- (BOOL)isEqual:(id)a3;
- (BOOL)isReadingIntelligenceAttemptedAtIndex:(unint64_t)a3;
- (BOOL)isReadingIntelligenceUsedAtIndex:(unint64_t)a3;
- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithDictionary:(id)a3;
- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addIsReadingIntelligenceAttempted:(BOOL)a3;
- (void)addIsReadingIntelligenceUsed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage

- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithDictionary:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v30.receiver = self;
  v30.super_class = FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage;
  v5 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isReadingIntelligenceAttempted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v27;
        do
        {
          v11 = 0;
          do
          {
            if (*v27 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v26 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage addIsReadingIntelligenceAttempted:](v5, "addIsReadingIntelligenceAttempted:", [v12 BOOLValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v26 objects:v32 count:16];
        }

        while (v9);
      }
    }

    v13 = [v4 objectForKeyedSubscript:@"isReadingIntelligenceUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          v18 = 0;
          do
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage addIsReadingIntelligenceUsed:](v5, "addIsReadingIntelligenceUsed:", [v19 BOOLValue]);
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v22 objects:v31 count:16];
        }

        while (v16);
      }
    }

    v20 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_isReadingIntelligenceAttempteds count])
  {
    v4 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"isReadingIntelligenceAttempted"];
  }

  if ([(NSArray *)self->_isReadingIntelligenceUseds count])
  {
    v6 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"isReadingIntelligenceUsed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
  v6 = [v4 isReadingIntelligenceAttempteds];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
  if (v7)
  {
    v8 = v7;
    v9 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
    v10 = [v4 isReadingIntelligenceAttempteds];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
  v6 = [v4 isReadingIntelligenceUseds];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    v15 = [v4 isReadingIntelligenceUseds];
    v16 = [v14 isEqual:v15];

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

- (void)writeTo:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_isReadingIntelligenceAttempteds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v19 + 1) + 8 * v9) BOOLValue];
        PBDataWriterWriteBOOLField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_isReadingIntelligenceUseds;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14) BOOLValue];
        PBDataWriterWriteBOOLField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (BOOL)isReadingIntelligenceUsedAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isReadingIntelligenceUseds objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsReadingIntelligenceUsed:(BOOL)a3
{
  v3 = a3;
  isReadingIntelligenceUseds = self->_isReadingIntelligenceUseds;
  if (!isReadingIntelligenceUseds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadingIntelligenceUseds;
    self->_isReadingIntelligenceUseds = v6;

    isReadingIntelligenceUseds = self->_isReadingIntelligenceUseds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isReadingIntelligenceUseds addObject:v8];
}

- (BOOL)isReadingIntelligenceAttemptedAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_isReadingIntelligenceAttempteds objectAtIndexedSubscript:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)addIsReadingIntelligenceAttempted:(BOOL)a3
{
  v3 = a3;
  isReadingIntelligenceAttempteds = self->_isReadingIntelligenceAttempteds;
  if (!isReadingIntelligenceAttempteds)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadingIntelligenceAttempteds;
    self->_isReadingIntelligenceAttempteds = v6;

    isReadingIntelligenceAttempteds = self->_isReadingIntelligenceAttempteds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3];
  [(NSArray *)isReadingIntelligenceAttempteds addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end