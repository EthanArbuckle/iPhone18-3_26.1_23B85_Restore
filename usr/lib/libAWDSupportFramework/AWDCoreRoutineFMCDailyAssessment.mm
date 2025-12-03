@interface AWDCoreRoutineFMCDailyAssessment
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAssistances:(BOOL)assistances;
- (void)setHasAssistedParkingEvents:(BOOL)events;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasEngagedParkingEvents:(BOOL)events;
- (void)setHasEngagements:(BOOL)engagements;
- (void)setHasLocationType:(BOOL)type;
- (void)setHasParkingEvents:(BOOL)events;
- (void)setHasSuppressedParkingEvents:(BOOL)events;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineFMCDailyAssessment

- (void)setHasDuration:(BOOL)duration
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

- (void)setHasParkingEvents:(BOOL)events
{
  if (events)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasEngagedParkingEvents:(BOOL)events
{
  if (events)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasAssistedParkingEvents:(BOOL)events
{
  if (events)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasEngagements:(BOOL)engagements
{
  if (engagements)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasAssistances:(BOOL)assistances
{
  if (assistances)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSuppressedParkingEvents:(BOOL)events
{
  if (events)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasLocationType:(BOOL)type
{
  if (type)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineFMCDailyAssessment;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineFMCDailyAssessment description](&v3, sel_description), -[AWDCoreRoutineFMCDailyAssessment dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_duration), @"duration"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_parkingEvents), @"parkingEvents"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_engagedParkingEvents), @"engagedParkingEvents"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_assistedParkingEvents), @"assistedParkingEvents"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_engagements), @"engagements"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_suppressedParkingEvents), @"suppressedParkingEvents"}];
    if ((*&self->_has & 0x40) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_assistances), @"assistances"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  if ((has & 0x40) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_locationType), @"locationType"}];
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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  parkingEvents = self->_parkingEvents;
  PBDataWriterWriteInt32Field();
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
  engagedParkingEvents = self->_engagedParkingEvents;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  assistedParkingEvents = self->_assistedParkingEvents;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  engagements = self->_engagements;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    suppressedParkingEvents = self->_suppressedParkingEvents;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x40) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_17:
  assistances = self->_assistances;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((has & 0x40) == 0)
  {
    return;
  }

LABEL_19:
  locationType = self->_locationType;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_duration;
  *(to + 24) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 10) = self->_parkingEvents;
  *(to + 24) |= 0x80u;
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
  *(to + 7) = self->_engagedParkingEvents;
  *(to + 24) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 5) = self->_assistedParkingEvents;
  *(to + 24) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 8) = self->_engagements;
  *(to + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 4) = self->_assistances;
  *(to + 24) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      return;
    }

LABEL_19:
    *(to + 9) = self->_locationType;
    *(to + 24) |= 0x40u;
    return;
  }

LABEL_18:
  *(to + 11) = self->_suppressedParkingEvents;
  *(to + 24) |= 0x100u;
  if ((*&self->_has & 0x40) != 0)
  {
    goto LABEL_19;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_duration;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 10) = self->_parkingEvents;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_engagedParkingEvents;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 5) = self->_assistedParkingEvents;
  *(result + 24) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_engagements;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 4) = self->_assistances;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 11) = self->_suppressedParkingEvents;
  *(result + 24) |= 0x100u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 9) = self->_locationType;
  *(result + 24) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 24);
    if (has)
    {
      if ((v7 & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_46;
      }
    }

    else if (v7)
    {
LABEL_46:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_duration != *(equal + 6))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_parkingEvents != *(equal + 10))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_engagedParkingEvents != *(equal + 7))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_assistedParkingEvents != *(equal + 5))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_engagements != *(equal + 8))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_46;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_assistances != *(equal + 4))
      {
        goto LABEL_46;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_46;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 24) & 0x100) == 0 || self->_suppressedParkingEvents != *(equal + 11))
      {
        goto LABEL_46;
      }
    }

    else if ((*(equal + 24) & 0x100) != 0)
    {
      goto LABEL_46;
    }

    LOBYTE(v5) = (v7 & 0x40) == 0;
    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_locationType != *(equal + 9))
      {
        goto LABEL_46;
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
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_duration;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_parkingEvents;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_engagedParkingEvents;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_assistedParkingEvents;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_engagements;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_assistances;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_suppressedParkingEvents;
  if ((has & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_locationType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 24);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 24);
  if ((v3 & 0x80) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_parkingEvents = *(from + 10);
  *&self->_has |= 0x80u;
  v3 = *(from + 24);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_engagedParkingEvents = *(from + 7);
  *&self->_has |= 0x10u;
  v3 = *(from + 24);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_assistedParkingEvents = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 24);
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_engagements = *(from + 8);
  *&self->_has |= 0x20u;
  v3 = *(from + 24);
  if ((v3 & 2) == 0)
  {
LABEL_8:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_assistances = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 24);
  if ((v3 & 0x100) == 0)
  {
LABEL_9:
    if ((v3 & 0x40) == 0)
    {
      return;
    }

LABEL_19:
    self->_locationType = *(from + 9);
    *&self->_has |= 0x40u;
    return;
  }

LABEL_18:
  self->_suppressedParkingEvents = *(from + 11);
  *&self->_has |= 0x100u;
  if ((*(from + 24) & 0x40) != 0)
  {
    goto LABEL_19;
  }
}

@end