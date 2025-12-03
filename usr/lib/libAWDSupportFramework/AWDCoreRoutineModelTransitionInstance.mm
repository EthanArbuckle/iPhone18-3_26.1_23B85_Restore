@interface AWDCoreRoutineModelTransitionInstance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineModelTransitionInstance

- (void)dealloc
{
  [(AWDCoreRoutineModelTransitionInstance *)self setTransitionHistogram:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelTransitionInstance;
  [(AWDCoreRoutineModelTransitionInstance *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelTransitionInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelTransitionInstance description](&v3, sel_description), -[AWDCoreRoutineModelTransitionInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
    has = self->_has;
  }

  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_distance), @"distance"}];
  }

  transitionHistogram = self->_transitionHistogram;
  if (transitionHistogram)
  {
    [dictionary setObject:-[AWDCoreRoutineTransitionMotionType dictionaryRepresentation](transitionHistogram forKey:{"dictionaryRepresentation"), @"transitionHistogram"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    distance = self->_distance;
    PBDataWriterWriteUint32Field();
  }

  if (self->_transitionHistogram)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 3) = self->_duration;
    *(to + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(to + 2) = self->_distance;
    *(to + 24) |= 1u;
  }

  transitionHistogram = self->_transitionHistogram;
  if (transitionHistogram)
  {
    [to setTransitionHistogram:transitionHistogram];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 12) = self->_duration;
    *(v5 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_distance;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(AWDCoreRoutineTransitionMotionType *)self->_transitionHistogram copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 24);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 24) & 2) == 0 || self->_duration != *(equal + 3))
      {
        goto LABEL_14;
      }
    }

    else if ((*(equal + 24) & 2) != 0)
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_distance != *(equal + 2))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 24))
    {
      goto LABEL_14;
    }

    transitionHistogram = self->_transitionHistogram;
    if (transitionHistogram | *(equal + 2))
    {

      LOBYTE(v5) = [(AWDCoreRoutineTransitionMotionType *)transitionHistogram isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_duration;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(AWDCoreRoutineTransitionMotionType *)self->_transitionHistogram hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_distance;
  return v7 ^ v6 ^ [(AWDCoreRoutineTransitionMotionType *)self->_transitionHistogram hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 24);
  if ((v3 & 2) != 0)
  {
    self->_duration = *(from + 3);
    *&self->_has |= 2u;
    v3 = *(from + 24);
  }

  if (v3)
  {
    self->_distance = *(from + 2);
    *&self->_has |= 1u;
  }

  v4 = *(from + 2);
  if (self->_transitionHistogram)
  {
    if (v4)
    {
      [(AWDCoreRoutineTransitionMotionType *)self->_transitionHistogram mergeFrom:?];
    }
  }

  else if (v4)
  {
    [(AWDCoreRoutineModelTransitionInstance *)self setTransitionHistogram:?];
  }
}

@end