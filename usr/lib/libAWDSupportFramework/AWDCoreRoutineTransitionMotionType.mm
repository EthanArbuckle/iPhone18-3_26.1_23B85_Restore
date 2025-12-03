@interface AWDCoreRoutineTransitionMotionType
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCoreRoutineTransitionMotionTypeCycling:(BOOL)cycling;
- (void)setHasCoreRoutineTransitionMotionTypeRunning:(BOOL)running;
- (void)setHasCoreRoutineTransitionMotionTypeStationary:(BOOL)stationary;
- (void)setHasCoreRoutineTransitionMotionTypeUnknown:(BOOL)unknown;
- (void)setHasCoreRoutineTransitionMotionTypeWalking:(BOOL)walking;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineTransitionMotionType

- (void)setHasCoreRoutineTransitionMotionTypeStationary:(BOOL)stationary
{
  if (stationary)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasCoreRoutineTransitionMotionTypeWalking:(BOOL)walking
{
  if (walking)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasCoreRoutineTransitionMotionTypeRunning:(BOOL)running
{
  if (running)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCoreRoutineTransitionMotionTypeCycling:(BOOL)cycling
{
  if (cycling)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasCoreRoutineTransitionMotionTypeUnknown:(BOOL)unknown
{
  if (unknown)
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
  v3.super_class = AWDCoreRoutineTransitionMotionType;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineTransitionMotionType description](&v3, sel_description), -[AWDCoreRoutineTransitionMotionType dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeStationary), @"CoreRoutineTransitionMotionTypeStationary"}];
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeWalking), @"CoreRoutineTransitionMotionTypeWalking"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeRunning), @"CoreRoutineTransitionMotionTypeRunning"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeCycling), @"CoreRoutineTransitionMotionTypeCycling"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_7;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeAutomotive), @"CoreRoutineTransitionMotionTypeAutomotive"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x10) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_coreRoutineTransitionMotionTypeUnknown), @"CoreRoutineTransitionMotionTypeUnknown"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    coreRoutineTransitionMotionTypeStationary = self->_coreRoutineTransitionMotionTypeStationary;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  coreRoutineTransitionMotionTypeWalking = self->_coreRoutineTransitionMotionTypeWalking;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  coreRoutineTransitionMotionTypeRunning = self->_coreRoutineTransitionMotionTypeRunning;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    coreRoutineTransitionMotionTypeCycling = self->_coreRoutineTransitionMotionTypeCycling;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  coreRoutineTransitionMotionTypeAutomotive = self->_coreRoutineTransitionMotionTypeAutomotive;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_13:
  coreRoutineTransitionMotionTypeUnknown = self->_coreRoutineTransitionMotionTypeUnknown;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(to + 5) = self->_coreRoutineTransitionMotionTypeStationary;
    *(to + 32) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(to + 7) = self->_coreRoutineTransitionMotionTypeWalking;
  *(to + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(to + 4) = self->_coreRoutineTransitionMotionTypeRunning;
  *(to + 32) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 2) = self->_coreRoutineTransitionMotionTypeAutomotive;
  *(to + 32) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 6) = self->_coreRoutineTransitionMotionTypeUnknown;
    *(to + 32) |= 0x10u;
    return;
  }

LABEL_12:
  *(to + 3) = self->_coreRoutineTransitionMotionTypeCycling;
  *(to + 32) |= 2u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 5) = self->_coreRoutineTransitionMotionTypeStationary;
    *(result + 32) |= 8u;
    has = self->_has;
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 7) = self->_coreRoutineTransitionMotionTypeWalking;
  *(result + 32) |= 0x20u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 4) = self->_coreRoutineTransitionMotionTypeRunning;
  *(result + 32) |= 4u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 2) = self->_coreRoutineTransitionMotionTypeAutomotive;
  *(result + 32) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 3) = self->_coreRoutineTransitionMotionTypeCycling;
  *(result + 32) |= 2u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 6) = self->_coreRoutineTransitionMotionTypeUnknown;
  *(result + 32) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 32) & 8) == 0 || self->_coreRoutineTransitionMotionTypeStationary != *(equal + 5))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 32) & 8) != 0)
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 32) & 0x20) == 0 || self->_coreRoutineTransitionMotionTypeWalking != *(equal + 7))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 32) & 0x20) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_coreRoutineTransitionMotionTypeRunning != *(equal + 4))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
      goto LABEL_31;
    }

    if (*&self->_has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_coreRoutineTransitionMotionTypeAutomotive != *(equal + 2))
      {
        goto LABEL_31;
      }
    }

    else if (*(equal + 32))
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_coreRoutineTransitionMotionTypeCycling != *(equal + 3))
      {
        goto LABEL_31;
      }
    }

    else if ((*(equal + 32) & 2) != 0)
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = (*(equal + 32) & 0x10) == 0;
    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 32) & 0x10) == 0 || self->_coreRoutineTransitionMotionTypeUnknown != *(equal + 6))
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
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_coreRoutineTransitionMotionTypeStationary;
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_coreRoutineTransitionMotionTypeWalking;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_coreRoutineTransitionMotionTypeRunning;
    if (*&self->_has)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if (*&self->_has)
  {
LABEL_5:
    v5 = 2654435761 * self->_coreRoutineTransitionMotionTypeAutomotive;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_coreRoutineTransitionMotionTypeCycling;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_coreRoutineTransitionMotionTypeUnknown;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 32);
  if ((v3 & 8) != 0)
  {
    self->_coreRoutineTransitionMotionTypeStationary = *(from + 5);
    *&self->_has |= 8u;
    v3 = *(from + 32);
    if ((v3 & 0x20) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 32) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_coreRoutineTransitionMotionTypeWalking = *(from + 7);
  *&self->_has |= 0x20u;
  v3 = *(from + 32);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_coreRoutineTransitionMotionTypeRunning = *(from + 4);
  *&self->_has |= 4u;
  v3 = *(from + 32);
  if ((v3 & 1) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_coreRoutineTransitionMotionTypeAutomotive = *(from + 2);
  *&self->_has |= 1u;
  v3 = *(from + 32);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_13:
    self->_coreRoutineTransitionMotionTypeUnknown = *(from + 6);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_12:
  self->_coreRoutineTransitionMotionTypeCycling = *(from + 3);
  *&self->_has |= 2u;
  if ((*(from + 32) & 0x10) != 0)
  {
    goto LABEL_13;
  }
}

@end