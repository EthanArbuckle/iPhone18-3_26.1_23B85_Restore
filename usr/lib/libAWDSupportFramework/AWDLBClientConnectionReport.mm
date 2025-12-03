@interface AWDLBClientConnectionReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBytesSent:(BOOL)sent;
- (void)setHasConnectionDuration:(BOOL)duration;
- (void)setHasConnectionJoiningFailure:(BOOL)failure;
- (void)setHasConnectionJoiningLbConnectionMigration:(BOOL)migration;
- (void)setHasConnectionJoiningLbConnectionState:(BOOL)state;
- (void)setHasConnectionServiceId:(BOOL)id;
- (void)setHasDataPathResult:(BOOL)result;
- (void)setHasTimeToConnectionFailure:(BOOL)failure;
- (void)setHasTimeToFirstResponse:(BOOL)response;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDLBClientConnectionReport

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasConnectionJoiningFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasConnectionJoiningLbConnectionState:(BOOL)state
{
  if (state)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasConnectionJoiningLbConnectionMigration:(BOOL)migration
{
  if (migration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasConnectionServiceId:(BOOL)id
{
  if (id)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasConnectionDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDataPathResult:(BOOL)result
{
  if (result)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasBytesSent:(BOOL)sent
{
  if (sent)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTimeToFirstResponse:(BOOL)response
{
  if (response)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTimeToConnectionFailure:(BOOL)failure
{
  if (failure)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLBClientConnectionReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLBClientConnectionReport description](&v3, sel_description), -[AWDLBClientConnectionReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionJoiningFailure), @"connection_joining_failure"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionJoiningLbConnectionState), @"connection_joining_lb_connection_state"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionJoiningLbConnectionMigration), @"connection_joining_lb_connection_migration"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionServiceId), @"connection_service_id"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_connectionDuration), @"connection_duration"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_dataPathResult), @"data_path_result"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_bytesSent), @"bytes_sent"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_23:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timeToFirstResponse), @"time_to_first_response"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_12;
  }

LABEL_22:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_bytesReceived), @"bytes_received"}];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_23;
  }

LABEL_11:
  if ((has & 0x10) != 0)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_timeToConnectionFailure), @"time_to_connection_failure"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  connectionJoiningFailure = self->_connectionJoiningFailure;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  connectionJoiningLbConnectionState = self->_connectionJoiningLbConnectionState;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  connectionJoiningLbConnectionMigration = self->_connectionJoiningLbConnectionMigration;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  connectionServiceId = self->_connectionServiceId;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  connectionDuration = self->_connectionDuration;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  dataPathResult = self->_dataPathResult;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  bytesSent = self->_bytesSent;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    timeToFirstResponse = self->_timeToFirstResponse;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_23;
  }

LABEL_21:
  bytesReceived = self->_bytesReceived;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_23:
  timeToConnectionFailure = self->_timeToConnectionFailure;

  PBDataWriterWriteInt64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(to + 7) = self->_timestamp;
    *(to + 40) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(to + 16) = self->_connectionJoiningFailure;
  *(to + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(to + 18) = self->_connectionJoiningLbConnectionState;
  *(to + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(to + 17) = self->_connectionJoiningLbConnectionMigration;
  *(to + 40) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(to + 4) = self->_connectionServiceId;
  *(to + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 3) = self->_connectionDuration;
  *(to + 40) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(to + 19) = self->_dataPathResult;
  *(to + 40) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 2) = self->_bytesSent;
  *(to + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 1) = self->_bytesReceived;
  *(to + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      return;
    }

LABEL_23:
    *(to + 5) = self->_timeToConnectionFailure;
    *(to + 40) |= 0x10u;
    return;
  }

