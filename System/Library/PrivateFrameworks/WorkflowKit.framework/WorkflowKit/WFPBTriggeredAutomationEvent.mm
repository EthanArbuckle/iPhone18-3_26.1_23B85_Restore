@interface WFPBTriggeredAutomationEvent
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBatchDroppedCount:(BOOL)count;
- (void)setHasRequiredRuntimeConfirmation:(BOOL)confirmation;
- (void)setHasShowsNotification:(BOOL)notification;
- (void)writeTo:(id)to;
@end

@implementation WFPBTriggeredAutomationEvent

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(WFPBTriggeredAutomationEvent *)self setKey:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(WFPBTriggeredAutomationEvent *)self setTriggerType:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if ((v5 & 4) != 0)
  {
    self->_requiredRuntimeConfirmation = *(fromCopy + 32);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 36);
    if ((v5 & 1) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*(fromCopy + 36) & 1) == 0)
  {
    goto LABEL_7;
  }

  self->_batchCount = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 36);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  self->_batchDroppedCount = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 36) & 8) != 0)
  {
LABEL_9:
    self->_showsNotification = *(fromCopy + 33);
    *&self->_has |= 8u;
  }

LABEL_10:
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_key hash];
  v4 = [(NSString *)self->_triggerType hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_requiredRuntimeConfirmation;
    if (*&self->_has)
    {
LABEL_3:
      v6 = 2654435761 * self->_batchCount;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
    }
  }

  else
  {
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = 2654435761 * self->_batchDroppedCount;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v8 = 2654435761 * self->_showsNotification;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  key = self->_key;
  if (key | *(equalCopy + 2))
  {
    if (![(NSString *)key isEqual:?])
    {
      goto LABEL_26;
    }
  }

  triggerType = self->_triggerType;
  if (triggerType | *(equalCopy + 3))
  {
    if (![(NSString *)triggerType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_26;
    }

    v7 = *(equalCopy + 32);
    if (self->_requiredRuntimeConfirmation)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_26;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_batchCount != *(equalCopy + 2))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_batchDroppedCount != *(equalCopy + 3))
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_26;
  }

  v8 = (*(equalCopy + 36) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 36) & 8) != 0)
    {
      if (self->_showsNotification)
      {
        if ((*(equalCopy + 33) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else if (*(equalCopy + 33))
      {
        goto LABEL_26;
      }

      v8 = 1;
      goto LABEL_27;
    }

LABEL_26:
    v8 = 0;
  }

LABEL_27:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_triggerType copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_requiredRuntimeConfirmation;
    *(v5 + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 12) = self->_batchDroppedCount;
      *(v5 + 36) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 8) = self->_batchCount;
  *(v5 + 36) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 33) = self->_showsNotification;
    *(v5 + 36) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
    toCopy = v6;
  }

  if (self->_triggerType)
  {
    [v6 setTriggerType:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 32) = self->_requiredRuntimeConfirmation;
    *(toCopy + 36) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = self->_batchCount;
  *(toCopy + 36) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(toCopy + 3) = self->_batchDroppedCount;
  *(toCopy + 36) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(toCopy + 33) = self->_showsNotification;
    *(toCopy + 36) |= 8u;
  }

LABEL_10:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_key)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  if (self->_triggerType)
  {
    PBDataWriterWriteStringField();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    requiredRuntimeConfirmation = self->_requiredRuntimeConfirmation;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  batchCount = self->_batchCount;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  batchDroppedCount = self->_batchDroppedCount;
  PBDataWriterWriteUint32Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    showsNotification = self->_showsNotification;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_10:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  triggerType = self->_triggerType;
  if (triggerType)
  {
    [v4 setObject:triggerType forKey:@"triggerType"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_requiredRuntimeConfirmation];
    [v4 setObject:v10 forKey:@"requiredRuntimeConfirmation"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_batchCount];
  [v4 setObject:v11 forKey:@"batchCount"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_batchDroppedCount];
  [v4 setObject:v12 forKey:@"batchDroppedCount"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_showsNotification];
    [v4 setObject:v8 forKey:@"showsNotification"];
  }

LABEL_10:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFPBTriggeredAutomationEvent;
  v4 = [(WFPBTriggeredAutomationEvent *)&v8 description];
  dictionaryRepresentation = [(WFPBTriggeredAutomationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasShowsNotification:(BOOL)notification
{
  if (notification)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasBatchDroppedCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRequiredRuntimeConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"TriggeredAutomation";
  }
}

@end