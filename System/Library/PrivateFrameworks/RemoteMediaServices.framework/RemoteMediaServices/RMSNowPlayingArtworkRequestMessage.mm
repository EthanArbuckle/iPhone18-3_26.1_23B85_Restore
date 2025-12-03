@interface RMSNowPlayingArtworkRequestMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHeight:(BOOL)height;
- (void)setHasWidth:(BOOL)width;
- (void)writeTo:(id)to;
@end

@implementation RMSNowPlayingArtworkRequestMessage

- (void)setHasWidth:(BOOL)width
{
  if (width)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasHeight:(BOOL)height
{
  if (height)
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
  v8.super_class = RMSNowPlayingArtworkRequestMessage;
  v4 = [(RMSNowPlayingArtworkRequestMessage *)&v8 description];
  dictionaryRepresentation = [(RMSNowPlayingArtworkRequestMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  artworkIdentifier = self->_artworkIdentifier;
  if (artworkIdentifier)
  {
    [dictionary setObject:artworkIdentifier forKey:@"artworkIdentifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_width];
    [v5 setObject:v10 forKey:@"width"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_height];
  [v5 setObject:v11 forKey:@"height"];

  if (*&self->_has)
  {
LABEL_6:
    *&v4 = self->_compressionQuality;
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v5 setObject:v8 forKey:@"compressionQuality"];
  }

LABEL_7:

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_artworkIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  PBDataWriterWriteUint32Field();
  toCopy = v6;
  if (*&self->_has)
  {
LABEL_6:
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }

LABEL_7:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_artworkIdentifier)
  {
    v6 = toCopy;
    [toCopy setArtworkIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 6) = self->_width;
    *(toCopy + 28) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 5) = self->_height;
  *(toCopy + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(toCopy + 4) = LODWORD(self->_compressionQuality);
    *(toCopy + 28) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_artworkIdentifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 20) = self->_height;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_width;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 16) = self->_compressionQuality;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  artworkIdentifier = self->_artworkIdentifier;
  if (artworkIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)artworkIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_width != *(equalCopy + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_height != *(equalCopy + 5))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_18;
  }

  v6 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_compressionQuality != *(equalCopy + 4))
    {
      goto LABEL_18;
    }

    v6 = 1;
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_artworkIdentifier hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_11:
    v12 = 0;
    return v6 ^ v3 ^ v7 ^ v12;
  }

  v6 = 2654435761 * self->_width;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  v7 = 2654435761 * self->_height;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  compressionQuality = self->_compressionQuality;
  if (compressionQuality >= 0.0)
  {
    v9 = compressionQuality;
  }

  else
  {
    v9 = -compressionQuality;
  }

  *v4.i64 = floor(v9 + 0.5);
  v10 = (v9 - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v12 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v5, v4).i64;
  if (v10 >= 0.0)
  {
    if (v10 > 0.0)
    {
      v12 += v10;
    }
  }

  else
  {
    v12 -= fabs(v10);
  }

  return v6 ^ v3 ^ v7 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(RMSNowPlayingArtworkRequestMessage *)self setArtworkIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_width = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*(fromCopy + 28) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_height = *(fromCopy + 5);
  *&self->_has |= 2u;
  if (*(fromCopy + 28))
  {
LABEL_6:
    self->_compressionQuality = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

LABEL_7:
}

@end