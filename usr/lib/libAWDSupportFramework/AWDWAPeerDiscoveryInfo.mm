@interface AWDWAPeerDiscoveryInfo
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

@implementation AWDWAPeerDiscoveryInfo

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
  v3.receiver = self;
  v3.super_class = AWDWAPeerDiscoveryInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWAPeerDiscoveryInfo description](&v3, sel_description), -[AWDWAPeerDiscoveryInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numPeersDiscovered), @"numPeersDiscovered"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tvOSPeers), @"tvOSPeers"}];
      if ((*&self->_has & 2) == 0)
      {
        return dictionary;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iOSPeers), @"iOSPeers"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_macOSPeers), @"macOSPeers"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
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

LABEL_8:
      tvOSPeers = self->_tvOSPeers;
      PBDataWriterWriteUint32Field();
      if ((*&self->_has & 2) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  iOSPeers = self->_iOSPeers;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_9:
  macOSPeers = self->_macOSPeers;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 4) = self->_numPeersDiscovered;
    *(to + 24) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 2) = self->_iOSPeers;
  *(to + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_9:
    *(to + 3) = self->_macOSPeers;
    *(to + 24) |= 2u;
    return;
  }

LABEL_8:
  *(to + 5) = self->_tvOSPeers;
  *(to + 24) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_9;
  }
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
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 24) & 4) == 0 || self->_numPeersDiscovered != *(equal + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 24) & 4) != 0)
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_iOSPeers != *(equal + 2))
      {
        goto LABEL_21;
      }
    }

    else if (*(equal + 24))
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 24) & 8) == 0 || self->_tvOSPeers != *(equal + 5))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 24) & 8) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(equal + 24) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_macOSPeers != *(equal + 3))
      {
        goto LABEL_21;
      }

      LOBYTE(v5) = 1;
    }
  }

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
  v3 = *(from + 24);
  if ((v3 & 4) != 0)
  {
    self->_numPeersDiscovered = *(from + 4);
    *&self->_has |= 4u;
    v3 = *(from + 24);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(from + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_iOSPeers = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 24);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_9:
    self->_macOSPeers = *(from + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_8:
  self->_tvOSPeers = *(from + 5);
  *&self->_has |= 8u;
  if ((*(from + 24) & 2) != 0)
  {
    goto LABEL_9;
  }
}

@end