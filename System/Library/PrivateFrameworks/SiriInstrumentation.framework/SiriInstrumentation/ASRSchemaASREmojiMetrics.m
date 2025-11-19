@interface ASRSchemaASREmojiMetrics
- (ASRSchemaASREmojiMetrics)initWithDictionary:(id)a3;
- (ASRSchemaASREmojiMetrics)initWithJSON:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addRecognizedEmojis:(id)a3;
- (void)setHasIsEmojiDisambiguationUsed:(BOOL)a3;
- (void)setHasIsEmojiExpectedButNotRecognized:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ASRSchemaASREmojiMetrics

- (ASRSchemaASREmojiMetrics)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ASRSchemaASREmojiMetrics;
  v5 = [(ASRSchemaASREmojiMetrics *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"recognizedEmojis"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 copy];
              [(ASRSchemaASREmojiMetrics *)v5 addRecognizedEmojis:v13];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v14 = [v4 objectForKeyedSubscript:{@"isEmojiPersonalizationUsed", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASREmojiMetrics setIsEmojiPersonalizationUsed:](v5, "setIsEmojiPersonalizationUsed:", [v14 BOOLValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"isEmojiDisambiguationUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASREmojiMetrics setIsEmojiDisambiguationUsed:](v5, "setIsEmojiDisambiguationUsed:", [v15 BOOLValue]);
    }

    v16 = [v4 objectForKeyedSubscript:@"isEmojiExpectedButNotRecognized"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSchemaASREmojiMetrics setIsEmojiExpectedButNotRecognized:](v5, "setIsEmojiExpectedButNotRecognized:", [v16 BOOLValue]);
    }

    v17 = v5;
  }

  return v5;
}

- (ASRSchemaASREmojiMetrics)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ASRSchemaASREmojiMetrics *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ASRSchemaASREmojiMetrics *)self dictionaryRepresentation];
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
  v4 = *(&self->_isEmojiExpectedButNotRecognized + 1);
  if ((v4 & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASREmojiMetrics isEmojiDisambiguationUsed](self, "isEmojiDisambiguationUsed")}];
    [v3 setObject:v9 forKeyedSubscript:@"isEmojiDisambiguationUsed"];

    v4 = *(&self->_isEmojiExpectedButNotRecognized + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASREmojiMetrics isEmojiExpectedButNotRecognized](self, "isEmojiExpectedButNotRecognized")}];
  [v3 setObject:v10 forKeyedSubscript:@"isEmojiExpectedButNotRecognized"];

  if (*(&self->_isEmojiExpectedButNotRecognized + 1))
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSchemaASREmojiMetrics isEmojiPersonalizationUsed](self, "isEmojiPersonalizationUsed")}];
    [v3 setObject:v5 forKeyedSubscript:@"isEmojiPersonalizationUsed"];
  }

LABEL_5:
  if (self->_recognizedEmojis)
  {
    v6 = [(ASRSchemaASREmojiMetrics *)self recognizedEmojis];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"recognizedEmojis"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_recognizedEmojis hash];
  if (!*(&self->_isEmojiExpectedButNotRecognized + 1))
  {
    v4 = 0;
    if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_isEmojiPersonalizationUsed;
  if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_isEmojiDisambiguationUsed;
  if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_isEmojiExpectedButNotRecognized;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(ASRSchemaASREmojiMetrics *)self recognizedEmojis];
  v6 = [v4 recognizedEmojis];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_20;
  }

  v8 = [(ASRSchemaASREmojiMetrics *)self recognizedEmojis];
  if (v8)
  {
    v9 = v8;
    v10 = [(ASRSchemaASREmojiMetrics *)self recognizedEmojis];
    v11 = [v4 recognizedEmojis];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v13 = *(&self->_isEmojiExpectedButNotRecognized + 1);
  v14 = v4[19];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_20:
    v20 = 0;
    goto LABEL_21;
  }

  if (v13)
  {
    isEmojiPersonalizationUsed = self->_isEmojiPersonalizationUsed;
    if (isEmojiPersonalizationUsed != [v4 isEmojiPersonalizationUsed])
    {
      goto LABEL_20;
    }

    v13 = *(&self->_isEmojiExpectedButNotRecognized + 1);
    v14 = v4[19];
  }

  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_20;
  }

  if (v16)
  {
    isEmojiDisambiguationUsed = self->_isEmojiDisambiguationUsed;
    if (isEmojiDisambiguationUsed == [v4 isEmojiDisambiguationUsed])
    {
      v13 = *(&self->_isEmojiExpectedButNotRecognized + 1);
      v14 = v4[19];
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  v18 = (v13 >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_20;
  }

  if (v18)
  {
    isEmojiExpectedButNotRecognized = self->_isEmojiExpectedButNotRecognized;
    if (isEmojiExpectedButNotRecognized != [v4 isEmojiExpectedButNotRecognized])
    {
      goto LABEL_20;
    }
  }

  v20 = 1;
LABEL_21:

  return v20;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_recognizedEmojis;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(&self->_isEmojiExpectedButNotRecognized + 1);
  if ((v10 & 1) == 0)
  {
    if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    PBDataWriterWriteBOOLField();
    if ((*(&self->_isEmojiExpectedButNotRecognized + 1) & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  v10 = *(&self->_isEmojiExpectedButNotRecognized + 1);
  if ((v10 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v10 & 4) != 0)
  {
LABEL_11:
    PBDataWriterWriteBOOLField();
  }

LABEL_12:
}

- (void)setHasIsEmojiExpectedButNotRecognized:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmojiExpectedButNotRecognized + 1) = *(&self->_isEmojiExpectedButNotRecognized + 1) & 0xFB | v3;
}

- (void)setHasIsEmojiDisambiguationUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmojiExpectedButNotRecognized + 1) = *(&self->_isEmojiExpectedButNotRecognized + 1) & 0xFD | v3;
}

- (void)addRecognizedEmojis:(id)a3
{
  v4 = a3;
  recognizedEmojis = self->_recognizedEmojis;
  v8 = v4;
  if (!recognizedEmojis)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_recognizedEmojis;
    self->_recognizedEmojis = v6;

    v4 = v8;
    recognizedEmojis = self->_recognizedEmojis;
  }

  [(NSArray *)recognizedEmojis addObject:v4];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end