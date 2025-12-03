@interface FLOWSchemaFLOWKeyboardUsageMetadata
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWKeyboardUsageMetadata)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWKeyboardUsageMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsEmojiUsed:(BOOL)used;
- (void)setHasLevenshteinEditDistance:(BOOL)distance;
- (void)setHasNumCharsDeleted:(BOOL)deleted;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWKeyboardUsageMetadata

- (FLOWSchemaFLOWKeyboardUsageMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = FLOWSchemaFLOWKeyboardUsageMetadata;
  v5 = [(FLOWSchemaFLOWKeyboardUsageMetadata *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"numCharsAdded"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKeyboardUsageMetadata setNumCharsAdded:](v5, "setNumCharsAdded:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numCharsDeleted"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKeyboardUsageMetadata setNumCharsDeleted:](v5, "setNumCharsDeleted:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"levenshteinEditDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKeyboardUsageMetadata setLevenshteinEditDistance:](v5, "setLevenshteinEditDistance:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isEmojiUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWKeyboardUsageMetadata setIsEmojiUsed:](v5, "setIsEmojiUsed:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWKeyboardUsageMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWKeyboardUsageMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWKeyboardUsageMetadata *)self dictionaryRepresentation];
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
  v4 = *(&self->_isEmojiUsed + 1);
  if ((v4 & 8) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWKeyboardUsageMetadata isEmojiUsed](self, "isEmojiUsed")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isEmojiUsed"];

    v4 = *(&self->_isEmojiUsed + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(&self->_isEmojiUsed + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWKeyboardUsageMetadata levenshteinEditDistance](self, "levenshteinEditDistance")}];
  [dictionary setObject:v8 forKeyedSubscript:@"levenshteinEditDistance"];

  v4 = *(&self->_isEmojiUsed + 1);
  if ((v4 & 1) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWKeyboardUsageMetadata numCharsAdded](self, "numCharsAdded")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numCharsAdded"];

  if ((*(&self->_isEmojiUsed + 1) & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[FLOWSchemaFLOWKeyboardUsageMetadata numCharsDeleted](self, "numCharsDeleted")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numCharsDeleted"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isEmojiUsed + 1))
  {
    v2 = 2654435761 * self->_numCharsAdded;
    if ((*(&self->_isEmojiUsed + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numCharsDeleted;
      if ((*(&self->_isEmojiUsed + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*(&self->_isEmojiUsed + 1) & 8) != 0)
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
    if ((*(&self->_isEmojiUsed + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isEmojiUsed + 1) & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_levenshteinEditDistance;
  if ((*(&self->_isEmojiUsed + 1) & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_isEmojiUsed;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  v5 = *(&self->_isEmojiUsed + 1);
  v6 = equalCopy[21];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (v5)
  {
    numCharsAdded = self->_numCharsAdded;
    if (numCharsAdded != [equalCopy numCharsAdded])
    {
      goto LABEL_18;
    }

    v5 = *(&self->_isEmojiUsed + 1);
    v6 = equalCopy[21];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    numCharsDeleted = self->_numCharsDeleted;
    if (numCharsDeleted != [equalCopy numCharsDeleted])
    {
      goto LABEL_18;
    }

    v5 = *(&self->_isEmojiUsed + 1);
    v6 = equalCopy[21];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    levenshteinEditDistance = self->_levenshteinEditDistance;
    if (levenshteinEditDistance == [equalCopy levenshteinEditDistance])
    {
      v5 = *(&self->_isEmojiUsed + 1);
      v6 = equalCopy[21];
      goto LABEL_14;
    }

LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

LABEL_14:
  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_18;
  }

  if (v12)
  {
    isEmojiUsed = self->_isEmojiUsed;
    if (isEmojiUsed != [equalCopy isEmojiUsed])
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
  v4 = *(&self->_isEmojiUsed + 1);
  if (v4)
  {
    PBDataWriterWriteUint32Field();
    v4 = *(&self->_isEmojiUsed + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(&self->_isEmojiUsed + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteUint32Field();
  v4 = *(&self->_isEmojiUsed + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  PBDataWriterWriteUint32Field();
  if ((*(&self->_isEmojiUsed + 1) & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteBOOLField();
  }

LABEL_6:
}

- (void)setHasIsEmojiUsed:(BOOL)used
{
  if (used)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmojiUsed + 1) = *(&self->_isEmojiUsed + 1) & 0xF7 | v3;
}

- (void)setHasLevenshteinEditDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmojiUsed + 1) = *(&self->_isEmojiUsed + 1) & 0xFB | v3;
}

- (void)setHasNumCharsDeleted:(BOOL)deleted
{
  if (deleted)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmojiUsed + 1) = *(&self->_isEmojiUsed + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end