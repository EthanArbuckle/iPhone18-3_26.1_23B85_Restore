@interface PEGASUSSchemaPEGASUSAudioQueueStateInfo
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioEntitySource:(BOOL)source;
- (void)setHasAudioNowPlayingQueueCount:(BOOL)count;
- (void)setHasAudioNowPlayingQueueIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSAudioQueueStateInfo

- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfo;
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"audioState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioState:](v5, "setAudioState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioEntitySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioEntitySource:](v5, "setAudioEntitySource:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"audioNowPlayingQueueIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioNowPlayingQueueIndex:](v5, "setAudioNowPlayingQueueIndex:", [v8 intValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"audioNowPlayingQueueCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioNowPlayingQueueCount:](v5, "setAudioNowPlayingQueueCount:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"audioQueueStateItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[PEGASUSSchemaPEGASUSAudioQueueStateItem alloc] initWithDictionary:v10];
      [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)v5 setAudioQueueStateItem:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    audioEntitySource = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioEntitySource];
    v6 = @"PEGASUSAUDIOENTITYSOURCE_UNKNOWN";
    if (audioEntitySource == 1)
    {
      v6 = @"PEGASUSAUDIOENTITYSOURCE_RADIO";
    }

    if (audioEntitySource == 2)
    {
      v7 = @"PEGASUSAUDIOENTITYSOURCE_LOCAL";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"audioEntitySource"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSAudioQueueStateInfo audioNowPlayingQueueCount](self, "audioNowPlayingQueueCount")}];
    [dictionary setObject:v8 forKeyedSubscript:@"audioNowPlayingQueueCount"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSAudioQueueStateInfo audioNowPlayingQueueIndex](self, "audioNowPlayingQueueIndex")}];
    [dictionary setObject:v9 forKeyedSubscript:@"audioNowPlayingQueueIndex"];
  }

  if (self->_audioQueueStateItem)
  {
    audioQueueStateItem = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
    dictionaryRepresentation = [audioQueueStateItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioQueueStateItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioQueueStateItem"];
    }
  }

  if (*&self->_has)
  {
    v13 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioState]- 1;
    if (v13 > 5)
    {
      v14 = @"MEDIAPLAYBACKSTATE_UNKNOWN";
    }

    else
    {
      v14 = off_1E78DF6A8[v13];
    }

    [dictionary setObject:v14 forKeyedSubscript:@"audioState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_audioState;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_audioEntitySource;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateItem *)self->_audioQueueStateItem hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_audioNowPlayingQueueIndex;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761 * self->_audioNowPlayingQueueCount;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(PEGASUSSchemaPEGASUSAudioQueueStateItem *)self->_audioQueueStateItem hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    audioState = self->_audioState;
    if (audioState != [equalCopy audioState])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      audioEntitySource = self->_audioEntitySource;
      if (audioEntitySource != [equalCopy audioEntitySource])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v6 = equalCopy[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        audioNowPlayingQueueIndex = self->_audioNowPlayingQueueIndex;
        if (audioNowPlayingQueueIndex != [equalCopy audioNowPlayingQueueIndex])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v6 = equalCopy[32];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (!v12 || (audioNowPlayingQueueCount = self->_audioNowPlayingQueueCount, audioNowPlayingQueueCount == [equalCopy audioNowPlayingQueueCount]))
        {
          audioQueueStateItem = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
          audioQueueStateItem2 = [equalCopy audioQueueStateItem];
          v16 = audioQueueStateItem2;
          if ((audioQueueStateItem != 0) != (audioQueueStateItem2 == 0))
          {
            audioQueueStateItem3 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
            if (!audioQueueStateItem3)
            {

LABEL_25:
              v22 = 1;
              goto LABEL_23;
            }

            v18 = audioQueueStateItem3;
            audioQueueStateItem4 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
            audioQueueStateItem5 = [equalCopy audioQueueStateItem];
            v21 = [audioQueueStateItem4 isEqual:audioQueueStateItem5];

            if (v21)
            {
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }
    }
  }

LABEL_22:
  v22 = 0;
LABEL_23:

  return v22;
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

      goto LABEL_13;
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
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_13:
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
  audioQueueStateItem = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];

  v6 = toCopy;
  if (audioQueueStateItem)
  {
    audioQueueStateItem2 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasAudioNowPlayingQueueCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAudioNowPlayingQueueIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAudioEntitySource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self deleteAudioQueueStateItem];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end