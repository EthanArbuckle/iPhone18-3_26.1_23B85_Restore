@interface AWDCoreRoutineModelTransitionInstance
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineModelTransitionInstance

- (void)dealloc
{
  [(AWDCoreRoutineModelTransitionInstance *)self setTransitionHistogram:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelTransitionInstance;
  [(AWDCoreRoutineModelTransitionInstance *)&v3 dealloc];
}

- (void)setHasDuration:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineModelTransitionInstance;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineModelTransitionInstance description](&v3, sel_description), -[AWDCoreRoutineModelTransitionInstance dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_duration), @"duration"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_distance), @"distance"}];
  }

  transitionHistogram = self->_transitionHistogram;
  if (transitionHistogram)
  {
    [v3 setObject:-[AWDCoreRoutineTransitionMotionType dictionaryRepresentation](transitionHistogram forKey:{"dictionaryRepresentation"), @"transitionHistogram"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 3) = self->_duration;
    *(a3 + 24) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 2) = self->_distance;
    *(a3 + 24) |= 1u;
  }

  transitionHistogram = self->_transitionHistogram;
  if (transitionHistogram)
  {
    [a3 setTransitionHistogram:transitionHistogram];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[2] = [(AWDCoreRoutineTransitionMotionType *)self->_transitionHistogram copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 24);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 24) & 2) == 0 || self->_duration != *(a3 + 3))
      {
        goto LABEL_14;
      }
    }

    else if ((*(a3 + 24) & 2) != 0)
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_distance != *(a3 + 2))
      {
        goto LABEL_14;
      }
    }

    else if (*(a3 + 24))
    {
      goto LABEL_14;
    }

    transitionHistogram = self->_transitionHistogram;
    if (transitionHistogram | *(a3 + 2))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 24);
  if ((v3 & 2) != 0)
  {
    self->_duration = *(a3 + 3);
    *&self->_has |= 2u;
    v3 = *(a3 + 24);
  }

  if (v3)
  {
    self->_distance = *(a3 + 2);
    *&self->_has |= 1u;
  }

  v4 = *(a3 + 2);
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