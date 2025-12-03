@interface ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics
- (ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics)initWithDictionary:(id)dictionary;
- (ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics)initWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasNumEntitiesCleaned:(BOOL)cleaned;
- (void)setHasNumEntitiesContainingEmoji:(BOOL)emoji;
- (void)setHasNumEntitiesContainingSpecialCharacters:(BOOL)characters;
- (void)writeTo:(id)to;
@end

@implementation ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics

- (ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics;
  v5 = [(ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isCleanupIngestionEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics setIsCleanupIngestionEnabled:](v5, "setIsCleanupIngestionEnabled:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"numEntitiesContainingEmoji"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics setNumEntitiesContainingEmoji:](v5, "setNumEntitiesContainingEmoji:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numEntitiesContainingSpecialCharacters"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics setNumEntitiesContainingSpecialCharacters:](v5, "setNumEntitiesContainingSpecialCharacters:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numEntitiesCleaned"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics setNumEntitiesCleaned:](v5, "setNumEntitiesCleaned:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics *)self dictionaryRepresentation];
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
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics isCleanupIngestionEnabled](self, "isCleanupIngestionEnabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isCleanupIngestionEnabled"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
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

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics numEntitiesCleaned](self, "numEntitiesCleaned")}];
  [dictionary setObject:v8 forKeyedSubscript:@"numEntitiesCleaned"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics numEntitiesContainingEmoji](self, "numEntitiesContainingEmoji")}];
  [dictionary setObject:v9 forKeyedSubscript:@"numEntitiesContainingEmoji"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ASRSpeechProfileSchemaASRSpeechProfileEntityCleanupMetrics numEntitiesContainingSpecialCharacters](self, "numEntitiesContainingSpecialCharacters")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numEntitiesContainingSpecialCharacters"];
  }

LABEL_6:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_isCleanupIngestionEnabled;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_numEntitiesContainingEmoji;
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
  v4 = 2654435761 * self->_numEntitiesContainingSpecialCharacters;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_numEntitiesCleaned;
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
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_18;
  }

  if (*&has)
  {
    isCleanupIngestionEnabled = self->_isCleanupIngestionEnabled;
    if (isCleanupIngestionEnabled != [equalCopy isCleanupIngestionEnabled])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_18;
  }

  if (v8)
  {
    numEntitiesContainingEmoji = self->_numEntitiesContainingEmoji;
    if (numEntitiesContainingEmoji != [equalCopy numEntitiesContainingEmoji])
    {
      goto LABEL_18;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_18;
  }

  if (v10)
  {
    numEntitiesContainingSpecialCharacters = self->_numEntitiesContainingSpecialCharacters;
    if (numEntitiesContainingSpecialCharacters == [equalCopy numEntitiesContainingSpecialCharacters])
    {
      has = self->_has;
      v6 = equalCopy[24];
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
    numEntitiesCleaned = self->_numEntitiesCleaned;
    if (numEntitiesCleaned != [equalCopy numEntitiesCleaned])
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

  PBDataWriterWriteUint32Field();
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
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)setHasNumEntitiesCleaned:(BOOL)cleaned
{
  if (cleaned)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumEntitiesContainingSpecialCharacters:(BOOL)characters
{
  if (characters)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumEntitiesContainingEmoji:(BOOL)emoji
{
  if (emoji)
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