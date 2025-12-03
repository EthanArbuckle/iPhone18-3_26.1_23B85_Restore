@interface AWDMPTCPConnectionInterfaceReport
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)postConnectSubflowFailureErrorsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDataOutKB:(BOOL)b;
- (void)setHasPostConnectTcpFallbackCount:(BOOL)count;
- (void)setHasSecondaryFlowFailureCount:(BOOL)count;
- (void)setHasSecondaryFlowSuccessCount:(BOOL)count;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDMPTCPConnectionInterfaceReport

- (void)dealloc
{
  [(AWDMPTCPConnectionInterfaceReport *)self setInterfaceName:0];
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDMPTCPConnectionInterfaceReport;
  [(AWDMPTCPConnectionInterfaceReport *)&v3 dealloc];
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

- (int)postConnectSubflowFailureErrorsAtIndex:(unint64_t)index
{
  p_postConnectSubflowFailureErrors = &self->_postConnectSubflowFailureErrors;
  count = self->_postConnectSubflowFailureErrors.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_postConnectSubflowFailureErrors->list[index];
}

- (void)setHasDataOutKB:(BOOL)b
{
  if (b)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSecondaryFlowSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasSecondaryFlowFailureCount:(BOOL)count
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

- (void)setHasPostConnectTcpFallbackCount:(BOOL)count
{
  if (count)
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
  v3.super_class = AWDMPTCPConnectionInterfaceReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMPTCPConnectionInterfaceReport description](&v3, sel_description), -[AWDMPTCPConnectionInterfaceReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    [dictionary setObject:interfaceName forKey:@"interface_name"];
  }

  [dictionary setObject:PBRepeatedInt32NSArray() forKey:@"post_connect_subflow_failure_errors"];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_dataInKB), @"data_in_KB"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_dataOutKB), @"data_out_KB"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_secondaryFlowFailureCount), @"secondary_flow_failure_count"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return dictionary;
    }

    goto LABEL_10;
  }

LABEL_14:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_secondaryFlowSuccessCount), @"secondary_flow_success_count"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((has & 0x20) != 0)
  {
LABEL_10:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_postConnectTcpFallbackCount), @"post_connect_tcp_fallback_count"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_interfaceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postConnectSubflowFailureErrors.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_postConnectSubflowFailureErrors.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_postConnectSubflowFailureErrors.count);
  }

  has = self->_has;
  if (has)
  {
    dataInKB = self->_dataInKB;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_10:
      if ((has & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

  dataOutKB = self->_dataOutKB;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

LABEL_17:
    secondaryFlowFailureCount = self->_secondaryFlowFailureCount;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_18;
  }

LABEL_16:
  secondaryFlowSuccessCount = self->_secondaryFlowSuccessCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_12:
  if ((has & 0x20) == 0)
  {
    return;
  }

LABEL_18:
  postConnectTcpFallbackCount = self->_postConnectTcpFallbackCount;

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 4) != 0)
  {
    *(to + 6) = self->_timestamp;
    *(to + 76) |= 4u;
  }

  if (self->_interfaceName)
  {
    [to setInterfaceName:?];
  }

  if ([(AWDMPTCPConnectionInterfaceReport *)self postConnectSubflowFailureErrorsCount])
  {
    [to clearPostConnectSubflowFailureErrors];
    postConnectSubflowFailureErrorsCount = [(AWDMPTCPConnectionInterfaceReport *)self postConnectSubflowFailureErrorsCount];
    if (postConnectSubflowFailureErrorsCount)
    {
      v6 = postConnectSubflowFailureErrorsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addPostConnectSubflowFailureErrors:{-[AWDMPTCPConnectionInterfaceReport postConnectSubflowFailureErrorsAtIndex:](self, "postConnectSubflowFailureErrorsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(to + 4) = self->_dataInKB;
    *(to + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 0x10) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_11;
  }

  *(to + 5) = self->_dataOutKB;
  *(to + 76) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(to + 17) = self->_secondaryFlowSuccessCount;
  *(to + 76) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x20) == 0)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_19:
  *(to + 16) = self->_secondaryFlowFailureCount;
  *(to + 76) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return;
  }

LABEL_14:
  *(to + 72) = self->_postConnectTcpFallbackCount;
  *(to + 76) |= 0x20u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 76) |= 4u;
  }

  *(v6 + 56) = [(NSString *)self->_interfaceName copyWithZone:zone];
  PBRepeatedInt32Copy();
  has = self->_has;
  if (has)
  {
    *(v6 + 32) = self->_dataInKB;
    *(v6 + 76) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_dataOutKB;
  *(v6 + 76) |= 2u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    *(v6 + 64) = self->_secondaryFlowFailureCount;
    *(v6 + 76) |= 8u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v6;
    }

    goto LABEL_8;
  }

