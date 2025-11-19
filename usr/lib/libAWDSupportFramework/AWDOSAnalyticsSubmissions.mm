@interface AWDOSAnalyticsSubmissions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasResponse:(BOOL)a3;
- (void)setHasSeconds:(BOOL)a3;
- (void)setHasSizeBytes:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDOSAnalyticsSubmissions

- (void)dealloc
{
  [(AWDOSAnalyticsSubmissions *)self setConnection:0];
  [(AWDOSAnalyticsSubmissions *)self setRouting:0];
  v3.receiver = self;
  v3.super_class = AWDOSAnalyticsSubmissions;
  [(AWDOSAnalyticsSubmissions *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasResponse:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSizeBytes:(BOOL)a3
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

- (void)setHasSeconds:(BOOL)a3
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
  v3.super_class = AWDOSAnalyticsSubmissions;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDOSAnalyticsSubmissions description](&v3, sel_description), -[AWDOSAnalyticsSubmissions dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_response), @"response"}];
  }

  connection = self->_connection;
  if (connection)
  {
    [v3 setObject:connection forKey:@"connection"];
  }

  routing = self->_routing;
  if (routing)
  {
    [v3 setObject:routing forKey:@"routing"];
  }

  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_logs), @"logs"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_12;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sizeBytes), @"sizeBytes"}];
  v7 = self->_has;
  if (v7)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ((v7 & 2) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_seconds), @"seconds"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    response = self->_response;
    PBDataWriterWriteInt32Field();
  }

  if (self->_connection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_routing)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    logs = self->_logs;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  sizeBytes = self->_sizeBytes;
  PBDataWriterWriteUint64Field();
  v7 = self->_has;
  if (v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  if ((v7 & 2) == 0)
  {
    return;
  }

LABEL_15:
  seconds = self->_seconds;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(a3 + 4) = self->_timestamp;
    *(a3 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(a3 + 12) = self->_response;
    *(a3 + 64) |= 0x10u;
  }

  if (self->_connection)
  {
    [a3 setConnection:?];
  }

  if (self->_routing)
  {
    [a3 setRouting:?];
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(a3 + 3) = self->_sizeBytes;
    *(a3 + 64) |= 4u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_11:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

  *(a3 + 1) = self->_logs;
  *(a3 + 64) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return;
  }

LABEL_12:
  *(a3 + 2) = self->_seconds;
  *(a3 + 64) |= 2u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 64) |= 8u;
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    *(v5 + 48) = self->_response;
    *(v5 + 64) |= 0x10u;
  }

  *(v6 + 40) = [(NSString *)self->_connection copyWithZone:a3];
  *(v6 + 56) = [(NSString *)self->_routing copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v6 + 8) = self->_logs;
    *(v6 + 64) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

  *(v6 + 24) = self->_sizeBytes;
  *(v6 + 64) |= 4u;
  v8 = self->_has;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v8 & 2) != 0)
  {
LABEL_8:
    *(v6 + 16) = self->_seconds;
    *(v6 + 64) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 64);
    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 64) & 8) == 0 || self->_timestamp != *(a3 + 4))
      {
        goto LABEL_30;
      }
    }

    else if ((*(a3 + 64) & 8) != 0)
    {
LABEL_30:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 64) & 0x10) == 0 || self->_response != *(a3 + 12))
      {
        goto LABEL_30;
      }
    }

    else if ((*(a3 + 64) & 0x10) != 0)
    {
      goto LABEL_30;
    }

    connection = self->_connection;
    if (!(connection | *(a3 + 5)) || (v5 = [(NSString *)connection isEqual:?]) != 0)
    {
      routing = self->_routing;
      if (!(routing | *(a3 + 7)) || (v5 = [(NSString *)routing isEqual:?]) != 0)
      {
        if ((*&self->_has & 4) != 0)
        {
          if ((*(a3 + 64) & 4) == 0 || self->_sizeBytes != *(a3 + 3))
          {
            goto LABEL_30;
          }
        }

        else if ((*(a3 + 64) & 4) != 0)
        {
          goto LABEL_30;
        }

        if (*&self->_has)
        {
          if ((*(a3 + 64) & 1) == 0 || self->_logs != *(a3 + 1))
          {
            goto LABEL_30;
          }
        }

        else if (*(a3 + 64))
        {
          goto LABEL_30;
        }

        LOBYTE(v5) = (*(a3 + 64) & 2) == 0;
        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 64) & 2) == 0 || self->_seconds != *(a3 + 2))
          {
            goto LABEL_30;
          }

          LOBYTE(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_response;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_connection hash];
  v6 = [(NSString *)self->_routing hash];
  if ((*&self->_has & 4) == 0)
  {
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  }

  v7 = 2654435761u * self->_sizeBytes;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = 2654435761u * self->_logs;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = 2654435761u * self->_seconds;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 64);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(a3 + 4);
    *&self->_has |= 8u;
    v5 = *(a3 + 64);
  }

  if ((v5 & 0x10) != 0)
  {
    self->_response = *(a3 + 12);
    *&self->_has |= 0x10u;
  }

  if (*(a3 + 5))
  {
    [(AWDOSAnalyticsSubmissions *)self setConnection:?];
  }

  if (*(a3 + 7))
  {
    [(AWDOSAnalyticsSubmissions *)self setRouting:?];
  }

  v6 = *(a3 + 64);
  if ((v6 & 4) != 0)
  {
    self->_sizeBytes = *(a3 + 3);
    *&self->_has |= 4u;
    v6 = *(a3 + 64);
    if ((v6 & 1) == 0)
    {
LABEL_11:
      if ((v6 & 2) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a3 + 64) & 1) == 0)
  {
    goto LABEL_11;
  }

  self->_logs = *(a3 + 1);
  *&self->_has |= 1u;
  if ((*(a3 + 64) & 2) == 0)
  {
    return;
  }

LABEL_12:
  self->_seconds = *(a3 + 2);
  *&self->_has |= 2u;
}

@end