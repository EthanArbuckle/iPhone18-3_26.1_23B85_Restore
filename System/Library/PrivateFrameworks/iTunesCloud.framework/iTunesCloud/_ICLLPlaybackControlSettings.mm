@interface _ICLLPlaybackControlSettings
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForTrackGenerationSource;
- (void)writeTo:(id)to;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_trackGenerationSource != *(equalCopy + 12))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
LABEL_25:
    v9 = 0;
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_shuffleMode != *(equalCopy + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_25;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_repeatMode != *(equalCopy + 10))
    {
      goto LABEL_25;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_25;
  }

  availability = self->_availability;
  if (availability | *(equalCopy + 2) && ![(_ICLLAvailability *)availability isEqual:?])
  {
    goto LABEL_25;
  }

  autoPlay = self->_autoPlay;
  if (autoPlay | *(equalCopy + 1))
  {
    if (![(_ICLLAutoPlaySource *)autoPlay isEqual:?])
    {
      goto LABEL_25;
    }
  }

  radio = self->_radio;
  if (radio | *(equalCopy + 4))
  {
    if (![(_ICLLRadioSource *)radio isEqual:?])
    {
      goto LABEL_25;
    }
  }

  noGeneration = self->_noGeneration;
  if (noGeneration | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(_ICLLAvailability *)self->_availability copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(_ICLLAutoPlaySource *)self->_autoPlay copyWithZone:zone];
  v11 = v6[1];
  v6[1] = v10;

  v12 = [(_ICLLRadioSource *)self->_radio copyWithZone:zone];
  v13 = v6[4];
  v6[4] = v12;

  v14 = [(_ICLLNoGenerationSource *)self->_noGeneration copyWithZone:zone];
  v15 = v6[3];
  v6[3] = v14;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_availability)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_autoPlay)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_radio)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_noGeneration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)clearOneofValuesForTrackGenerationSource
{
  if (self)
  {
    *(self + 52) &= ~4u;
    *(self + 48) = 0;
    v2 = *(self + 8);
    *(self + 8) = 0;

    v3 = *(self + 32);
    *(self + 32) = 0;

    v4 = *(self + 24);
    *(self + 24) = 0;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_shuffleMode];
    [dictionary setObject:v5 forKey:@"shuffleMode"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_repeatMode];
    [dictionary setObject:v6 forKey:@"repeatMode"];
  }

  availability = self->_availability;
  if (availability)
  {
    dictionaryRepresentation = [(_ICLLAvailability *)availability dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"availability"];
  }

  autoPlay = self->_autoPlay;
  if (autoPlay)
  {
    dictionaryRepresentation2 = [(_ICLLAutoPlaySource *)autoPlay dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"autoPlay"];
  }

  radio = self->_radio;
  if (radio)
  {
    dictionaryRepresentation3 = [(_ICLLRadioSource *)radio dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"radio"];
  }

  noGeneration = self->_noGeneration;
  if (noGeneration)
  {
    dictionaryRepresentation4 = [(_ICLLNoGenerationSource *)noGeneration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"noGeneration"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:self->_trackGenerationSource];
    [dictionary setObject:v15 forKey:@"trackGenerationSource"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackControlSettings;
  v4 = [(_ICLLPlaybackControlSettings *)&v8 description];
  dictionaryRepresentation = [(_ICLLPlaybackControlSettings *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end