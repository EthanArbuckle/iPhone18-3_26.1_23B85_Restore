@interface ICPAAudioQualityDictionary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setChannelLayoutDescription:(uint64_t)description;
- (void)writeTo:(id)to;
@end

@implementation ICPAAudioQualityDictionary

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_bitRate;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_bitDepth;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_channelLayoutDescription hash];
  if ((*&self->_has & 8) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
  }

  v6 = 2654435761 * self->_codec;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_sampleRate;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761 * self->_isSpatialized;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_bitRate != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_bitDepth != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_27;
  }

  channelLayoutDescription = self->_channelLayoutDescription;
  if (channelLayoutDescription | *(equalCopy + 4))
  {
    if (![(NSString *)channelLayoutDescription isEqual:?])
    {
      goto LABEL_27;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_codec != *(equalCopy + 10))
    {
      goto LABEL_27;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_27;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_sampleRate != *(equalCopy + 3))
    {
      goto LABEL_27;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_27;
  }

  v8 = (v6 & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) != 0)
    {
      if (self->_isSpatialized)
      {
        if ((*(equalCopy + 44) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (*(equalCopy + 44))
      {
        goto LABEL_27;
      }

      v8 = 1;
      goto LABEL_28;
    }

LABEL_27:
    v8 = 0;
  }

LABEL_28:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_bitRate;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_bitDepth;
    *(v5 + 48) |= 1u;
  }

  v8 = [(NSString *)self->_channelLayoutDescription copyWithZone:zone];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 24) = self->_sampleRate;
    *(v6 + 48) |= 4u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 40) = self->_codec;
  *(v6 + 48) |= 8u;
  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v10 & 0x10) != 0)
  {
LABEL_8:
    *(v6 + 44) = self->_isSpatialized;
    *(v6 + 48) |= 0x10u;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_channelLayoutDescription)
  {
    PBDataWriterWriteStringField();
  }

  v5 = self->_has;
  if ((v5 & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
    v5 = self->_has;
    if ((v5 & 4) == 0)
    {
LABEL_9:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_bitRate];
    [dictionary setObject:v5 forKey:@"bitRate"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_bitDepth];
    [dictionary setObject:v6 forKey:@"bitDepth"];
  }

  channelLayoutDescription = self->_channelLayoutDescription;
  if (channelLayoutDescription)
  {
    [dictionary setObject:channelLayoutDescription forKey:@"channelLayoutDescription"];
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_codec];
    [dictionary setObject:v11 forKey:@"codec"];

    v8 = self->_has;
    if ((v8 & 4) == 0)
    {
LABEL_9:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_sampleRate];
  [dictionary setObject:v12 forKey:@"sampleRate"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_10:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSpatialized];
    [dictionary setObject:v9 forKey:@"isSpatialized"];
  }

LABEL_11:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ICPAAudioQualityDictionary;
  v4 = [(ICPAAudioQualityDictionary *)&v8 description];
  dictionaryRepresentation = [(ICPAAudioQualityDictionary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setChannelLayoutDescription:(uint64_t)description
{
  if (description)
  {
    objc_storeStrong((description + 32), a2);
  }
}

@end