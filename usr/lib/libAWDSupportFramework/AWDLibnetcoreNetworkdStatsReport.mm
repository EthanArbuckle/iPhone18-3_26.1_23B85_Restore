@interface AWDLibnetcoreNetworkdStatsReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTotalConnectionCount:(BOOL)count;
- (void)setHasTotalSuccessfulConnectionCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDLibnetcoreNetworkdStatsReport

- (void)setHasTotalConnectionCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTotalSuccessfulConnectionCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreNetworkdStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreNetworkdStatsReport description](&v3, sel_description), -[AWDLibnetcoreNetworkdStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalSuccessfulConnectionCount), @"totalSuccessfulConnectionCount"}];
    if ((*&self->_has & 1) == 0)
    {
      return dictionary;
    }

    goto LABEL_4;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalConnectionCount), @"totalConnectionCount"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fallbackConnectionCount), @"fallbackConnectionCount"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    totalSuccessfulConnectionCount = self->_totalSuccessfulConnectionCount;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  totalConnectionCount = self->_totalConnectionCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 1) == 0)
  {
    return;
  }

LABEL_7:
  fallbackConnectionCount = self->_fallbackConnectionCount;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_totalConnectionCount;
    *(to + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(to + 1) = self->_fallbackConnectionCount;
      *(to + 32) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 3) = self->_totalSuccessfulConnectionCount;
  *(to + 32) |= 4u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_totalConnectionCount;
    *(result + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_totalSuccessfulConnectionCount;
  *(result + 32) |= 4u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = self->_fallbackConnectionCount;
  *(result + 32) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_totalConnectionCount != *(equal + 2))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_totalSuccessfulConnectionCount != *(equal + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(equal + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_fallbackConnectionCount != *(equal + 1))
      {
        goto LABEL_16;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_totalConnectionCount;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_totalSuccessfulConnectionCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761u * self->_fallbackConnectionCount;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if ((v3 & 2) != 0)
  {
    self->_totalConnectionCount = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 32);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_fallbackConnectionCount = *(from + 1);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(from + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_totalSuccessfulConnectionCount = *(from + 3);
  *&self->_has |= 4u;
  if (*(from + 32))
  {
    goto LABEL_7;
  }
}

@end