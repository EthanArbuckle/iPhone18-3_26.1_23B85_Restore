@interface SISchemaUEIDictationEnablementPromptShown
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaUEIDictationEnablementPromptShown)initWithDictionary:(id)dictionary;
- (SISchemaUEIDictationEnablementPromptShown)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsLearnMoreButtonClicked:(BOOL)clicked;
- (void)setHasPromptVisibilityDurationInMs:(BOOL)ms;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUEIDictationEnablementPromptShown

- (SISchemaUEIDictationEnablementPromptShown)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = SISchemaUEIDictationEnablementPromptShown;
  v5 = [(SISchemaUEIDictationEnablementPromptShown *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isDictationEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationEnablementPromptShown setIsDictationEnabled:](v5, "setIsDictationEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isLearnMoreButtonClicked"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationEnablementPromptShown setIsLearnMoreButtonClicked:](v5, "setIsLearnMoreButtonClicked:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"promptVisibilityDurationInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUEIDictationEnablementPromptShown setPromptVisibilityDurationInMs:](v5, "setPromptVisibilityDurationInMs:", [v8 longLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (SISchemaUEIDictationEnablementPromptShown)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUEIDictationEnablementPromptShown *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUEIDictationEnablementPromptShown *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationEnablementPromptShown isDictationEnabled](self, "isDictationEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isDictationEnabled"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaUEIDictationEnablementPromptShown isLearnMoreButtonClicked](self, "isLearnMoreButtonClicked")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isLearnMoreButtonClicked"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[SISchemaUEIDictationEnablementPromptShown promptVisibilityDurationInMs](self, "promptVisibilityDurationInMs")}];
    [dictionary setObject:v5 forKeyedSubscript:@"promptVisibilityDurationInMs"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_isDictationEnabled;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isLearnMoreButtonClicked;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_promptVisibilityDurationInMs;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    isDictationEnabled = self->_isDictationEnabled;
    if (isDictationEnabled != [equalCopy isDictationEnabled])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isLearnMoreButtonClicked = self->_isLearnMoreButtonClicked;
    if (isLearnMoreButtonClicked == [equalCopy isLearnMoreButtonClicked])
    {
      has = self->_has;
      v6 = equalCopy[24];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    promptVisibilityDurationInMs = self->_promptVisibilityDurationInMs;
    if (promptVisibilityDurationInMs != [equalCopy promptVisibilityDurationInMs])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasPromptVisibilityDurationInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsLearnMoreButtonClicked:(BOOL)clicked
{
  if (clicked)
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