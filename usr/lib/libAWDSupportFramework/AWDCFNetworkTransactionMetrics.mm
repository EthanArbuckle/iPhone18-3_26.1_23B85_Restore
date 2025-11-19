@interface AWDCFNetworkTransactionMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsHttp3Status:(id)a3;
- (int)StringAsNetworkLoadType:(id)a3;
- (int)StringAsNetworkProtocolName:(id)a3;
- (int)http3Status;
- (int)networkLoadType;
- (int)networkProtocolName;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasApsRelayAttempted:(BOOL)a3;
- (void)setHasApsRelaySucceeded:(BOOL)a3;
- (void)setHasHttp3Status:(BOOL)a3;
- (void)setHasIsRedirected:(BOOL)a3;
- (void)setHasNetworkLoadType:(BOOL)a3;
- (void)setHasNetworkProtocolName:(BOOL)a3;
- (void)setHasRequestStart:(BOOL)a3;
- (void)setHasResponseEnd:(BOOL)a3;
- (void)setHasResponseStart:(BOOL)a3;
- (void)setHasReusedConnection:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasTotalBytesExpectedToRead:(BOOL)a3;
- (void)setHasTotalBytesExpectedToWrite:(BOOL)a3;
- (void)setHasTotalBytesRead:(BOOL)a3;
- (void)setHasTotalBytesWritten:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDCFNetworkTransactionMetrics

- (void)dealloc
{
  [(AWDCFNetworkTransactionMetrics *)self setConnectionUUID:0];
  v3.receiver = self;
  v3.super_class = AWDCFNetworkTransactionMetrics;
  [(AWDCFNetworkTransactionMetrics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (int)networkProtocolName
{
  if ((*&self->_has & 0x800) != 0)
  {
    return self->_networkProtocolName;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkProtocolName:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)StringAsNetworkProtocolName:(id)a3
{
  if ([a3 isEqualToString:@"UNKNOWN_PROTOCOL_NAME"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"HTTP_1_0"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"HTTP_1_1"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"HTTP_2"])
  {
    return 4;
  }

  if ([a3 isEqualToString:@"HTTP_3"])
  {
    return 5;
  }

  return 1;
}

- (int)networkLoadType
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_networkLoadType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNetworkLoadType:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsNetworkLoadType:(id)a3
{
  if ([a3 isEqualToString:@"NSURLSessionTaskMetricsResourceFetchTypeUnknown"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"NSURLSessionTaskMetricsResourceFetchTypeNetworkLoad"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NSURLSessionTaskMetricsResourceFetchTypeServerPush"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NSURLSessionTaskMetricsResourceFetchTypeLocalCache"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasReusedConnection:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasIsRedirected:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasRequestStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasResponseStart:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasResponseEnd:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasTotalBytesWritten:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTotalBytesRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasApsRelayAttempted:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasApsRelaySucceeded:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasTotalBytesExpectedToWrite:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalBytesExpectedToRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (int)http3Status
{
  if ((*&self->_has & 0x200) != 0)
  {
    return self->_http3Status;
  }

  else
  {
    return 1;
  }
}

- (void)setHasHttp3Status:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)StringAsHttp3Status:(id)a3
{
  if ([a3 isEqualToString:@"NOT_ENABLED"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NO_KNOWLEDGE"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"ALT_SVC"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"KNOWN_CAPABLE"])
  {
    return 4;
  }

  return 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCFNetworkTransactionMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCFNetworkTransactionMetrics description](&v3, sel_description), -[AWDCFNetworkTransactionMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  v7 = self->_networkProtocolName - 1;
  if (v7 >= 5)
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_networkProtocolName];
  }

  else
  {
    v8 = off_29EE324F0[v7];
  }

  [v3 setObject:v8 forKey:@"networkProtocolName"];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_32:
  networkLoadType = self->_networkLoadType;
  if (networkLoadType >= 4)
  {
    v12 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_networkLoadType];
  }

  else
  {
    v12 = off_29EE32518[networkLoadType];
  }

  [v3 setObject:v12 forKey:@"networkLoadType"];
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_reusedConnection), @"reusedConnection"}];
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_isRedirected), @"isRedirected"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestStart), @"requestStart"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestEnd), @"requestEnd"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseStart), @"responseStart"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_responseEnd), @"responseEnd"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalBytesWritten), @"totalBytesWritten"}];
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_12:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalBytesRead), @"totalBytesRead"}];
  }

