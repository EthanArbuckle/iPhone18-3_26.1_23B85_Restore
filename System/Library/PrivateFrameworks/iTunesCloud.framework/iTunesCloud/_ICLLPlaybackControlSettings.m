@interface _ICLLPlaybackControlSettings
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForTrackGenerationSource;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLPlaybackControlSettings

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_trackGenerationSource;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_shuffleMode;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_repeatMode;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(_ICLLAvailability *)self->_availability hash];
  v7 = [(_ICLLAutoPlaySource *)self->_autoPlay hash];
  v8 = v6 ^ v7 ^ [(_ICLLRadioSource *)self->_radio hash];
  return v8 ^ [(_ICLLNoGenerationSource *)self->_noGeneration hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 52) & 4) == 0 || self->_trackGenerationSource != *(v4 + 12))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 4) != 0)
  {
LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_shuffleMode != *(v4 + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_repeatMode != *(v4 + 10))
    {
      goto LABEL_25;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_25;
  }

  availability = self->_availability;
  if (availability | *(v4 + 2) && ![(_ICLLAvailability *)availability isEqual:?])
  {
    goto LABEL_25;
  }

  autoPlay = self->_autoPlay;
  if (autoPlay | *(v4 + 1))
  {
    if (![(_ICLLAutoPlaySource *)autoPlay isEqual:?])
    {
      goto LABEL_25;
    }
  }

  radio = self->_radio;
  if (radio | *(v4 + 4))
  {
    if (![(_ICLLRadioSource *)radio isEqual:?])
    {
      goto LABEL_25;
    }
  }

  noGeneration = self->_noGeneration;
  if (noGeneration | *(v4 + 3))
  {
    v9 = [(_ICLLNoGenerationSource *)noGeneration isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_26:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 44) = self->_shuffleMode;
    *(v5 + 52) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 48) = self->_trackGenerationSource;
  *(v5 + 52) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 40) = self->_repeatMode;
    *(v5 + 52) |= 1u;
  }

LABEL_5:
  v8 = [(_ICLLAvailability *)self->_availability copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(_ICLLAutoPlaySource *)self->_autoPlay copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  v12 = [(_ICLLRadioSource *)self->_radio copyWithZone:a3];
  v13 = v6[4];
  v6[4] = v12;

  v14 = [(_ICLLNoGenerationSource *)self->_noGeneration copyWithZone:a3];
  v15 = v6[3];
  v6[3] = v14;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_availability)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_autoPlay)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_radio)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_noGeneration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)clearOneofValuesForTrackGenerationSource
{
  if (a1)
  {
    *(a1 + 52) &= ~4u;
    *(a1 + 48) = 0;
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    v3 = *(a1 + 32);
    *(a1 + 32) = 0;

    v4 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_shuffleMode];
    [v3 setObject:v5 forKey:@"shuffleMode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_repeatMode];
    [v3 setObject:v6 forKey:@"repeatMode"];
  }

  availability = self->_availability;
  if (availability)
  {
    v8 = [(_ICLLAvailability *)availability dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"availability"];
  }

  autoPlay = self->_autoPlay;
  if (autoPlay)
  {
    v10 = [(_ICLLAutoPlaySource *)autoPlay dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"autoPlay"];
  }

  radio = self->_radio;
  if (radio)
  {
    v12 = [(_ICLLRadioSource *)radio dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"radio"];
  }

  noGeneration = self->_noGeneration;
  if (noGeneration)
  {
    v14 = [(_ICLLNoGenerationSource *)noGeneration dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"noGeneration"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_trackGenerationSource];
    [v3 setObject:v15 forKey:@"trackGenerationSource"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackControlSettings;
  v4 = [(_ICLLPlaybackControlSettings *)&v8 description];
  v5 = [(_ICLLPlaybackControlSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end