@interface AWDNetworkServiceProxyConnectionStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInterfaceType:(id)a3;
- (int)StringAsProtocolType:(id)a3;
- (int)interfaceType;
- (int)protocolType;
- (unint64_t)hash;
- (unsigned)connectionDurationBucketsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAlternatePathCount:(BOOL)a3;
- (void)setHasCaptivePresentFailedCount:(BOOL)a3;
- (void)setHasConnectionCount:(BOOL)a3;
- (void)setHasExceededMssCount:(BOOL)a3;
- (void)setHasInterfaceType:(BOOL)a3;
- (void)setHasMptcpSuccessCount:(BOOL)a3;
- (void)setHasProtocolType:(BOOL)a3;
- (void)setHasRestrictedNetworkCount:(BOOL)a3;
- (void)setHasRestrictedNetworkFailedCount:(BOOL)a3;
- (void)setHasResultConnectionResetCount:(BOOL)a3;
- (void)setHasResultNetworkUnavailableCount:(BOOL)a3;
- (void)setHasResultResponseTimeoutCount:(BOOL)a3;
- (void)setHasResultSendFailureCount:(BOOL)a3;
- (void)setHasResultServerBusyCount:(BOOL)a3;
- (void)setHasResultServerDetachedCount:(BOOL)a3;
- (void)setHasResultServerInterruptCount:(BOOL)a3;
- (void)setHasResultServerOfflineCount:(BOOL)a3;
- (void)setHasResultServerOrphanedCount:(BOOL)a3;
- (void)setHasResultServerSessionExpiredCount:(BOOL)a3;
- (void)setHasResultServerUnreachableCount:(BOOL)a3;
- (void)setHasResultSuccessCount:(BOOL)a3;
- (void)setHasResultUnknownErrorCount:(BOOL)a3;
- (void)setHasTfoSuccessCount:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDNetworkServiceProxyConnectionStatistics

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyConnectionStatistics;
  [(AWDNetworkServiceProxyConnectionStatistics *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (int)interfaceType
{
  if ((*(&self->_has + 2) & 0x40) != 0)
  {
    return self->_interfaceType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasInterfaceType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (int)StringAsInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_CELLULAR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_WIRED"])
  {
    return 3;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyInterfaceType_VIRTUAL"])
  {
    return 4;
  }

  return 1;
}

- (void)setHasConnectionCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasTfoSuccessCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasMptcpSuccessCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasRestrictedNetworkCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasResultSuccessCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasResultNetworkUnavailableCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasResultServerUnreachableCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasResultSendFailureCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasResultResponseTimeoutCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasResultConnectionResetCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasResultServerBusyCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasResultServerOfflineCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasResultServerDetachedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasResultServerInterruptCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasResultServerSessionExpiredCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasResultUnknownErrorCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasRestrictedNetworkFailedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasCaptivePresentFailedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasAlternatePathCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasExceededMssCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (unsigned)connectionDurationBucketsAtIndex:(unint64_t)a3
{
  p_connectionDurationBuckets = &self->_connectionDurationBuckets;
  count = self->_connectionDurationBuckets.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_connectionDurationBuckets->list[a3];
}

- (int)protocolType
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_protocolType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasProtocolType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (int)StringAsProtocolType:(id)a3
{
  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_IPv4"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_IPv6"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"NetworkServiceProxyProtocolType_NAT64"])
  {
    return 3;
  }

  return 1;
}

- (void)setHasResultServerOrphanedCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDNetworkServiceProxyConnectionStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDNetworkServiceProxyConnectionStatistics description](&v3, sel_description), -[AWDNetworkServiceProxyConnectionStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_38;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  v8 = self->_interfaceType - 1;
  if (v8 >= 4)
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
  }

  else
  {
    v9 = off_29EE32A48[v8];
  }

  [v3 setObject:v9 forKey:@"interface_type"];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionCount), @"connection_count"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tfoSuccessCount), @"tfo_success_count"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_41;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_mptcpSuccessCount), @"mptcp_success_count"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_42;
  }

LABEL_41:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_restrictedNetworkCount), @"restricted_network_count"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_42:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_captivePresentCount), @"captive_present_count"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultSuccessCount), @"result_success_count"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultNetworkUnavailableCount), @"result_network_unavailable_count"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerUnreachableCount), @"result_server_unreachable_count"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultSendFailureCount), @"result_send_failure_count"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultResponseTimeoutCount), @"result_response_timeout_count"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultConnectionResetCount), @"result_connection_reset_count"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerBusyCount), @"result_server_busy_count"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerOfflineCount), @"result_server_offline_count"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerDetachedCount), @"result_server_detached_count"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerInterruptCount), @"result_server_interrupt_count"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerSessionExpiredCount), @"result_server_session_expired_count"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultUnknownErrorCount), @"result_unknown_error_count"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_restrictedNetworkFailedCount), @"restricted_network_failed_count"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_captivePresentFailedCount), @"captive_present_failed_count"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_alternatePathCount), @"alternate_path_count"}];
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_exceededMssCount), @"exceeded_mss_count"}];
  }

