@interface PEGASUSSchemaPEGASUSAudioQueueStateInfo
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioEntitySource:(BOOL)a3;
- (void)setHasAudioNowPlayingQueueCount:(BOOL)a3;
- (void)setHasAudioNowPlayingQueueIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioQueueStateInfo

- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfo;
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioState"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioState:](v5, "setAudioState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"audioEntitySource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioEntitySource:](v5, "setAudioEntitySource:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"audioNowPlayingQueueIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioNowPlayingQueueIndex:](v5, "setAudioNowPlayingQueueIndex:", [v8 intValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"audioNowPlayingQueueCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioQueueStateInfo setAudioNowPlayingQueueCount:](v5, "setAudioNowPlayingQueueCount:", [v9 intValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"audioQueueStateItem"];
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

- (PEGASUSSchemaPEGASUSAudioQueueStateInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self dictionaryRepresentation];
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
  if ((has & 2) != 0)
  {
    v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioEntitySource];
    v6 = @"PEGASUSAUDIOENTITYSOURCE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"PEGASUSAUDIOENTITYSOURCE_RADIO";
    }

    if (v5 == 2)
    {
      v7 = @"PEGASUSAUDIOENTITYSOURCE_LOCAL";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"audioEntitySource"];
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSAudioQueueStateInfo audioNowPlayingQueueCount](self, "audioNowPlayingQueueCount")}];
    [v3 setObject:v8 forKeyedSubscript:@"audioNowPlayingQueueCount"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSAudioQueueStateInfo audioNowPlayingQueueIndex](self, "audioNowPlayingQueueIndex")}];
    [v3 setObject:v9 forKeyedSubscript:@"audioNowPlayingQueueIndex"];
  }

  if (self->_audioQueueStateItem)
  {
    v10 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"audioQueueStateItem"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"audioQueueStateItem"];
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

    [v3 setObject:v14 forKeyedSubscript:@"audioState"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  has = self->_has;
  v6 = v4[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_22;
  }

  if (*&has)
  {
    audioState = self->_audioState;
    if (audioState != [v4 audioState])
    {
      goto LABEL_22;
    }

    has = self->_has;
    v6 = v4[32];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (v8)
    {
      audioEntitySource = self->_audioEntitySource;
      if (audioEntitySource != [v4 audioEntitySource])
      {
        goto LABEL_22;
      }

      has = self->_has;
      v6 = v4[32];
    }

    v10 = (*&has >> 2) & 1;
    if (v10 == ((v6 >> 2) & 1))
    {
      if (v10)
      {
        audioNowPlayingQueueIndex = self->_audioNowPlayingQueueIndex;
        if (audioNowPlayingQueueIndex != [v4 audioNowPlayingQueueIndex])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v6 = v4[32];
      }

      v12 = (*&has >> 3) & 1;
      if (v12 == ((v6 >> 3) & 1))
      {
        if (!v12 || (audioNowPlayingQueueCount = self->_audioNowPlayingQueueCount, audioNowPlayingQueueCount == [v4 audioNowPlayingQueueCount]))
        {
          v14 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
          v15 = [v4 audioQueueStateItem];
          v16 = v15;
          if ((v14 != 0) != (v15 == 0))
          {
            v17 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
            if (!v17)
            {

LABEL_25:
              v22 = 1;
              goto LABEL_23;
            }

            v18 = v17;
            v19 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
            v20 = [v4 audioQueueStateItem];
            v21 = [v19 isEqual:v20];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
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
  v5 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];

  v6 = v8;
  if (v5)
  {
    v7 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem];
    PBDataWriterWriteSubmessage();

    v6 = v8;
  }
}

- (void)setHasAudioNowPlayingQueueCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasAudioNowPlayingQueueIndex:(BOOL)a3
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

- (void)setHasAudioEntitySource:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PEGASUSSchemaPEGASUSAudioQueueStateInfo;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PEGASUSSchemaPEGASUSAudioQueueStateInfo *)self audioQueueStateItem:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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