@interface AWDWiFiMetricsManagerPowerStatsUpdateEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssociatedSleepDur:(BOOL)dur;
- (void)setHasRoamDur:(BOOL)dur;
- (void)setHasTotalDur:(BOOL)dur;
- (void)setHasType:(BOOL)type;
- (void)setHasUnassociatedSleepDur:(BOOL)dur;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerPowerStatsUpdateEvent

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasUnassociatedSleepDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasAssociatedSleepDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRoamDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTotalDur:(BOOL)dur
{
  if (dur)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerPowerStatsUpdateEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerPowerStatsUpdateEvent description](&v3, sel_description), -[AWDWiFiMetricsManagerPowerStatsUpdateEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_type), @"type"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_unassociatedSleepDur), @"unassociated_sleep_dur"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_roamDur), @"roam_dur"}];
    if ((*&self->_has & 8) == 0)
    {
      return dictionary;
    }

    goto LABEL_7;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_associatedSleepDur), @"associated_sleep_dur"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 8) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_totalDur), @"total_dur"}];
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
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  unassociatedSleepDur = self->_unassociatedSleepDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    roamDur = self->_roamDur;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 8) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  associatedSleepDur = self->_associatedSleepDur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 8) == 0)
  {
    return;
  }

LABEL_13:
  totalDur = self->_totalDur;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_type;
  *(to + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(to + 8) = self->_unassociatedSleepDur;
  *(to + 36) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 4) = self->_associatedSleepDur;
  *(to + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 6) = self->_totalDur;
    *(to + 36) |= 8u;
    return;
  }

LABEL_12:
  *(to + 5) = self->_roamDur;
  *(to + 36) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_type;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 8) = self->_unassociatedSleepDur;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 4) = self->_associatedSleepDur;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 5) = self->_roamDur;
  *(result + 36) |= 4u;
  if ((*&self->_has & 8) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 6) = self->_totalDur;
  *(result + 36) |= 8u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_31;
      }
    }

    else if (*(equal + 36))
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 36) & 0x10) == 0 || self->_type != *(equal + 7))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 36) & 0x10) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 36) & 0x20) == 0 || self->_unassociatedSleepDur != *(equal + 8))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 36) & 0x20) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_associatedSleepDur != *(equal + 4))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_roamDur != *(equal + 5))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = (*(equal + 36) & 8) == 0;
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_totalDur != *(equal + 6))
      {
        goto LABEL_31;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_type;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_unassociatedSleepDur;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_associatedSleepDur;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_roamDur;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_totalDur;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 36);
    if ((v3 & 0x10) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 36) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_unassociatedSleepDur = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 36);
  if ((v3 & 2) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_associatedSleepDur = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 36);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 8) == 0)
    {
      return;
    }

LABEL_13:
    self->_totalDur = *(from + 6);
    *&self->_has |= 8u;
    return;
  }

LABEL_12:
  self->_roamDur = *(from + 5);
  *&self->_has |= 4u;
  if ((*(from + 36) & 8) != 0)
  {
    goto LABEL_13;
  }
}

@end