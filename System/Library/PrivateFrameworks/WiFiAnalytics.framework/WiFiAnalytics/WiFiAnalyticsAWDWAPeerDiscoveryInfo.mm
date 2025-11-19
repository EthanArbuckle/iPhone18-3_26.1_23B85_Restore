@interface WiFiAnalyticsAWDWAPeerDiscoveryInfo
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

@implementation WiFiAnalyticsAWDWAPeerDiscoveryInfo

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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WiFiAnalyticsAWDWAPeerDiscoveryInfo;
  v4 = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)&v8 description];
  v5 = [(WiFiAnalyticsAWDWAPeerDiscoveryInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_numPeersDiscovered];
    [v3 setObject:v7 forKey:@"numPeersDiscovered"];

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
  [v3 setObject:v8 forKey:@"iOSPeers"];

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
  [v3 setObject:v9 forKey:@"tvOSPeers"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_macOSPeers];
    [v3 setObject:v5 forKey:@"macOSPeers"];
  }

LABEL_6:

  return v3;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[4] = self->_numPeersDiscovered;
    *(v4 + 24) |= 4u;
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

  v4[2] = self->_iOSPeers;
  *(v4 + 24) |= 1u;
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
  v4[5] = self->_tvOSPeers;
  *(v4 + 24) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v4[3] = self->_macOSPeers;
    *(v4 + 24) |= 2u;
  }

LABEL_6:
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
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_numPeersDiscovered != *(v4 + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_iOSPeers != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 24) & 8) == 0 || self->_tvOSPeers != *(v4 + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 24) & 8) != 0)
  {
    goto LABEL_21;
  }

  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_macOSPeers != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_numPeersDiscovered = *(v4 + 4);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
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

  else if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_iOSPeers = *(v4 + 2);
  *&self->_has |= 1u;
  v5 = *(v4 + 24);
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
  self->_tvOSPeers = *(v4 + 5);
  *&self->_has |= 8u;
  if ((*(v4 + 24) & 2) != 0)
  {
LABEL_5:
    self->_macOSPeers = *(v4 + 3);
    *&self->_has |= 2u;
  }

LABEL_6:
}

@end