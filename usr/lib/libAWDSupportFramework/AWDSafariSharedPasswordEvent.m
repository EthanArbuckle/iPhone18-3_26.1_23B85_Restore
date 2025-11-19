@interface AWDSafariSharedPasswordEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInitiatedSharePasswordOutcome:(id)a3;
- (int)StringAsReceivedSharedPasswordOutcome:(id)a3;
- (int)initiatedSharePasswordOutcome;
- (int)passwordSharingMechanism;
- (int)receivedSharedPasswordOutcome;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasInitiatedSharePasswordOutcome:(BOOL)a3;
- (void)setHasPasswordSharingMechanism:(BOOL)a3;
- (void)setHasReceivedSharedPasswordOutcome:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSafariSharedPasswordEvent

- (int)initiatedSharePasswordOutcome
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_initiatedSharePasswordOutcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasInitiatedSharePasswordOutcome:(BOOL)a3
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

- (int)StringAsInitiatedSharePasswordOutcome:(id)a3
{
  if ([a3 isEqualToString:@"COMPLETED"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"CANCELLED"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"FAILED_WITH_ERROR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"ABORTED_DUE_TO_LOCKOUT"])
  {
    return 3;
  }

  return 0;
}

- (int)receivedSharedPasswordOutcome
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_receivedSharedPasswordOutcome;
  }

  else
  {
    return 0;
  }
}

- (void)setHasReceivedSharedPasswordOutcome:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsReceivedSharedPasswordOutcome:(id)a3
{
  if ([a3 isEqualToString:@"NO_CONFLICT"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"UPDATE_EXISTING_PASSWORD_AFTER_CONFLICT"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"DO_NOT_UPDATE_EXISTING_PASSWORD_AFTER_CONFLICT"])
  {
    return 2;
  }

  return 0;
}

- (int)passwordSharingMechanism
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_passwordSharingMechanism;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPasswordSharingMechanism:(BOOL)a3
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
  v3.super_class = AWDSafariSharedPasswordEvent;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSafariSharedPasswordEvent description](&v3, sel_description), -[AWDSafariSharedPasswordEvent dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
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

  initiatedSharePasswordOutcome = self->_initiatedSharePasswordOutcome;
  if (initiatedSharePasswordOutcome >= 4)
  {
    v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_initiatedSharePasswordOutcome];
  }

  else
  {
    v6 = off_29EE32E78[initiatedSharePasswordOutcome];
  }

  [v3 setObject:v6 forKey:@"initiatedSharePasswordOutcome"];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return v3;
    }

    goto LABEL_15;
  }

LABEL_11:
  receivedSharedPasswordOutcome = self->_receivedSharedPasswordOutcome;
  if (receivedSharedPasswordOutcome >= 3)
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_receivedSharedPasswordOutcome];
  }

  else
  {
    v8 = off_29EE32E98[receivedSharedPasswordOutcome];
  }

  [v3 setObject:v8 forKey:@"receivedSharedPasswordOutcome"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    if (self->_passwordSharingMechanism)
    {
      v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_passwordSharingMechanism];
    }

    else
    {
      v9 = @"AIRDROP";
    }

    [v3 setObject:v9 forKey:@"passwordSharingMechanism"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      receivedSharedPasswordOutcome = self->_receivedSharedPasswordOutcome;
      PBDataWriterWriteInt32Field();
      if ((*&self->_has & 4) == 0)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  initiatedSharePasswordOutcome = self->_initiatedSharePasswordOutcome;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((has & 4) == 0)
  {
    return;
  }

LABEL_9:
  passwordSharingMechanism = self->_passwordSharingMechanism;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_initiatedSharePasswordOutcome;
  *(a3 + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return;
    }

LABEL_9:
    *(a3 + 5) = self->_passwordSharingMechanism;
    *(a3 + 28) |= 4u;
    return;
  }

LABEL_8:
  *(a3 + 6) = self->_receivedSharedPasswordOutcome;
  *(a3 + 28) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
    goto LABEL_9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 28) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_initiatedSharePasswordOutcome;
  *(result + 28) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 6) = self->_receivedSharedPasswordOutcome;
  *(result + 28) |= 8u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 5) = self->_passwordSharingMechanism;
  *(result + 28) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_21;
      }
    }

    else if (*(a3 + 28))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_initiatedSharePasswordOutcome != *(a3 + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 28) & 2) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 28) & 8) == 0 || self->_receivedSharedPasswordOutcome != *(a3 + 6))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 28) & 8) != 0)
    {
      goto LABEL_21;
    }

    LOBYTE(v5) = (*(a3 + 28) & 4) == 0;
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 28) & 4) == 0 || self->_passwordSharingMechanism != *(a3 + 5))
      {
        goto LABEL_21;
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
      v3 = 2654435761 * self->_initiatedSharePasswordOutcome;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
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
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_receivedSharedPasswordOutcome;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_passwordSharingMechanism;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(a3 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_initiatedSharePasswordOutcome = *(a3 + 4);
  *&self->_has |= 2u;
  v3 = *(a3 + 28);
  if ((v3 & 8) == 0)
  {
LABEL_4:
    if ((v3 & 4) == 0)
    {
      return;
    }

LABEL_9:
    self->_passwordSharingMechanism = *(a3 + 5);
    *&self->_has |= 4u;
    return;
  }

LABEL_8:
  self->_receivedSharedPasswordOutcome = *(a3 + 6);
  *&self->_has |= 8u;
  if ((*(a3 + 28) & 4) != 0)
  {
    goto LABEL_9;
  }
}

@end