@interface ASRSchemaASRNamedEntityUserEdit
- (ASRSchemaASRNamedEntityUserEdit)initWithDictionary:(id)a3;
- (ASRSchemaASRNamedEntityUserEdit)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)speechProfileCategoriesAtIndex:(unint64_t)a3;
- (int)visualContextCategoriesAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addSpeechProfileCategories:(int)a3;
- (void)addVisualContextCategories:(int)a3;
- (void)setHasIsNamedEntityPresentInSpeechProfile:(BOOL)a3;
- (void)setHasIsNamedEntityPresentInVisualContext:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASRNamedEntityUserEdit

- (ASRSchemaASRNamedEntityUserEdit)initWithDictionary:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = ASRSchemaASRNamedEntityUserEdit;
  v5 = [(ASRSchemaASRNamedEntityUserEdit *)&v37 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"entityTaggerCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setEntityTaggerCategory:](v5, "setEntityTaggerCategory:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isNamedEntityPresentInVisualContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setIsNamedEntityPresentInVisualContext:](v5, "setIsNamedEntityPresentInVisualContext:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"visualContextCategories"];
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

    v16 = [v4 objectForKeyedSubscript:@"isNamedEntityPresentInSpeechProfile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASRNamedEntityUserEdit setIsNamedEntityPresentInSpeechProfile:](v5, "setIsNamedEntityPresentInSpeechProfile:", [v16 BOOLValue]);
    }

    v17 = [v4 objectForKeyedSubscript:@"speechProfileCategories"];
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

- (ASRSchemaASRNamedEntityUserEdit)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASRNamedEntityUserEdit *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASRNamedEntityUserEdit *)self dictionaryRepresentation];
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

    [v3 setObject:v6 forKeyedSubscript:@"entityTaggerCategory"];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRNamedEntityUserEdit isNamedEntityPresentInSpeechProfile](self, "isNamedEntityPresentInSpeechProfile")}];
    [v3 setObject:v7 forKeyedSubscript:@"isNamedEntityPresentInSpeechProfile"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASRNamedEntityUserEdit isNamedEntityPresentInVisualContext](self, "isNamedEntityPresentInVisualContext")}];
    [v3 setObject:v8 forKeyedSubscript:@"isNamedEntityPresentInVisualContext"];
  }

  if ([(NSArray *)self->_speechProfileCategories count])
  {
    v9 = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"speechProfileCategories"];
  }

  if ([(NSArray *)self->_visualContextCategories count])
  {
    v11 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
    v12 = [v11 copy];
    [v3 setObject:v12 forKeyedSubscript:@"visualContextCategories"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    entityTaggerCategory = self->_entityTaggerCategory;
    if (entityTaggerCategory != [v4 entityTaggerCategory])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v8)
  {
    isNamedEntityPresentInVisualContext = self->_isNamedEntityPresentInVisualContext;
    if (isNamedEntityPresentInVisualContext != [v4 isNamedEntityPresentInVisualContext])
    {
      goto LABEL_22;
    }
  }

  v10 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
  v11 = [v4 visualContextCategories];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
  if (v12)
  {
    v13 = v12;
    v14 = [(ASRSchemaASRNamedEntityUserEdit *)self visualContextCategories];
    v15 = [v4 visualContextCategories];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v17 = (*&self->_has >> 2) & 1;
  if (v17 != ((v4[40] >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    isNamedEntityPresentInSpeechProfile = self->_isNamedEntityPresentInSpeechProfile;
    if (isNamedEntityPresentInSpeechProfile != [v4 isNamedEntityPresentInSpeechProfile])
    {
      goto LABEL_22;
    }
  }

  v10 = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
  v11 = [v4 speechProfileCategories];
  if ((v10 != 0) != (v11 == 0))
  {
    v19 = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    if (!v19)
    {

LABEL_25:
      v24 = 1;
      goto LABEL_23;
    }

    v20 = v19;
    v21 = [(ASRSchemaASRNamedEntityUserEdit *)self speechProfileCategories];
    v22 = [v4 speechProfileCategories];
    v23 = [v21 isEqual:v22];

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

- (void)writeTo:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (int)speechProfileCategoriesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_speechProfileCategories objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addSpeechProfileCategories:(int)a3
{
  v3 = *&a3;
  speechProfileCategories = self->_speechProfileCategories;
  if (!speechProfileCategories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_speechProfileCategories;
    self->_speechProfileCategories = v6;

    speechProfileCategories = self->_speechProfileCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)speechProfileCategories addObject:v8];
}

- (void)setHasIsNamedEntityPresentInSpeechProfile:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)visualContextCategoriesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_visualContextCategories objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addVisualContextCategories:(int)a3
{
  v3 = *&a3;
  visualContextCategories = self->_visualContextCategories;
  if (!visualContextCategories)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_visualContextCategories;
    self->_visualContextCategories = v6;

    visualContextCategories = self->_visualContextCategories;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)visualContextCategories addObject:v8];
}

- (void)setHasIsNamedEntityPresentInVisualContext:(BOOL)a3
{
  if (a3)
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