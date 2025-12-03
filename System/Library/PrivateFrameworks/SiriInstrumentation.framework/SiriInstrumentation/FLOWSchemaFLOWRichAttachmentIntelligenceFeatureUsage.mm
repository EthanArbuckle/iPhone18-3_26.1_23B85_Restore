@interface FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage
- (BOOL)isEqual:(id)equal;
- (BOOL)isReadingIntelligenceAttemptedAtIndex:(unint64_t)index;
- (BOOL)isReadingIntelligenceUsedAtIndex:(unint64_t)index;
- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addIsReadingIntelligenceAttempted:(BOOL)attempted;
- (void)addIsReadingIntelligenceUsed:(BOOL)used;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage

- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v30.receiver = self;
  v30.super_class = FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage;
  v5 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)&v30 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isReadingIntelligenceAttempted"];
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

    v13 = [dictionaryCopy objectForKeyedSubscript:@"isReadingIntelligenceUsed"];
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

- (FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_isReadingIntelligenceAttempteds count])
  {
    isReadingIntelligenceAttempteds = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
    v5 = [isReadingIntelligenceAttempteds copy];
    [dictionary setObject:v5 forKeyedSubscript:@"isReadingIntelligenceAttempted"];
  }

  if ([(NSArray *)self->_isReadingIntelligenceUseds count])
  {
    isReadingIntelligenceUseds = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    v7 = [isReadingIntelligenceUseds copy];
    [dictionary setObject:v7 forKeyedSubscript:@"isReadingIntelligenceUsed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  isReadingIntelligenceAttempteds = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
  isReadingIntelligenceAttempteds2 = [equalCopy isReadingIntelligenceAttempteds];
  if ((isReadingIntelligenceAttempteds != 0) == (isReadingIntelligenceAttempteds2 == 0))
  {
    goto LABEL_11;
  }

  isReadingIntelligenceAttempteds3 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
  if (isReadingIntelligenceAttempteds3)
  {
    v8 = isReadingIntelligenceAttempteds3;
    isReadingIntelligenceAttempteds4 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceAttempteds];
    isReadingIntelligenceAttempteds5 = [equalCopy isReadingIntelligenceAttempteds];
    v11 = [isReadingIntelligenceAttempteds4 isEqual:isReadingIntelligenceAttempteds5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  isReadingIntelligenceAttempteds = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
  isReadingIntelligenceAttempteds2 = [equalCopy isReadingIntelligenceUseds];
  if ((isReadingIntelligenceAttempteds != 0) != (isReadingIntelligenceAttempteds2 == 0))
  {
    isReadingIntelligenceUseds = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    if (!isReadingIntelligenceUseds)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = isReadingIntelligenceUseds;
    isReadingIntelligenceUseds2 = [(FLOWSchemaFLOWRichAttachmentIntelligenceFeatureUsage *)self isReadingIntelligenceUseds];
    isReadingIntelligenceUseds3 = [equalCopy isReadingIntelligenceUseds];
    v16 = [isReadingIntelligenceUseds2 isEqual:isReadingIntelligenceUseds3];

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
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (BOOL)isReadingIntelligenceUsedAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isReadingIntelligenceUseds objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsReadingIntelligenceUsed:(BOOL)used
{
  usedCopy = used;
  isReadingIntelligenceUseds = self->_isReadingIntelligenceUseds;
  if (!isReadingIntelligenceUseds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadingIntelligenceUseds;
    self->_isReadingIntelligenceUseds = array;

    isReadingIntelligenceUseds = self->_isReadingIntelligenceUseds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:usedCopy];
  [(NSArray *)isReadingIntelligenceUseds addObject:v8];
}

- (BOOL)isReadingIntelligenceAttemptedAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_isReadingIntelligenceAttempteds objectAtIndexedSubscript:index];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)addIsReadingIntelligenceAttempted:(BOOL)attempted
{
  attemptedCopy = attempted;
  isReadingIntelligenceAttempteds = self->_isReadingIntelligenceAttempteds;
  if (!isReadingIntelligenceAttempteds)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_isReadingIntelligenceAttempteds;
    self->_isReadingIntelligenceAttempteds = array;

    isReadingIntelligenceAttempteds = self->_isReadingIntelligenceAttempteds;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:attemptedCopy];
  [(NSArray *)isReadingIntelligenceAttempteds addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end