@interface AWDWAPeerDiscoveryInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMacOSPeers:(BOOL)a3;
- (void)setHasNumPeersDiscovered:(BOOL)a3;
- (void)setHasTvOSPeers:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWAPeerDiscoveryInfo

- (void)setHasNumPeersDiscovered:(BOOL)a3
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

- (void)setHasTvOSPeers:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasMacOSPeers:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWAPeerDiscoveryInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWAPeerDiscoveryInfo description](&v3, sel_description), -[AWDWAPeerDiscoveryInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numPeersDiscovered), @"numPeersDiscovered"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tvOSPeers), @"tvOSPeers"}];
      if ((*&self->_has & 2) == 0)
      {
        return v3;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_iOSPeers), @"iOSPeers"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_macOSPeers), @"macOSPeers"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 4) = self->_numPeersDiscovered;
    *(a3 + 24) |= 4u;
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

  *(a3 + 2) = self->_iOSPeers;
  *(a3 + 24) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_9:
    *(a3 + 3) = self->_macOSPeers;
    *(a3 + 24) |= 2u;
    return;
  }

LABEL_8:
  *(a3 + 5) = self->_tvOSPeers;
  *(a3 + 24) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 24) & 4) == 0 || self->_numPeersDiscovered != *(a3 + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 24) & 4) != 0)
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_iOSPeers != *(a3 + 2))
      {
        goto LABEL_21;
      }
    }

    else if (*(a3 + 24))
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 24) & 8) == 0 || self->_tvOSPeers != *(a3 + 5))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 24) & 8) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(a3 + 24) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_macOSPeers != *(a3 + 3))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if ((v3 & 4) != 0)
  {
    self->_numPeersDiscovered = *(a3 + 4);
    *&self->_has |= 4u;
    v3 = *(a3 + 24);
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

  else if ((*(a3 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_iOSPeers = *(a3 + 2);
  *&self->_has |= 1u;
  v3 = *(a3 + 24);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_9:
    self->_macOSPeers = *(a3 + 3);
    *&self->_has |= 2u;
    return;
  }

LABEL_8:
  self->_tvOSPeers = *(a3 + 5);
  *&self->_has |= 8u;
  if ((*(a3 + 24) & 2) != 0)
  {
    goto LABEL_9;
  }
}

@end