LABEL_13:
  connectionUUID = self->_connectionUUID;
  if (connectionUUID)
  {
    [v3 setObject:connectionUUID forKey:@"connectionUUID"];
  }

  v6 = self->_has;
  if ((v6 & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_apsRelayAttempted), @"apsRelayAttempted"}];
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_apsRelaySucceeded), @"apsRelaySucceeded"}];
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_27:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalBytesExpectedToRead), @"totalBytesExpectedToRead"}];
    if ((*&self->_has & 0x200) == 0)
    {
      return v3;
    }

    goto LABEL_28;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_totalBytesExpectedToWrite), @"totalBytesExpectedToWrite"}];
  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_19:
  if ((v6 & 0x200) == 0)
  {
    return v3;
  }

LABEL_28:
  v9 = self->_http3Status - 1;
  if (v9 >= 4)
  {
    v10 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_http3Status];
  }

  else
  {
    v10 = off_29EE32538[v9];
  }

  [v3 setObject:v10 forKey:@"http3Status"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  networkProtocolName = self->_networkProtocolName;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  networkLoadType = self->_networkLoadType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  reusedConnection = self->_reusedConnection;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  isRedirected = self->_isRedirected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  requestStart = self->_requestStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  requestEnd = self->_requestEnd;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  responseStart = self->_responseStart;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  responseEnd = self->_responseEnd;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  totalBytesWritten = self->_totalBytesWritten;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_12:
    totalBytesRead = self->_totalBytesRead;
    PBDataWriterWriteUint64Field();
  }

LABEL_13:
  if (self->_connectionUUID)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x1000) != 0)
  {
    apsRelayAttempted = self->_apsRelayAttempted;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_34;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  apsRelaySucceeded = self->_apsRelaySucceeded;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_35:
    totalBytesExpectedToRead = self->_totalBytesExpectedToRead;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  totalBytesExpectedToWrite = self->_totalBytesExpectedToWrite;
  PBDataWriterWriteUint64Field();
  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_19:
  if ((v6 & 0x200) == 0)
  {
    return;
  }

LABEL_36:
  http3Status = self->_http3Status;

  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(a3 + 5) = self->_timestamp;
    *(a3 + 52) |= 0x10u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 24) = self->_networkProtocolName;
  *(a3 + 52) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 23) = self->_networkLoadType;
  *(a3 + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 103) = self->_reusedConnection;
  *(a3 + 52) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 102) = self->_isRedirected;
  *(a3 + 52) |= 0x4000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 2) = self->_requestStart;
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 1) = self->_requestEnd;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 4) = self->_responseStart;
  *(a3 + 52) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 3) = self->_responseEnd;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  *(a3 + 9) = self->_totalBytesWritten;
  *(a3 + 52) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_12:
    *(a3 + 8) = self->_totalBytesRead;
    *(a3 + 52) |= 0x80u;
  }

LABEL_13:
  if (self->_connectionUUID)
  {
    [a3 setConnectionUUID:?];
  }

  v6 = self->_has;
  if ((v6 & 0x1000) != 0)
  {
    *(a3 + 100) = self->_apsRelayAttempted;
    *(a3 + 52) |= 0x1000u;
    v6 = self->_has;
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  *(a3 + 101) = self->_apsRelaySucceeded;
  *(a3 + 52) |= 0x2000u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 7) = self->_totalBytesExpectedToWrite;
  *(a3 + 52) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x20) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_36:
  *(a3 + 6) = self->_totalBytesExpectedToRead;
  *(a3 + 52) |= 0x20u;
  if ((*&self->_has & 0x200) == 0)
  {
    return;
  }

LABEL_20:
  *(a3 + 22) = self->_http3Status;
  *(a3 + 52) |= 0x200u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 104) |= 0x10u;
    has = self->_has;
    if ((has & 0x800) == 0)
    {
LABEL_3:
      if ((has & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 96) = self->_networkProtocolName;
  *(v5 + 104) |= 0x800u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_4:
    if ((has & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 92) = self->_networkLoadType;
  *(v5 + 104) |= 0x400u;
  has = self->_has;
  if ((has & 0x8000) == 0)
  {
LABEL_5:
    if ((has & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 103) = self->_reusedConnection;
  *(v5 + 104) |= 0x8000u;
  has = self->_has;
  if ((has & 0x4000) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 102) = self->_isRedirected;
  *(v5 + 104) |= 0x4000u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 16) = self->_requestStart;
  *(v5 + 104) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 8) = self->_requestEnd;
  *(v5 + 104) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 32) = self->_responseStart;
  *(v5 + 104) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 24) = self->_responseEnd;
  *(v5 + 104) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_29:
  *(v5 + 72) = self->_totalBytesWritten;
  *(v5 + 104) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
LABEL_12:
    *(v5 + 64) = self->_totalBytesRead;
    *(v5 + 104) |= 0x80u;
  }

