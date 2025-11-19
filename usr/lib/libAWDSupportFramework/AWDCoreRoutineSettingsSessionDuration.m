@interface AWDCoreRoutineSettingsSessionDuration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasEndedByScreenLock:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineSettingsSessionDuration

- (void)dealloc
{
  [(AWDCoreRoutineSettingsSessionDuration *)self setSessionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineSettingsSessionDuration;
  [(AWDCoreRoutineSettingsSessionDuration *)&v3 dealloc];
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

- (void)setHasEndedByScreenLock:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineSettingsSessionDuration;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineSettingsSessionDuration description](&v3, sel_description), -[AWDCoreRoutineSettingsSessionDuration dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [v3 setObject:sessionId forKey:@"sessionId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_duration), @"duration"}];
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_endedByScreenLock), @"endedByScreenLock"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_sessionId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    duration = self->_duration;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    endedByScreenLock = self->_endedByScreenLock;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 32) |= 1u;
  }

  if (self->_sessionId)
  {
    [a3 setSessionId:?];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 4) = self->_duration;
    *(a3 + 32) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(a3 + 5) = self->_endedByScreenLock;
    *(a3 + 32) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_sessionId copyWithZone:a3];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_duration;
    *(v6 + 32) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_endedByScreenLock;
    *(v6 + 32) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 32);
    if (has)
    {
      if ((*(a3 + 32) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    sessionId = self->_sessionId;
    if (sessionId | *(a3 + 3))
    {
      v5 = [(NSString *)sessionId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_duration != *(a3 + 4))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 32) & 2) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(a3 + 32) & 4) == 0;
    if ((has & 4) != 0)
    {
      if ((*(a3 + 32) & 4) == 0 || self->_endedByScreenLock != *(a3 + 5))
      {
        goto LABEL_19;
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
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_sessionId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_duration;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_endedByScreenLock;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 32))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 3))
  {
    [(AWDCoreRoutineSettingsSessionDuration *)self setSessionId:?];
  }

  v5 = *(a3 + 32);
  if ((v5 & 2) != 0)
  {
    self->_duration = *(a3 + 4);
    *&self->_has |= 2u;
    v5 = *(a3 + 32);
  }

  if ((v5 & 4) != 0)
  {
    self->_endedByScreenLock = *(a3 + 5);
    *&self->_has |= 4u;
  }
}

@end