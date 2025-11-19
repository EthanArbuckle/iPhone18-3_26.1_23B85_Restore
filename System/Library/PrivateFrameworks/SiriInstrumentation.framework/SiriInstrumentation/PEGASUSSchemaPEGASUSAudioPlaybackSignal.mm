@interface PEGASUSSchemaPEGASUSAudioPlaybackSignal
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSAudioPlaybackSignal)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSAudioPlaybackSignal)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAudioPlaybackSpeed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSAudioPlaybackSignal

- (PEGASUSSchemaPEGASUSAudioPlaybackSignal)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSAudioPlaybackSignal;
  v5 = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"audioPlaybackQueueLocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSAudioPlaybackSignal setAudioPlaybackQueueLocation:](v5, "setAudioPlaybackQueueLocation:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"audioPlaybackSpeed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)v5 setAudioPlaybackSpeed:?];
    }

    v8 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSAudioPlaybackSignal)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self dictionaryRepresentation];
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
    v5 = [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self audioPlaybackQueueLocation]- 1;
    if (v5 > 2)
    {
      v6 = @"PEGASUSAUDIOPLAYBACKQUEUELOCATION_UNKNOWN";
    }

    else
    {
      v6 = off_1E78DF690[v5];
    }

    [v3 setObject:v6 forKeyedSubscript:@"audioPlaybackQueueLocation"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(PEGASUSSchemaPEGASUSAudioPlaybackSignal *)self audioPlaybackSpeed];
    v8 = [v7 numberWithFloat:?];
    [v3 setObject:v8 forKeyedSubscript:@"audioPlaybackSpeed"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_audioPlaybackQueueLocation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    return v9 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  audioPlaybackSpeed = self->_audioPlaybackSpeed;
  if (audioPlaybackSpeed >= 0.0)
  {
    v6 = audioPlaybackSpeed;
  }

  else
  {
    v6 = -audioPlaybackSpeed;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return v9 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    audioPlaybackQueueLocation = self->_audioPlaybackQueueLocation;
    if (audioPlaybackQueueLocation != [v4 audioPlaybackQueueLocation])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (audioPlaybackSpeed = self->_audioPlaybackSpeed, [v4 audioPlaybackSpeed], audioPlaybackSpeed == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v4 = v6;
  }
}

- (void)setHasAudioPlaybackSpeed:(BOOL)a3
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