LABEL_25:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"connection_duration_buckets"];
  v5 = self->_has;
  if ((*&v5 & 0x800000) != 0)
  {
    v6 = self->_protocolType - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_protocolType];
    }

    else
    {
      v7 = off_29EE32A68[v6];
    }

    [v3 setObject:v7 forKey:@"protocol_type"];
    v5 = self->_has;
  }

  if ((*&v5 & 0x1000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_resultServerOrphanedCount), @"result_server_orphaned_count"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  interfaceType = self->_interfaceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  connectionCount = self->_connectionCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  tfoSuccessCount = self->_tfoSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  mptcpSuccessCount = self->_mptcpSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_38;
  }

LABEL_37:
  restrictedNetworkCount = self->_restrictedNetworkCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_38:
  captivePresentCount = self->_captivePresentCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_40;
  }

LABEL_39:
  resultSuccessCount = self->_resultSuccessCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_41;
  }

LABEL_40:
  resultNetworkUnavailableCount = self->_resultNetworkUnavailableCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_42;
  }

LABEL_41:
  resultServerUnreachableCount = self->_resultServerUnreachableCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_43;
  }

LABEL_42:
  resultSendFailureCount = self->_resultSendFailureCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

LABEL_43:
  resultResponseTimeoutCount = self->_resultResponseTimeoutCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_45;
  }

LABEL_44:
  resultConnectionResetCount = self->_resultConnectionResetCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_45:
  resultServerBusyCount = self->_resultServerBusyCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_47;
  }

LABEL_46:
  resultServerOfflineCount = self->_resultServerOfflineCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_47:
  resultServerDetachedCount = self->_resultServerDetachedCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_49;
  }

LABEL_48:
  resultServerInterruptCount = self->_resultServerInterruptCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_50;
  }

LABEL_49:
  resultServerSessionExpiredCount = self->_resultServerSessionExpiredCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_51;
  }

LABEL_50:
  resultUnknownErrorCount = self->_resultUnknownErrorCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_52;
  }

LABEL_51:
  restrictedNetworkFailedCount = self->_restrictedNetworkFailedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_53;
  }

LABEL_52:
  captivePresentFailedCount = self->_captivePresentFailedCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_53:
  alternatePathCount = self->_alternatePathCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    exceededMssCount = self->_exceededMssCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  if (self->_connectionDurationBuckets.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_connectionDurationBuckets.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_connectionDurationBuckets.count);
  }

  v8 = self->_has;
  if ((*&v8 & 0x800000) != 0)
  {
    protocolType = self->_protocolType;
    PBDataWriterWriteInt32Field();
    v8 = self->_has;
  }

  if ((*&v8 & 0x1000) != 0)
  {
    resultServerOrphanedCount = self->_resultServerOrphanedCount;

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(a3 + 22) = self->_timestamp;
    *(a3 + 52) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 49) = self->_interfaceType;
  *(a3 + 52) |= 0x400000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 5) = self->_connectionCount;
  *(a3 + 52) |= 2u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 21) = self->_tfoSuccessCount;
  *(a3 + 52) |= 0x20000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 6) = self->_mptcpSuccessCount;
  *(a3 + 52) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 7) = self->_restrictedNetworkCount;
  *(a3 + 52) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 4) = self->_captivePresentCount;
  *(a3 + 52) |= 1u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 19) = self->_resultSuccessCount;
  *(a3 + 52) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 9) = self->_resultNetworkUnavailableCount;
  *(a3 + 52) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 18) = self->_resultServerUnreachableCount;
  *(a3 + 52) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 11) = self->_resultSendFailureCount;
  *(a3 + 52) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 10) = self->_resultResponseTimeoutCount;
  *(a3 + 52) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 8) = self->_resultConnectionResetCount;
  *(a3 + 52) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 12) = self->_resultServerBusyCount;
  *(a3 + 52) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 15) = self->_resultServerOfflineCount;
  *(a3 + 52) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 13) = self->_resultServerDetachedCount;
  *(a3 + 52) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 14) = self->_resultServerInterruptCount;
  *(a3 + 52) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 17) = self->_resultServerSessionExpiredCount;
  *(a3 + 52) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 20) = self->_resultUnknownErrorCount;
  *(a3 + 52) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 51) = self->_restrictedNetworkFailedCount;
  *(a3 + 52) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_23;
    }

