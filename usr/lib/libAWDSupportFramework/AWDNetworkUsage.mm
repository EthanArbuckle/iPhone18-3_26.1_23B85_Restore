@interface AWDNetworkUsage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCellOut:(BOOL)out;
- (void)setHasNumConnections:(BOOL)connections;
- (void)setHasWifiIn:(BOOL)in;
- (void)setHasWifiOut:(BOOL)out;
- (void)writeTo:(id)to;
@end

@implementation AWDNetworkUsage

- (void)dealloc
{
  [(AWDNetworkUsage *)self setBundleName:0];
  v3.receiver = self;
  v3.super_class = AWDNetworkUsage;
  [(AWDNetworkUsage *)&v3 dealloc];
}

- (void)setHasWifiIn:(BOOL)in
{
  if (in)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasWifiOut:(BOOL)out
{
  if (out)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCellOut:(BOOL)out
{
  if (out)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasNumConnections:(BOOL)connections
{
  if (connections)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNetworkUsage;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNetworkUsage description](&v3, sel_description), -[AWDNetworkUsage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  bundleName = self->_bundleName;
  if (bundleName)
  {
    [dictionary setObject:bundleName forKey:@"bundleName"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wifiIn), @"wifiIn"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wifiOut), @"wifiOut"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cellOut), @"cellOut"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v4;
    }

    goto LABEL_8;
  }

LABEL_12:
  [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_cellIn), @"cellIn"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x10) != 0)
  {
LABEL_8:
    [v4 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numConnections), @"numConnections"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_bundleName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    wifiIn = self->_wifiIn;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  wifiOut = self->_wifiOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    cellOut = self->_cellOut;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  cellIn = self->_cellIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  numConnections = self->_numConnections;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (self->_bundleName)
  {
    [to setBundleName:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_wifiIn;
    *(to + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(to + 4) = self->_wifiOut;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 1) = self->_cellIn;
  *(to + 52) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_13:
  *(to + 2) = self->_cellOut;
  *(to + 52) |= 2u;
  if ((*&self->_has & 0x10) == 0)
  {
    return;
  }

LABEL_8:
  *(to + 12) = self->_numConnections;
  *(to + 52) |= 0x10u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  *(v5 + 40) = [(NSString *)self->_bundleName copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_wifiIn;
    *(v5 + 52) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_wifiOut;
  *(v5 + 52) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    *(v5 + 16) = self->_cellOut;
    *(v5 + 52) |= 2u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_6;
  }

LABEL_10:
  *(v5 + 8) = self->_cellIn;
  *(v5 + 52) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    *(v5 + 48) = self->_numConnections;
    *(v5 + 52) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    bundleName = self->_bundleName;
    if (!(bundleName | *(equal + 5)) || (v5 = [(NSString *)bundleName isEqual:?]) != 0)
    {
      if ((*&self->_has & 4) != 0)
      {
        if ((*(equal + 52) & 4) == 0 || self->_wifiIn != *(equal + 3))
        {
          goto LABEL_28;
        }
      }

      else if ((*(equal + 52) & 4) != 0)
      {
LABEL_28:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((*&self->_has & 8) != 0)
      {
        if ((*(equal + 52) & 8) == 0 || self->_wifiOut != *(equal + 4))
        {
          goto LABEL_28;
        }
      }

      else if ((*(equal + 52) & 8) != 0)
      {
        goto LABEL_28;
      }

      if (*&self->_has)
      {
        if ((*(equal + 52) & 1) == 0 || self->_cellIn != *(equal + 1))
        {
          goto LABEL_28;
        }
      }

      else if (*(equal + 52))
      {
        goto LABEL_28;
      }

      if ((*&self->_has & 2) != 0)
      {
        if ((*(equal + 52) & 2) == 0 || self->_cellOut != *(equal + 2))
        {
          goto LABEL_28;
        }
      }

      else if ((*(equal + 52) & 2) != 0)
      {
        goto LABEL_28;
      }

      LOBYTE(v5) = (*(equal + 52) & 0x10) == 0;
      if ((*&self->_has & 0x10) != 0)
      {
        if ((*(equal + 52) & 0x10) == 0 || self->_numConnections != *(equal + 12))
        {
          goto LABEL_28;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleName hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761u * self->_wifiIn;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_wifiOut;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if (*&self->_has)
  {
LABEL_4:
    v6 = 2654435761u * self->_cellIn;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761u * self->_cellOut;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_numConnections;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 5))
  {
    [(AWDNetworkUsage *)self setBundleName:?];
  }

  v5 = *(from + 52);
  if ((v5 & 4) != 0)
  {
    self->_wifiIn = *(from + 3);
    *&self->_has |= 4u;
    v5 = *(from + 52);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 52) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_wifiOut = *(from + 4);
  *&self->_has |= 8u;
  v5 = *(from + 52);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_cellIn = *(from + 1);
  *&self->_has |= 1u;
  v5 = *(from + 52);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

LABEL_13:
  self->_cellOut = *(from + 2);
  *&self->_has |= 2u;
  if ((*(from + 52) & 0x10) == 0)
  {
    return;
  }

LABEL_8:
  self->_numConnections = *(from + 12);
  *&self->_has |= 0x10u;
}

@end