LABEL_12:
  *(v6 + 68) = self->_secondaryFlowSuccessCount;
  *(v6 + 76) |= 0x10u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  if ((has & 0x20) != 0)
  {
LABEL_8:
    *(v6 + 72) = self->_postConnectTcpFallbackCount;
    *(v6 + 76) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 76);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 76) & 4) == 0 || self->_timestamp != *(equal + 6))
      {
        goto LABEL_32;
      }
    }

    else if ((*(equal + 76) & 4) != 0)
    {
      goto LABEL_32;
    }

    interfaceName = self->_interfaceName;
    if (!(interfaceName | *(equal + 7)) || (IsEqual = [(NSString *)interfaceName isEqual:?]) != 0)
    {
      IsEqual = PBRepeatedInt32IsEqual();
      if (IsEqual)
      {
        if (*&self->_has)
        {
          if ((*(equal + 76) & 1) == 0 || self->_dataInKB != *(equal + 4))
          {
            goto LABEL_32;
          }
        }

        else if (*(equal + 76))
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 2) != 0)
        {
          if ((*(equal + 76) & 2) == 0 || self->_dataOutKB != *(equal + 5))
          {
            goto LABEL_32;
          }
        }

        else if ((*(equal + 76) & 2) != 0)
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 0x10) != 0)
        {
          if ((*(equal + 76) & 0x10) == 0 || self->_secondaryFlowSuccessCount != *(equal + 17))
          {
            goto LABEL_32;
          }
        }

        else if ((*(equal + 76) & 0x10) != 0)
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 8) != 0)
        {
          if ((*(equal + 76) & 8) == 0 || self->_secondaryFlowFailureCount != *(equal + 16))
          {
            goto LABEL_32;
          }
        }

        else if ((*(equal + 76) & 8) != 0)
        {
          goto LABEL_32;
        }

        LOBYTE(IsEqual) = (*(equal + 76) & 0x20) == 0;
        if ((*&self->_has & 0x20) != 0)
        {
          if ((*(equal + 76) & 0x20) == 0)
          {
LABEL_32:
            LOBYTE(IsEqual) = 0;
            return IsEqual;
          }

          if (self->_postConnectTcpFallbackCount)
          {
            if ((*(equal + 72) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (*(equal + 72))
          {
            goto LABEL_32;
          }

          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_interfaceName hash];
  v5 = PBRepeatedInt32Hash();
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_dataInKB;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v7 = 2654435761 * self->_dataOutKB;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_secondaryFlowSuccessCount;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

LABEL_12:
  v8 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v9 = 2654435761 * self->_secondaryFlowFailureCount;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_9:
  v10 = 2654435761 * self->_postConnectTcpFallbackCount;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 76) & 4) != 0)
  {
    self->_timestamp = *(from + 6);
    *&self->_has |= 4u;
  }

  if (*(from + 7))
  {
    [(AWDMPTCPConnectionInterfaceReport *)self setInterfaceName:?];
  }

  postConnectSubflowFailureErrorsCount = [from postConnectSubflowFailureErrorsCount];
  if (postConnectSubflowFailureErrorsCount)
  {
    v6 = postConnectSubflowFailureErrorsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMPTCPConnectionInterfaceReport addPostConnectSubflowFailureErrors:](self, "addPostConnectSubflowFailureErrors:", [from postConnectSubflowFailureErrorsAtIndex:i]);
    }
  }

  v8 = *(from + 76);
  if (v8)
  {
    self->_dataInKB = *(from + 4);
    *&self->_has |= 1u;
    v8 = *(from + 76);
    if ((v8 & 2) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_17;
    }
  }

  else if ((*(from + 76) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_dataOutKB = *(from + 5);
  *&self->_has |= 2u;
  v8 = *(from + 76);
  if ((v8 & 0x10) == 0)
  {
LABEL_11:
    if ((v8 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_secondaryFlowSuccessCount = *(from + 17);
  *&self->_has |= 0x10u;
  v8 = *(from + 76);
  if ((v8 & 8) == 0)
  {
LABEL_12:
    if ((v8 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_13;
  }

LABEL_18:
  self->_secondaryFlowFailureCount = *(from + 16);
  *&self->_has |= 8u;
  if ((*(from + 76) & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  self->_postConnectTcpFallbackCount = *(from + 72);
  *&self->_has |= 0x20u;
}

@end