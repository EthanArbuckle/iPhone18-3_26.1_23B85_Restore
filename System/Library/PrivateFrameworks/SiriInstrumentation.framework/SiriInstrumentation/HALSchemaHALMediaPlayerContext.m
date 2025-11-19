@interface HALSchemaHALMediaPlayerContext
- (BOOL)isEqual:(id)a3;
- (HALSchemaHALMediaPlayerContext)initWithDictionary:(id)a3;
- (HALSchemaHALMediaPlayerContext)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasTimeSinceLastMediaPlaybackInSeconds:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HALSchemaHALMediaPlayerContext

- (HALSchemaHALMediaPlayerContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HALSchemaHALMediaPlayerContext;
  v5 = [(HALSchemaHALMediaPlayerContext *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALMediaPlayerContext setState:](v5, "setState:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALMediaPlayerContext setType:](v5, "setType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"timeSinceLastMediaPlaybackInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[HALSchemaHALMediaPlayerContext setTimeSinceLastMediaPlaybackInSeconds:](v5, "setTimeSinceLastMediaPlaybackInSeconds:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (HALSchemaHALMediaPlayerContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(HALSchemaHALMediaPlayerContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(HALSchemaHALMediaPlayerContext *)self dictionaryRepresentation];
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
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[HALSchemaHALMediaPlayerContext timeSinceLastMediaPlaybackInSeconds](self, "timeSinceLastMediaPlaybackInSeconds")}];
    [v3 setObject:v7 forKeyedSubscript:@"timeSinceLastMediaPlaybackInSeconds"];

    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_10:
    v8 = [(HALSchemaHALMediaPlayerContext *)self type]- 1;
    if (v8 > 0x1B)
    {
      v9 = @"FLOWMEDIATYPE_UNKNOWN";
    }

    else
    {
      v9 = off_1E78D7F30[v8];
    }

    [v3 setObject:v9 forKeyedSubscript:@"type"];
    goto LABEL_14;
  }

  v5 = [(HALSchemaHALMediaPlayerContext *)self state]- 1;
  if (v5 > 5)
  {
    v6 = @"HALMEDIAPLAYERSTATE_UNKNOWN";
  }

  else
  {
    v6 = off_1E78D7F00[v5];
  }

  [v3 setObject:v6 forKeyedSubscript:@"state"];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_state;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_type;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_timeSinceLastMediaPlaybackInSeconds;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = v4[20];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    state = self->_state;
    if (state != [v4 state])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = v4[20];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    type = self->_type;
    if (type == [v4 type])
    {
      has = self->_has;
      v6 = v4[20];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    timeSinceLastMediaPlaybackInSeconds = self->_timeSinceLastMediaPlaybackInSeconds;
    if (timeSinceLastMediaPlaybackInSeconds != [v4 timeSinceLastMediaPlaybackInSeconds])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_5:
}

- (void)setHasTimeSinceLastMediaPlaybackInSeconds:(BOOL)a3
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

- (void)setHasType:(BOOL)a3
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