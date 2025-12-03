@interface RMSAudioRouteMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSelected:(BOOL)selected;
- (void)setHasSupportsVideo:(BOOL)video;
- (void)writeTo:(id)to;
@end

@implementation RMSAudioRouteMessage

- (void)setHasSupportsVideo:(BOOL)video
{
  if (video)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSelected:(BOOL)selected
{
  if (selected)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = RMSAudioRouteMessage;
  v4 = [(RMSAudioRouteMessage *)&v8 description];
  dictionaryRepresentation = [(RMSAudioRouteMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_macAddress];
    [v4 setObject:v9 forKey:@"macAddress"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_supportsVideo];
  [v4 setObject:v10 forKey:@"supportsVideo"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_selected];
    [v4 setObject:v7 forKey:@"selected"];
  }

LABEL_7:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_displayName)
  {
    v6 = toCopy;
    [toCopy setDisplayName:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_macAddress;
    *(toCopy + 28) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 25) = self->_supportsVideo;
  *(toCopy + 28) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(toCopy + 24) = self->_selected;
    *(toCopy + 28) |= 2u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_displayName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 25) = self->_supportsVideo;
    *(v5 + 28) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_macAddress;
  *(v5 + 28) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_selected;
    *(v5 + 28) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_macAddress != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0)
    {
      goto LABEL_17;
    }

    if (self->_supportsVideo)
    {
      if ((*(equalCopy + 25) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(equalCopy + 25))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
    goto LABEL_17;
  }

  v6 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      if (self->_selected)
      {
        if (*(equalCopy + 24))
        {
          goto LABEL_25;
        }
      }

      else if (!*(equalCopy + 24))
      {
LABEL_25:
        v6 = 1;
        goto LABEL_18;
      }
    }

LABEL_17:
    v6 = 0;
  }

LABEL_18:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_displayName hash];
  if ((*&self->_has & 1) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v4 = 2654435761 * self->_macAddress;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = 2654435761 * self->_supportsVideo;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v6 = 2654435761 * self->_selected;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v6 = fromCopy;
    [(RMSAudioRouteMessage *)self setDisplayName:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if (v5)
  {
    self->_macAddress = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 28);
    if ((v5 & 4) == 0)
    {
LABEL_5:
      if ((v5 & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 28) & 4) == 0)
  {
    goto LABEL_5;
  }

  self->_supportsVideo = *(fromCopy + 25);
  *&self->_has |= 4u;
  if ((*(fromCopy + 28) & 2) != 0)
  {
LABEL_6:
    self->_selected = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

LABEL_7:
}

@end