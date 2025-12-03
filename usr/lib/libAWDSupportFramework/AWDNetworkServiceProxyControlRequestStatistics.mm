@interface AWDNetworkServiceProxyControlRequestStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)type;
- (int)StringAsProtocolType:(id)type;
- (int)StringAsRequestType:(id)type;
- (int)interfaceType;
- (int)protocolType;
- (int)requestType;
- (unint64_t)hash;
- (unsigned)responseTimeBucketsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasInterfaceType:(BOOL)type;
- (void)setHasProtocolType:(BOOL)type;
- (void)setHasRequestType:(BOOL)type;
- (void)setHasResultCertificateFailureCount:(BOOL)count;
- (void)setHasResultConnectionResetCount:(BOOL)count;
- (void)setHasResultNetworkUnavailableCount:(BOOL)count;
- (void)setHasResultResponseTimeoutCount:(BOOL)count;
- (void)setHasResultSendFailureCount:(BOOL)count;
- (void)setHasResultServerUnreachableCount:(BOOL)count;
- (void)setHasResultSuccessCount:(BOOL)count;
- (void)setHasResultUnknownErrorCount:(BOOL)count;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation AWDNetworkServiceProxyControlRequestStatistics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyControlRequestStatistics;
  [(AWDNetworkServiceProxyControlRequestStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (int)interfaceType
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_interfaceType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasInterfaceType:(BOOL)type
{
  if (type)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (int)StringAsInterfaceType:(id)type
{
  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_WIFI"])
  {
    return 1;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_CELLULAR"])
  {
    return 2;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_WIRED"])
  {
    return 3;
  }

  if ([type isEqualToString:@"NetworkServiceProxyInterfaceType_VIRTUAL"])
  {
    return 4;
  }

  return 1;
}

- (int)requestType
{
  if ((*&self->_has & 0x1000) != 0)
  {
    return self->_requestType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRequestType:(BOOL)type
{
  if (type)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (int)StringAsRequestType:(id)type
{
  v4 = 1;
  if (([type isEqualToString:@"NetworkServiceProxyControlRequestType_WALDO_REFRESH"] & 1) == 0)
  {
    if ([type isEqualToString:@"NetworkServiceProxyControlRequestType_DAYPASS_REQUEST"])
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (void)setHasResultSuccessCount:(BOOL)count
{
  if (count)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasResultNetworkUnavailableCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasResultServerUnreachableCount:(BOOL)count
{
  if (count)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasResultSendFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasResultResponseTimeoutCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasResultConnectionResetCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasResultCertificateFailureCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasResultUnknownErrorCount:(BOOL)count
{
  if (count)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (unsigned)responseTimeBucketsAtIndex:(unint64_t)index
{
  p_responseTimeBuckets = &self->_responseTimeBuckets;
  count = self->_responseTimeBuckets.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_responseTimeBuckets->list[index];
}

- (int)protocolType
{
  if ((*&self->_has & 0x800) != 0)
  {
    return self->_protocolType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasProtocolType:(BOOL)type
{
  if (type)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (int)StringAsProtocolType:(id)type
{
  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_IPv4"])
  {
    return 1;
  }

  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_IPv6"])
  {
    return 2;
  }

  if ([type isEqualToString:@"NetworkServiceProxyProtocolType_NAT64"])
  {
    return 3;
  }

  return 1;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyControlRequestStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNetworkServiceProxyControlRequestStatistics description](&v3, sel_description), -[AWDNetworkServiceProxyControlRequestStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  v7 = self->_interfaceType - 1;
  if (v7 >= 4)
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
  }

  else
  {
    v8 = off_29EE32A80[v7];
  }

  [dictionary setObject:v8 forKey:@"interface_type"];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_25:
  requestType = self->_requestType;
  if (requestType == 1)
  {
    v11 = @"NetworkServiceProxyControlRequestType_WALDO_REFRESH";
  }

  else if (requestType == 2)
  {
    v11 = @"NetworkServiceProxyControlRequestType_DAYPASS_REQUEST";
  }

  else
  {
    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_requestType];
  }

  [dictionary setObject:v11 forKey:@"request_type"];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_requestCount), @"request_count"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultSuccessCount), @"result_success_count"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_34;
  }

LABEL_33:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultNetworkUnavailableCount), @"result_network_unavailable_count"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerUnreachableCount), @"result_server_unreachable_count"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultSendFailureCount), @"result_send_failure_count"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultResponseTimeoutCount), @"result_response_timeout_count"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultConnectionResetCount), @"result_connection_reset_count"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_38:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultCertificateFailureCount), @"result_certificate_failure_count"}];
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultUnknownErrorCount), @"result_unknown_error_count"}];
  }

