@interface AWDLBEndpointsFetchReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionCellularFallbackCount:(BOOL)a3;
- (void)setHasEndpointsFetchTaskBadReplyCount:(BOOL)a3;
- (void)setHasEndpointsFetchTaskCount:(BOOL)a3;
- (void)setHasEndpointsFetchTaskFailureCount:(BOOL)a3;
- (void)setHasEndpointsFetchTaskSuccessCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLBEndpointsFetchReport

- (void)setHasEndpointsFetchTaskCount:(BOOL)a3
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

- (void)setHasEndpointsFetchTaskSuccessCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndpointsFetchTaskFailureCount:(BOOL)a3
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

- (void)setHasEndpointsFetchTaskBadReplyCount:(BOOL)a3
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

- (void)setHasConnectionCellularFallbackCount:(BOOL)a3
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
  v3.super_class = AWDLBEndpointsFetchReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLBEndpointsFetchReport description](&v3, sel_description), -[AWDLBEndpointsFetchReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_endpointsFetchTaskCount), @"endpoints_fetch_task_count"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_endpointsFetchTaskSuccessCount), @"endpoints_fetch_task_success_count"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_endpointsFetchTaskBadReplyCount), @"endpoints_fetch_task_bad_reply_count"}];
    if ((*&self->_has & 2) == 0)
    {
      return v3;
    }

    goto LABEL_7;
  }

LABEL_12:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_endpointsFetchTaskFailureCount), @"endpoints_fetch_task_failure_count"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((has & 2) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_connectionCellularFallbackCount), @"connection_cellular_fallback_count"}];
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
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  endpointsFetchTaskCount = self->_endpointsFetchTaskCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  endpointsFetchTaskSuccessCount = self->_endpointsFetchTaskSuccessCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    endpointsFetchTaskBadReplyCount = self->_endpointsFetchTaskBadReplyCount;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 2) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  endpointsFetchTaskFailureCount = self->_endpointsFetchTaskFailureCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((has & 2) == 0)
  {
    return;
  }

LABEL_13:
  connectionCellularFallbackCount = self->_connectionCellularFallbackCount;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 1) = self->_timestamp;
    *(a3 + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  *(a3 + 6) = self->_endpointsFetchTaskCount;
  *(a3 + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(a3 + 8) = self->_endpointsFetchTaskSuccessCount;
  *(a3 + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(a3 + 7) = self->_endpointsFetchTaskFailureCount;
  *(a3 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      return;
    }

LABEL_13:
    *(a3 + 4) = self->_connectionCellularFallbackCount;
    *(a3 + 36) |= 2u;
    return;
  }

LABEL_12:
  *(a3 + 5) = self->_endpointsFetchTaskBadReplyCount;
  *(a3 + 36) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
    goto LABEL_13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 36) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
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

  *(result + 6) = self->_endpointsFetchTaskCount;
  *(result + 36) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  *(result + 8) = self->_endpointsFetchTaskSuccessCount;
  *(result + 36) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 7) = self->_endpointsFetchTaskFailureCount;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(result + 5) = self->_endpointsFetchTaskBadReplyCount;
  *(result + 36) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 4) = self->_connectionCellularFallbackCount;
  *(result + 36) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_31;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_31:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 8) != 0)
    {
      if ((*(a3 + 36) & 8) == 0 || self->_endpointsFetchTaskCount != *(a3 + 6))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 36) & 8) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 0x20) != 0)
    {
      if ((*(a3 + 36) & 0x20) == 0 || self->_endpointsFetchTaskSuccessCount != *(a3 + 8))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 36) & 0x20) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 0x10) != 0)
    {
      if ((*(a3 + 36) & 0x10) == 0 || self->_endpointsFetchTaskFailureCount != *(a3 + 7))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 36) & 0x10) != 0)
    {
      goto LABEL_31;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 36) & 4) == 0 || self->_endpointsFetchTaskBadReplyCount != *(a3 + 5))
      {
        goto LABEL_31;
      }
    }

    else if ((*(a3 + 36) & 4) != 0)
    {
      goto LABEL_31;
    }

    LOBYTE(v5) = (*(a3 + 36) & 2) == 0;
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_connectionCellularFallbackCount != *(a3 + 4))
      {
        goto LABEL_31;
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
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_endpointsFetchTaskCount;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_endpointsFetchTaskSuccessCount;
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
    v5 = 2654435761 * self->_endpointsFetchTaskFailureCount;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_endpointsFetchTaskBadReplyCount;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_connectionCellularFallbackCount;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 36);
  if (v3)
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
    v3 = *(a3 + 36);
    if ((v3 & 8) == 0)
    {
LABEL_3:
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a3 + 36) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_endpointsFetchTaskCount = *(a3 + 6);
  *&self->_has |= 8u;
  v3 = *(a3 + 36);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  self->_endpointsFetchTaskSuccessCount = *(a3 + 8);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 36);
  if ((v3 & 0x10) == 0)
  {
LABEL_5:
    if ((v3 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  self->_endpointsFetchTaskFailureCount = *(a3 + 7);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 36);
  if ((v3 & 4) == 0)
  {
LABEL_6:
    if ((v3 & 2) == 0)
    {
      return;
    }

LABEL_13:
    self->_connectionCellularFallbackCount = *(a3 + 4);
    *&self->_has |= 2u;
    return;
  }

LABEL_12:
  self->_endpointsFetchTaskBadReplyCount = *(a3 + 5);
  *&self->_has |= 4u;
  if ((*(a3 + 36) & 2) != 0)
  {
    goto LABEL_13;
  }
}

@end