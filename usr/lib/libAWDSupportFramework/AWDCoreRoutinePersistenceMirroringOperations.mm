@interface AWDCoreRoutinePersistenceMirroringOperations
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeviceClass:(BOOL)class;
- (void)setHasErrorCount:(BOOL)count;
- (void)setHasOperationType:(BOOL)type;
- (void)setHasQualityOfService:(BOOL)service;
- (void)setHasRecordsChanged:(BOOL)changed;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutinePersistenceMirroringOperations

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDeviceClass:(BOOL)class
{
  if (class)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasRecordsChanged:(BOOL)changed
{
  if (changed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasErrorCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasQualityOfService:(BOOL)service
{
  if (service)
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
  v3.super_class = AWDCoreRoutinePersistenceMirroringOperations;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutinePersistenceMirroringOperations description](&v3, sel_description), -[AWDCoreRoutinePersistenceMirroringOperations dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_deviceClass), @"deviceClass"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_operationType), @"operationType"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_recordsChanged), @"recordsChanged"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timeIntervalSinceLastOperation), @"timeIntervalSinceLastOperation"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_8;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCount), @"errorCount"}];
  has = self->_has;
  if (has)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_qualityOfService), @"qualityOfService"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  deviceClass = self->_deviceClass;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operationType = self->_operationType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  recordsChanged = self->_recordsChanged;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    timeIntervalSinceLastOperation = self->_timeIntervalSinceLastOperation;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

LABEL_13:
  errorCount = self->_errorCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_7:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_15:
  qualityOfService = self->_qualityOfService;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 44) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(to + 6) = self->_deviceClass;
  *(to + 44) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 8) = self->_operationType;
  *(to + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(to + 10) = self->_recordsChanged;
  *(to + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(to + 7) = self->_errorCount;
  *(to + 44) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    *(to + 9) = self->_qualityOfService;
    *(to + 44) |= 0x20u;
    return;
  }

LABEL_14:
  *(to + 1) = self->_timeIntervalSinceLastOperation;
  *(to + 44) |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_15;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 44) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_deviceClass;
  *(result + 44) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 8) = self->_operationType;
  *(result + 44) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 10) = self->_recordsChanged;
  *(result + 44) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_errorCount;
  *(result + 44) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 1) = self->_timeIntervalSinceLastOperation;
  *(result + 44) |= 1u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 9) = self->_qualityOfService;
  *(result + 44) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
LABEL_36:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_deviceClass != *(equal + 6))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 44) & 0x10) == 0 || self->_operationType != *(equal + 8))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 44) & 0x10) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 0x40) != 0)
    {
      if ((*(equal + 44) & 0x40) == 0 || self->_recordsChanged != *(equal + 10))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 44) & 0x40) != 0)
    {
      goto LABEL_36;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 44) & 8) == 0 || self->_errorCount != *(equal + 7))
      {
        goto LABEL_36;
      }
    }

    else if ((*(equal + 44) & 8) != 0)
    {
      goto LABEL_36;
    }

    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timeIntervalSinceLastOperation != *(equal + 1))
      {
        goto LABEL_36;
      }
    }

    else if (*(equal + 44))
    {
      goto LABEL_36;
    }

    LOBYTE(v5) = (*(equal + 44) & 0x20) == 0;
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 44) & 0x20) == 0 || self->_qualityOfService != *(equal + 9))
      {
        goto LABEL_36;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_deviceClass;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_operationType;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_recordsChanged;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_errorCount;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_timeIntervalSinceLastOperation;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_qualityOfService;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 44);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 44);
    if ((v3 & 4) == 0)
    {
LABEL_3:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(from + 44) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_deviceClass = *(from + 6);
  *&self->_has |= 4u;
  v3 = *(from + 44);
  if ((v3 & 0x10) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_operationType = *(from + 8);
  *&self->_has |= 0x10u;
  v3 = *(from + 44);
  if ((v3 & 0x40) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_recordsChanged = *(from + 10);
  *&self->_has |= 0x40u;
  v3 = *(from + 44);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  self->_errorCount = *(from + 7);
  *&self->_has |= 8u;
  v3 = *(from + 44);
  if ((v3 & 1) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_15:
    self->_qualityOfService = *(from + 9);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_14:
  self->_timeIntervalSinceLastOperation = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 44) & 0x20) != 0)
  {
    goto LABEL_15;
  }
}

@end