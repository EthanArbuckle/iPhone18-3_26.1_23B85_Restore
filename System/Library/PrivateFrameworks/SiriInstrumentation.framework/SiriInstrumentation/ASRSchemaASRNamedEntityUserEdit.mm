@interface ASRSchemaASRNamedEntityUserEdit
- (ASRSchemaASRNamedEntityUserEdit)initWithDictionary:(id)dictionary;
- (ASRSchemaASRNamedEntityUserEdit)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)speechProfileCategoriesAtIndex:(unint64_t)index;
- (int)visualContextCategoriesAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addSpeechProfileCategories:(int)categories;
- (void)addVisualContextCategories:(int)categories;
- (void)setHasIsNamedEntityPresentInSpeechProfile:(BOOL)profile;
- (void)setHasIsNamedEntityPresentInVisualContext:(BOOL)context;
- (void)writeTo:(id)to;
@end

@implementation ASRSchemaASRNamedEntityUserEdit

- (ASRSchemaASRNamedEntityUserEdit)initWithDictionary:(id)dictionary
{
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = ASRSchemaASRNamedEntityUserEdit;
  v5 = [(ASRSchemaASRNamedEntityUserEdit *)&v37 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"entityTaggerCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setEntityTaggerCategory:](v5, "setEntityTaggerCategory:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isNamedEntityPresentInVisualContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setIsNamedEntityPresentInVisualContext:](v5, "setIsNamedEntityPresentInVisualContext:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"visualContextCategories"];
    objc_opt_class();
    v28 = v7;
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = v8;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v34;
        do
        {
          v14 = 0;
          do
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v33 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRNamedEntityUserEdit addVisualContextCategories:](v5, "addVisualContextCategories:", [v15 intValue]);
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v12);
      }

      v7 = v28;
      v8 = v9;
    }

    v16 = [dictionaryCopy objectForKeyedSubscript:@"isNamedEntityPresentInSpeechProfile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setIsNamedEntityPresentInSpeechProfile:](v5, "setIsNamedEntityPresentInSpeechProfile:", [v16 BOOLValue]);
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"speechProfileCategories"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v8;
      v27 = v6;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v30;
        do
        {
          v22 = 0;
          do
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * v22);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[ASRSchemaASRNamedEntityUserEdit addSpeechProfileCategories:](v5, "addSpeechProfileCategories:", [v23 intValue]);
            }

            ++v22;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v20);
      }

      v6 = v27;
      v7 = v28;
      v8 = v26;
    }

    v24 = v5;
  }

  return v5;
}

- (ASRSchemaASRNamedEntityUserEdit)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSchemaASRNamedEntityUserEdit *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSchemaASRNamedEntityUserEdit *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(ASRSchemaASRNamedEntityUserEdit *)self entityTaggerCategory]- 1;
    if (v5 > 2)
    {
      v6 = @"ASRENTITYTAGGERCATEGORY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D1EC0[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"entityTaggerCategory"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRNamedEntityUserEdit isNamedEntityPresentInSpeechProfile](self, "isNamedEntityPresentInSpeechProfile")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isNamedEntityPresentInSpeechProfile"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRNamedEntityUserEdit isNamedEntityPresentInVisualContext](self, "isNamedEntityPresentInVisualContext")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isNamedEntityPresentInVisualContext"];
  }

  if ([(NSArray *)self->_speechProfileCategories count])
  {
    speechProfileCategories = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    v10 = [speechProfileCategories copy];
    [dictionary setObject:v10 forKeyedSubscript:@"speechProfileCategories"];
  }

  if ([(NSArray *)self->_visualContextCategories count])
  {
    visualContextCategories = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
    v12 = [visualContextCategories copy];
    [dictionary setObject:v12 forKeyedSubscript:@"visualContextCategories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_entityTaggerCategory;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isNamedEntityPresentInVisualContext;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSArray *)self->_visualContextCategories hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_isNamedEntityPresentInSpeechProfile;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5 ^ [(NSArray *)self->_speechProfileCategories hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    entityTaggerCategory = self->_entityTaggerCategory;
    if (entityTaggerCategory != [equalCopy entityTaggerCategory])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isNamedEntityPresentInVisualContext = self->_isNamedEntityPresentInVisualContext;
    if (isNamedEntityPresentInVisualContext != [equalCopy isNamedEntityPresentInVisualContext])
    {
      goto LABEL_22;
    }
  }

  visualContextCategories = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
  visualContextCategories2 = [equalCopy visualContextCategories];
  if ((visualContextCategories != 0) == (visualContextCategories2 == 0))
  {
    goto LABEL_21;
  }

  visualContextCategories3 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
  if (visualContextCategories3)
  {
    v13 = visualContextCategories3;
    visualContextCategories4 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
    visualContextCategories5 = [equalCopy visualContextCategories];
    v16 = [visualContextCategories4 isEqual:visualContextCategories5];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((equalCopy[40] >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    isNamedEntityPresentInSpeechProfile = self->_isNamedEntityPresentInSpeechProfile;
    if (isNamedEntityPresentInSpeechProfile != [equalCopy isNamedEntityPresentInSpeechProfile])
    {
      goto LABEL_22;
    }
  }

  visualContextCategories = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
  visualContextCategories2 = [equalCopy speechProfileCategories];
  if ((visualContextCategories != 0) != (visualContextCategories2 == 0))
  {
    speechProfileCategories = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    if (!speechProfileCategories)
    {

LABEL_25:
      v24 = 1;
      goto LABEL_23;
    }

    v20 = speechProfileCategories;
    speechProfileCategories2 = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    speechProfileCategories3 = [equalCopy speechProfileCategories];
    v23 = [speechProfileCategories2 isEqual:speechProfileCategories3];

    if (v23)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x1E69E9840];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_visualContextCategories;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v20 + 1) + 8 * i) intValue];
        PBDataWriterWriteInt32Field();
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = self->_speechProfileCategories;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v16 + 1) + 8 * j) intValue];
        PBDataWriterWriteInt32Field();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (int)speechProfileCategoriesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_speechProfileCategories objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addSpeechProfileCategories:(int)categories
{
  v3 = *&categories;
  speechProfileCategories = self->_speechProfileCategories;
  if (!speechProfileCategories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_speechProfileCategories;
    self->_speechProfileCategories = array;

    speechProfileCategories = self->_speechProfileCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)speechProfileCategories addObject:v8];
}

- (void)setHasIsNamedEntityPresentInSpeechProfile:(BOOL)profile
{
  if (profile)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)visualContextCategoriesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_visualContextCategories objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addVisualContextCategories:(int)categories
{
  v3 = *&categories;
  visualContextCategories = self->_visualContextCategories;
  if (!visualContextCategories)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_visualContextCategories;
    self->_visualContextCategories = array;

    visualContextCategories = self->_visualContextCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)visualContextCategories addObject:v8];
}

- (void)setHasIsNamedEntityPresentInVisualContext:(BOOL)context
{
  if (context)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end