LABEL_55:
    *(a3 + 46) = self->_alternatePathCount;
    *(a3 + 52) |= 0x80000u;
    if ((*&self->_has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  *(a3 + 47) = self->_captivePresentFailedCount;
  *(a3 + 52) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_55;
  }

LABEL_23:
  if ((*&has & 0x200000) != 0)
  {
LABEL_24:
    *(a3 + 48) = self->_exceededMssCount;
    *(a3 + 52) |= 0x200000u;
  }

LABEL_25:
  if ([(AWDNetworkServiceProxyConnectionStatistics *)self connectionDurationBucketsCount])
  {
    [a3 clearConnectionDurationBuckets];
    v6 = [(AWDNetworkServiceProxyConnectionStatistics *)self connectionDurationBucketsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addConnectionDurationBuckets:{-[AWDNetworkServiceProxyConnectionStatistics connectionDurationBucketsAtIndex:](self, "connectionDurationBucketsAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 0x800000) != 0)
  {
    *(a3 + 50) = self->_protocolType;
    *(a3 + 52) |= 0x800000u;
    v9 = self->_has;
  }

  if ((*&v9 & 0x1000) != 0)
  {
    *(a3 + 16) = self->_resultServerOrphanedCount;
    *(a3 + 52) |= 0x1000u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(v4 + 176) = self->_timestamp;
    *(v4 + 208) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x400000) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 196) = self->_interfaceType;
  *(v4 + 208) |= 0x400000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v4 + 40) = self->_connectionCount;
  *(v4 + 208) |= 2u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v4 + 168) = self->_tfoSuccessCount;
  *(v4 + 208) |= 0x20000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v4 + 48) = self->_mptcpSuccessCount;
  *(v4 + 208) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v4 + 56) = self->_restrictedNetworkCount;
  *(v4 + 208) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_8:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v4 + 32) = self->_captivePresentCount;
  *(v4 + 208) |= 1u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_9:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v4 + 152) = self->_resultSuccessCount;
  *(v4 + 208) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_10:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v4 + 72) = self->_resultNetworkUnavailableCount;
  *(v4 + 208) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v4 + 144) = self->_resultServerUnreachableCount;
  *(v4 + 208) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v4 + 88) = self->_resultSendFailureCount;
  *(v4 + 208) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v4 + 80) = self->_resultResponseTimeoutCount;
  *(v4 + 208) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v4 + 64) = self->_resultConnectionResetCount;
  *(v4 + 208) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v4 + 96) = self->_resultServerBusyCount;
  *(v4 + 208) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v4 + 120) = self->_resultServerOfflineCount;
  *(v4 + 208) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v4 + 104) = self->_resultServerDetachedCount;
  *(v4 + 208) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v4 + 112) = self->_resultServerInterruptCount;
  *(v4 + 208) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v4 + 136) = self->_resultServerSessionExpiredCount;
  *(v4 + 208) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v4 + 160) = self->_resultUnknownErrorCount;
  *(v4 + 208) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v4 + 204) = self->_restrictedNetworkFailedCount;
  *(v4 + 208) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_22:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v4 + 188) = self->_captivePresentFailedCount;
  *(v4 + 208) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_23:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_51:
  *(v4 + 184) = self->_alternatePathCount;
  *(v4 + 208) |= 0x80000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_24:
    *(v4 + 192) = self->_exceededMssCount;
    *(v4 + 208) |= 0x200000u;
  }

LABEL_25:
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((*&v7 & 0x800000) != 0)
  {
    *(v5 + 200) = self->_protocolType;
    *(v5 + 208) |= 0x800000u;
    v7 = self->_has;
  }

  if ((*&v7 & 0x1000) != 0)
  {
    *(v5 + 128) = self->_resultServerOrphanedCount;
    *(v5 + 208) |= 0x1000u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 52);
    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_timestamp != *(a3 + 22))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
