@interface AWDLibnetcoreConnectionStatisticsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsConnectedInterfaceType:(id)a3;
- (int)StringAsInterfaceType:(id)a3;
- (int)connectedInterfaceType;
- (int)interfaceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAppReportingDataStallCount:(BOOL)a3;
- (void)setHasBestRTTMsecs:(BOOL)a3;
- (void)setHasBetterRouteEventCount:(BOOL)a3;
- (void)setHasBytesDuplicate:(BOOL)a3;
- (void)setHasBytesIn:(BOOL)a3;
- (void)setHasBytesOut:(BOOL)a3;
- (void)setHasBytesOutOfOrder:(BOOL)a3;
- (void)setHasBytesRetransmitted:(BOOL)a3;
- (void)setHasCellularFallback:(BOOL)a3;
- (void)setHasCellularRRCConnected:(BOOL)a3;
- (void)setHasConnected:(BOOL)a3;
- (void)setHasConnectedInterfaceType:(BOOL)a3;
- (void)setHasConnectionEstablishmentTimeMsecs:(BOOL)a3;
- (void)setHasConnectionReuseCount:(BOOL)a3;
- (void)setHasCurrentRTTMsecs:(BOOL)a3;
- (void)setHasDNSAnswersCached:(BOOL)a3;
- (void)setHasDNSResolvedTimeMsecs:(BOOL)a3;
- (void)setHasFirstParty:(BOOL)a3;
- (void)setHasFlowDurationMsecs:(BOOL)a3;
- (void)setHasIPAddressAttemptCount:(BOOL)a3;
- (void)setHasInterfaceType:(BOOL)a3;
- (void)setHasKernelReportedStalls:(BOOL)a3;
- (void)setHasKernelReportingConnectionStalled:(BOOL)a3;
- (void)setHasKernelReportingReadStalled:(BOOL)a3;
- (void)setHasKernelReportingWriteStalled:(BOOL)a3;
- (void)setHasMultipathBytesInCell:(BOOL)a3;
- (void)setHasMultipathBytesInInitial:(BOOL)a3;
- (void)setHasMultipathBytesInWiFi:(BOOL)a3;
- (void)setHasMultipathBytesOutCell:(BOOL)a3;
- (void)setHasMultipathBytesOutInitial:(BOOL)a3;
- (void)setHasMultipathBytesOutWiFi:(BOOL)a3;
- (void)setHasMultipathServiceType:(BOOL)a3;
- (void)setHasPacketsDuplicate:(BOOL)a3;
- (void)setHasPacketsIn:(BOOL)a3;
- (void)setHasPacketsOut:(BOOL)a3;
- (void)setHasPacketsOutOfOrder:(BOOL)a3;
- (void)setHasPacketsRetransmitted:(BOOL)a3;
- (void)setHasRTTvariance:(BOOL)a3;
- (void)setHasSmoothedRTTMsecs:(BOOL)a3;
- (void)setHasSynRetransmissionCount:(BOOL)a3;
- (void)setHasTcpFastOpen:(BOOL)a3;
- (void)setHasTimeToConnectionEstablishmentMsecs:(BOOL)a3;
- (void)setHasTimeToConnectionStartMsecs:(BOOL)a3;
- (void)setHasTimeToDNSResolvedMsecs:(BOOL)a3;
- (void)setHasTimeToDNSStartMsecs:(BOOL)a3;
- (void)setHasTrafficClass:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreConnectionStatisticsReport

