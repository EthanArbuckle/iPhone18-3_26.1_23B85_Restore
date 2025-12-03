@interface SISchemaKeyboardDismissed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaKeyboardDismissed)initWithDictionary:(id)dictionary;
- (SISchemaKeyboardDismissed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEditDistance:(BOOL)distance;
- (void)setHasEmojiUsed:(BOOL)used;
- (void)setHasKeyboardLocale:(BOOL)locale;
- (void)setHasLengthInChars:(BOOL)chars;
- (void)setHasLengthInWords:(BOOL)words;
- (void)setHasNumCharsAdded:(BOOL)added;
- (void)setHasNumCharsDeleted:(BOOL)deleted;
- (void)writeTo:(id)to;
@end

@implementation SISchemaKeyboardDismissed

- (SISchemaKeyboardDismissed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = SISchemaKeyboardDismissed;
  v5 = [(SISchemaKeyboardDismissed *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"keyboardUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setKeyboardUsed:](v5, "setKeyboardUsed:", [v6 BOOLValue]);
    }

    v16 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"lengthInWords"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setLengthInWords:](v5, "setLengthInWords:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"lengthInChars"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setLengthInChars:](v5, "setLengthInChars:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numCharsAdded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setNumCharsAdded:](v5, "setNumCharsAdded:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numCharsDeleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setNumCharsDeleted:](v5, "setNumCharsDeleted:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"editDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setEditDistance:](v5, "setEditDistance:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"emojiUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setEmojiUsed:](v5, "setEmojiUsed:", [v12 BOOLValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"keyboardLocale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaKeyboardDismissed setKeyboardLocale:](v5, "setKeyboardLocale:", [v13 intValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (SISchemaKeyboardDismissed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaKeyboardDismissed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaKeyboardDismissed *)self dictionaryRepresentation];
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
  if ((has & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaKeyboardDismissed editDistance](self, "editDistance")}];
    [dictionary setObject:v7 forKeyedSubscript:@"editDistance"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaKeyboardDismissed emojiUsed](self, "emojiUsed")}];
  [dictionary setObject:v8 forKeyedSubscript:@"emojiUsed"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_15:
  v9 = [(SISchemaKeyboardDismissed *)self keyboardLocale]- 1;
  if (v9 > 0x3D)
  {
    v10 = @"LOCALE_UNKNOWN_LOCALE";
  }

  else
  {
    v10 = off_1E78E5F28[v9];
  }

  [dictionary setObject:v10 forKeyedSubscript:@"keyboardLocale"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaKeyboardDismissed keyboardUsed](self, "keyboardUsed")}];
  [dictionary setObject:v11 forKeyedSubscript:@"keyboardUsed"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaKeyboardDismissed lengthInChars](self, "lengthInChars")}];
  [dictionary setObject:v12 forKeyedSubscript:@"lengthInChars"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaKeyboardDismissed lengthInWords](self, "lengthInWords")}];
  [dictionary setObject:v13 forKeyedSubscript:@"lengthInWords"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_22:
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaKeyboardDismissed numCharsAdded](self, "numCharsAdded")}];
  [dictionary setObject:v14 forKeyedSubscript:@"numCharsAdded"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[SISchemaKeyboardDismissed numCharsDeleted](self, "numCharsDeleted")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numCharsDeleted"];
  }

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_keyboardUsed;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_lengthInWords;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
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
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_lengthInChars;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_numCharsAdded;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_numCharsDeleted;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_editDistance;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_emojiUsed;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_keyboardLocale;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v6 = equalCopy[40];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    keyboardUsed = self->_keyboardUsed;
    if (keyboardUsed != [equalCopy keyboardUsed])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_34;
  }

  if (v8)
  {
    lengthInWords = self->_lengthInWords;
    if (lengthInWords != [equalCopy lengthInWords])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_34;
  }

  if (v10)
  {
    lengthInChars = self->_lengthInChars;
    if (lengthInChars != [equalCopy lengthInChars])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_34;
  }

  if (v12)
  {
    numCharsAdded = self->_numCharsAdded;
    if (numCharsAdded != [equalCopy numCharsAdded])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_34;
  }

  if (v14)
  {
    numCharsDeleted = self->_numCharsDeleted;
    if (numCharsDeleted != [equalCopy numCharsDeleted])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_34;
  }

  if (v16)
  {
    editDistance = self->_editDistance;
    if (editDistance != [equalCopy editDistance])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v6 = equalCopy[40];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_34;
  }

  if (v18)
  {
    emojiUsed = self->_emojiUsed;
    if (emojiUsed == [equalCopy emojiUsed])
    {
      has = self->_has;
      v6 = equalCopy[40];
      goto LABEL_30;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

LABEL_30:
  if (((v6 ^ *&has) & 0x80) != 0)
  {
    goto LABEL_34;
  }

  if ((*&has & 0x80) != 0)
  {
    keyboardLocale = self->_keyboardLocale;
    if (keyboardLocale != [equalCopy keyboardLocale])
    {
      goto LABEL_34;
    }
  }

  v21 = 1;
LABEL_35:

  return v21;
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

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_18:
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_17:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if ((has & 0x80) == 0)
  {
    goto LABEL_9;
  }

LABEL_19:
  PBDataWriterWriteInt32Field();
LABEL_9:
}

- (void)setHasKeyboardLocale:(BOOL)locale
{
  if (locale)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasEmojiUsed:(BOOL)used
{
  if (used)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasEditDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasNumCharsDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumCharsAdded:(BOOL)added
{
  if (added)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLengthInChars:(BOOL)chars
{
  if (chars)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasLengthInWords:(BOOL)words
{
  if (words)
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