@interface AWDCoreRoutineSettingsEnableDisable
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasEnabled:(BOOL)enabled;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineSettingsEnableDisable

- (void)dealloc
{
  [(AWDCoreRoutineSettingsEnableDisable *)self setSessionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineSettingsEnableDisable;
  [(AWDCoreRoutineSettingsEnableDisable *)&v3 dealloc];
}

- (void)setHasEnabled:(BOOL)enabled
{
  if (enabled)
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
  v3.super_class = AWDCoreRoutineSettingsEnableDisable;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineSettingsEnableDisable description](&v3, sel_description), -[AWDCoreRoutineSettingsEnableDisable dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  sessionId = self->_sessionId;
  if (sessionId)
  {
    [dictionary setObject:sessionId forKey:@"sessionId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_enabled), @"enabled"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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
    enabled = self->_enabled;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 32) |= 1u;
  }

  if (self->_sessionId)
  {
    [to setSessionId:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 4) = self->_enabled;
    *(to + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 32) |= 1u;
  }

  *(v6 + 24) = [(NSString *)self->_sessionId copyWithZone:zone];
  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_enabled;
    *(v6 + 32) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 32);
    if (has)
    {
      if ((*(equal + 32) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 32))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    sessionId = self->_sessionId;
    if (sessionId | *(equal + 3))
    {
      v5 = [(NSString *)sessionId isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_enabled != *(equal + 4))
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
    v5 = 2654435761 * self->_enabled;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 32))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  if (*(from + 3))
  {
    [(AWDCoreRoutineSettingsEnableDisable *)self setSessionId:?];
  }

  if ((*(from + 32) & 2) != 0)
  {
    self->_enabled = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end