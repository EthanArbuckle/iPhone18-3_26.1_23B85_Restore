@interface AWDPowerTouchMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTocuhTotalUserInteractionDuration:(BOOL)duration;
- (void)setHasTouchStateActiveDuration:(BOOL)duration;
- (void)setHasTouchStateAnticipateDuration:(BOOL)duration;
- (void)setHasTouchStateOffDuration:(BOOL)duration;
- (void)setHasTouchStateOnDuration:(BOOL)duration;
- (void)setHasTouchStateOthersDuration:(BOOL)duration;
- (void)setHasTouchStateReadyDuration:(BOOL)duration;
- (void)setHasTouchTotalPowerMicroWatt:(BOOL)watt;
- (void)setHasTouchTotalUserTouchCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerTouchMetrics

- (void)setHasTouchStateActiveDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTouchStateReadyDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTouchStateAnticipateDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTouchStateOffDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTouchStateOnDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTouchStateOthersDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTouchTotalPowerMicroWatt:(BOOL)watt
{
  if (watt)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTouchTotalUserTouchCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasTocuhTotalUserInteractionDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerTouchMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerTouchMetrics description](&v3, sel_description), -[AWDPowerTouchMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateActiveDuration), @"touchStateActiveDuration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateReadyDuration), @"touchStateReadyDuration"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateAnticipateDuration), @"touchStateAnticipateDuration"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateOffDuration), @"touchStateOffDuration"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateOnDuration), @"touchStateOnDuration"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchStateOthersDuration), @"touchStateOthersDuration"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchTotalUserTouchCount), @"touchTotalUserTouchCount"}];
    if ((*&self->_has & 2) == 0)
    {
      return dictionary;
    }

    goto LABEL_11;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_touchTotalPowerMicroWatt), @"touchTotalPowerMicroWatt"}];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if ((has & 2) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tocuhTotalUserInteractionDuration), @"tocuhTotalUserInteractionDuration"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  touchStateActiveDuration = self->_touchStateActiveDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  touchStateReadyDuration = self->_touchStateReadyDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  touchStateAnticipateDuration = self->_touchStateAnticipateDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  touchStateOffDuration = self->_touchStateOffDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  touchStateOnDuration = self->_touchStateOnDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  touchStateOthersDuration = self->_touchStateOthersDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    touchTotalUserTouchCount = self->_touchTotalUserTouchCount;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

LABEL_19:
  touchTotalPowerMicroWatt = self->_touchTotalPowerMicroWatt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_21:
  tocuhTotalUserInteractionDuration = self->_tocuhTotalUserInteractionDuration;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 26) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_touchStateActiveDuration;
  *(to + 26) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 10) = self->_touchStateReadyDuration;
  *(to + 26) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 6) = self->_touchStateAnticipateDuration;
  *(to + 26) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 7) = self->_touchStateOffDuration;
  *(to + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 8) = self->_touchStateOnDuration;
  *(to + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 9) = self->_touchStateOthersDuration;
  *(to + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 11) = self->_touchTotalPowerMicroWatt;
  *(to + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_21:
    *(to + 4) = self->_tocuhTotalUserInteractionDuration;
    *(to + 26) |= 2u;
    return;
  }

LABEL_20:
  *(to + 12) = self->_touchTotalUserTouchCount;
  *(to + 26) |= 0x200u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_21;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 26) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_touchStateActiveDuration;
  *(result + 26) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 10) = self->_touchStateReadyDuration;
  *(result + 26) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = self->_touchStateAnticipateDuration;
  *(result + 26) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 7) = self->_touchStateOffDuration;
  *(result + 26) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 8) = self->_touchStateOnDuration;
  *(result + 26) |= 0x20u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 9) = self->_touchStateOthersDuration;
  *(result + 26) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 11) = self->_touchTotalPowerMicroWatt;
  *(result + 26) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_11;
  }

LABEL_21:
  *(result + 12) = self->_touchTotalUserTouchCount;
  *(result + 26) |= 0x200u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_11:
  *(result + 4) = self->_tocuhTotalUserInteractionDuration;
  *(result + 26) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 26);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_51;
      }
    }

    else if (v7)
    {
LABEL_51:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_touchStateActiveDuration != *(equal + 5))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_touchStateReadyDuration != *(equal + 10))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_touchStateAnticipateDuration != *(equal + 6))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_touchStateOffDuration != *(equal + 7))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_touchStateOnDuration != *(equal + 8))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_51;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_touchStateOthersDuration != *(equal + 9))
      {
        goto LABEL_51;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 26) & 0x100) == 0 || self->_touchTotalPowerMicroWatt != *(equal + 11))
      {
        goto LABEL_51;
      }
    }

    else if ((*(equal + 26) & 0x100) != 0)
    {
      goto LABEL_51;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 26) & 0x200) == 0 || self->_touchTotalUserTouchCount != *(equal + 12))
      {
        goto LABEL_51;
      }
    }

    else if ((*(equal + 26) & 0x200) != 0)
    {
      goto LABEL_51;
    }

    LOBYTE(v5) = (v7 & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_tocuhTotalUserInteractionDuration != *(equal + 4))
      {
        goto LABEL_51;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_touchStateActiveDuration;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_touchStateReadyDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_touchStateAnticipateDuration;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_touchStateOffDuration;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_touchStateOnDuration;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_touchStateOthersDuration;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_touchTotalPowerMicroWatt;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_21:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

LABEL_19:
  v10 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v11 = 2654435761 * self->_touchTotalUserTouchCount;
  if ((has & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v12 = 2654435761 * self->_tocuhTotalUserInteractionDuration;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 26);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 26);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_touchStateActiveDuration = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 26);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_touchStateReadyDuration = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 26);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_touchStateAnticipateDuration = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 26);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_touchStateOffDuration = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 26);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_touchStateOnDuration = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 26);
  if ((v3 & 0x40) == 0)
  {
LABEL_8:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_touchStateOthersDuration = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 26);
  if ((v3 & 0x100) == 0)
  {
LABEL_9:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_touchTotalPowerMicroWatt = *(from + 11);
  *&self->_has |= 0x100u;
  v3 = *(from + 26);
  if ((v3 & 0x200) == 0)
  {
LABEL_10:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_21:
    self->_tocuhTotalUserInteractionDuration = *(from + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_20:
  self->_touchTotalUserTouchCount = *(from + 12);
  *&self->_has |= 0x200u;
  if ((*(from + 26) & 2) != 0)
  {
    goto LABEL_21;
  }
}

@end