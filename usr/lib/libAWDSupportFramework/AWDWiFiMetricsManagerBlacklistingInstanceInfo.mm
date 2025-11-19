@interface AWDWiFiMetricsManagerBlacklistingInstanceInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBlacklistingReason:(BOOL)a3;
- (void)setHasReservedInfo:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerBlacklistingInstanceInfo

- (void)setHasBlacklistingReason:(BOOL)a3
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

- (void)setHasReservedInfo:(BOOL)a3
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
  v3.super_class = AWDWiFiMetricsManagerBlacklistingInstanceInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerBlacklistingInstanceInfo description](&v3, sel_description), -[AWDWiFiMetricsManagerBlacklistingInstanceInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_blacklistingTimestamp), @"blacklistingTimestamp"}];
    if ((*&self->_has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_4;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_blacklistingReason), @"blacklistingReason"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_reservedInfo), @"reservedInfo"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    blacklistingTimestamp = self->_blacklistingTimestamp;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  blacklistingReason = self->_blacklistingReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_7:
  reservedInfo = self->_reservedInfo;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_blacklistingReason;
    *(a3 + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return;
      }

LABEL_7:
      *(a3 + 5) = self->_reservedInfo;
      *(a3 + 24) |= 4u;
      return;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 1) = self->_blacklistingTimestamp;
  *(a3 + 24) |= 1u;
  if ((*&self->_has & 4) != 0)
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
    *(result + 4) = self->_blacklistingReason;
    *(result + 24) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_blacklistingTimestamp;
  *(result + 24) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_reservedInfo;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_blacklistingReason != *(a3 + 4))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_blacklistingTimestamp != *(a3 + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(a3 + 24))
    {
      goto LABEL_16;
    }

    LOBYTE(v5) = (*(a3 + 24) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 24) & 4) == 0 || self->_reservedInfo != *(a3 + 5))
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
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_blacklistingReason;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761u * self->_blacklistingTimestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_reservedInfo;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if ((v3 & 2) != 0)
  {
    self->_blacklistingReason = *(a3 + 4);
    *&self->_has |= 2u;
    v3 = *(a3 + 24);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        return;
      }

LABEL_7:
      self->_reservedInfo = *(a3 + 5);
      *&self->_has |= 4u;
      return;
    }
  }

  else if ((*(a3 + 24) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_blacklistingTimestamp = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 24) & 4) != 0)
  {
    goto LABEL_7;
  }
}

@end