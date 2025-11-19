@interface AWDLibnetcoreNetworkdStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTotalConnectionCount:(BOOL)a3;
- (void)setHasTotalSuccessfulConnectionCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreNetworkdStatsReport

- (void)setHasTotalConnectionCount:(BOOL)a3
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

- (void)setHasTotalSuccessfulConnectionCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreNetworkdStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreNetworkdStatsReport description](&v3, sel_description), -[AWDLibnetcoreNetworkdStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalSuccessfulConnectionCount), @"totalSuccessfulConnectionCount"}];
    if ((*&self->_has & 1) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalConnectionCount), @"totalConnectionCount"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_fallbackConnectionCount), @"fallbackConnectionCount"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_totalConnectionCount;
    *(a3 + 32) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 1) = self->_fallbackConnectionCount;
      *(a3 + 32) |= 1u;
      return;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 3) = self->_totalSuccessfulConnectionCount;
  *(a3 + 32) |= 4u;
  if (*&self->_has)
  {
    goto LABEL_7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_totalConnectionCount != *(a3 + 2))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_totalSuccessfulConnectionCount != *(a3 + 3))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 32) & 4) != 0)
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(a3 + 32) & 1) == 0;
    if (*&self->_has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_fallbackConnectionCount != *(a3 + 1))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 32);
  if ((v3 & 2) != 0)
  {
    self->_totalConnectionCount = *(a3 + 2);
    *&self->_has |= 2u;
    v3 = *(a3 + 32);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        return;
      }

LABEL_7:
      self->_fallbackConnectionCount = *(a3 + 1);
      *&self->_has |= 1u;
      return;
    }
  }

  else if ((*(a3 + 32) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_totalSuccessfulConnectionCount = *(a3 + 3);
  *&self->_has |= 4u;
  if (*(a3 + 32))
  {
    goto LABEL_7;
  }
}

@end