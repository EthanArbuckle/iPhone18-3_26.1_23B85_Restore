@interface AWDMPTCPConnectionInterfaceReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)postConnectSubflowFailureErrorsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasDataOutKB:(BOOL)a3;
- (void)setHasPostConnectTcpFallbackCount:(BOOL)a3;
- (void)setHasSecondaryFlowFailureCount:(BOOL)a3;
- (void)setHasSecondaryFlowSuccessCount:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)postConnectSubflowFailureErrorsAtIndex:(unint64_t)a3
{
  p_postConnectSubflowFailureErrors = &self->_postConnectSubflowFailureErrors;
  count = self->_postConnectSubflowFailureErrors.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_postConnectSubflowFailureErrors->list[a3];
}

- (void)setHasDataOutKB:(BOOL)a3
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

- (void)setHasSecondaryFlowSuccessCount:(BOOL)a3
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

- (void)setHasSecondaryFlowFailureCount:(BOOL)a3
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

- (void)setHasPostConnectTcpFallbackCount:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMPTCPConnectionInterfaceReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMPTCPConnectionInterfaceReport description](&v3, sel_description), -[AWDMPTCPConnectionInterfaceReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  interfaceName = self->_interfaceName;
  if (interfaceName)
  {
    [v3 setObject:interfaceName forKey:@"interface_name"];
  }

  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"post_connect_subflow_failure_errors"];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_dataInKB), @"data_in_KB"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_dataOutKB), @"data_out_KB"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_secondaryFlowFailureCount), @"secondary_flow_failure_count"}];
    if ((*&self->_has & 0x20) == 0)
    {
      return v3;
    }

    goto LABEL_10;
  }

LABEL_14:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_secondaryFlowSuccessCount), @"secondary_flow_success_count"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if ((has & 0x20) != 0)
  {
LABEL_10:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_postConnectTcpFallbackCount), @"post_connect_tcp_fallback_count"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 4) != 0)
  {
    *(a3 + 6) = self->_timestamp;
    *(a3 + 76) |= 4u;
  }

  if (self->_interfaceName)
  {
    [a3 setInterfaceName:?];
  }

  if ([(AWDMPTCPConnectionInterfaceReport *)self postConnectSubflowFailureErrorsCount])
  {
    [a3 clearPostConnectSubflowFailureErrors];
    v5 = [(AWDMPTCPConnectionInterfaceReport *)self postConnectSubflowFailureErrorsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addPostConnectSubflowFailureErrors:{-[AWDMPTCPConnectionInterfaceReport postConnectSubflowFailureErrorsAtIndex:](self, "postConnectSubflowFailureErrorsAtIndex:", i)}];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(a3 + 4) = self->_dataInKB;
    *(a3 + 76) |= 1u;
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

  *(a3 + 5) = self->_dataOutKB;
  *(a3 + 76) |= 2u;
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
  *(a3 + 17) = self->_secondaryFlowSuccessCount;
  *(a3 + 76) |= 0x10u;
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
  *(a3 + 16) = self->_secondaryFlowFailureCount;
  *(a3 + 76) |= 8u;
  if ((*&self->_has & 0x20) == 0)
  {
    return;
  }

LABEL_14:
  *(a3 + 72) = self->_postConnectTcpFallbackCount;
  *(a3 + 76) |= 0x20u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 48) = self->_timestamp;
    *(v5 + 76) |= 4u;
  }

  *(v6 + 56) = [(NSString *)self->_interfaceName copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(a3 + 76);
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 76) & 4) == 0 || self->_timestamp != *(a3 + 6))
      {
        goto LABEL_32;
      }
    }

    else if ((*(a3 + 76) & 4) != 0)
    {
      goto LABEL_32;
    }

    interfaceName = self->_interfaceName;
    if (!(interfaceName | *(a3 + 7)) || (IsEqual = [(NSString *)interfaceName isEqual:?]) != 0)
    {
      IsEqual = PBRepeatedInt32IsEqual();
      if (IsEqual)
      {
        if (*&self->_has)
        {
          if ((*(a3 + 76) & 1) == 0 || self->_dataInKB != *(a3 + 4))
          {
            goto LABEL_32;
          }
        }

        else if (*(a3 + 76))
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 2) != 0)
        {
          if ((*(a3 + 76) & 2) == 0 || self->_dataOutKB != *(a3 + 5))
          {
            goto LABEL_32;
          }
        }

        else if ((*(a3 + 76) & 2) != 0)
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 0x10) != 0)
        {
          if ((*(a3 + 76) & 0x10) == 0 || self->_secondaryFlowSuccessCount != *(a3 + 17))
          {
            goto LABEL_32;
          }
        }

        else if ((*(a3 + 76) & 0x10) != 0)
        {
          goto LABEL_32;
        }

        if ((*&self->_has & 8) != 0)
        {
          if ((*(a3 + 76) & 8) == 0 || self->_secondaryFlowFailureCount != *(a3 + 16))
          {
            goto LABEL_32;
          }
        }

        else if ((*(a3 + 76) & 8) != 0)
        {
          goto LABEL_32;
        }

        LOBYTE(IsEqual) = (*(a3 + 76) & 0x20) == 0;
        if ((*&self->_has & 0x20) != 0)
        {
          if ((*(a3 + 76) & 0x20) == 0)
          {
LABEL_32:
            LOBYTE(IsEqual) = 0;
            return IsEqual;
          }

          if (self->_postConnectTcpFallbackCount)
          {
            if ((*(a3 + 72) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          else if (*(a3 + 72))
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

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 76) & 4) != 0)
  {
    self->_timestamp = *(a3 + 6);
    *&self->_has |= 4u;
  }

  if (*(a3 + 7))
  {
    [(AWDMPTCPConnectionInterfaceReport *)self setInterfaceName:?];
  }

  v5 = [a3 postConnectSubflowFailureErrorsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDMPTCPConnectionInterfaceReport addPostConnectSubflowFailureErrors:](self, "addPostConnectSubflowFailureErrors:", [a3 postConnectSubflowFailureErrorsAtIndex:i]);
    }
  }

  v8 = *(a3 + 76);
  if (v8)
  {
    self->_dataInKB = *(a3 + 4);
    *&self->_has |= 1u;
    v8 = *(a3 + 76);
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

  else if ((*(a3 + 76) & 2) == 0)
  {
    goto LABEL_10;
  }

  self->_dataOutKB = *(a3 + 5);
  *&self->_has |= 2u;
  v8 = *(a3 + 76);
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
  self->_secondaryFlowSuccessCount = *(a3 + 17);
  *&self->_has |= 0x10u;
  v8 = *(a3 + 76);
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
  self->_secondaryFlowFailureCount = *(a3 + 16);
  *&self->_has |= 8u;
  if ((*(a3 + 76) & 0x20) == 0)
  {
    return;
  }

LABEL_13:
  self->_postConnectTcpFallbackCount = *(a3 + 72);
  *&self->_has |= 0x20u;
}

@end