LABEL_127:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_interfaceType != *(a3 + 49))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_connectionCount != *(a3 + 5))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_tfoSuccessCount != *(a3 + 21))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_mptcpSuccessCount != *(a3 + 6))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_restrictedNetworkCount != *(a3 + 7))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_127;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_captivePresentCount != *(a3 + 4))
      {
        goto LABEL_127;
      }
    }

    else if (v7)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_resultSuccessCount != *(a3 + 19))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_resultNetworkUnavailableCount != *(a3 + 9))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_resultServerUnreachableCount != *(a3 + 18))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_resultSendFailureCount != *(a3 + 11))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_resultResponseTimeoutCount != *(a3 + 10))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_resultConnectionResetCount != *(a3 + 8))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_resultServerBusyCount != *(a3 + 12))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_resultServerOfflineCount != *(a3 + 15))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_resultServerDetachedCount != *(a3 + 13))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_resultServerInterruptCount != *(a3 + 14))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_resultServerSessionExpiredCount != *(a3 + 17))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_resultUnknownErrorCount != *(a3 + 20))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_restrictedNetworkFailedCount != *(a3 + 51))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_captivePresentFailedCount != *(a3 + 47))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_alternatePathCount != *(a3 + 46))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_127;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_exceededMssCount != *(a3 + 48))
      {
        goto LABEL_127;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_127;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      v8 = self->_has;
      v9 = *(a3 + 52);
      if ((*&v8 & 0x800000) != 0)
      {
        if ((v9 & 0x800000) == 0 || self->_protocolType != *(a3 + 50))
        {
          goto LABEL_127;
        }
      }

      else if ((v9 & 0x800000) != 0)
      {
        goto LABEL_127;
      }

      LOBYTE(IsEqual) = (*(a3 + 52) & 0x1000) == 0;
      if ((*&v8 & 0x1000) != 0)
      {
        if ((v9 & 0x1000) == 0 || self->_resultServerOrphanedCount != *(a3 + 16))
        {
          goto LABEL_127;
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
  if ((*&has & 0x40000) != 0)
  {
    v31 = 2654435761u * self->_timestamp;
    if ((*&has & 0x400000) != 0)
    {
LABEL_3:
      v30 = 2654435761 * self->_interfaceType;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else
  {
    v31 = 0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_3;
    }
  }

  v30 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v29 = 2654435761u * self->_connectionCount;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_27:
  v29 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_5:
    v28 = 2654435761u * self->_tfoSuccessCount;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_28:
  v28 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_6:
    v27 = 2654435761u * self->_mptcpSuccessCount;
    if ((*&has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_30;
  }

LABEL_29:
  v27 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_7:
    v26 = 2654435761u * self->_restrictedNetworkCount;
    if (*&has)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_30:
  v26 = 0;
  if (*&has)
  {
LABEL_8:
    v25 = 2654435761u * self->_captivePresentCount;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_32;
  }

LABEL_31:
  v25 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_9:
    v24 = 2654435761u * self->_resultSuccessCount;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_33;
  }

LABEL_32:
  v24 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_10:
    v23 = 2654435761u * self->_resultNetworkUnavailableCount;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_34;
  }

LABEL_33:
  v23 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_11:
    v22 = 2654435761u * self->_resultServerUnreachableCount;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_35;
  }

LABEL_34:
  v22 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_12:
    v21 = 2654435761u * self->_resultSendFailureCount;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  v21 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_13:
    v20 = 2654435761u * self->_resultResponseTimeoutCount;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  v20 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_14:
    v19 = 2654435761u * self->_resultConnectionResetCount;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  v19 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_15:
    v18 = 2654435761u * self->_resultServerBusyCount;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  v18 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_16:
    v17 = 2654435761u * self->_resultServerOfflineCount;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  v17 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_17:
    v4 = 2654435761u * self->_resultServerDetachedCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  v4 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_18:
    v5 = 2654435761u * self->_resultServerInterruptCount;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  v5 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_19:
    v6 = 2654435761u * self->_resultServerSessionExpiredCount;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_20:
    v7 = 2654435761u * self->_resultUnknownErrorCount;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  v7 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_21:
    v8 = 2654435761 * self->_restrictedNetworkFailedCount;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  v8 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_22:
    v9 = 2654435761 * self->_captivePresentFailedCount;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_23;
    }

LABEL_46:
    v10 = 0;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_45:
  v9 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_46;
  }

LABEL_23:
  v10 = 2654435761 * self->_alternatePathCount;
  if ((*&has & 0x200000) != 0)
  {
LABEL_24:
    v11 = 2654435761 * self->_exceededMssCount;
    goto LABEL_48;
  }

LABEL_47:
  v11 = 0;
