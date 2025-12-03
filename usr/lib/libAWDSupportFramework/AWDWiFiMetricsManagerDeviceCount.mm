@interface AWDWiFiMetricsManagerDeviceCount
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeviceCount:(BOOL)count;
- (void)setHasDeviceIdentifierMap:(BOOL)map;
- (void)setHasDeviceInitFailureReason:(BOOL)reason;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerDeviceCount

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDeviceCount:(BOOL)count
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

- (void)setHasDeviceIdentifierMap:(BOOL)map
{
  if (map)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDeviceInitFailureReason:(BOOL)reason
{
  if (reason)
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
  v3.super_class = AWDWiFiMetricsManagerDeviceCount;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerDeviceCount description](&v3, sel_description), -[AWDWiFiMetricsManagerDeviceCount dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deviceCount), @"deviceCount"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deviceIdentifierMap), @"deviceIdentifierMap"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_6;
  }

LABEL_10:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_timeSinceBoot), @"timeSinceBoot"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((has & 0x10) != 0)
  {
LABEL_6:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_deviceInitFailureReason), @"deviceInitFailureReason"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  deviceCount = self->_deviceCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    deviceInitFailureReason = self->_deviceInitFailureReason;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  timeSinceBoot = self->_timeSinceBoot;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_11:
  deviceIdentifierMap = self->_deviceIdentifierMap;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_deviceCount;
  *(to + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(to + 1) = *&self->_timeSinceBoot;
  *(to + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_11:
    *(to + 7) = self->_deviceIdentifierMap;
    *(to + 36) |= 8u;
    return;
  }

LABEL_10:
  *(to + 8) = self->_deviceInitFailureReason;
  *(to + 36) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 36) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_deviceCount;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 1) = *&self->_timeSinceBoot;
  *(result + 36) |= 1u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 8) = self->_deviceInitFailureReason;
  *(result + 36) |= 0x10u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 7) = self->_deviceIdentifierMap;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
LABEL_26:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_deviceCount != *(equal + 6))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_26;
    }

    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timeSinceBoot != *(equal + 1))
      {
        goto LABEL_26;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_26;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 36) & 0x10) == 0 || self->_deviceInitFailureReason != *(equal + 8))
      {
        goto LABEL_26;
      }
    }

    else if ((*(equal + 36) & 0x10) != 0)
    {
      goto LABEL_26;
    }

    LOBYTE(v5) = (*(equal + 36) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_deviceIdentifierMap != *(equal + 7))
      {
        goto LABEL_26;
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
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v4 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_deviceCount;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timeSinceBoot = self->_timeSinceBoot;
  if (timeSinceBoot < 0.0)
  {
    timeSinceBoot = -timeSinceBoot;
  }

  *v2.i64 = floor(timeSinceBoot + 0.5);
  v7 = (timeSinceBoot - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

LABEL_11:
  if ((*&self->_has & 0x10) != 0)
  {
    v10 = 2654435761 * self->_deviceInitFailureReason;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_13;
    }

LABEL_15:
    v11 = 0;
    return v5 ^ v4 ^ v9 ^ v10 ^ v11;
  }

  v10 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  v11 = 2654435761 * self->_deviceIdentifierMap;
  return v5 ^ v4 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 36);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(from + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_deviceCount = *(from + 6);
  *&self->_has |= 4u;
  v3 = *(from + 36);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  self->_timeSinceBoot = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_11:
    self->_deviceIdentifierMap = *(from + 7);
    *&self->_has |= 8u;
    return;
  }

LABEL_10:
  self->_deviceInitFailureReason = *(from + 8);
  *&self->_has |= 0x10u;
  if ((*(from + 36) & 8) != 0)
  {
    goto LABEL_11;
  }
}

@end