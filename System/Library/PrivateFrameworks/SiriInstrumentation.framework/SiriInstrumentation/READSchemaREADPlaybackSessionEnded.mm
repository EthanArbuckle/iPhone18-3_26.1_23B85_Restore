@interface READSchemaREADPlaybackSessionEnded
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (READSchemaREADPlaybackSessionEnded)initWithDictionary:(id)dictionary;
- (READSchemaREADPlaybackSessionEnded)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTotalDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation READSchemaREADPlaybackSessionEnded

- (READSchemaREADPlaybackSessionEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = READSchemaREADPlaybackSessionEnded;
  v5 = [(READSchemaREADPlaybackSessionEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"playedAudioDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(READSchemaREADPlaybackSessionEnded *)v5 setPlayedAudioDuration:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"totalDuration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(READSchemaREADPlaybackSessionEnded *)v5 setTotalDuration:?];
    }

    v8 = v5;
  }

  return v5;
}

- (READSchemaREADPlaybackSessionEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(READSchemaREADPlaybackSessionEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(READSchemaREADPlaybackSessionEnded *)self dictionaryRepresentation];
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
    v5 = MEMORY[0x1E696AD98];
    [(READSchemaREADPlaybackSessionEnded *)self playedAudioDuration];
    v6 = [v5 numberWithFloat:?];
    [dictionary setObject:v6 forKeyedSubscript:@"playedAudioDuration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = MEMORY[0x1E696AD98];
    [(READSchemaREADPlaybackSessionEnded *)self totalDuration];
    v8 = [v7 numberWithFloat:?];
    [dictionary setObject:v8 forKeyedSubscript:@"totalDuration"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    playedAudioDuration = self->_playedAudioDuration;
    if (playedAudioDuration >= 0.0)
    {
      v6 = playedAudioDuration;
    }

    else
    {
      v6 = -playedAudioDuration;
    }

    *v2.i64 = floor(v6 + 0.5);
    v7 = (v6 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v4 += v7;
      }
    }

    else
    {
      v4 -= fabs(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    totalDuration = self->_totalDuration;
    if (totalDuration >= 0.0)
    {
      v11 = totalDuration;
    }

    else
    {
      v11 = -totalDuration;
    }

    *v2.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v3, v2).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    playedAudioDuration = self->_playedAudioDuration;
    [equalCopy playedAudioDuration];
    if (playedAudioDuration != v8)
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (!v9 || (totalDuration = self->_totalDuration, [equalCopy totalDuration], totalDuration == v11))
    {
      v12 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v12 = 0;
LABEL_10:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)setHasTotalDuration:(BOOL)duration
{
  if (duration)
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