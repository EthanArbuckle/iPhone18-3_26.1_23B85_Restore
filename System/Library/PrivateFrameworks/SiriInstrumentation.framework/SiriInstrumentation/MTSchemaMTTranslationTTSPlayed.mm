@interface MTSchemaMTTranslationTTSPlayed
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTTranslationTTSPlayed)initWithDictionary:(id)dictionary;
- (MTSchemaMTTranslationTTSPlayed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioChannel:(BOOL)channel;
- (void)setHasIsAutoplayTranslation:(BOOL)translation;
- (void)setHasPlaybackSpeed:(BOOL)speed;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTTranslationTTSPlayed

- (MTSchemaMTTranslationTTSPlayed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MTSchemaMTTranslationTTSPlayed;
  v5 = [(MTSchemaMTTranslationTTSPlayed *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sourceOrTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTTranslationTTSPlayed setSourceOrTarget:](v5, "setSourceOrTarget:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isAutoplayTranslation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTTranslationTTSPlayed setIsAutoplayTranslation:](v5, "setIsAutoplayTranslation:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"playbackSpeed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTTranslationTTSPlayed setPlaybackSpeed:](v5, "setPlaybackSpeed:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioChannel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MTSchemaMTTranslationTTSPlayed setAudioChannel:](v5, "setAudioChannel:", [v9 intValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (MTSchemaMTTranslationTTSPlayed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTTranslationTTSPlayed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTTranslationTTSPlayed *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v9 = [(MTSchemaMTTranslationTTSPlayed *)self audioChannel]- 1;
    if (v9 > 4)
    {
      v10 = @"MTAPPAUDIOCHANNEL_UNKNOWN";
    }

    else
    {
      v10 = off_1E78DA5A8[v9];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"audioChannel"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MTSchemaMTTranslationTTSPlayed isAutoplayTranslation](self, "isAutoplayTranslation")}];
  [dictionary setObject:v11 forKeyedSubscript:@"isAutoplayTranslation"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_5;
  }

LABEL_19:
  v12 = [(MTSchemaMTTranslationTTSPlayed *)self playbackSpeed]- 1;
  if (v12 > 3)
  {
    v13 = @"MTTTSPLAYBACKSPEED_UNKNOWN";
  }

  else
  {
    v13 = off_1E78DA5D0[v12];
  }

  [dictionary setObject:v13 forKeyedSubscript:@"playbackSpeed"];
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  sourceOrTarget = [(MTSchemaMTTranslationTTSPlayed *)self sourceOrTarget];
  v6 = @"MTSOURCEORTARGETLANGUAGE_UNKNOWN";
  if (sourceOrTarget == 1)
  {
    v6 = @"MTSOURCEORTARGETLANGUAGE_SOURCE";
  }

  if (sourceOrTarget == 2)
  {
    v7 = @"MTSOURCEORTARGETLANGUAGE_TARGET";
  }

  else
  {
    v7 = v6;
  }

  [dictionary setObject:v7 forKeyedSubscript:@"sourceOrTarget"];
LABEL_11:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_sourceOrTarget;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isAutoplayTranslation;
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
  v4 = 2654435761 * self->_playbackSpeed;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_audioChannel;
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
    sourceOrTarget = self->_sourceOrTarget;
    if (sourceOrTarget != [equalCopy sourceOrTarget])
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
    isAutoplayTranslation = self->_isAutoplayTranslation;
    if (isAutoplayTranslation != [equalCopy isAutoplayTranslation])
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
    playbackSpeed = self->_playbackSpeed;
    if (playbackSpeed == [equalCopy playbackSpeed])
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
    audioChannel = self->_audioChannel;
    if (audioChannel != [equalCopy audioChannel])
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
    PBDataWriterWriteInt32Field();
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
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)setHasAudioChannel:(BOOL)channel
{
  if (channel)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasPlaybackSpeed:(BOOL)speed
{
  if (speed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAutoplayTranslation:(BOOL)translation
{
  if (translation)
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