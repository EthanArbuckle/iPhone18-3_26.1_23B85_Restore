@interface AWDIDSWiFiSetupAttempt
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasResult:(BOOL)result;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDIDSWiFiSetupAttempt

- (void)dealloc
{
  [(AWDIDSWiFiSetupAttempt *)self setClient:0];
  v3.receiver = self;
  v3.super_class = AWDIDSWiFiSetupAttempt;
  [(AWDIDSWiFiSetupAttempt *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasResult:(BOOL)result
{
  if (result)
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
  v3.super_class = AWDIDSWiFiSetupAttempt;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSWiFiSetupAttempt description](&v3, sel_description), -[AWDIDSWiFiSetupAttempt dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type), @"type"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_result), @"result"}];
  }

LABEL_6:
  client = self->_client;
  if (client)
  {
    [dictionary setObject:client forKey:@"client"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  type = self->_type;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    result = self->_result;
    PBDataWriterWriteUint64Field();
  }

LABEL_6:
  if (self->_client)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 3) = self->_timestamp;
    *(to + 48) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(to + 4) = self->_type;
  *(to + 48) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  *(to + 1) = self->_duration;
  *(to + 48) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(to + 2) = self->_result;
    *(to + 48) |= 2u;
  }

LABEL_6:
  client = self->_client;
  if (client)
  {
    [to setClient:client];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 48) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_duration;
      *(v5 + 48) |= 1u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_type;
  *(v5 + 48) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_result;
    *(v5 + 48) |= 2u;
  }

LABEL_6:

  v6[5] = [(NSString *)self->_client copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 48);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 48) & 4) == 0 || self->_timestamp != *(equal + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 48) & 4) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 48) & 8) == 0 || self->_type != *(equal + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 48) & 8) != 0)
    {
      goto LABEL_24;
    }

    if (*&self->_has)
    {
      if ((*(equal + 48) & 1) == 0 || self->_duration != *(equal + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(equal + 48))
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 48) & 2) == 0 || self->_result != *(equal + 2))
      {
        goto LABEL_24;
      }
    }

    else if ((*(equal + 48) & 2) != 0)
    {
      goto LABEL_24;
    }

    client = self->_client;
    if (client | *(equal + 5))
    {

      LOBYTE(v5) = [(NSString *)client isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v7 = 2654435761u * self->_type;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v9 = 0;
      return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_client hash:v3];
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761u * self->_duration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v9 = 2654435761u * self->_result;
  return v7 ^ v6 ^ v8 ^ v9 ^ [(NSString *)self->_client hash:v3];
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 48);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(from + 3);
    *&self->_has |= 4u;
    v3 = *(from + 48);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(from + 48) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 48);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  self->_duration = *(from + 1);
  *&self->_has |= 1u;
  if ((*(from + 48) & 2) != 0)
  {
LABEL_5:
    self->_result = *(from + 2);
    *&self->_has |= 2u;
  }

LABEL_6:
  if (*(from + 5))
  {
    [(AWDIDSWiFiSetupAttempt *)self setClient:?];
  }
}

@end