LABEL_22:
  *(to + 6) = self->_timeToFirstResponse;
  *(to + 40) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
    goto LABEL_23;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(result + 7) = self->_timestamp;
    *(result + 40) |= 0x40u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 16) = self->_connectionJoiningFailure;
  *(result + 40) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 18) = self->_connectionJoiningLbConnectionState;
  *(result + 40) |= 0x200u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 17) = self->_connectionJoiningLbConnectionMigration;
  *(result + 40) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 4) = self->_connectionServiceId;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(result + 3) = self->_connectionDuration;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(result + 19) = self->_dataPathResult;
  *(result + 40) |= 0x400u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(result + 2) = self->_bytesSent;
  *(result + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(result + 1) = self->_bytesReceived;
  *(result + 40) |= 1u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_23:
  *(result + 6) = self->_timeToFirstResponse;
  *(result + 40) |= 0x20u;
  if ((*&self->_has & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  *(result + 5) = self->_timeToConnectionFailure;
  *(result + 40) |= 0x10u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 40);
    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_timestamp != *(equal + 7))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
LABEL_56:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_connectionJoiningFailure != *(equal + 16))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 40) & 0x200) == 0 || self->_connectionJoiningLbConnectionState != *(equal + 18))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 40) & 0x200) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 40) & 0x100) == 0 || self->_connectionJoiningLbConnectionMigration != *(equal + 17))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 40) & 0x100) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_connectionServiceId != *(equal + 4))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_connectionDuration != *(equal + 3))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_56;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 40) & 0x400) == 0 || self->_dataPathResult != *(equal + 19))
      {
        goto LABEL_56;
      }
    }

    else if ((*(equal + 40) & 0x400) != 0)
    {
      goto LABEL_56;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_bytesSent != *(equal + 2))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_56;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_bytesReceived != *(equal + 1))
      {
        goto LABEL_56;
      }
    }

    else if (v7)
    {
      goto LABEL_56;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_timeToFirstResponse != *(equal + 6))
      {
        goto LABEL_56;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_56;
    }

    LOBYTE(v5) = (v7 & 0x10) == 0;
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timeToConnectionFailure != *(equal + 5))
      {
        goto LABEL_56;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_connectionJoiningFailure;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_connectionJoiningLbConnectionState;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_connectionJoiningLbConnectionMigration;
    if ((has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_connectionServiceId;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_connectionDuration;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_dataPathResult;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_bytesSent;
    if (has)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if (has)
  {
LABEL_10:
    v11 = 2654435761 * self->_bytesReceived;
    if ((has & 0x20) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v12 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v13 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

LABEL_21:
  v11 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = 2654435761 * self->_timeToFirstResponse;
  if ((has & 0x10) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v13 = 2654435761 * self->_timeToConnectionFailure;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 40);
  if ((v3 & 0x40) != 0)
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 0x40u;
    v3 = *(from + 40);
    if ((v3 & 0x80) == 0)
    {
LABEL_3:
      if ((v3 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v3 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_connectionJoiningFailure = *(from + 16);
  *&self->_has |= 0x80u;
  v3 = *(from + 40);
  if ((v3 & 0x200) == 0)
  {
LABEL_4:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_connectionJoiningLbConnectionState = *(from + 18);
  *&self->_has |= 0x200u;
  v3 = *(from + 40);
  if ((v3 & 0x100) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_connectionJoiningLbConnectionMigration = *(from + 17);
  *&self->_has |= 0x100u;
  v3 = *(from + 40);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_connectionServiceId = *(from + 4);
  *&self->_has |= 8u;
  v3 = *(from + 40);
  if ((v3 & 4) == 0)
  {
LABEL_7:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_connectionDuration = *(from + 3);
  *&self->_has |= 4u;
  v3 = *(from + 40);
  if ((v3 & 0x400) == 0)
  {
LABEL_8:
    if ((v3 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_dataPathResult = *(from + 19);
  *&self->_has |= 0x400u;
  v3 = *(from + 40);
  if ((v3 & 2) == 0)
  {
LABEL_9:
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_bytesSent = *(from + 2);
  *&self->_has |= 2u;
  v3 = *(from + 40);
  if ((v3 & 1) == 0)
  {
LABEL_10:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_bytesReceived = *(from + 1);
  *&self->_has |= 1u;
  v3 = *(from + 40);
  if ((v3 & 0x20) == 0)
  {
LABEL_11:
    if ((v3 & 0x10) == 0)
    {
      return;
    }

LABEL_23:
    self->_timeToConnectionFailure = *(from + 5);
    *&self->_has |= 0x10u;
    return;
  }

LABEL_22:
  self->_timeToFirstResponse = *(from + 6);
  *&self->_has |= 0x20u;
  if ((*(from + 40) & 0x10) != 0)
  {
    goto LABEL_23;
  }
}

@end