LABEL_48:
  v12 = PBRepeatedUInt32Hash();
  v13 = self->_has;
  if ((*&v13 & 0x800000) != 0)
  {
    v14 = 2654435761 * self->_protocolType;
    if ((*&v13 & 0x1000) != 0)
    {
      goto LABEL_50;
    }

LABEL_52:
    v15 = 0;
    return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((*&v13 & 0x1000) == 0)
  {
    goto LABEL_52;
  }

LABEL_50:
  v15 = 2654435761u * self->_resultServerOrphanedCount;
  return v30 ^ v31 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 52);
  if ((v5 & 0x40000) != 0)
  {
    self->_timestamp = *(a3 + 22);
    *&self->_has |= 0x40000u;
    v5 = *(a3 + 52);
    if ((v5 & 0x400000) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 0x400000) == 0)
  {
    goto LABEL_3;
  }

  self->_interfaceType = *(a3 + 49);
  *&self->_has |= 0x400000u;
  v5 = *(a3 + 52);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_connectionCount = *(a3 + 5);
  *&self->_has |= 2u;
  v5 = *(a3 + 52);
  if ((v5 & 0x20000) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_tfoSuccessCount = *(a3 + 21);
  *&self->_has |= 0x20000u;
  v5 = *(a3 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_mptcpSuccessCount = *(a3 + 6);
  *&self->_has |= 4u;
  v5 = *(a3 + 52);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_restrictedNetworkCount = *(a3 + 7);
  *&self->_has |= 8u;
  v5 = *(a3 + 52);
  if ((v5 & 1) == 0)
  {
LABEL_8:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_captivePresentCount = *(a3 + 4);
  *&self->_has |= 1u;
  v5 = *(a3 + 52);
  if ((v5 & 0x8000) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_resultSuccessCount = *(a3 + 19);
  *&self->_has |= 0x8000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x20) == 0)
  {
LABEL_10:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_resultNetworkUnavailableCount = *(a3 + 9);
  *&self->_has |= 0x20u;
  v5 = *(a3 + 52);
  if ((v5 & 0x4000) == 0)
  {
LABEL_11:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_resultServerUnreachableCount = *(a3 + 18);
  *&self->_has |= 0x4000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x80) == 0)
  {
LABEL_12:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_resultSendFailureCount = *(a3 + 11);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 52);
  if ((v5 & 0x40) == 0)
  {
LABEL_13:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_resultResponseTimeoutCount = *(a3 + 10);
  *&self->_has |= 0x40u;
  v5 = *(a3 + 52);
  if ((v5 & 0x10) == 0)
  {
LABEL_14:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_resultConnectionResetCount = *(a3 + 8);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 52);
  if ((v5 & 0x100) == 0)
  {
LABEL_15:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_resultServerBusyCount = *(a3 + 12);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 52);
  if ((v5 & 0x800) == 0)
  {
LABEL_16:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_resultServerOfflineCount = *(a3 + 15);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 52);
  if ((v5 & 0x200) == 0)
  {
LABEL_17:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_resultServerDetachedCount = *(a3 + 13);
  *&self->_has |= 0x200u;
  v5 = *(a3 + 52);
  if ((v5 & 0x400) == 0)
  {
LABEL_18:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_resultServerInterruptCount = *(a3 + 14);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 52);
  if ((v5 & 0x2000) == 0)
  {
LABEL_19:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_resultServerSessionExpiredCount = *(a3 + 17);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x10000) == 0)
  {
LABEL_20:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_resultUnknownErrorCount = *(a3 + 20);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_21:
    if ((v5 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_restrictedNetworkFailedCount = *(a3 + 51);
  *&self->_has |= 0x1000000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x100000) == 0)
  {
LABEL_22:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_captivePresentFailedCount = *(a3 + 47);
  *&self->_has |= 0x100000u;
  v5 = *(a3 + 52);
  if ((v5 & 0x80000) == 0)
  {
LABEL_23:
    if ((v5 & 0x200000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_54:
  self->_alternatePathCount = *(a3 + 46);
  *&self->_has |= 0x80000u;
  if ((*(a3 + 52) & 0x200000) != 0)
  {
LABEL_24:
    self->_exceededMssCount = *(a3 + 48);
    *&self->_has |= 0x200000u;
  }

LABEL_25:
  v6 = [a3 connectionDurationBucketsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDNetworkServiceProxyConnectionStatistics addConnectionDurationBuckets:](self, "addConnectionDurationBuckets:", [a3 connectionDurationBucketsAtIndex:i]);
    }
  }

  v9 = *(a3 + 52);
  if ((v9 & 0x800000) != 0)
  {
    self->_protocolType = *(a3 + 50);
    *&self->_has |= 0x800000u;
    v9 = *(a3 + 52);
  }

  if ((v9 & 0x1000) != 0)
  {
    self->_resultServerOrphanedCount = *(a3 + 16);
    *&self->_has |= 0x1000u;
  }
}

@end