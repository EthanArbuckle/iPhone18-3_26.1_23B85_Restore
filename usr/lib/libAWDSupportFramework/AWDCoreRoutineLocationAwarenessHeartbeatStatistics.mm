@interface AWDCoreRoutineLocationAwarenessHeartbeatStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineLocationAwarenessHeartbeatStatistics

- (void)dealloc
{
  [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatTimerFiringCount:0];
  [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatActiveRequestCount:0];
  [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatValidLocationCount:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineLocationAwarenessHeartbeatStatistics;
  [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineLocationAwarenessHeartbeatStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineLocationAwarenessHeartbeatStatistics description](&v3, sel_description), -[AWDCoreRoutineLocationAwarenessHeartbeatStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  }

  heartbeatTimerFiringCount = self->_heartbeatTimerFiringCount;
  if (heartbeatTimerFiringCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](heartbeatTimerFiringCount forKey:{"dictionaryRepresentation"), @"heartbeatTimerFiringCount"}];
  }

  heartbeatActiveRequestCount = self->_heartbeatActiveRequestCount;
  if (heartbeatActiveRequestCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](heartbeatActiveRequestCount forKey:{"dictionaryRepresentation"), @"heartbeatActiveRequestCount"}];
  }

  heartbeatValidLocationCount = self->_heartbeatValidLocationCount;
  if (heartbeatValidLocationCount)
  {
    [v3 setObject:-[AWDCoreRoutineLocationAwarenessBasicHistogram dictionaryRepresentation](heartbeatValidLocationCount forKey:{"dictionaryRepresentation"), @"heartbeatValidLocationCount"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if (has)
  {
    duration = self->_duration;
    PBDataWriterWriteUint64Field();
  }

  if (self->_heartbeatTimerFiringCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_heartbeatActiveRequestCount)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_heartbeatValidLocationCount)
  {

    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 2) = self->_timestamp;
    *(a3 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_duration;
    *(a3 + 48) |= 1u;
  }

  if (self->_heartbeatTimerFiringCount)
  {
    [a3 setHeartbeatTimerFiringCount:?];
  }

  if (self->_heartbeatActiveRequestCount)
  {
    [a3 setHeartbeatActiveRequestCount:?];
  }

  if (self->_heartbeatValidLocationCount)
  {

    [a3 setHeartbeatValidLocationCount:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_timestamp;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_duration;
    *(v5 + 48) |= 1u;
  }

  *(v6 + 32) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatTimerFiringCount copyWithZone:a3];
  *(v6 + 24) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatActiveRequestCount copyWithZone:a3];

  *(v6 + 40) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatValidLocationCount copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_timestamp != *(a3 + 2))
      {
        goto LABEL_18;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
LABEL_18:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_18;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_18;
    }

    heartbeatTimerFiringCount = self->_heartbeatTimerFiringCount;
    if (!(heartbeatTimerFiringCount | *(a3 + 4)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatTimerFiringCount isEqual:?]) != 0)
    {
      heartbeatActiveRequestCount = self->_heartbeatActiveRequestCount;
      if (!(heartbeatActiveRequestCount | *(a3 + 3)) || (v5 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatActiveRequestCount isEqual:?]) != 0)
      {
        heartbeatValidLocationCount = self->_heartbeatValidLocationCount;
        if (heartbeatValidLocationCount | *(a3 + 5))
        {

          LOBYTE(v5) = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatValidLocationCount isEqual:?];
        }

        else
        {
          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761u * self->_duration;
LABEL_6:
  v5 = v4 ^ v3 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatTimerFiringCount hash];
  v6 = [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatActiveRequestCount hash];
  return v5 ^ v6 ^ [(AWDCoreRoutineLocationAwarenessBasicHistogram *)self->_heartbeatValidLocationCount hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 48);
  if ((v5 & 2) != 0)
  {
    self->_timestamp = *(a3 + 2);
    *&self->_has |= 2u;
    v5 = *(a3 + 48);
  }

  if (v5)
  {
    self->_duration = *(a3 + 1);
    *&self->_has |= 1u;
  }

  heartbeatTimerFiringCount = self->_heartbeatTimerFiringCount;
  v7 = *(a3 + 4);
  if (heartbeatTimerFiringCount)
  {
    if (v7)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatTimerFiringCount mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatTimerFiringCount:?];
  }

  heartbeatActiveRequestCount = self->_heartbeatActiveRequestCount;
  v9 = *(a3 + 3);
  if (heartbeatActiveRequestCount)
  {
    if (v9)
    {
      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatActiveRequestCount mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatActiveRequestCount:?];
  }

  heartbeatValidLocationCount = self->_heartbeatValidLocationCount;
  v11 = *(a3 + 5);
  if (heartbeatValidLocationCount)
  {
    if (v11)
    {

      [(AWDCoreRoutineLocationAwarenessBasicHistogram *)heartbeatValidLocationCount mergeFrom:?];
    }
  }

  else if (v11)
  {

    [(AWDCoreRoutineLocationAwarenessHeartbeatStatistics *)self setHeartbeatValidLocationCount:?];
  }
}

@end