@interface PSESchemaPSEMedia
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PSESchemaPSEMedia)initWithDictionary:(id)dictionary;
- (PSESchemaPSEMedia)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasMediaContentDurationBucket:(BOOL)bucket;
- (void)writeTo:(id)to;
@end

@implementation PSESchemaPSEMedia

- (PSESchemaPSEMedia)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PSESchemaPSEMedia;
  v5 = [(PSESchemaPSEMedia *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"playDurationInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 doubleValue];
      [(PSESchemaPSEMedia *)v5 setPlayDurationInSeconds:?];
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"mediaContentDurationBucket"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PSESchemaPSEMedia setMediaContentDurationBucket:](v5, "setMediaContentDurationBucket:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"lastMediaUserFollowupAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PSESchemaPSEMediaUserFollowupAction alloc] initWithDictionary:v8];
      [(PSESchemaPSEMedia *)v5 setLastMediaUserFollowupAction:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PSESchemaPSEMedia)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PSESchemaPSEMedia *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PSESchemaPSEMedia *)self dictionaryRepresentation];
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
  if (self->_lastMediaUserFollowupAction)
  {
    lastMediaUserFollowupAction = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];
    dictionaryRepresentation = [lastMediaUserFollowupAction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"lastMediaUserFollowupAction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"lastMediaUserFollowupAction"];
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [(PSESchemaPSEMedia *)self mediaContentDurationBucket]- 1;
    if (v8 > 0x10)
    {
      v9 = @"PSEMEDIACONTENTDURATIONBUCKET_UNKNOWN";
    }

    else
    {
      v9 = off_1E78E14A0[v8];
    }

    [dictionary setObject:v9 forKeyedSubscript:@"mediaContentDurationBucket"];
    has = self->_has;
  }

  if (has)
  {
    v10 = MEMORY[0x1E696AD98];
    [(PSESchemaPSEMedia *)self playDurationInSeconds];
    v11 = [v10 numberWithDouble:?];
    [dictionary setObject:v11 forKeyedSubscript:@"playDurationInSeconds"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    playDurationInSeconds = self->_playDurationInSeconds;
    if (playDurationInSeconds < 0.0)
    {
      playDurationInSeconds = -playDurationInSeconds;
    }

    *v6.i64 = floor(playDurationInSeconds + 0.5);
    v10 = (playDurationInSeconds - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_mediaContentDurationBucket;
  }

  else
  {
    v12 = 0;
  }

  return v12 ^ v8 ^ [(PSESchemaPSEMediaUserFollowupAction *)self->_lastMediaUserFollowupAction hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[32];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    playDurationInSeconds = self->_playDurationInSeconds;
    [equalCopy playDurationInSeconds];
    if (playDurationInSeconds != v8)
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[32];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v6 >> 1) & 1))
  {
    if (!v9 || (mediaContentDurationBucket = self->_mediaContentDurationBucket, mediaContentDurationBucket == [equalCopy mediaContentDurationBucket]))
    {
      lastMediaUserFollowupAction = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];
      lastMediaUserFollowupAction2 = [equalCopy lastMediaUserFollowupAction];
      v13 = lastMediaUserFollowupAction2;
      if ((lastMediaUserFollowupAction != 0) != (lastMediaUserFollowupAction2 == 0))
      {
        lastMediaUserFollowupAction3 = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];
        if (!lastMediaUserFollowupAction3)
        {

LABEL_17:
          v19 = 1;
          goto LABEL_15;
        }

        v15 = lastMediaUserFollowupAction3;
        lastMediaUserFollowupAction4 = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];
        lastMediaUserFollowupAction5 = [equalCopy lastMediaUserFollowupAction];
        v18 = [lastMediaUserFollowupAction4 isEqual:lastMediaUserFollowupAction5];

        if (v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v19 = 0;
LABEL_15:

  return v19;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  lastMediaUserFollowupAction = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];

  v6 = toCopy;
  if (lastMediaUserFollowupAction)
  {
    lastMediaUserFollowupAction2 = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasMediaContentDurationBucket:(BOOL)bucket
{
  if (bucket)
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
  v9.super_class = PSESchemaPSEMedia;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(PSESchemaPSEMedia *)self lastMediaUserFollowupAction:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(PSESchemaPSEMedia *)self deleteLastMediaUserFollowupAction];
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