LABEL_13:

  *(v6 + 80) = [(NSString *)self->_connectionUUID copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x1000) != 0)
  {
    *(v6 + 100) = self->_apsRelayAttempted;
    *(v6 + 104) |= 0x1000u;
    v8 = self->_has;
    if ((v8 & 0x2000) == 0)
    {
LABEL_15:
      if ((v8 & 0x40) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_15;
  }

  *(v6 + 101) = self->_apsRelaySucceeded;
  *(v6 + 104) |= 0x2000u;
  v8 = self->_has;
  if ((v8 & 0x40) == 0)
  {
LABEL_16:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_17;
    }

LABEL_34:
    *(v6 + 48) = self->_totalBytesExpectedToRead;
    *(v6 + 104) |= 0x20u;
    if ((*&self->_has & 0x200) == 0)
    {
      return v6;
    }

    goto LABEL_18;
  }

LABEL_33:
  *(v6 + 56) = self->_totalBytesExpectedToWrite;
  *(v6 + 104) |= 0x40u;
  v8 = self->_has;
  if ((v8 & 0x20) != 0)
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v8 & 0x200) != 0)
  {
LABEL_18:
    *(v6 + 88) = self->_http3Status;
    *(v6 + 104) |= 0x200u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 52);
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_timestamp != *(a3 + 5))
    {
      goto LABEL_96;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_96;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 52) & 0x800) == 0 || self->_networkProtocolName != *(a3 + 24))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x800) != 0)
  {
    goto LABEL_96;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 52) & 0x400) == 0 || self->_networkLoadType != *(a3 + 23))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x400) != 0)
  {
    goto LABEL_96;
  }

  if ((*&self->_has & 0x8000) != 0)
  {
    if ((*(a3 + 52) & 0x8000) == 0)
    {
      goto LABEL_96;
    }

    v8 = *(a3 + 103);
    if (self->_reusedConnection)
    {
      if ((*(a3 + 103) & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else if (*(a3 + 103))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x8000) != 0)
  {
    goto LABEL_96;
  }

  if ((*&self->_has & 0x4000) != 0)
  {
    if ((*(a3 + 52) & 0x4000) == 0)
    {
      goto LABEL_96;
    }

    v9 = *(a3 + 102);
    if (self->_isRedirected)
    {
      if ((*(a3 + 102) & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else if (*(a3 + 102))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x4000) != 0)
  {
    goto LABEL_96;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_requestStart != *(a3 + 2))
    {
      goto LABEL_96;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_96;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_requestEnd != *(a3 + 1))
    {
      goto LABEL_96;
    }
  }

  else if (v7)
  {
    goto LABEL_96;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_responseStart != *(a3 + 4))
    {
      goto LABEL_96;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_96;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_responseEnd != *(a3 + 3))
    {
      goto LABEL_96;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_96;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 52) & 0x100) == 0 || self->_totalBytesWritten != *(a3 + 9))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x100) != 0)
  {
    goto LABEL_96;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_totalBytesRead != *(a3 + 8))
    {
      goto LABEL_96;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_96;
  }

  connectionUUID = self->_connectionUUID;
  if (connectionUUID | *(a3 + 10))
  {
    v5 = [(NSString *)connectionUUID isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v11 = *(a3 + 52);
  if ((has & 0x1000) != 0)
  {
    if ((*(a3 + 52) & 0x1000) == 0)
    {
      goto LABEL_96;
    }

    v12 = *(a3 + 100);
    if (self->_apsRelayAttempted)
    {
      if ((*(a3 + 100) & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    else if (*(a3 + 100))
    {
      goto LABEL_96;
    }
  }

  else if ((*(a3 + 52) & 0x1000) != 0)
  {
    goto LABEL_96;
  }

  if ((has & 0x2000) != 0)
  {
    if ((*(a3 + 52) & 0x2000) != 0)
    {
      v13 = *(a3 + 101);
      if (self->_apsRelaySucceeded)
      {
        if ((*(a3 + 101) & 1) == 0)
        {
          goto LABEL_96;
        }
      }

      else if (*(a3 + 101))
      {
        goto LABEL_96;
      }

      goto LABEL_70;
    }

LABEL_96:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 52) & 0x2000) != 0)
  {
    goto LABEL_96;
  }

LABEL_70:
  if ((has & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0 || self->_totalBytesExpectedToWrite != *(a3 + 7))
    {
      goto LABEL_96;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_96;
  }

  if ((has & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_totalBytesExpectedToRead != *(a3 + 6))
    {
      goto LABEL_96;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_96;
  }

  LOBYTE(v5) = (v11 & 0x200) == 0;
  if ((has & 0x200) != 0)
  {
    if ((*(a3 + 52) & 0x200) == 0 || self->_http3Status != *(a3 + 22))
    {
      goto LABEL_96;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v23 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x800) != 0)
    {
LABEL_3:
      v22 = 2654435761 * self->_networkProtocolName;
      if ((*&self->_has & 0x400) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v23 = 0;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_3;
    }
  }

  v22 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_4:
    v21 = 2654435761 * self->_networkLoadType;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v21 = 0;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_5:
    v19 = 2654435761 * self->_reusedConnection;
    if ((*&self->_has & 0x4000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v19 = 0;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_6:
    v4 = 2654435761 * self->_isRedirected;
    if ((has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v4 = 0;
  if ((has & 2) != 0)
  {
LABEL_7:
    v5 = 2654435761u * self->_requestStart;
    if (has)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v5 = 0;
  if (has)
  {
LABEL_8:
    v6 = 2654435761u * self->_requestEnd;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v7 = 2654435761u * self->_responseStart;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v8 = 2654435761u * self->_responseEnd;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v9 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_21:
  v8 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v9 = 2654435761u * self->_totalBytesWritten;
  if ((has & 0x80) != 0)
  {
LABEL_12:
    v10 = 2654435761u * self->_totalBytesRead;
    goto LABEL_24;
  }

LABEL_23:
  v10 = 0;
LABEL_24:
  v11 = [(NSString *)self->_connectionUUID hash];
  v12 = self->_has;
  if ((v12 & 0x1000) != 0)
  {
    v13 = 2654435761 * self->_apsRelayAttempted;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_26:
      v14 = 2654435761 * self->_apsRelaySucceeded;
      if ((v12 & 0x40) != 0)
      {
        goto LABEL_27;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_26;
    }
  }

  v14 = 0;
  if ((v12 & 0x40) != 0)
  {
LABEL_27:
    v15 = 2654435761u * self->_totalBytesExpectedToWrite;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    v16 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v17 = 0;
    return v22 ^ v23 ^ v21 ^ v20 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v11;
  }

LABEL_32:
  v15 = 0;
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  v16 = 2654435761u * self->_totalBytesExpectedToRead;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  v17 = 2654435761 * self->_http3Status;
  return v22 ^ v23 ^ v21 ^ v20 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 52);
  if ((v5 & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 5);
    *&self->_has |= 0x10u;
    v5 = *(a3 + 52);
    if ((v5 & 0x800) == 0)
    {
LABEL_3:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*(a3 + 52) & 0x800) == 0)
  {
    goto LABEL_3;
  }

  self->_networkProtocolName = *(a3 + 24);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_4:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_networkLoadType = *(a3 + 23);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 52);
  if ((v5 & 0x8000) == 0)
  {
LABEL_5:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_reusedConnection = *(a3 + 103);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x4000) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_isRedirected = *(a3 + 102);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_requestStart = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_requestEnd = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_responseStart = *(a3 + 4);
  *&self->_has |= 8u;
  v5 = *(a3 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_10:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_responseEnd = *(a3 + 3);
  *&self->_has |= 4u;
  v5 = *(a3 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_31:
  self->_totalBytesWritten = *(a3 + 9);
  *&self->_has |= 0x100u;
  if ((*(a3 + 52) & 0x80) != 0)
  {
LABEL_12:
    self->_totalBytesRead = *(a3 + 8);
    *&self->_has |= 0x80u;
  }

LABEL_13:
  if (*(a3 + 10))
  {
    [(AWDCFNetworkTransactionMetrics *)self setConnectionUUID:?];
  }

  v6 = *(a3 + 52);
  if ((v6 & 0x1000) != 0)
  {
    self->_apsRelayAttempted = *(a3 + 100);
    *&self->_has |= 0x1000u;
    v6 = *(a3 + 52);
    if ((v6 & 0x2000) == 0)
    {
LABEL_17:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_35;
    }
  }

  else if ((*(a3 + 52) & 0x2000) == 0)
  {
    goto LABEL_17;
  }

  self->_apsRelaySucceeded = *(a3 + 101);
  *&self->_has |= 0x2000u;
  v6 = *(a3 + 52);
  if ((v6 & 0x40) == 0)
  {
LABEL_18:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_totalBytesExpectedToWrite = *(a3 + 7);
  *&self->_has |= 0x40u;
  v6 = *(a3 + 52);
  if ((v6 & 0x20) == 0)
  {
LABEL_19:
    if ((v6 & 0x200) == 0)
    {
      return;
    }

    goto LABEL_20;
  }

LABEL_36:
  self->_totalBytesExpectedToRead = *(a3 + 6);
  *&self->_has |= 0x20u;
  if ((*(a3 + 52) & 0x200) == 0)
  {
    return;
  }

LABEL_20:
  self->_http3Status = *(a3 + 22);
  *&self->_has |= 0x200u;
}

@end