@interface NLRouterSchemaNLRouterPromptGenerationSignalsCaptured
- (BOOL)isEqual:(id)equal;
- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)initWithDictionary:(id)dictionary;
- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsMailAppFocused:(BOOL)focused;
- (void)setHasIsMediaFocused:(BOOL)focused;
- (void)setHasIsMediaRichAppFocused:(BOOL)focused;
- (void)writeTo:(id)to;
@end

@implementation NLRouterSchemaNLRouterPromptGenerationSignalsCaptured

- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NLRouterSchemaNLRouterPromptGenerationSignalsCaptured;
  v5 = [(NLRouterSchemaNLRouterPromptGenerationSignalsCaptured *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isAppFocused"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured setIsAppFocused:](v5, "setIsAppFocused:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isMediaRichAppFocused"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured setIsMediaRichAppFocused:](v5, "setIsMediaRichAppFocused:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isMediaFocused"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured setIsMediaFocused:](v5, "setIsMediaFocused:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isMailAppFocused"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured setIsMailAppFocused:](v5, "setIsMailAppFocused:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NLRouterSchemaNLRouterPromptGenerationSignalsCaptured)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLRouterSchemaNLRouterPromptGenerationSignalsCaptured *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLRouterSchemaNLRouterPromptGenerationSignalsCaptured *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured isAppFocused](self, "isAppFocused")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isAppFocused"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured isMailAppFocused](self, "isMailAppFocused")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isMailAppFocused"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured isMediaFocused](self, "isMediaFocused")}];
  [dictionary setObject:v9 forKeyedSubscript:@"isMediaFocused"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[NLRouterSchemaNLRouterPromptGenerationSignalsCaptured isMediaRichAppFocused](self, "isMediaRichAppFocused")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isMediaRichAppFocused"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isAppFocused;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isMediaRichAppFocused;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_isMediaFocused;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_isMailAppFocused;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  has = self->_has;
  v6 = equalCopy[12];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    isAppFocused = self->_isAppFocused;
    if (isAppFocused != [equalCopy isAppFocused])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[12];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    isMediaRichAppFocused = self->_isMediaRichAppFocused;
    if (isMediaRichAppFocused != [equalCopy isMediaRichAppFocused])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[12];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    isMediaFocused = self->_isMediaFocused;
    if (isMediaFocused == [equalCopy isMediaFocused])
    {
      has = self->_has;
      v6 = equalCopy[12];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    isMailAppFocused = self->_isMailAppFocused;
    if (isMailAppFocused != [equalCopy isMailAppFocused])
    {
      goto LABEL_18;
    }
  }

  v14 = 1;
LABEL_19:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasIsMailAppFocused:(BOOL)focused
{
  if (focused)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsMediaFocused:(BOOL)focused
{
  if (focused)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsMediaRichAppFocused:(BOOL)focused
{
  if (focused)
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