- (void)setHasTimeToDNSResolvedMsecs:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasDNSAnswersCached:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasTimeToConnectionEstablishmentMsecs:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasIPAddressAttemptCount:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasFlowDurationMsecs:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (int)connectedInterfaceType
{
  if ((*(&self->_has + 4) & 8) != 0)
  {
    return self->_connectedInterfaceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasConnectedInterfaceType:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (int)StringAsConnectedInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"INTERFACE_TYPE_OTHER"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_CELLULAR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_WIRED"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasKernelReportedStalls:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasKernelReportingConnectionStalled:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasKernelReportingReadStalled:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasKernelReportingWriteStalled:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasBytesIn:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasBytesOut:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasBytesDuplicate:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasBytesOutOfOrder:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasBytesRetransmitted:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasPacketsIn:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasPacketsOut:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasPacketsDuplicate:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasPacketsOutOfOrder:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasPacketsRetransmitted:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasCurrentRTTMsecs:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSmoothedRTTMsecs:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasBestRTTMsecs:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasRTTvariance:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasSynRetransmissionCount:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasConnectionReuseCount:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasAppReportingDataStallCount:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasTrafficClass:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTcpFastOpen:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasCellularFallback:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasCellularRRCConnected:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasConnected:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (int)interfaceType
{
  if ((*(&self->_has + 4) & 0x10) != 0)
  {
    return self->_interfaceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasInterfaceType:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (int)StringAsInterfaceType:(id)a3
{
  if ([a3 isEqualToString:@"INTERFACE_TYPE_OTHER"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_WIFI"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_CELLULAR"])
  {
    return 2;
  }

  if ([a3 isEqualToString:@"INTERFACE_TYPE_WIRED"])
  {
    return 3;
  }

  return 0;
}

- (void)setHasTimeToDNSStartMsecs:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasDNSResolvedTimeMsecs:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasTimeToConnectionStartMsecs:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasConnectionEstablishmentTimeMsecs:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasBetterRouteEventCount:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasMultipathServiceType:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasFirstParty:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasMultipathBytesInCell:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasMultipathBytesOutCell:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasMultipathBytesInWiFi:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasMultipathBytesOutWiFi:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasMultipathBytesInInitial:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasMultipathBytesOutInitial:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreConnectionStatisticsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreConnectionStatisticsReport description](&v3, sel_description), -[AWDLibnetcoreConnectionStatisticsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeToDNSResolvedMsecs), @"timeToDNSResolved_msecs"}];
    has = self->_has;
    if ((*&has & 0x10000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((*&has & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_dNSAnswersCached), @"DNSAnswersCached"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeToConnectionEstablishmentMsecs), @"timeToConnectionEstablishment_msecs"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_iPAddressAttemptCount), @"IPAddressAttemptCount"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_flowDurationMsecs), @"flowDuration_msecs"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

LABEL_55:
  connectedInterfaceType = self->_connectedInterfaceType;
  if (connectedInterfaceType >= 4)
  {
    v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_connectedInterfaceType];
  }

  else
  {
    v7 = off_29EE32740[connectedInterfaceType];
  }

  [v3 setObject:v7 forKey:@"connectedInterfaceType"];
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_kernelReportedStalls), @"kernelReportedStalls"}];
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_kernelReportingConnectionStalled), @"kernelReportingConnectionStalled"}];
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_kernelReportingReadStalled), @"kernelReportingReadStalled"}];
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_kernelReportingWriteStalled), @"kernelReportingWriteStalled"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesIn), @"bytesIn"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOut), @"bytesOut"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesDuplicate), @"bytesDuplicate"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOutOfOrder), @"bytesOutOfOrder"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesRetransmitted), @"bytesRetransmitted"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsIn), @"packetsIn"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsOut), @"packetsOut"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsDuplicate), @"packetsDuplicate"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsOutOfOrder), @"packetsOutOfOrder"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsRetransmitted), @"packetsRetransmitted"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_currentRTTMsecs), @"currentRTT_msecs"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_smoothedRTTMsecs), @"smoothedRTT_msecs"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bestRTTMsecs), @"bestRTT_msecs"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rTTvariance), @"RTTvariance"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_synRetransmissionCount), @"synRetransmissionCount"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_27:
    if ((*&has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionReuseCount), @"connectionReuseCount"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_28:
    if ((*&has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_appReportingDataStallCount), @"appReportingDataStallCount"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_appDataStallTimerMsecs), @"appDataStallTimer_msecs"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_trafficClass), @"trafficClass"}];
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tcpFastOpen), @"tcpFastOpen"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cellularFallback), @"cellularFallback"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_cellularRRCConnected), @"cellularRRCConnected"}];
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_connected), @"connected"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_90;
  }

LABEL_86:
  interfaceType = self->_interfaceType;
  if (interfaceType >= 4)
  {
    v9 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_interfaceType];
  }

  else
  {
    v9 = off_29EE32740[interfaceType];
  }

  [v3 setObject:v9 forKey:@"interfaceType"];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_91;
  }

LABEL_90:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeToDNSStartMsecs), @"timeToDNSStart_msecs"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_37:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_92;
  }

LABEL_91:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dNSResolvedTimeMsecs), @"DNSResolvedTime_msecs"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_93;
  }

LABEL_92:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeToConnectionStartMsecs), @"timeToConnectionStart_msecs"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_39:
    if ((*&has & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_94;
  }

LABEL_93:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_connectionEstablishmentTimeMsecs), @"connectionEstablishmentTime_msecs"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_40:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_95;
  }

LABEL_94:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_betterRouteEventCount), @"betterRouteEventCount"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_96;
  }

LABEL_95:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathServiceType), @"multipathServiceType"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_97;
  }

LABEL_96:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_firstParty), @"firstParty"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_43:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_98;
  }

LABEL_97:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInCell), @"multipathBytesInCell"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_44:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_99;
  }

LABEL_98:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutCell), @"multipathBytesOutCell"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_45:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_100;
  }

LABEL_99:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInWiFi), @"multipathBytesInWiFi"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_47;
    }

