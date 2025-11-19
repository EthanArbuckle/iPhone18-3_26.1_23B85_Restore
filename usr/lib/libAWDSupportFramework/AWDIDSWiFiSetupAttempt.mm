@interface AWDIDSWiFiSetupAttempt
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasResult:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDIDSWiFiSetupAttempt

- (void)dealloc
{
  [(AWDIDSWiFiSetupAttempt *)self setClient:0];
  v3.receiver = self;
  v3.super_class = AWDIDSWiFiSetupAttempt;
  [(AWDIDSWiFiSetupAttempt *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasType:(BOOL)a3
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

- (void)setHasResult:(BOOL)a3
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
  v3.super_class = AWDIDSWiFiSetupAttempt;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDIDSWiFiSetupAttempt description](&v3, sel_description), -[AWDIDSWiFiSetupAttempt dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type), @"type"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_duration), @"duration"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_result), @"result"}];
  }

LABEL_6:
  client = self->_client;
  if (client)
  {
    [v3 setObject:client forKey:@"client"];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 48) |= 4u;
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

  *(a3 + 4) = self->_type;
  *(a3 + 48) |= 8u;
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
  *(a3 + 1) = self->_duration;
  *(a3 + 48) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(a3 + 2) = self->_result;
    *(a3 + 48) |= 2u;
  }

LABEL_6:
  client = self->_client;
  if (client)
  {
    [a3 setClient:client];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6[5] = [(NSString *)self->_client copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 48);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 48) & 4) == 0 || self->_timestamp != *(a3 + 3))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 4) != 0)
    {
LABEL_24:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 48) & 8) == 0 || self->_type != *(a3 + 4))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 8) != 0)
    {
      goto LABEL_24;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 48) & 1) == 0 || self->_duration != *(a3 + 1))
      {
        goto LABEL_24;
      }
    }

    else if (*(a3 + 48))
    {
      goto LABEL_24;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 48) & 2) == 0 || self->_result != *(a3 + 2))
      {
        goto LABEL_24;
      }
    }

    else if ((*(a3 + 48) & 2) != 0)
    {
      goto LABEL_24;
    }

    client = self->_client;
    if (client | *(a3 + 5))
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 48);
  if ((v3 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v3 = *(a3 + 48);
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

  else if ((*(a3 + 48) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_type = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 48);
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
  self->_duration = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 48) & 2) != 0)
  {
LABEL_5:
    self->_result = *(a3 + 2);
    *&self->_has |= 2u;
  }

LABEL_6:
  if (*(a3 + 5))
  {
    [(AWDIDSWiFiSetupAttempt *)self setClient:?];
  }
}

@end