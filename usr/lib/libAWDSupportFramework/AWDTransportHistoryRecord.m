@interface AWDTransportHistoryRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnectionMethod:(id)a3;
- (int)StringAsTransport:(id)a3;
- (int)StringAsTransportSwitchReasonErrorDomain:(id)a3;
- (int)connectionMethod;
- (int)transport;
- (int)transportSwitchReasonErrorDomain;
- (unint64_t)hash;
- (void)addConnectionInfo:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasConnectionMethod:(BOOL)a3;
- (void)setHasTransport:(BOOL)a3;
- (void)setHasTransportSwitchReasonErrorCode:(BOOL)a3;
- (void)setHasTransportSwitchReasonErrorDomain:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDTransportHistoryRecord

- (void)dealloc
{
  [(AWDTransportHistoryRecord *)self setConnectionInfos:0];
  v3.receiver = self;
  v3.super_class = AWDTransportHistoryRecord;
  [(AWDTransportHistoryRecord *)&v3 dealloc];
}

- (int)transport
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_transport;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTransport:(BOOL)a3
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

- (int)StringAsTransport:(id)a3
{
  if ([a3 isEqualToString:@"None"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"WiFi"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"BT"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"Cellular"])
  {
    return 4;
  }

  return 1;
}

- (int)connectionMethod
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_connectionMethod;
  }

  else
  {
    return 1;
  }
}

- (void)setHasConnectionMethod:(BOOL)a3
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

- (int)StringAsConnectionMethod:(id)a3
{
  if ([a3 isEqualToString:@"Peer"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"TCP"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"MPTCP"])
  {
    return 3;
  }

  return 1;
}

- (void)addConnectionInfo:(id)a3
{
  connectionInfos = self->_connectionInfos;
  if (!connectionInfos)
  {
    connectionInfos = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_connectionInfos = connectionInfos;
  }

  [(NSMutableArray *)connectionInfos addObject:a3];
}

- (int)transportSwitchReasonErrorDomain
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_transportSwitchReasonErrorDomain;
  }

  else
  {
    return 1;
  }
}

- (void)setHasTransportSwitchReasonErrorDomain:(BOOL)a3
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