LABEL_101:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesInInitial), @"multipathBytesInInitial"}];
    if ((*&self->_has & 0x80000) == 0)
    {
      return v3;
    }

    goto LABEL_48;
  }

LABEL_100:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutWiFi), @"multipathBytesOutWiFi"}];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_101;
  }

LABEL_47:
  if ((*&has & 0x80000) != 0)
  {
LABEL_48:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_multipathBytesOutInitial), @"multipathBytesOutInitial"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    timeToDNSResolvedMsecs = self->_timeToDNSResolvedMsecs;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x10000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((*&has & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  dNSAnswersCached = self->_dNSAnswersCached;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  timeToConnectionEstablishmentMsecs = self->_timeToConnectionEstablishmentMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  iPAddressAttemptCount = self->_iPAddressAttemptCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  flowDurationMsecs = self->_flowDurationMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  connectedInterfaceType = self->_connectedInterfaceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  kernelReportedStalls = self->_kernelReportedStalls;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  kernelReportingConnectionStalled = self->_kernelReportingConnectionStalled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  kernelReportingReadStalled = self->_kernelReportingReadStalled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  kernelReportingWriteStalled = self->_kernelReportingWriteStalled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  bytesIn = self->_bytesIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  bytesOut = self->_bytesOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  bytesDuplicate = self->_bytesDuplicate;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  bytesOutOfOrder = self->_bytesOutOfOrder;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  bytesRetransmitted = self->_bytesRetransmitted;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  packetsDuplicate = self->_packetsDuplicate;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  packetsOutOfOrder = self->_packetsOutOfOrder;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  packetsRetransmitted = self->_packetsRetransmitted;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  currentRTTMsecs = self->_currentRTTMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  smoothedRTTMsecs = self->_smoothedRTTMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  bestRTTMsecs = self->_bestRTTMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  rTTvariance = self->_rTTvariance;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  synRetransmissionCount = self->_synRetransmissionCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_27:
    if ((*&has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  connectionReuseCount = self->_connectionReuseCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_28:
    if ((*&has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  appReportingDataStallCount = self->_appReportingDataStallCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  appDataStallTimerMsecs = self->_appDataStallTimerMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  trafficClass = self->_trafficClass;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  tcpFastOpen = self->_tcpFastOpen;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  cellularFallback = self->_cellularFallback;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  cellularRRCConnected = self->_cellularRRCConnected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  connected = self->_connected;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  interfaceType = self->_interfaceType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  timeToDNSStartMsecs = self->_timeToDNSStartMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_37:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  dNSResolvedTimeMsecs = self->_dNSResolvedTimeMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  timeToConnectionStartMsecs = self->_timeToConnectionStartMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_39:
    if ((*&has & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  connectionEstablishmentTimeMsecs = self->_connectionEstablishmentTimeMsecs;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_40:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  betterRouteEventCount = self->_betterRouteEventCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  multipathServiceType = self->_multipathServiceType;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  firstParty = self->_firstParty;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_43:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  multipathBytesInCell = self->_multipathBytesInCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_44:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  multipathBytesOutCell = self->_multipathBytesOutCell;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_45:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  multipathBytesInWiFi = self->_multipathBytesInWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_47;
    }

LABEL_94:
    multipathBytesInInitial = self->_multipathBytesInInitial;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x80000) == 0)
    {
      return;
    }

    goto LABEL_95;
  }

LABEL_93:
  multipathBytesOutWiFi = self->_multipathBytesOutWiFi;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_94;
  }

LABEL_47:
  if ((*&has & 0x80000) == 0)
  {
    return;
  }

LABEL_95:
  multipathBytesOutInitial = self->_multipathBytesOutInitial;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    *(a3 + 33) = self->_timeToDNSResolvedMsecs;
    *(a3 + 308) |= 0x100000000uLL;
    has = self->_has;
    if ((*&has & 0x10000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((*&has & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 299) = self->_dNSAnswersCached;
  *(a3 + 308) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 31) = self->_timeToConnectionEstablishmentMsecs;
  *(a3 + 308) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 15) = self->_iPAddressAttemptCount;
  *(a3 + 308) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 14) = self->_flowDurationMsecs;
  *(a3 + 308) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 72) = self->_connectedInterfaceType;
  *(a3 + 308) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 301) = self->_kernelReportedStalls;
  *(a3 + 308) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 302) = self->_kernelReportingConnectionStalled;
  *(a3 + 308) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 303) = self->_kernelReportingReadStalled;
  *(a3 + 308) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 304) = self->_kernelReportingWriteStalled;
  *(a3 + 308) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 6) = self->_bytesIn;
  *(a3 + 308) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 7) = self->_bytesOut;
  *(a3 + 308) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 5) = self->_bytesDuplicate;
  *(a3 + 308) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 8) = self->_bytesOutOfOrder;
  *(a3 + 308) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 9) = self->_bytesRetransmitted;
  *(a3 + 308) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 24) = self->_packetsIn;
  *(a3 + 308) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 25) = self->_packetsOut;
  *(a3 + 308) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 23) = self->_packetsDuplicate;
  *(a3 + 308) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 26) = self->_packetsOutOfOrder;
  *(a3 + 308) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 27) = self->_packetsRetransmitted;
  *(a3 + 308) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 12) = self->_currentRTTMsecs;
  *(a3 + 308) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 29) = self->_smoothedRTTMsecs;
  *(a3 + 308) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 3) = self->_bestRTTMsecs;
  *(a3 + 308) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 28) = self->_rTTvariance;
  *(a3 + 308) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 30) = self->_synRetransmissionCount;
  *(a3 + 308) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_27:
    if ((*&has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 11) = self->_connectionReuseCount;
  *(a3 + 308) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_28:
    if ((*&has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 2) = self->_appReportingDataStallCount;
  *(a3 + 308) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 1) = self->_appDataStallTimerMsecs;
  *(a3 + 308) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 35) = self->_trafficClass;
  *(a3 + 308) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 305) = self->_tcpFastOpen;
  *(a3 + 308) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 296) = self->_cellularFallback;
  *(a3 + 308) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 297) = self->_cellularRRCConnected;
  *(a3 + 308) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 298) = self->_connected;
  *(a3 + 308) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 73) = self->_interfaceType;
  *(a3 + 308) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 34) = self->_timeToDNSStartMsecs;
  *(a3 + 308) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_37:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 13) = self->_dNSResolvedTimeMsecs;
  *(a3 + 308) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 32) = self->_timeToConnectionStartMsecs;
  *(a3 + 308) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_39:
    if ((*&has & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a3 + 10) = self->_connectionEstablishmentTimeMsecs;
  *(a3 + 308) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_40:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(a3 + 4) = self->_betterRouteEventCount;
  *(a3 + 308) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(a3 + 22) = self->_multipathServiceType;
  *(a3 + 308) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(a3 + 300) = self->_firstParty;
  *(a3 + 308) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_43:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(a3 + 16) = self->_multipathBytesInCell;
  *(a3 + 308) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_44:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a3 + 19) = self->_multipathBytesOutCell;
  *(a3 + 308) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_45:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a3 + 18) = self->_multipathBytesInWiFi;
  *(a3 + 308) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a3 + 21) = self->_multipathBytesOutWiFi;
  *(a3 + 308) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      return;
    }

