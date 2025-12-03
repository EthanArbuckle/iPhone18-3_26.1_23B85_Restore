@interface WiFiAnalyticsAWDWAPeerDiscoveryInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMacOSPeers:(BOOL)peers;
- (void)setHasNumPeersDiscovered:(BOOL)discovered;
- (void)setHasTvOSPeers:(BOOL)peers;
- (void)writeTo:(id)to;
@end

@implementation WiFiAnalyticsAWDWAPeerDiscoveryInfo

- (void)setHasNumPeersDiscovered:(BOOL)discovered
{
  if (discovered)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTvOSPeers:(BOOL)peers
{
  if (peers)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMacOSPeers:(BOOL)peers
{
  if (peers)
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWAPeerDiscoveryInfo;
  v4 = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)&v8 description];
  dictionaryRepresentation = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numPeersDiscovered];
    [dictionary setObject:v7 forKey:@"numPeersDiscovered"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_iOSPeers];
  [dictionary setObject:v8 forKey:@"iOSPeers"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_tvOSPeers];
  [dictionary setObject:v9 forKey:@"tvOSPeers"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_macOSPeers];
    [dictionary setObject:v5 forKey:@"macOSPeers"];
  }

LABEL_6:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    numPeersDiscovered = self->_numPeersDiscovered;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  iOSPeers = self->_iOSPeers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  tvOSPeers = self->_tvOSPeers;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    macOSPeers = self->_macOSPeers;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_numPeersDiscovered;
    *(toCopy + 24) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[2] = self->_iOSPeers;
  *(toCopy + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[5] = self->_tvOSPeers;
  *(toCopy + 24) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    toCopy[3] = self->_macOSPeers;
    *(toCopy + 24) |= 2u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_numPeersDiscovered;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_iOSPeers;
  *(result + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 5) = self->_tvOSPeers;
  *(result + 24) |= 8u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 3) = self->_macOSPeers;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_numPeersDiscovered != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_iOSPeers != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_tvOSPeers != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(equalCopy + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_macOSPeers != *(equalCopy + 3))
    {
      goto LABEL_21;
    }

    v5 = 1;
  }

LABEL_22:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_numPeersDiscovered;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761 * self->_iOSPeers;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_tvOSPeers;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_macOSPeers;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_numPeersDiscovered = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_iOSPeers = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_tvOSPeers = *(fromCopy + 5);
  *&self->_has |= 8u;
  if ((*(fromCopy + 24) & 2) != 0)
  {
LABEL_5:
    self->_macOSPeers = *(fromCopy + 3);
    *&self->_has |= 2u;
  }

LABEL_6:
}

@end