- (int)StringAsTransportSwitchReasonErrorDomain:(id)a3
{
  if ([a3 isEqualToString:@"assistantErrorDomain"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"connectionErrorDomain"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"posixErrorDomain"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"peerErrorDomain"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasTransportSwitchReasonErrorCode:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDTransportHistoryRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDTransportHistoryRecord description](&v3, sel_description), -[AWDTransportHistoryRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5 = self->_transport - 1;
    if (v5 >= 4)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_transport];
    }

    else
    {
      v6 = off_29EE330A0[v5];
    }

    [v3 setObject:v6 forKey:@"transport"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = self->_connectionMethod - 1;
    if (v7 >= 3)
    {
      v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_connectionMethod];
    }

    else
    {
      v8 = off_29EE330C0[v7];
    }

    [v3 setObject:v8 forKey:@"connectionMethod"];
  }

  if ([(NSMutableArray *)self->_connectionInfos count])
  {
    v9 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_connectionInfos, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    connectionInfos = self->_connectionInfos;
    v11 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(connectionInfos);
          }

          [v9 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v12 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v3 setObject:v9 forKey:@"connectionInfo"];
  }

  v15 = self->_has;
  if ((v15 & 0x10) != 0)
  {
    v16 = self->_transportSwitchReasonErrorDomain - 1;
    if (v16 >= 4)
    {
      v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_transportSwitchReasonErrorDomain];
    }

    else
    {
      v17 = off_29EE330D8[v16];
    }

    [v3 setObject:v17 forKey:@"transportSwitchReasonErrorDomain"];
    v15 = self->_has;
  }

  if ((v15 & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_transportSwitchReasonErrorCode), @"transportSwitchReasonErrorCode"}];
    v15 = self->_has;
  }

  if (v15)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestampFailure), @"timestampFailure"}];
  }

  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    transport = self->_transport;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    connectionMethod = self->_connectionMethod;
    PBDataWriterWriteInt32Field();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  connectionInfos = self->_connectionInfos;
  v8 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(connectionInfos);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v9 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  v13 = self->_has;
  if ((v13 & 0x10) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    transportSwitchReasonErrorCode = self->_transportSwitchReasonErrorCode;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  transportSwitchReasonErrorDomain = self->_transportSwitchReasonErrorDomain;
  PBDataWriterWriteInt32Field();
  v13 = self->_has;
  if ((v13 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v13)
  {
LABEL_15:
    timestampFailure = self->_timestampFailure;
    PBDataWriterWriteUint64Field();
  }

LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 7) = self->_transport;
    *(a3 + 40) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(a3 + 6) = self->_connectionMethod;
    *(a3 + 40) |= 2u;
  }

  if ([(AWDTransportHistoryRecord *)self connectionInfosCount])
  {
    [a3 clearConnectionInfos];
    v6 = [(AWDTransportHistoryRecord *)self connectionInfosCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addConnectionInfo:{-[AWDTransportHistoryRecord connectionInfoAtIndex:](self, "connectionInfoAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((v9 & 0x10) != 0)
  {
    *(a3 + 9) = self->_transportSwitchReasonErrorDomain;
    *(a3 + 40) |= 0x10u;
    v9 = self->_has;
    if ((v9 & 8) == 0)
    {
LABEL_11:
      if ((v9 & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  *(a3 + 8) = self->_transportSwitchReasonErrorCode;
  *(a3 + 40) |= 8u;
  if ((*&self->_has & 1) == 0)
  {
    return;
  }

LABEL_12:
  *(a3 + 1) = self->_timestampFailure;
  *(a3 + 40) |= 1u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 28) = self->_transport;
    *(v5 + 40) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_connectionMethod;
    *(v5 + 40) |= 2u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectionInfos = self->_connectionInfos;
  v9 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(connectionInfos);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
        [v6 addConnectionInfo:v13];
      }

      v10 = [(NSMutableArray *)connectionInfos countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 0x10) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    *(v6 + 32) = self->_transportSwitchReasonErrorCode;
    *(v6 + 40) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *(v6 + 36) = self->_transportSwitchReasonErrorDomain;
  *(v6 + 40) |= 0x10u;
  v14 = self->_has;
  if ((v14 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v14)
  {
LABEL_15:
    *(v6 + 8) = self->_timestampFailure;
    *(v6 + 40) |= 1u;
  }

LABEL_16:
  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 40);
    if ((has & 4) != 0)
    {
      if ((*(a3 + 40) & 4) == 0 || self->_transport != *(a3 + 7))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 4) != 0)
    {
LABEL_29:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 40) & 2) == 0 || self->_connectionMethod != *(a3 + 6))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 2) != 0)
    {
      goto LABEL_29;
    }

    connectionInfos = self->_connectionInfos;
    if (connectionInfos | *(a3 + 2))
    {
      v5 = [(NSMutableArray *)connectionInfos isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    if ((has & 0x10) != 0)
    {
      if ((*(a3 + 40) & 0x10) == 0 || self->_transportSwitchReasonErrorDomain != *(a3 + 9))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 0x10) != 0)
    {
      goto LABEL_29;
    }

    if ((has & 8) != 0)
    {
      if ((*(a3 + 40) & 8) == 0 || self->_transportSwitchReasonErrorCode != *(a3 + 8))
      {
        goto LABEL_29;
      }
    }

    else if ((*(a3 + 40) & 8) != 0)
    {
      goto LABEL_29;
    }

    LOBYTE(v5) = (*(a3 + 40) & 1) == 0;
    if (has)
    {
      if ((*(a3 + 40) & 1) == 0 || self->_timestampFailure != *(a3 + 1))
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
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_transport;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_connectionMethod;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_connectionInfos hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_9;
    }

LABEL_12:
    v8 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
  }

  v6 = 2654435761 * self->_transportSwitchReasonErrorDomain;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v7 = 2654435761 * self->_transportSwitchReasonErrorCode;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = 2654435761u * self->_timestampFailure;
  return v4 ^ v3 ^ v6 ^ v7 ^ v8 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 40);
  if ((v5 & 4) != 0)
  {
    self->_transport = *(a3 + 7);
    *&self->_has |= 4u;
    v5 = *(a3 + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_connectionMethod = *(a3 + 6);
    *&self->_has |= 2u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a3 + 2);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDTransportHistoryRecord *)self addConnectionInfo:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a3 + 40);
  if ((v11 & 0x10) == 0)
  {
    if ((*(a3 + 40) & 8) == 0)
    {
      goto LABEL_14;
    }

LABEL_18:
    self->_transportSwitchReasonErrorCode = *(a3 + 8);
    *&self->_has |= 8u;
    if ((*(a3 + 40) & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  self->_transportSwitchReasonErrorDomain = *(a3 + 9);
  *&self->_has |= 0x10u;
  v11 = *(a3 + 40);
  if ((v11 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v11)
  {
LABEL_15:
    self->_timestampFailure = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_16:
  v12 = *MEMORY[0x29EDCA608];
}

@end