LABEL_14:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"response_time_buckets"];
  if ((*&self->_has & 0x800) != 0)
  {
    v5 = self->_protocolType - 1;
    if (v5 >= 3)
    {
      v6 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_protocolType];
    }

    else
    {
      v6 = off_29EE32AA0[v5];
    }

    [dictionary setObject:v6 forKey:@"protocol_type"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  interfaceType = self->_interfaceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  requestType = self->_requestType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

LABEL_22:
  requestCount = self->_requestCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_23:
  resultSuccessCount = self->_resultSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  resultNetworkUnavailableCount = self->_resultNetworkUnavailableCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  resultServerUnreachableCount = self->_resultServerUnreachableCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  resultSendFailureCount = self->_resultSendFailureCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  resultResponseTimeoutCount = self->_resultResponseTimeoutCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  resultConnectionResetCount = self->_resultConnectionResetCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_29:
  resultCertificateFailureCount = self->_resultCertificateFailureCount;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    resultUnknownErrorCount = self->_resultUnknownErrorCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_14:
  if (self->_responseTimeBuckets.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_responseTimeBuckets.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_responseTimeBuckets.count);
  }

  if ((*&self->_has & 0x800) != 0)
  {
    protocolType = self->_protocolType;

    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(to + 13) = self->_timestamp;
    *(to + 62) |= 0x200u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(to + 28) = self->_interfaceType;
  *(to + 62) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 30) = self->_requestType;
  *(to + 62) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 4) = self->_requestCount;
  *(to + 62) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 11) = self->_resultSuccessCount;
  *(to + 62) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 7) = self->_resultNetworkUnavailableCount;
  *(to + 62) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(to + 10) = self->_resultServerUnreachableCount;
  *(to + 62) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(to + 9) = self->_resultSendFailureCount;
  *(to + 62) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(to + 8) = self->_resultResponseTimeoutCount;
  *(to + 62) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_31:
    *(to + 5) = self->_resultCertificateFailureCount;
    *(to + 62) |= 2u;
    if ((*&self->_has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_30:
  *(to + 6) = self->_resultConnectionResetCount;
  *(to + 62) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_31;
  }

LABEL_12:
  if ((has & 0x100) != 0)
  {
LABEL_13:
    *(to + 12) = self->_resultUnknownErrorCount;
    *(to + 62) |= 0x100u;
  }

LABEL_14:
  if ([(AWDNetworkServiceProxyControlRequestStatistics *)self responseTimeBucketsCount])
  {
    [to clearResponseTimeBuckets];
    responseTimeBucketsCount = [(AWDNetworkServiceProxyControlRequestStatistics *)self responseTimeBucketsCount];
    if (responseTimeBucketsCount)
    {
      v7 = responseTimeBucketsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addResponseTimeBuckets:{-[AWDNetworkServiceProxyControlRequestStatistics responseTimeBucketsAtIndex:](self, "responseTimeBucketsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 0x800) != 0)
  {
    *(to + 29) = self->_protocolType;
    *(to + 62) |= 0x800u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v4 + 104) = self->_timestamp;
    *(v4 + 124) |= 0x200u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 112) = self->_interfaceType;
  *(v4 + 124) |= 0x400u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 120) = self->_requestType;
  *(v4 + 124) |= 0x1000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 32) = self->_requestCount;
  *(v4 + 124) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v4 + 88) = self->_resultSuccessCount;
  *(v4 + 124) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v4 + 56) = self->_resultNetworkUnavailableCount;
  *(v4 + 124) |= 8u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v4 + 80) = self->_resultServerUnreachableCount;
  *(v4 + 124) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v4 + 72) = self->_resultSendFailureCount;
  *(v4 + 124) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v4 + 64) = self->_resultResponseTimeoutCount;
  *(v4 + 124) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v4 + 48) = self->_resultConnectionResetCount;
  *(v4 + 124) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_12:
    if ((has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  *(v4 + 40) = self->_resultCertificateFailureCount;
  *(v4 + 124) |= 2u;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    *(v4 + 96) = self->_resultUnknownErrorCount;
    *(v4 + 124) |= 0x100u;
  }

LABEL_14:
  PBRepeatedUInt32Copy();
  if ((*&self->_has & 0x800) != 0)
  {
    *(v5 + 116) = self->_protocolType;
    *(v5 + 124) |= 0x800u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(equal + 62);
    if ((has & 0x200) != 0)
    {
      if ((*(equal + 62) & 0x200) == 0 || self->_timestamp != *(equal + 13))
      {
        goto LABEL_67;
      }
    }

    else if ((*(equal + 62) & 0x200) != 0)
    {
LABEL_67:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 62) & 0x400) == 0 || self->_interfaceType != *(equal + 28))
      {
        goto LABEL_67;
      }
    }

    else if ((*(equal + 62) & 0x400) != 0)
    {
      goto LABEL_67;
    }

    if ((*&self->_has & 0x1000) != 0)
    {
      if ((*(equal + 62) & 0x1000) == 0 || self->_requestType != *(equal + 30))
      {
        goto LABEL_67;
      }
    }

    else if ((*(equal + 62) & 0x1000) != 0)
    {
      goto LABEL_67;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_requestCount != *(equal + 4))
      {
        goto LABEL_67;
      }
    }

    else if (v7)
    {
      goto LABEL_67;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_resultSuccessCount != *(equal + 11))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_resultNetworkUnavailableCount != *(equal + 7))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_resultServerUnreachableCount != *(equal + 10))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_resultSendFailureCount != *(equal + 9))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_resultResponseTimeoutCount != *(equal + 8))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_resultConnectionResetCount != *(equal + 6))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_67;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_resultCertificateFailureCount != *(equal + 5))
      {
        goto LABEL_67;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_67;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 62) & 0x100) == 0 || self->_resultUnknownErrorCount != *(equal + 12))
      {
        goto LABEL_67;
      }
    }

    else if ((*(equal + 62) & 0x100) != 0)
    {
      goto LABEL_67;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      LOBYTE(IsEqual) = (*(equal + 62) & 0x800) == 0;
      if ((*&self->_has & 0x800) != 0)
      {
        if ((*(equal + 62) & 0x800) == 0 || self->_protocolType != *(equal + 29))
        {
          goto LABEL_67;
        }

        LOBYTE(IsEqual) = 1;
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v18 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v17 = 2654435761 * self->_interfaceType;
      if ((*&self->_has & 0x1000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v18 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_4:
    v16 = 2654435761 * self->_requestType;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v16 = 0;
  if (has)
  {
LABEL_5:
    v15 = 2654435761u * self->_requestCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v15 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v14 = 2654435761u * self->_resultSuccessCount;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v4 = 2654435761u * self->_resultNetworkUnavailableCount;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v5 = 2654435761u * self->_resultServerUnreachableCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_9:
    v6 = 2654435761u * self->_resultSendFailureCount;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v7 = 2654435761u * self->_resultResponseTimeoutCount;
    if ((has & 4) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_11:
    v8 = 2654435761u * self->_resultConnectionResetCount;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v9 = 0;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_23:
  v8 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v9 = 2654435761u * self->_resultCertificateFailureCount;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_13:
    v10 = 2654435761u * self->_resultUnknownErrorCount;
    goto LABEL_26;
  }

LABEL_25:
  v10 = 0;
LABEL_26:
  v11 = PBRepeatedUInt32Hash();
  if ((*&self->_has & 0x800) != 0)
  {
    v12 = 2654435761 * self->_protocolType;
  }

  else
  {
    v12 = 0;
  }

  return v17 ^ v18 ^ v16 ^ v15 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v12 ^ v11;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 62);
  if ((v5 & 0x200) != 0)
  {
    self->_timestamp = *(from + 13);
    *&self->_has |= 0x200u;
    v5 = *(from + 62);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*(from + 62) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_interfaceType = *(from + 28);
  *&self->_has |= 0x400u;
  v5 = *(from + 62);
  if ((v5 & 0x1000) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_requestType = *(from + 30);
  *&self->_has |= 0x1000u;
  v5 = *(from + 62);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_requestCount = *(from + 4);
  *&self->_has |= 1u;
  v5 = *(from + 62);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_resultSuccessCount = *(from + 11);
  *&self->_has |= 0x80u;
  v5 = *(from + 62);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_resultNetworkUnavailableCount = *(from + 7);
  *&self->_has |= 8u;
  v5 = *(from + 62);
  if ((v5 & 0x40) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_resultServerUnreachableCount = *(from + 10);
  *&self->_has |= 0x40u;
  v5 = *(from + 62);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_resultSendFailureCount = *(from + 9);
  *&self->_has |= 0x20u;
  v5 = *(from + 62);
  if ((v5 & 0x10) == 0)
  {
LABEL_10:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_resultResponseTimeoutCount = *(from + 8);
  *&self->_has |= 0x10u;
  v5 = *(from + 62);
  if ((v5 & 4) == 0)
  {
LABEL_11:
    if ((v5 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_resultConnectionResetCount = *(from + 6);
  *&self->_has |= 4u;
  v5 = *(from + 62);
  if ((v5 & 2) == 0)
  {
LABEL_12:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_30:
  self->_resultCertificateFailureCount = *(from + 5);
  *&self->_has |= 2u;
  if ((*(from + 62) & 0x100) != 0)
  {
LABEL_13:
    self->_resultUnknownErrorCount = *(from + 12);
    *&self->_has |= 0x100u;
  }

LABEL_14:
  responseTimeBucketsCount = [from responseTimeBucketsCount];
  if (responseTimeBucketsCount)
  {
    v7 = responseTimeBucketsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDNetworkServiceProxyControlRequestStatistics addResponseTimeBuckets:](self, "addResponseTimeBuckets:", [from responseTimeBucketsAtIndex:i]);
    }
  }

  if ((*(from + 62) & 0x800) != 0)
  {
    self->_protocolType = *(from + 29);
    *&self->_has |= 0x800u;
  }
}

@end