@interface AWDNanoPhoneEmergencyCallEnded
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCallConnected:(BOOL)connected;
- (void)setHasCallFailed:(BOOL)failed;
- (void)setHasRemoteEnded:(BOOL)ended;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasUserEnded:(BOOL)ended;
- (void)writeTo:(id)to;
@end

@implementation AWDNanoPhoneEmergencyCallEnded

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

- (void)setHasCallConnected:(BOOL)connected
{
  if (connected)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasRemoteEnded:(BOOL)ended
{
  if (ended)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCallFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserEnded:(BOOL)ended
{
  if (ended)
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
  v3.super_class = AWDNanoPhoneEmergencyCallEnded;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNanoPhoneEmergencyCallEnded description](&v3, sel_description), -[AWDNanoPhoneEmergencyCallEnded dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_callDuration), @"callDuration"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_callConnected), @"callConnected"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_callFailed), @"callFailed"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_7;
  }

LABEL_12:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_remoteEnded), @"remoteEnded"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 0x20) != 0)
  {
LABEL_7:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_userEnded), @"userEnded"}];
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
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  callDuration = self->_callDuration;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  callConnected = self->_callConnected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    callFailed = self->_callFailed;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  remoteEnded = self->_remoteEnded;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  userEnded = self->_userEnded;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(to + 2) = self->_timestamp;
    *(to + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(to + 1) = self->_callDuration;
  *(to + 28) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(to + 24) = self->_callConnected;
  *(to + 28) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(to + 26) = self->_remoteEnded;
  *(to + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return;
    }

LABEL_13:
    *(to + 27) = self->_userEnded;
    *(to + 28) |= 0x20u;
    return;
  }

LABEL_12:
  *(to + 25) = self->_callFailed;
  *(to + 28) |= 8u;
  if ((*&self->_has & 0x20) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 2) = self->_timestamp;
    *(result + 28) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_callDuration;
  *(result + 28) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 24) = self->_callConnected;
  *(result + 28) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 26) = self->_remoteEnded;
  *(result + 28) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 25) = self->_callFailed;
  *(result + 28) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 27) = self->_userEnded;
  *(result + 28) |= 0x20u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_timestamp != *(equal + 2))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_42;
    }

    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_callDuration != *(equal + 1))
      {
        goto LABEL_42;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0)
      {
        goto LABEL_42;
      }

      v6 = *(equal + 24);
      if (self->_callConnected)
      {
        if ((*(equal + 24) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (*(equal + 24))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(equal + 28) & 0x10) == 0)
      {
        goto LABEL_42;
      }

      v7 = *(equal + 26);
      if (self->_remoteEnded)
      {
        if ((*(equal + 26) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (*(equal + 26))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 28) & 0x10) != 0)
    {
      goto LABEL_42;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 28) & 8) == 0)
      {
        goto LABEL_42;
      }

      v8 = *(equal + 25);
      if (self->_callFailed)
      {
        if ((*(equal + 25) & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else if (*(equal + 25))
      {
        goto LABEL_42;
      }
    }

    else if ((*(equal + 28) & 8) != 0)
    {
      goto LABEL_42;
    }

    LOBYTE(v5) = (*(equal + 28) & 0x20) == 0;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    if ((*(equal + 28) & 0x20) != 0)
    {
      if (self->_userEnded)
      {
        if (*(equal + 27))
        {
          goto LABEL_44;
        }
      }

      else if (!*(equal + 27))
      {
LABEL_44:
        LOBYTE(v5) = 1;
        return v5;
      }
    }

LABEL_42:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v2 = 2654435761u * self->_timestamp;
    if (*&self->_has)
    {
LABEL_3:
      v3 = 2654435761u * self->_callDuration;
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
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_callConnected;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_remoteEnded;
    if ((*&self->_has & 8) != 0)
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
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_callFailed;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_userEnded;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if ((v3 & 2) != 0)
  {
    self->_timestamp = *(from + 2);
    *&self->_has |= 2u;
    v3 = *(from + 28);
    if ((v3 & 1) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_callDuration = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 28);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_callConnected = *(from + 24);
  *&self->_has |= 4u;
  v3 = *(from + 28);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_remoteEnded = *(from + 26);
  *&self->_has |= 0x10u;
  v3 = *(from + 28);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      return;
    }

LABEL_13:
    self->_userEnded = *(from + 27);
    *&self->_has |= 0x20u;
    return;
  }

LABEL_12:
  self->_callFailed = *(from + 25);
  *&self->_has |= 8u;
  if ((*(from + 28) & 0x20) != 0)
  {
    goto LABEL_13;
  }
}

@end