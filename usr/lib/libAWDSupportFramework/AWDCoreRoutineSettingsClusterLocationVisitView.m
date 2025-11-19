@interface AWDCoreRoutineSettingsClusterLocationVisitView
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDeletionCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCoreRoutineSettingsClusterLocationVisitView

- (void)dealloc
{
  [(AWDCoreRoutineSettingsClusterLocationVisitView *)self setSessionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineSettingsClusterLocationVisitView;
  [(AWDCoreRoutineSettingsClusterLocationVisitView *)&v3 dealloc];
}

- (void)setHasDeletionCount:(BOOL)a3
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
  v3.super_class = AWDCoreRoutineSettingsClusterLocationVisitView;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineSettingsClusterLocationVisitView description](&v3, sel_description), -[AWDCoreRoutineSettingsClusterLocationVisitView dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  if ((*&self->_has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deletionCount), @"deletionCount"}];
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

  if ((*&self->_has & 2) != 0)
  {
    deletionCount = self->_deletionCount;

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

  if ((*&self->_has & 2) != 0)
  {
    *(a3 + 4) = self->_deletionCount;
    *(a3 + 32) |= 2u;
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
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_deletionCount;
    *(v6 + 32) |= 2u;
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
        goto LABEL_14;
      }
    }

    else if (*(a3 + 32))
    {
LABEL_14:
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

    LOBYTE(v5) = (*(a3 + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(a3 + 32) & 2) == 0 || self->_deletionCount != *(a3 + 4))
      {
        goto LABEL_14;
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
    v5 = 2654435761 * self->_deletionCount;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
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
    [(AWDCoreRoutineSettingsClusterLocationVisitView *)self setSessionId:?];
  }

  if ((*(a3 + 32) & 2) != 0)
  {
    self->_deletionCount = *(a3 + 4);
    *&self->_has |= 2u;
  }
}

@end