LABEL_95:
    *(a3 + 20) = self->_multipathBytesOutInitial;
    *(a3 + 308) |= 0x80000uLL;
    return;
  }

LABEL_94:
  *(a3 + 17) = self->_multipathBytesInInitial;
  *(a3 + 308) |= 0x10000uLL;
  if ((*&self->_has & 0x80000) != 0)
  {
    goto LABEL_95;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    *(result + 33) = self->_timeToDNSResolvedMsecs;
    *(result + 308) |= 0x100000000uLL;
    has = self->_has;
    if ((*&has & 0x10000000000) == 0)
    {
LABEL_3:
      if ((*&has & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_52;
    }
  }

  else if ((*&has & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 299) = self->_dNSAnswersCached;
  *(result + 308) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 31) = self->_timeToConnectionEstablishmentMsecs;
  *(result + 308) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 15) = self->_iPAddressAttemptCount;
  *(result + 308) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_6:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 14) = self->_flowDurationMsecs;
  *(result + 308) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 72) = self->_connectedInterfaceType;
  *(result + 308) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 301) = self->_kernelReportedStalls;
  *(result + 308) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 302) = self->_kernelReportingConnectionStalled;
  *(result + 308) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 303) = self->_kernelReportingReadStalled;
  *(result + 308) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 304) = self->_kernelReportingWriteStalled;
  *(result + 308) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 6) = self->_bytesIn;
  *(result + 308) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 7) = self->_bytesOut;
  *(result + 308) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 5) = self->_bytesDuplicate;
  *(result + 308) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_15:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 8) = self->_bytesOutOfOrder;
  *(result + 308) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_16:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 9) = self->_bytesRetransmitted;
  *(result + 308) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 24) = self->_packetsIn;
  *(result + 308) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 25) = self->_packetsOut;
  *(result + 308) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 23) = self->_packetsDuplicate;
  *(result + 308) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 26) = self->_packetsOutOfOrder;
  *(result + 308) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 27) = self->_packetsRetransmitted;
  *(result + 308) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 12) = self->_currentRTTMsecs;
  *(result + 308) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 29) = self->_smoothedRTTMsecs;
  *(result + 308) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 3) = self->_bestRTTMsecs;
  *(result + 308) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 28) = self->_rTTvariance;
  *(result + 308) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 30) = self->_synRetransmissionCount;
  *(result + 308) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_27:
    if ((*&has & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(result + 11) = self->_connectionReuseCount;
  *(result + 308) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_28:
    if ((*&has & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(result + 2) = self->_appReportingDataStallCount;
  *(result + 308) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_29:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(result + 1) = self->_appDataStallTimerMsecs;
  *(result + 308) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(result + 35) = self->_trafficClass;
  *(result + 308) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(result + 305) = self->_tcpFastOpen;
  *(result + 308) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(result + 296) = self->_cellularFallback;
  *(result + 308) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(result + 297) = self->_cellularRRCConnected;
  *(result + 308) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(result + 298) = self->_connected;
  *(result + 308) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(result + 73) = self->_interfaceType;
  *(result + 308) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(result + 34) = self->_timeToDNSStartMsecs;
  *(result + 308) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_37:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(result + 13) = self->_dNSResolvedTimeMsecs;
  *(result + 308) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(result + 32) = self->_timeToConnectionStartMsecs;
  *(result + 308) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_39:
    if ((*&has & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(result + 10) = self->_connectionEstablishmentTimeMsecs;
  *(result + 308) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_40:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(result + 4) = self->_betterRouteEventCount;
  *(result + 308) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_41:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(result + 22) = self->_multipathServiceType;
  *(result + 308) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(result + 300) = self->_firstParty;
  *(result + 308) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_43:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(result + 16) = self->_multipathBytesInCell;
  *(result + 308) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_44:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(result + 19) = self->_multipathBytesOutCell;
  *(result + 308) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_45:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(result + 18) = self->_multipathBytesInWiFi;
  *(result + 308) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(result + 21) = self->_multipathBytesOutWiFi;
  *(result + 308) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      return result;
    }

    goto LABEL_48;
  }

LABEL_95:
  *(result + 17) = self->_multipathBytesInInitial;
  *(result + 308) |= 0x10000uLL;
  if ((*&self->_has & 0x80000) == 0)
  {
    return result;
  }

LABEL_48:
  *(result + 20) = self->_multipathBytesOutInitial;
  *(result + 308) |= 0x80000uLL;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 308);
  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0 || self->_timeToDNSResolvedMsecs != *(a3 + 33))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x10000000000) != 0)
  {
    if ((v7 & 0x10000000000) == 0)
    {
      goto LABEL_266;
    }

    v8 = *(a3 + 299);
    if (self->_dNSAnswersCached)
    {
      if ((*(a3 + 299) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 299))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x10000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0 || self->_timeToConnectionEstablishmentMsecs != *(a3 + 31))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_iPAddressAttemptCount != *(a3 + 15))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_flowDurationMsecs != *(a3 + 14))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x800000000) != 0)
  {
    if ((v7 & 0x800000000) == 0 || self->_connectedInterfaceType != *(a3 + 72))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x800000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x40000000000) != 0)
  {
    if ((v7 & 0x40000000000) == 0)
    {
      goto LABEL_266;
    }

    v9 = *(a3 + 301);
    if (self->_kernelReportedStalls)
    {
      if ((*(a3 + 301) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 301))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x40000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x80000000000) != 0)
  {
    if ((v7 & 0x80000000000) == 0)
    {
      goto LABEL_266;
    }

    v10 = *(a3 + 302);
    if (self->_kernelReportingConnectionStalled)
    {
      if ((*(a3 + 302) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 302))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x80000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x100000000000) != 0)
  {
    if ((v7 & 0x100000000000) == 0)
    {
      goto LABEL_266;
    }

    v11 = *(a3 + 303);
    if (self->_kernelReportingReadStalled)
    {
      if ((*(a3 + 303) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 303))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x100000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x200000000000) != 0)
  {
    if ((v7 & 0x200000000000) == 0)
    {
      goto LABEL_266;
    }

    v12 = *(a3 + 304);
    if (self->_kernelReportingWriteStalled)
    {
      if ((*(a3 + 304) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 304))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x200000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_bytesIn != *(a3 + 6))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_bytesOut != *(a3 + 7))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_bytesDuplicate != *(a3 + 5))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_bytesOutOfOrder != *(a3 + 8))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_bytesRetransmitted != *(a3 + 9))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_packetsIn != *(a3 + 24))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_packetsOut != *(a3 + 25))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_packetsDuplicate != *(a3 + 23))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x2000000) != 0)
  {
    if ((v7 & 0x2000000) == 0 || self->_packetsOutOfOrder != *(a3 + 26))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x2000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0 || self->_packetsRetransmitted != *(a3 + 27))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_currentRTTMsecs != *(a3 + 12))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v7 & 0x10000000) == 0 || self->_smoothedRTTMsecs != *(a3 + 29))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x10000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_bestRTTMsecs != *(a3 + 3))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0 || self->_rTTvariance != *(a3 + 28))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x20000000) != 0)
  {
    if ((v7 & 0x20000000) == 0 || self->_synRetransmissionCount != *(a3 + 30))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x20000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_connectionReuseCount != *(a3 + 11))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_appReportingDataStallCount != *(a3 + 2))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_266;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_appDataStallTimerMsecs != *(a3 + 1))
    {
      goto LABEL_266;
    }
  }

  else if (v7)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x400000000) != 0)
  {
    if ((v7 & 0x400000000) == 0 || self->_trafficClass != *(a3 + 35))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x400000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x400000000000) != 0)
  {
    if ((v7 & 0x400000000000) == 0)
    {
      goto LABEL_266;
    }

    v13 = *(a3 + 305);
    if (self->_tcpFastOpen)
    {
      if ((*(a3 + 305) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 305))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x400000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x2000000000) != 0)
  {
    if ((v7 & 0x2000000000) == 0)
    {
      goto LABEL_266;
    }

    v14 = *(a3 + 296);
    if (self->_cellularFallback)
    {
      if ((*(a3 + 296) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 296))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x2000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    if ((v7 & 0x4000000000) == 0)
    {
      goto LABEL_266;
    }

    v15 = *(a3 + 297);
    if (self->_cellularRRCConnected)
    {
      if ((*(a3 + 297) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 297))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x4000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x8000000000) != 0)
  {
    if ((v7 & 0x8000000000) == 0)
    {
      goto LABEL_266;
    }

    v16 = *(a3 + 298);
    if (self->_connected)
    {
      if ((*(a3 + 298) & 1) == 0)
      {
        goto LABEL_266;
      }
    }

    else if (*(a3 + 298))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x8000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    if ((v7 & 0x1000000000) == 0 || self->_interfaceType != *(a3 + 73))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x1000000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x200000000) != 0)
  {
    if ((v7 & 0x200000000) == 0 || self->_timeToDNSStartMsecs != *(a3 + 34))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x200000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_dNSResolvedTimeMsecs != *(a3 + 13))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0 || self->_timeToConnectionStartMsecs != *(a3 + 32))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_connectionEstablishmentTimeMsecs != *(a3 + 10))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_betterRouteEventCount != *(a3 + 4))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_multipathServiceType != *(a3 + 22))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x20000000000) == 0)
  {
    if ((v7 & 0x20000000000) != 0)
    {
      goto LABEL_266;
    }

    goto LABEL_237;
  }

  if ((v7 & 0x20000000000) == 0)
  {
    goto LABEL_266;
  }

  v17 = *(a3 + 300);
  if (self->_firstParty)
  {
    if ((*(a3 + 300) & 1) == 0)
    {
      goto LABEL_266;
    }

    goto LABEL_237;
  }

  if (*(a3 + 300))
  {
LABEL_266:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_237:
  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_multipathBytesInCell != *(a3 + 16))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_multipathBytesOutCell != *(a3 + 19))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_multipathBytesInWiFi != *(a3 + 18))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_multipathBytesOutWiFi != *(a3 + 21))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_266;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_multipathBytesInInitial != *(a3 + 17))
    {
      goto LABEL_266;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_266;
  }

  v18 = *(a3 + 308);
  LOBYTE(v5) = (v18 & 0x80000) == 0;
  if ((*&has & 0x80000) != 0)
  {
    if ((v18 & 0x80000) == 0 || self->_multipathBytesOutInitial != *(a3 + 20))
    {
      goto LABEL_266;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x100000000) != 0)
  {
    v50 = 2654435761u * self->_timeToDNSResolvedMsecs;
    if ((*&has & 0x10000000000) != 0)
    {
LABEL_3:
      v49 = 2654435761 * self->_dNSAnswersCached;
      if ((*&has & 0x40000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v50 = 0;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_3;
    }
  }

  v49 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_4:
    v48 = 2654435761u * self->_timeToConnectionEstablishmentMsecs;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  v48 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_5:
    v47 = 2654435761u * self->_iPAddressAttemptCount;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  v47 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_6:
    v46 = 2654435761u * self->_flowDurationMsecs;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  v46 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_7:
    v45 = 2654435761 * self->_connectedInterfaceType;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  v45 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_8:
    v44 = 2654435761 * self->_kernelReportedStalls;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  v44 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_9:
    v43 = 2654435761 * self->_kernelReportingConnectionStalled;
    if ((*&has & 0x100000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  v43 = 0;
  if ((*&has & 0x100000000000) != 0)
  {
LABEL_10:
    v42 = 2654435761 * self->_kernelReportingReadStalled;
    if ((*&has & 0x200000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  v42 = 0;
  if ((*&has & 0x200000000000) != 0)
  {
LABEL_11:
    v41 = 2654435761 * self->_kernelReportingWriteStalled;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  v41 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_12:
    v40 = 2654435761u * self->_bytesIn;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  v40 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_13:
    v39 = 2654435761u * self->_bytesOut;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  v39 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_14:
    v38 = 2654435761u * self->_bytesDuplicate;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  v38 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_15:
    v37 = 2654435761u * self->_bytesOutOfOrder;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  v37 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_16:
    v36 = 2654435761u * self->_bytesRetransmitted;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  v36 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_17:
    v35 = 2654435761u * self->_packetsIn;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  v35 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_18:
    v34 = 2654435761u * self->_packetsOut;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  v34 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_19:
    v33 = 2654435761u * self->_packetsDuplicate;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  v33 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_20:
    v32 = 2654435761u * self->_packetsOutOfOrder;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  v32 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_21:
    v31 = 2654435761u * self->_packetsRetransmitted;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  v31 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_22:
    v30 = 2654435761u * self->_currentRTTMsecs;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  v30 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_23:
    v3 = 2654435761u * self->_smoothedRTTMsecs;
    if ((*&has & 4) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  v3 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_24:
    v4 = 2654435761u * self->_bestRTTMsecs;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  v4 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_25:
    v5 = 2654435761u * self->_rTTvariance;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  v5 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_26:
    v6 = 2654435761u * self->_synRetransmissionCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  v6 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_27:
    v7 = 2654435761u * self->_connectionReuseCount;
    if ((*&has & 2) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  v7 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_28:
    v8 = 2654435761u * self->_appReportingDataStallCount;
    if (*&has)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  v8 = 0;
  if (*&has)
  {
LABEL_29:
    v9 = 2654435761u * self->_appDataStallTimerMsecs;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  v9 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_30:
    v10 = 2654435761u * self->_trafficClass;
    if ((*&has & 0x400000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  v10 = 0;
  if ((*&has & 0x400000000000) != 0)
  {
LABEL_31:
    v11 = 2654435761 * self->_tcpFastOpen;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  v11 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_32:
    v12 = 2654435761 * self->_cellularFallback;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  v12 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_33:
    v13 = 2654435761 * self->_cellularRRCConnected;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  v13 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_34:
    v14 = 2654435761 * self->_connected;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  v14 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_35:
    v15 = 2654435761 * self->_interfaceType;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  v15 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_36:
    v16 = 2654435761u * self->_timeToDNSStartMsecs;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  v16 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_37:
    v17 = 2654435761u * self->_dNSResolvedTimeMsecs;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  v17 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_38:
    v18 = 2654435761u * self->_timeToConnectionStartMsecs;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  v18 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_39:
    v19 = 2654435761u * self->_connectionEstablishmentTimeMsecs;
    if ((*&has & 8) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  v19 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_40:
    v20 = 2654435761u * self->_betterRouteEventCount;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  v20 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_41:
    v21 = 2654435761u * self->_multipathServiceType;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  v21 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_42:
    v22 = 2654435761 * self->_firstParty;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  v22 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_43:
    v23 = 2654435761u * self->_multipathBytesInCell;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  v23 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_44:
    v24 = 2654435761u * self->_multipathBytesOutCell;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  v24 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_45:
    v25 = 2654435761u * self->_multipathBytesInWiFi;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  v25 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_46:
    v26 = 2654435761u * self->_multipathBytesOutWiFi;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_47;
    }

LABEL_94:
    v27 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_48;
    }

LABEL_95:
    v28 = 0;
    return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_93:
  v26 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_94;
  }

LABEL_47:
  v27 = 2654435761u * self->_multipathBytesInInitial;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_95;
  }

LABEL_48:
  v28 = 2654435761u * self->_multipathBytesOutInitial;
  return v49 ^ v50 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 308);
  if ((v3 & 0x100000000) != 0)
  {
    self->_timeToDNSResolvedMsecs = *(a3 + 33);
    *&self->_has |= 0x100000000uLL;
    v3 = *(a3 + 308);
    if ((v3 & 0x10000000000) == 0)
    {
LABEL_3:
      if ((v3 & 0x40000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((v3 & 0x10000000000) == 0)
  {
    goto LABEL_3;
  }

  self->_dNSAnswersCached = *(a3 + 299);
  *&self->_has |= 0x10000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_timeToConnectionEstablishmentMsecs = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x4000) == 0)
  {
LABEL_5:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_iPAddressAttemptCount = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x2000) == 0)
  {
LABEL_6:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_flowDurationMsecs = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x40000000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_connectedInterfaceType = *(a3 + 72);
  *&self->_has |= 0x800000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x40000000000) == 0)
  {
LABEL_8:
    if ((v3 & 0x80000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_kernelReportedStalls = *(a3 + 301);
  *&self->_has |= 0x40000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x80000000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x100000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_kernelReportingConnectionStalled = *(a3 + 302);
  *&self->_has |= 0x80000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x100000000000) == 0)
  {
LABEL_10:
    if ((v3 & 0x200000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_kernelReportingReadStalled = *(a3 + 303);
  *&self->_has |= 0x100000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x200000000000) == 0)
  {
LABEL_11:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_kernelReportingWriteStalled = *(a3 + 304);
  *&self->_has |= 0x200000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x20) == 0)
  {
LABEL_12:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_bytesIn = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x40) == 0)
  {
LABEL_13:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_bytesOut = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x10) == 0)
  {
LABEL_14:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_bytesDuplicate = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x80) == 0)
  {
LABEL_15:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_bytesOutOfOrder = *(a3 + 8);
  *&self->_has |= 0x80uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x100) == 0)
  {
LABEL_16:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_bytesRetransmitted = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x800000) == 0)
  {
LABEL_17:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_packetsIn = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_18:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_packetsOut = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x400000) == 0)
  {
LABEL_19:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_packetsDuplicate = *(a3 + 23);
  *&self->_has |= 0x400000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_20:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_packetsOutOfOrder = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_21:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_packetsRetransmitted = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x800) == 0)
  {
LABEL_22:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_currentRTTMsecs = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_23:
    if ((v3 & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_smoothedRTTMsecs = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 4) == 0)
  {
LABEL_24:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_bestRTTMsecs = *(a3 + 3);
  *&self->_has |= 4uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_25:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_rTTvariance = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_synRetransmissionCount = *(a3 + 30);
  *&self->_has |= 0x20000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x400) == 0)
  {
LABEL_27:
    if ((v3 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_connectionReuseCount = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(a3 + 308);
  if ((v3 & 2) == 0)
  {
LABEL_28:
    if ((v3 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_appReportingDataStallCount = *(a3 + 2);
  *&self->_has |= 2uLL;
  v3 = *(a3 + 308);
  if ((v3 & 1) == 0)
  {
LABEL_29:
    if ((v3 & 0x400000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_appDataStallTimerMsecs = *(a3 + 1);
  *&self->_has |= 1uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_30:
    if ((v3 & 0x400000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_trafficClass = *(a3 + 35);
  *&self->_has |= 0x400000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x400000000000) == 0)
  {
LABEL_31:
    if ((v3 & 0x2000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_tcpFastOpen = *(a3 + 305);
  *&self->_has |= 0x400000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x2000000000) == 0)
  {
LABEL_32:
    if ((v3 & 0x4000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_cellularFallback = *(a3 + 296);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x4000000000) == 0)
  {
LABEL_33:
    if ((v3 & 0x8000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_cellularRRCConnected = *(a3 + 297);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x8000000000) == 0)
  {
LABEL_34:
    if ((v3 & 0x1000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_connected = *(a3 + 298);
  *&self->_has |= 0x8000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x1000000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_interfaceType = *(a3 + 73);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_timeToDNSStartMsecs = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x1000) == 0)
  {
LABEL_37:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_dNSResolvedTimeMsecs = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_timeToConnectionStartMsecs = *(a3 + 32);
  *&self->_has |= 0x80000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x200) == 0)
  {
LABEL_39:
    if ((v3 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_connectionEstablishmentTimeMsecs = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(a3 + 308);
  if ((v3 & 8) == 0)
  {
LABEL_40:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_betterRouteEventCount = *(a3 + 4);
  *&self->_has |= 8uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x200000) == 0)
  {
LABEL_41:
    if ((v3 & 0x20000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_multipathServiceType = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x20000000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_firstParty = *(a3 + 300);
  *&self->_has |= 0x20000000000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x8000) == 0)
  {
LABEL_43:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_multipathBytesInCell = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x40000) == 0)
  {
LABEL_44:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_multipathBytesOutCell = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x20000) == 0)
  {
LABEL_45:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_multipathBytesInWiFi = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x100000) == 0)
  {
LABEL_46:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_multipathBytesOutWiFi = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v3 = *(a3 + 308);
  if ((v3 & 0x10000) == 0)
  {
LABEL_47:
    if ((v3 & 0x80000) == 0)
    {
      return;
    }

LABEL_95:
    self->_multipathBytesOutInitial = *(a3 + 20);
    *&self->_has |= 0x80000uLL;
    return;
  }

LABEL_94:
  self->_multipathBytesInInitial = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  if ((*(a3 + 308) & 0x80000) != 0)
  {
    goto LABEL_95;
  }
}

@end