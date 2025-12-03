@interface READSchemaREADPlaybackSessionStartedOrChanged
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (READSchemaREADPlaybackSessionStartedOrChanged)initWithDictionary:(id)dictionary;
- (READSchemaREADPlaybackSessionStartedOrChanged)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasPlaybackStateChange:(BOOL)change;
- (void)setHasVolume:(BOOL)volume;
- (void)writeTo:(id)to;
@end

@implementation READSchemaREADPlaybackSessionStartedOrChanged

- (READSchemaREADPlaybackSessionStartedOrChanged)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = READSchemaREADPlaybackSessionStartedOrChanged;
  v5 = [(READSchemaREADPlaybackSessionStartedOrChanged *)&v13 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"customerPerceivedLatency"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 floatValue];
      [(READSchemaREADPlaybackSessionStartedOrChanged *)v5 setCustomerPerceivedLatency:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"audioInterface"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[TTSSchemaTTSAudioInterface alloc] initWithDictionary:v7];
      [(READSchemaREADPlaybackSessionStartedOrChanged *)v5 setAudioInterface:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"volume"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 floatValue];
      [(READSchemaREADPlaybackSessionStartedOrChanged *)v5 setVolume:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"playbackStateChange"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[READSchemaREADPlaybackSessionStartedOrChanged setPlaybackStateChange:](v5, "setPlaybackStateChange:", [v10 intValue]);
    }

    v11 = v5;
  }

  return v5;
}

- (READSchemaREADPlaybackSessionStartedOrChanged)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(READSchemaREADPlaybackSessionStartedOrChanged *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(READSchemaREADPlaybackSessionStartedOrChanged *)self dictionaryRepresentation];
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
  if (self->_audioInterface)
  {
    audioInterface = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];
    dictionaryRepresentation = [audioInterface dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"audioInterface"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"audioInterface"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = MEMORY[0x1E696AD98];
    [(READSchemaREADPlaybackSessionStartedOrChanged *)self customerPerceivedLatency];
    v12 = [v11 numberWithFloat:?];
    [dictionary setObject:v12 forKeyedSubscript:@"customerPerceivedLatency"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_8:
      if ((has & 2) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

  v13 = [(READSchemaREADPlaybackSessionStartedOrChanged *)self playbackStateChange]- 1;
  if (v13 > 3)
  {
    v14 = @"READPLAYBACKSTATE_UNKNOWN";
  }

  else
  {
    v14 = off_1E78E18E0[v13];
  }

  [dictionary setObject:v14 forKeyedSubscript:@"playbackStateChange"];
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v8 = MEMORY[0x1E696AD98];
  [(READSchemaREADPlaybackSessionStartedOrChanged *)self volume];
  v9 = [v8 numberWithFloat:?];
  [dictionary setObject:v9 forKeyedSubscript:@"volume"];

LABEL_10:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    customerPerceivedLatency = self->_customerPerceivedLatency;
    if (customerPerceivedLatency >= 0.0)
    {
      v7 = customerPerceivedLatency;
    }

    else
    {
      v7 = -customerPerceivedLatency;
    }

    *v2.i64 = floor(v7 + 0.5);
    v8 = (v7 - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v3, v2).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v5 += v8;
      }
    }

    else
    {
      v5 -= fabs(v8);
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = [(TTSSchemaTTSAudioInterface *)self->_audioInterface hash];
  if ((*&self->_has & 2) != 0)
  {
    volume = self->_volume;
    if (volume >= 0.0)
    {
      v15 = volume;
    }

    else
    {
      v15 = -volume;
    }

    *v11.i64 = floor(v15 + 0.5);
    v16 = (v15 - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v12, v11).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v13 += v16;
      }
    }

    else
    {
      v13 -= fabs(v16);
    }
  }

  else
  {
    v13 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = 2654435761 * self->_playbackStateChange;
  }

  else
  {
    v18 = 0;
  }

  return v10 ^ v5 ^ v13 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) != (equalCopy[32] & 1))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    customerPerceivedLatency = self->_customerPerceivedLatency;
    [equalCopy customerPerceivedLatency];
    if (customerPerceivedLatency != v6)
    {
      goto LABEL_19;
    }
  }

  audioInterface = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];
  audioInterface2 = [equalCopy audioInterface];
  v9 = audioInterface2;
  if ((audioInterface != 0) == (audioInterface2 == 0))
  {

    goto LABEL_19;
  }

  audioInterface3 = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];
  if (audioInterface3)
  {
    v11 = audioInterface3;
    audioInterface4 = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];
    audioInterface5 = [equalCopy audioInterface];
    v14 = [audioInterface4 isEqual:audioInterface5];

    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  has = self->_has;
  v16 = (*&has >> 1) & 1;
  v17 = equalCopy[32];
  if (v16 != ((v17 >> 1) & 1))
  {
LABEL_19:
    v22 = 0;
    goto LABEL_20;
  }

  if (v16)
  {
    volume = self->_volume;
    [equalCopy volume];
    if (volume == v19)
    {
      has = self->_has;
      v17 = equalCopy[32];
      goto LABEL_15;
    }

    goto LABEL_19;
  }

LABEL_15:
  v20 = (*&has >> 2) & 1;
  if (v20 != ((v17 >> 2) & 1))
  {
    goto LABEL_19;
  }

  if (v20)
  {
    playbackStateChange = self->_playbackStateChange;
    if (playbackStateChange != [equalCopy playbackStateChange])
    {
      goto LABEL_19;
    }
  }

  v22 = 1;
LABEL_20:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
  }

  audioInterface = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];

  if (audioInterface)
  {
    audioInterface2 = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface];
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)setHasPlaybackStateChange:(BOOL)change
{
  if (change)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVolume:(BOOL)volume
{
  if (volume)
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
  v9.super_class = READSchemaREADPlaybackSessionStartedOrChanged;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(READSchemaREADPlaybackSessionStartedOrChanged *)self audioInterface:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(READSchemaREADPlaybackSessionStartedOrChanged *)self deleteAudioInterface];
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