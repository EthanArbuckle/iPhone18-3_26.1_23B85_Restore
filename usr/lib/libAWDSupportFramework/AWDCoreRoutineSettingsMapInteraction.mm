@interface AWDCoreRoutineSettingsMapInteraction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDeviceClass:(BOOL)class;
- (void)setHasGestureType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineSettingsMapInteraction

- (void)dealloc
{
  [(AWDCoreRoutineSettingsMapInteraction *)self setSessionId:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineSettingsMapInteraction;
  [(AWDCoreRoutineSettingsMapInteraction *)&v3 dealloc];
}

- (void)setHasGestureType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasDeviceClass:(BOOL)class
{
  if (class)
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
  v3.super_class = AWDCoreRoutineSettingsMapInteraction;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineSettingsMapInteraction description](&v3, sel_description), -[AWDCoreRoutineSettingsMapInteraction dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_gestureType), @"gestureType"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deviceClass), @"deviceClass"}];
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    gestureType = self->_gestureType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    deviceClass = self->_deviceClass;

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

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 5) = self->_gestureType;
    *(to + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 4) = self->_deviceClass;
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
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 20) = self->_gestureType;
    *(v6 + 32) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 16) = self->_deviceClass;
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
        goto LABEL_19;
      }
    }

    else if (*(equal + 32))
    {
LABEL_19:
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

    if ((has & 4) != 0)
    {
      if ((*(equal + 32) & 4) == 0 || self->_gestureType != *(equal + 5))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 32) & 4) != 0)
    {
      goto LABEL_19;
    }

    LOBYTE(v5) = (*(equal + 32) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 32) & 2) == 0 || self->_deviceClass != *(equal + 4))
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
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_gestureType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v6 = 2654435761 * self->_deviceClass;
  return v4 ^ v3 ^ v5 ^ v6;
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
    [(AWDCoreRoutineSettingsMapInteraction *)self setSessionId:?];
  }

  v5 = *(from + 32);
  if ((v5 & 4) != 0)
  {
    self->_gestureType = *(from + 5);
    *&self->_has |= 4u;
    v5 = *(from + 32);
  }

  if ((v5 & 2) != 0)
  {
    self->_deviceClass = *(from + 4);
    *&self->_has |= 2u;
  }
}

@end