@interface AWDSlowWiFiNotification
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActionField:(BOOL)field;
- (void)setHasFacetimeCallInProgress:(BOOL)progress;
- (void)setHasRecoveryAction:(BOOL)action;
- (void)setHasRecoveryReason:(BOOL)reason;
- (void)setHasUserInput:(BOOL)input;
- (void)writeTo:(id)to;
@end

@implementation AWDSlowWiFiNotification

- (void)setHasActionField:(BOOL)field
{
  if (field)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRecoveryAction:(BOOL)action
{
  if (action)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRecoveryReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserInput:(BOOL)input
{
  if (input)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasFacetimeCallInProgress:(BOOL)progress
{
  if (progress)
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
  v3.super_class = AWDSlowWiFiNotification;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSlowWiFiNotification description](&v3, sel_description), -[AWDSlowWiFiNotification dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_actionField), @"actionField"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_recoveryAction), @"recoveryAction"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userInput), @"userInput"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_7;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_recoveryReason), @"recoveryReason"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_facetimeCallInProgress), @"facetimeCallInProgress"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  actionField = self->_actionField;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  recoveryAction = self->_recoveryAction;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    userInput = self->_userInput;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  recoveryReason = self->_recoveryReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  facetimeCallInProgress = self->_facetimeCallInProgress;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if (has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_actionField;
  *(to + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(to + 5) = self->_recoveryAction;
  *(to + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 6) = self->_recoveryReason;
  *(to + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 32) = self->_facetimeCallInProgress;
    *(to + 36) |= 0x20u;
    return;
  }

LABEL_12:
  *(to + 7) = self->_userInput;
  *(to + 36) |= 0x10u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_actionField;
  *(result + 36) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 5) = self->_recoveryAction;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_recoveryReason;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 7) = self->_userInput;
  *(result + 36) |= 0x10u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 32) = self->_facetimeCallInProgress;
  *(result + 36) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 36) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_29;
      }
    }

    else if (*(equal + 36))
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 36) & 2) == 0 || self->_actionField != *(equal + 4))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 36) & 2) != 0)
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 36) & 4) == 0 || self->_recoveryAction != *(equal + 5))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 36) & 4) != 0)
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 36) & 8) == 0 || self->_recoveryReason != *(equal + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 36) & 8) != 0)
    {
      goto LABEL_29;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 36) & 0x10) == 0 || self->_userInput != *(equal + 7))
      {
        goto LABEL_29;
      }
    }

    else if ((*(equal + 36) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(equal + 36) & 0x20) == 0;
    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(equal + 36) & 0x20) == 0)
      {
LABEL_29:
        LOBYTE(v5) = 0;
        return v5;
      }

      if (self->_facetimeCallInProgress)
      {
        if ((*(equal + 32) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (*(equal + 32))
      {
        goto LABEL_29;
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
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_actionField;
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
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_recoveryAction;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_recoveryReason;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_userInput;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_facetimeCallInProgress;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 36);
  if (v3)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v3 = *(from + 36);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 36) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_actionField = *(from + 4);
  *&self->_has |= 2u;
  v3 = *(from + 36);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_recoveryAction = *(from + 5);
  *&self->_has |= 4u;
  v3 = *(from + 36);
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_recoveryReason = *(from + 6);
  *&self->_has |= 8u;
  v3 = *(from + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_13:
    self->_facetimeCallInProgress = *(from + 32);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_12:
  self->_userInput = *(from + 7);
  *&self->_has |= 0x10u;
  if ((*(from + 36) & 0x20) != 0)
  {
    goto LABEL_13;
  }
}

@end