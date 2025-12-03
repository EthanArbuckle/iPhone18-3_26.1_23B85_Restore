@interface AWDCoreRoutineLMPDailyAssessment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDailyEvents:(BOOL)events;
- (void)setHasEventsWithLMPLocation:(BOOL)location;
- (void)setHasEventsWithLocation:(BOOL)location;
- (void)setHasEventsWithMaybeLocation:(BOOL)location;
- (void)setHasVisitLMPLocation:(BOOL)location;
- (void)setHasVisitLocation:(BOOL)location;
- (void)setHasVisitMaybeLocation:(BOOL)location;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineLMPDailyAssessment

- (void)setHasDailyEvents:(BOOL)events
{
  if (events)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasEventsWithLocation:(BOOL)location
{
  if (location)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEventsWithMaybeLocation:(BOOL)location
{
  if (location)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEventsWithLMPLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasVisitLocation:(BOOL)location
{
  if (location)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasVisitMaybeLocation:(BOOL)location
{
  if (location)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasVisitLMPLocation:(BOOL)location
{
  if (location)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLMPDailyAssessment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLMPDailyAssessment description](&v3, sel_description), -[AWDCoreRoutineLMPDailyAssessment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_dailyEvents), @"dailyEvents"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_eventsWithLocation), @"eventsWithLocation"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_eventsWithMaybeLocation), @"eventsWithMaybeLocation"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_eventsWithLMPLocation), @"eventsWithLMPLocation"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_visitMaybeLocation), @"visitMaybeLocation"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_9;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_visitLocation), @"visitLocation"}];
  has = self->_has;
  if (has < 0)
  {
    goto LABEL_17;
  }

LABEL_8:
  if ((has & 0x20) != 0)
  {
LABEL_9:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_visitLMPLocation), @"visitLMPLocation"}];
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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  dailyEvents = self->_dailyEvents;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  eventsWithLocation = self->_eventsWithLocation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  eventsWithMaybeLocation = self->_eventsWithMaybeLocation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  eventsWithLMPLocation = self->_eventsWithLMPLocation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    visitMaybeLocation = self->_visitMaybeLocation;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_15:
  visitLocation = self->_visitLocation;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has < 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_17:
  visitLMPLocation = self->_visitLMPLocation;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_dailyEvents;
  *(to + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 6) = self->_eventsWithLocation;
  *(to + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 7) = self->_eventsWithMaybeLocation;
  *(to + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(to + 5) = self->_eventsWithLMPLocation;
  *(to + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 9) = self->_visitLocation;
  *(to + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_17:
    *(to + 8) = self->_visitLMPLocation;
    *(to + 44) |= 0x20u;
    return;
  }

LABEL_16:
  *(to + 10) = self->_visitMaybeLocation;
  *(to + 44) |= 0x80u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_17;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_dailyEvents;
  *(result + 44) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 6) = self->_eventsWithLocation;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_eventsWithMaybeLocation;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 5) = self->_eventsWithLMPLocation;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 9) = self->_visitLocation;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_9;
  }

LABEL_17:
  *(result + 10) = self->_visitMaybeLocation;
  *(result + 44) |= 0x80u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_9:
  *(result + 8) = self->_visitLMPLocation;
  *(result + 44) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_40;
      }
    }

    else if (*(equal + 44))
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_dailyEvents != *(equal + 4))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_eventsWithLocation != *(equal + 6))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_eventsWithMaybeLocation != *(equal + 7))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_eventsWithLMPLocation != *(equal + 5))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 44) & 0x40) == 0 || self->_visitLocation != *(equal + 9))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 0x40) != 0)
    {
      goto LABEL_40;
    }

    if ((*&self->_has & 0x80) != 0)
    {
      if ((*(equal + 44) & 0x80) == 0 || self->_visitMaybeLocation != *(equal + 10))
      {
        goto LABEL_40;
      }
    }

    else if ((*(equal + 44) & 0x80) != 0)
    {
LABEL_40:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = (*(equal + 44) & 0x20) == 0;
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 44) & 0x20) == 0 || self->_visitLMPLocation != *(equal + 8))
      {
        goto LABEL_40;
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
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_dailyEvents;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_eventsWithLocation;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_eventsWithMaybeLocation;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_eventsWithLMPLocation;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_7:
    v7 = 2654435761 * self->_visitLocation;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    v8 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    v9 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

LABEL_15:
  v7 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  v8 = 2654435761 * self->_visitMaybeLocation;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v9 = 2654435761 * self->_visitLMPLocation;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 44);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 44);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(from + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_dailyEvents = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 44);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_eventsWithLocation = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_eventsWithMaybeLocation = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 44);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_eventsWithLMPLocation = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_7:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_visitLocation = *(from + 9);
  *&self->_has |= 0x40u;
  v3 = *(from + 44);
  if ((v3 & 0x80) == 0)
  {
LABEL_8:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_17:
    self->_visitLMPLocation = *(from + 8);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_16:
  self->_visitMaybeLocation = *(from + 10);
  *&self->_has |= 0x80u;
  if ((*(from + 44) & 0x20) != 0)
  {
    goto LABEL_17;
  }
}

@end