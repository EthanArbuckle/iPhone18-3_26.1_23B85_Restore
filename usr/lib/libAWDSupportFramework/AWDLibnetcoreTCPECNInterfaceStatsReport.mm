@interface AWDLibnetcoreTCPECNInterfaceStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIpProtocol:(BOOL)a3;
- (void)setHasTcpECNIntClientSetup:(BOOL)a3;
- (void)setHasTcpECNIntClientSuccess:(BOOL)a3;
- (void)setHasTcpECNIntConnNoPLCE:(BOOL)a3;
- (void)setHasTcpECNIntConnPLCE:(BOOL)a3;
- (void)setHasTcpECNIntConnPLNoCE:(BOOL)a3;
- (void)setHasTcpECNIntConnRecvCE:(BOOL)a3;
- (void)setHasTcpECNIntConnRecvECE:(BOOL)a3;
- (void)setHasTcpECNIntFallbackCE:(BOOL)a3;
- (void)setHasTcpECNIntFallbackDropRst:(BOOL)a3;
- (void)setHasTcpECNIntFallbackDropRxmt:(BOOL)a3;
- (void)setHasTcpECNIntFallbackReorder:(BOOL)a3;
- (void)setHasTcpECNIntFallbackSYNRst:(BOOL)a3;
- (void)setHasTcpECNIntFallbackSynLoss:(BOOL)a3;
- (void)setHasTcpECNIntNotSupportedPeer:(BOOL)a3;
- (void)setHasTcpECNIntOffAvgRTT:(BOOL)a3;
- (void)setHasTcpECNIntOffDropRst:(BOOL)a3;
- (void)setHasTcpECNIntOffDropRxmt:(BOOL)a3;
- (void)setHasTcpECNIntOffOOBPer:(BOOL)a3;
- (void)setHasTcpECNIntOffRTTVar:(BOOL)a3;
- (void)setHasTcpECNIntOffReorderPer:(BOOL)a3;
- (void)setHasTcpECNIntOffRxmtPer:(BOOL)a3;
- (void)setHasTcpECNIntOffSACKE:(BOOL)a3;
- (void)setHasTcpECNIntOffTotalOOPkts:(BOOL)a3;
- (void)setHasTcpECNIntOffTotalRxPkts:(BOOL)a3;
- (void)setHasTcpECNIntOffTotalRxmtPkts:(BOOL)a3;
- (void)setHasTcpECNIntOffTotalTxPkts:(BOOL)a3;
- (void)setHasTcpECNIntOnAvgRTT:(BOOL)a3;
- (void)setHasTcpECNIntOnDropRst:(BOOL)a3;
- (void)setHasTcpECNIntOnDropRxmt:(BOOL)a3;
- (void)setHasTcpECNIntOnOOBPer:(BOOL)a3;
- (void)setHasTcpECNIntOnRTTVar:(BOOL)a3;
- (void)setHasTcpECNIntOnReorderPer:(BOOL)a3;
- (void)setHasTcpECNIntOnSACKE:(BOOL)a3;
- (void)setHasTcpECNIntOnTotalOOPkts:(BOOL)a3;
- (void)setHasTcpECNIntOnTotalRxPkts:(BOOL)a3;
- (void)setHasTcpECNIntOnTotalRxmtPkts:(BOOL)a3;
- (void)setHasTcpECNIntOnTotalTxPkts:(BOOL)a3;
- (void)setHasTcpECNIntRecvCE:(BOOL)a3;
- (void)setHasTcpECNIntRecvECE:(BOOL)a3;
- (void)setHasTcpECNIntRxmtPer:(BOOL)a3;
- (void)setHasTcpECNIntSentECE:(BOOL)a3;
- (void)setHasTcpECNIntServerSetup:(BOOL)a3;
- (void)setHasTcpECNIntServerSuccess:(BOOL)a3;
- (void)setHasTcpECNIntSynAckLost:(BOOL)a3;
- (void)setHasTcpECNIntSynLost:(BOOL)a3;
- (void)setHasTcpECNIntTotalConnections:(BOOL)a3;
- (void)setHasTcpUnsentDataAtSleepCnt:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreTCPECNInterfaceStatsReport

- (void)setHasIpProtocol:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasTcpECNIntClientSetup:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasTcpECNIntServerSetup:(BOOL)a3
{
  v3 = 0x80000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntClientSuccess:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasTcpECNIntServerSuccess:(BOOL)a3
{
  v3 = 0x100000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntNotSupportedPeer:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasTcpECNIntSynLost:(BOOL)a3
{
  v3 = 0x400000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntSynAckLost:(BOOL)a3
{
  v3 = 0x200000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntRecvCE:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntRecvECE:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntSentECE:(BOOL)a3
{
  v3 = 0x40000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntConnRecvCE:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasTcpECNIntConnRecvECE:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasTcpECNIntConnPLNoCE:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasTcpECNIntConnPLCE:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasTcpECNIntConnNoPLCE:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasTcpECNIntFallbackSynLoss:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasTcpECNIntFallbackReorder:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasTcpECNIntFallbackCE:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasTcpECNIntOnAvgRTT:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnRTTVar:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnOOBPer:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnSACKE:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnReorderPer:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntRxmtPer:(BOOL)a3
{
  v3 = 0x20000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffAvgRTT:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasTcpECNIntOffRTTVar:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffOOBPer:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasTcpECNIntOffSACKE:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasTcpECNIntOffReorderPer:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffRxmtPer:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnTotalTxPkts:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnTotalRxmtPkts:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnTotalRxPkts:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnTotalOOPkts:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnDropRst:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOnDropRxmt:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffTotalTxPkts:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffTotalRxmtPkts:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffTotalRxPkts:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffTotalOOPkts:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasTcpECNIntOffDropRst:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasTcpECNIntOffDropRxmt:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasTcpECNIntTotalConnections:(BOOL)a3
{
  v3 = 0x800000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFFFFFFFFFFLL | v3);
}

- (void)setHasTcpUnsentDataAtSleepCnt:(BOOL)a3
{
  v3 = 0x1000000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFFFFFFFFFFLL | v3);
}

- (void)setHasTcpECNIntFallbackDropRst:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTcpECNIntFallbackDropRxmt:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasTcpECNIntFallbackSYNRst:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreTCPECNInterfaceStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPECNInterfaceStatsReport description](&v3, sel_description), -[AWDLibnetcoreTCPECNInterfaceStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (*&has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_interfaceType), @"interfaceType"}];
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_ipProtocol), @"ipProtocol"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntClientSetup), @"tcpECNIntClientSetup"}];
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntServerSetup), @"tcpECNIntServerSetup"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntClientSuccess), @"tcpECNIntClientSuccess"}];
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntServerSuccess), @"tcpECNIntServerSuccess"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntNotSupportedPeer), @"tcpECNIntNotSupportedPeer"}];
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntSynLost), @"tcpECNIntSynLost"}];
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntSynAckLost), @"tcpECNIntSynAckLost"}];
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntRecvCE), @"tcpECNIntRecvCE"}];
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntRecvECE), @"tcpECNIntRecvECE"}];
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntSentECE), @"tcpECNIntSentECE"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntConnRecvCE), @"tcpECNIntConnRecvCE"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntConnRecvECE), @"tcpECNIntConnRecvECE"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntConnPLNoCE), @"tcpECNIntConnPLNoCE"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntConnPLCE), @"tcpECNIntConnPLCE"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntConnNoPLCE), @"tcpECNIntConnNoPLCE"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackSynLoss), @"tcpECNIntFallbackSynLoss"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackReorder), @"tcpECNIntFallbackReorder"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackCE), @"tcpECNIntFallbackCE"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnAvgRTT), @"tcpECNIntOnAvgRTT"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnRTTVar), @"tcpECNIntOnRTTVar"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnOOBPer), @"tcpECNIntOnOOBPer"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnSACKE), @"tcpECNIntOnSACKE"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnReorderPer), @"tcpECNIntOnReorderPer"}];
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntRxmtPer), @"tcpECNIntRxmtPer"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffAvgRTT), @"tcpECNIntOffAvgRTT"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffRTTVar), @"tcpECNIntOffRTTVar"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffOOBPer), @"tcpECNIntOffOOBPer"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffSACKE), @"tcpECNIntOffSACKE"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffReorderPer), @"tcpECNIntOffReorderPer"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffRxmtPer), @"tcpECNIntOffRxmtPer"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnTotalTxPkts), @"tcpECNIntOnTotalTxPkts"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnTotalRxmtPkts), @"tcpECNIntOnTotalRxmtPkts"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnTotalRxPkts), @"tcpECNIntOnTotalRxPkts"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnTotalOOPkts), @"tcpECNIntOnTotalOOPkts"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnDropRst), @"tcpECNIntOnDropRst"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOnDropRxmt), @"tcpECNIntOnDropRxmt"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffTotalTxPkts), @"tcpECNIntOffTotalTxPkts"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffTotalRxmtPkts), @"tcpECNIntOffTotalRxmtPkts"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffTotalRxPkts), @"tcpECNIntOffTotalRxPkts"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffTotalOOPkts), @"tcpECNIntOffTotalOOPkts"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_44:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffDropRst), @"tcpECNIntOffDropRst"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntOffDropRxmt), @"tcpECNIntOffDropRxmt"}];
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntTotalConnections), @"tcpECNIntTotalConnections"}];
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpUnsentDataAtSleepCnt), @"tcpUnsentDataAtSleepCnt"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_48:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_49;
    }

LABEL_99:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackDropRxmt), @"tcpECNIntFallbackDropRxmt"}];
    if ((*&self->_has & 0x2000) == 0)
    {
      return v3;
    }

    goto LABEL_50;
  }

LABEL_98:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackDropRst), @"tcpECNIntFallbackDropRst"}];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    goto LABEL_99;
  }

LABEL_49:
  if ((*&has & 0x2000) != 0)
  {
LABEL_50:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNIntFallbackSYNRst), @"tcpECNIntFallbackSYNRst"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    interfaceType = self->_interfaceType;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  ipProtocol = self->_ipProtocol;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  tcpECNIntClientSetup = self->_tcpECNIntClientSetup;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  tcpECNIntServerSetup = self->_tcpECNIntServerSetup;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  tcpECNIntClientSuccess = self->_tcpECNIntClientSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  tcpECNIntServerSuccess = self->_tcpECNIntServerSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  tcpECNIntNotSupportedPeer = self->_tcpECNIntNotSupportedPeer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  tcpECNIntSynLost = self->_tcpECNIntSynLost;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  tcpECNIntSynAckLost = self->_tcpECNIntSynAckLost;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  tcpECNIntRecvCE = self->_tcpECNIntRecvCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  tcpECNIntRecvECE = self->_tcpECNIntRecvECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  tcpECNIntSentECE = self->_tcpECNIntSentECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  tcpECNIntConnRecvCE = self->_tcpECNIntConnRecvCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  tcpECNIntConnRecvECE = self->_tcpECNIntConnRecvECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  tcpECNIntConnPLNoCE = self->_tcpECNIntConnPLNoCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  tcpECNIntConnPLCE = self->_tcpECNIntConnPLCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  tcpECNIntConnNoPLCE = self->_tcpECNIntConnNoPLCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  tcpECNIntFallbackSynLoss = self->_tcpECNIntFallbackSynLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  tcpECNIntFallbackReorder = self->_tcpECNIntFallbackReorder;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  tcpECNIntFallbackCE = self->_tcpECNIntFallbackCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  tcpECNIntOnAvgRTT = self->_tcpECNIntOnAvgRTT;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  tcpECNIntOnRTTVar = self->_tcpECNIntOnRTTVar;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  tcpECNIntOnOOBPer = self->_tcpECNIntOnOOBPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  tcpECNIntOnSACKE = self->_tcpECNIntOnSACKE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  tcpECNIntOnReorderPer = self->_tcpECNIntOnReorderPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  tcpECNIntRxmtPer = self->_tcpECNIntRxmtPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  tcpECNIntOffAvgRTT = self->_tcpECNIntOffAvgRTT;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  tcpECNIntOffRTTVar = self->_tcpECNIntOffRTTVar;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  tcpECNIntOffOOBPer = self->_tcpECNIntOffOOBPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  tcpECNIntOffSACKE = self->_tcpECNIntOffSACKE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  tcpECNIntOffReorderPer = self->_tcpECNIntOffReorderPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  tcpECNIntOffRxmtPer = self->_tcpECNIntOffRxmtPer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  tcpECNIntOnTotalTxPkts = self->_tcpECNIntOnTotalTxPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  tcpECNIntOnTotalRxmtPkts = self->_tcpECNIntOnTotalRxmtPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  tcpECNIntOnTotalRxPkts = self->_tcpECNIntOnTotalRxPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  tcpECNIntOnTotalOOPkts = self->_tcpECNIntOnTotalOOPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  tcpECNIntOnDropRst = self->_tcpECNIntOnDropRst;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  tcpECNIntOnDropRxmt = self->_tcpECNIntOnDropRxmt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  tcpECNIntOffTotalTxPkts = self->_tcpECNIntOffTotalTxPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  tcpECNIntOffTotalRxmtPkts = self->_tcpECNIntOffTotalRxmtPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  tcpECNIntOffTotalRxPkts = self->_tcpECNIntOffTotalRxPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  tcpECNIntOffTotalOOPkts = self->_tcpECNIntOffTotalOOPkts;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_44:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  tcpECNIntOffDropRst = self->_tcpECNIntOffDropRst;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  tcpECNIntOffDropRxmt = self->_tcpECNIntOffDropRxmt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  tcpECNIntTotalConnections = self->_tcpECNIntTotalConnections;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  tcpUnsentDataAtSleepCnt = self->_tcpUnsentDataAtSleepCnt;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_48:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_49;
    }

LABEL_98:
    tcpECNIntFallbackDropRxmt = self->_tcpECNIntFallbackDropRxmt;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_99;
  }

LABEL_97:
  tcpECNIntFallbackDropRst = self->_tcpECNIntFallbackDropRst;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    goto LABEL_98;
  }

LABEL_49:
  if ((*&has & 0x2000) == 0)
  {
    return;
  }

LABEL_99:
  tcpECNIntFallbackSYNRst = self->_tcpECNIntFallbackSYNRst;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (*&has)
  {
    *(a3 + 1) = self->_interfaceType;
    *(a3 + 50) |= 1uLL;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_ipProtocol;
  *(a3 + 50) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 3) = self->_tcpECNIntClientSetup;
  *(a3 + 50) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 44) = self->_tcpECNIntServerSetup;
  *(a3 + 50) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 4) = self->_tcpECNIntClientSuccess;
  *(a3 + 50) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 45) = self->_tcpECNIntServerSuccess;
  *(a3 + 50) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 16) = self->_tcpECNIntNotSupportedPeer;
  *(a3 + 50) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 47) = self->_tcpECNIntSynLost;
  *(a3 + 50) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 46) = self->_tcpECNIntSynAckLost;
  *(a3 + 50) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 40) = self->_tcpECNIntRecvCE;
  *(a3 + 50) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 41) = self->_tcpECNIntRecvECE;
  *(a3 + 50) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 43) = self->_tcpECNIntSentECE;
  *(a3 + 50) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 8) = self->_tcpECNIntConnRecvCE;
  *(a3 + 50) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 9) = self->_tcpECNIntConnRecvECE;
  *(a3 + 50) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 7) = self->_tcpECNIntConnPLNoCE;
  *(a3 + 50) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 6) = self->_tcpECNIntConnPLCE;
  *(a3 + 50) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 5) = self->_tcpECNIntConnNoPLCE;
  *(a3 + 50) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 15) = self->_tcpECNIntFallbackSynLoss;
  *(a3 + 50) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 13) = self->_tcpECNIntFallbackReorder;
  *(a3 + 50) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 10) = self->_tcpECNIntFallbackCE;
  *(a3 + 50) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 29) = self->_tcpECNIntOnAvgRTT;
  *(a3 + 50) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 33) = self->_tcpECNIntOnRTTVar;
  *(a3 + 50) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 32) = self->_tcpECNIntOnOOBPer;
  *(a3 + 50) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 35) = self->_tcpECNIntOnSACKE;
  *(a3 + 50) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 34) = self->_tcpECNIntOnReorderPer;
  *(a3 + 50) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 42) = self->_tcpECNIntRxmtPer;
  *(a3 + 50) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 17) = self->_tcpECNIntOffAvgRTT;
  *(a3 + 50) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 21) = self->_tcpECNIntOffRTTVar;
  *(a3 + 50) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 20) = self->_tcpECNIntOffOOBPer;
  *(a3 + 50) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 24) = self->_tcpECNIntOffSACKE;
  *(a3 + 50) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 22) = self->_tcpECNIntOffReorderPer;
  *(a3 + 50) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 23) = self->_tcpECNIntOffRxmtPer;
  *(a3 + 50) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 39) = self->_tcpECNIntOnTotalTxPkts;
  *(a3 + 50) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 38) = self->_tcpECNIntOnTotalRxmtPkts;
  *(a3 + 50) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 37) = self->_tcpECNIntOnTotalRxPkts;
  *(a3 + 50) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a3 + 36) = self->_tcpECNIntOnTotalOOPkts;
  *(a3 + 50) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(a3 + 30) = self->_tcpECNIntOnDropRst;
  *(a3 + 50) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(a3 + 31) = self->_tcpECNIntOnDropRxmt;
  *(a3 + 50) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(a3 + 28) = self->_tcpECNIntOffTotalTxPkts;
  *(a3 + 50) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(a3 + 27) = self->_tcpECNIntOffTotalRxmtPkts;
  *(a3 + 50) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a3 + 26) = self->_tcpECNIntOffTotalRxPkts;
  *(a3 + 50) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a3 + 25) = self->_tcpECNIntOffTotalOOPkts;
  *(a3 + 50) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_44:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(a3 + 18) = self->_tcpECNIntOffDropRst;
  *(a3 + 50) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(a3 + 19) = self->_tcpECNIntOffDropRxmt;
  *(a3 + 50) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(a3 + 48) = self->_tcpECNIntTotalConnections;
  *(a3 + 50) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(a3 + 49) = self->_tcpUnsentDataAtSleepCnt;
  *(a3 + 50) |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_48:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a3 + 11) = self->_tcpECNIntFallbackDropRst;
  *(a3 + 50) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000) == 0)
    {
      return;
    }

LABEL_99:
    *(a3 + 14) = self->_tcpECNIntFallbackSYNRst;
    *(a3 + 50) |= 0x2000uLL;
    return;
  }

LABEL_98:
  *(a3 + 12) = self->_tcpECNIntFallbackDropRxmt;
  *(a3 + 50) |= 0x800uLL;
  if ((*&self->_has & 0x2000) != 0)
  {
    goto LABEL_99;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (*&has)
  {
    *(result + 1) = self->_interfaceType;
    *(result + 50) |= 1uLL;
    has = self->_has;
    if ((*&has & 2) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_54;
    }
  }

  else if ((*&has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 2) = self->_ipProtocol;
  *(result + 50) |= 2uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 3) = self->_tcpECNIntClientSetup;
  *(result + 50) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x80000000000) == 0)
  {
LABEL_5:
    if ((*&has & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 44) = self->_tcpECNIntServerSetup;
  *(result + 50) |= 0x80000000000uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_6:
    if ((*&has & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 4) = self->_tcpECNIntClientSuccess;
  *(result + 50) |= 8uLL;
  has = self->_has;
  if ((*&has & 0x100000000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 45) = self->_tcpECNIntServerSuccess;
  *(result + 50) |= 0x100000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 16) = self->_tcpECNIntNotSupportedPeer;
  *(result + 50) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x400000000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x200000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 47) = self->_tcpECNIntSynLost;
  *(result + 50) |= 0x400000000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 46) = self->_tcpECNIntSynAckLost;
  *(result + 50) |= 0x200000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 40) = self->_tcpECNIntRecvCE;
  *(result + 50) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 41) = self->_tcpECNIntRecvECE;
  *(result + 50) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 43) = self->_tcpECNIntSentECE;
  *(result + 50) |= 0x40000000000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_14:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 8) = self->_tcpECNIntConnRecvCE;
  *(result + 50) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_15:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 9) = self->_tcpECNIntConnRecvECE;
  *(result + 50) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_16:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 7) = self->_tcpECNIntConnPLNoCE;
  *(result + 50) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_17:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 6) = self->_tcpECNIntConnPLCE;
  *(result + 50) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_18:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 5) = self->_tcpECNIntConnNoPLCE;
  *(result + 50) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_19:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 15) = self->_tcpECNIntFallbackSynLoss;
  *(result + 50) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 13) = self->_tcpECNIntFallbackReorder;
  *(result + 50) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_21:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 10) = self->_tcpECNIntFallbackCE;
  *(result + 50) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_22:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 29) = self->_tcpECNIntOnAvgRTT;
  *(result + 50) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_23:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 33) = self->_tcpECNIntOnRTTVar;
  *(result + 50) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 32) = self->_tcpECNIntOnOOBPer;
  *(result + 50) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_25:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(result + 35) = self->_tcpECNIntOnSACKE;
  *(result + 50) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_26:
    if ((*&has & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(result + 34) = self->_tcpECNIntOnReorderPer;
  *(result + 50) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000000) == 0)
  {
LABEL_27:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(result + 42) = self->_tcpECNIntRxmtPer;
  *(result + 50) |= 0x20000000000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_28:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(result + 17) = self->_tcpECNIntOffAvgRTT;
  *(result + 50) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(result + 21) = self->_tcpECNIntOffRTTVar;
  *(result + 50) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(result + 20) = self->_tcpECNIntOffOOBPer;
  *(result + 50) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_31:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(result + 24) = self->_tcpECNIntOffSACKE;
  *(result + 50) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_32:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(result + 22) = self->_tcpECNIntOffReorderPer;
  *(result + 50) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_33:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(result + 23) = self->_tcpECNIntOffRxmtPer;
  *(result + 50) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(result + 39) = self->_tcpECNIntOnTotalTxPkts;
  *(result + 50) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(result + 38) = self->_tcpECNIntOnTotalRxmtPkts;
  *(result + 50) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(result + 37) = self->_tcpECNIntOnTotalRxPkts;
  *(result + 50) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(result + 36) = self->_tcpECNIntOnTotalOOPkts;
  *(result + 50) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(result + 30) = self->_tcpECNIntOnDropRst;
  *(result + 50) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(result + 31) = self->_tcpECNIntOnDropRxmt;
  *(result + 50) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(result + 28) = self->_tcpECNIntOffTotalTxPkts;
  *(result + 50) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(result + 27) = self->_tcpECNIntOffTotalRxmtPkts;
  *(result + 50) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(result + 26) = self->_tcpECNIntOffTotalRxPkts;
  *(result + 50) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(result + 25) = self->_tcpECNIntOffTotalOOPkts;
  *(result + 50) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_44:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(result + 18) = self->_tcpECNIntOffDropRst;
  *(result + 50) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_45:
    if ((*&has & 0x800000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(result + 19) = self->_tcpECNIntOffDropRxmt;
  *(result + 50) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x800000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x1000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_97;
  }

LABEL_96:
  *(result + 48) = self->_tcpECNIntTotalConnections;
  *(result + 50) |= 0x800000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(result + 49) = self->_tcpUnsentDataAtSleepCnt;
  *(result + 50) |= 0x1000000000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_48:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(result + 11) = self->_tcpECNIntFallbackDropRst;
  *(result + 50) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000) == 0)
    {
      return result;
    }

    goto LABEL_50;
  }

LABEL_99:
  *(result + 12) = self->_tcpECNIntFallbackDropRxmt;
  *(result + 50) |= 0x800uLL;
  if ((*&self->_has & 0x2000) == 0)
  {
    return result;
  }

LABEL_50:
  *(result + 14) = self->_tcpECNIntFallbackSYNRst;
  *(result + 50) |= 0x2000uLL;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 50);
    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_interfaceType != *(a3 + 1))
      {
        goto LABEL_246;
      }
    }

    else if (v7)
    {
LABEL_246:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_ipProtocol != *(a3 + 2))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_tcpECNIntClientSetup != *(a3 + 3))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x80000000000) != 0)
    {
      if ((v7 & 0x80000000000) == 0 || self->_tcpECNIntServerSetup != *(a3 + 44))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x80000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_tcpECNIntClientSuccess != *(a3 + 4))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x100000000000) != 0)
    {
      if ((v7 & 0x100000000000) == 0 || self->_tcpECNIntServerSuccess != *(a3 + 45))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x100000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_tcpECNIntNotSupportedPeer != *(a3 + 16))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x400000000000) != 0)
    {
      if ((v7 & 0x400000000000) == 0 || self->_tcpECNIntSynLost != *(a3 + 47))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x400000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x200000000000) != 0)
    {
      if ((v7 & 0x200000000000) == 0 || self->_tcpECNIntSynAckLost != *(a3 + 46))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x200000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x8000000000) != 0)
    {
      if ((v7 & 0x8000000000) == 0 || self->_tcpECNIntRecvCE != *(a3 + 40))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x8000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x10000000000) != 0)
    {
      if ((v7 & 0x10000000000) == 0 || self->_tcpECNIntRecvECE != *(a3 + 41))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x10000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x40000000000) != 0)
    {
      if ((v7 & 0x40000000000) == 0 || self->_tcpECNIntSentECE != *(a3 + 43))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x40000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_tcpECNIntConnRecvCE != *(a3 + 8))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_tcpECNIntConnRecvECE != *(a3 + 9))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_tcpECNIntConnPLNoCE != *(a3 + 7))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_tcpECNIntConnPLCE != *(a3 + 6))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_tcpECNIntConnNoPLCE != *(a3 + 5))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_tcpECNIntFallbackSynLoss != *(a3 + 15))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_tcpECNIntFallbackReorder != *(a3 + 13))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_tcpECNIntFallbackCE != *(a3 + 10))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_tcpECNIntOnAvgRTT != *(a3 + 29))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x100000000) != 0)
    {
      if ((v7 & 0x100000000) == 0 || self->_tcpECNIntOnRTTVar != *(a3 + 33))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) == 0 || self->_tcpECNIntOnOOBPer != *(a3 + 32))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x400000000) != 0)
    {
      if ((v7 & 0x400000000) == 0 || self->_tcpECNIntOnSACKE != *(a3 + 35))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x400000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x200000000) != 0)
    {
      if ((v7 & 0x200000000) == 0 || self->_tcpECNIntOnReorderPer != *(a3 + 34))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x20000000000) != 0)
    {
      if ((v7 & 0x20000000000) == 0 || self->_tcpECNIntRxmtPer != *(a3 + 42))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x20000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_tcpECNIntOffAvgRTT != *(a3 + 17))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_tcpECNIntOffRTTVar != *(a3 + 21))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_tcpECNIntOffOOBPer != *(a3 + 20))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_tcpECNIntOffSACKE != *(a3 + 24))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_tcpECNIntOffReorderPer != *(a3 + 22))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_tcpECNIntOffRxmtPer != *(a3 + 23))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x4000000000) != 0)
    {
      if ((v7 & 0x4000000000) == 0 || self->_tcpECNIntOnTotalTxPkts != *(a3 + 39))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x4000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x2000000000) != 0)
    {
      if ((v7 & 0x2000000000) == 0 || self->_tcpECNIntOnTotalRxmtPkts != *(a3 + 38))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x2000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x1000000000) != 0)
    {
      if ((v7 & 0x1000000000) == 0 || self->_tcpECNIntOnTotalRxPkts != *(a3 + 37))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x1000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x800000000) != 0)
    {
      if ((v7 & 0x800000000) == 0 || self->_tcpECNIntOnTotalOOPkts != *(a3 + 36))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x800000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_tcpECNIntOnDropRst != *(a3 + 30))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_tcpECNIntOnDropRxmt != *(a3 + 31))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_tcpECNIntOffTotalTxPkts != *(a3 + 28))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_tcpECNIntOffTotalRxmtPkts != *(a3 + 27))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_tcpECNIntOffTotalRxPkts != *(a3 + 26))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_tcpECNIntOffTotalOOPkts != *(a3 + 25))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_tcpECNIntOffDropRst != *(a3 + 18))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_tcpECNIntOffDropRxmt != *(a3 + 19))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x800000000000) != 0)
    {
      if ((v7 & 0x800000000000) == 0 || self->_tcpECNIntTotalConnections != *(a3 + 48))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x800000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x1000000000000) != 0)
    {
      if ((v7 & 0x1000000000000) == 0 || self->_tcpUnsentDataAtSleepCnt != *(a3 + 49))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x1000000000000) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_tcpECNIntFallbackDropRst != *(a3 + 11))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_246;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_tcpECNIntFallbackDropRxmt != *(a3 + 12))
      {
        goto LABEL_246;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_246;
    }

    LOBYTE(v5) = (*(a3 + 50) & 0x2000) == 0;
    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_tcpECNIntFallbackSYNRst != *(a3 + 14))
      {
        goto LABEL_246;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if (*&has)
  {
    v52 = 2654435761u * self->_interfaceType;
    if ((*&has & 2) != 0)
    {
LABEL_3:
      v51 = 2654435761u * self->_ipProtocol;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else
  {
    v52 = 0;
    if ((*&has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v51 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v50 = 2654435761u * self->_tcpECNIntClientSetup;
    if ((*&has & 0x80000000000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  v50 = 0;
  if ((*&has & 0x80000000000) != 0)
  {
LABEL_5:
    v49 = 2654435761u * self->_tcpECNIntServerSetup;
    if ((*&has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  v49 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_6:
    v48 = 2654435761u * self->_tcpECNIntClientSuccess;
    if ((*&has & 0x100000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  v48 = 0;
  if ((*&has & 0x100000000000) != 0)
  {
LABEL_7:
    v47 = 2654435761u * self->_tcpECNIntServerSuccess;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  v47 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    v46 = 2654435761u * self->_tcpECNIntNotSupportedPeer;
    if ((*&has & 0x400000000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  v46 = 0;
  if ((*&has & 0x400000000000) != 0)
  {
LABEL_9:
    v45 = 2654435761u * self->_tcpECNIntSynLost;
    if ((*&has & 0x200000000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  v45 = 0;
  if ((*&has & 0x200000000000) != 0)
  {
LABEL_10:
    v44 = 2654435761u * self->_tcpECNIntSynAckLost;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  v44 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_11:
    v43 = 2654435761u * self->_tcpECNIntRecvCE;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  v43 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_12:
    v42 = 2654435761u * self->_tcpECNIntRecvECE;
    if ((*&has & 0x40000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  v42 = 0;
  if ((*&has & 0x40000000000) != 0)
  {
LABEL_13:
    v41 = 2654435761u * self->_tcpECNIntSentECE;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  v41 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_14:
    v40 = 2654435761u * self->_tcpECNIntConnRecvCE;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  v40 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_15:
    v39 = 2654435761u * self->_tcpECNIntConnRecvECE;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  v39 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_16:
    v38 = 2654435761u * self->_tcpECNIntConnPLNoCE;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  v38 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_17:
    v37 = 2654435761u * self->_tcpECNIntConnPLCE;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  v37 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_18:
    v36 = 2654435761u * self->_tcpECNIntConnNoPLCE;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  v36 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_19:
    v35 = 2654435761u * self->_tcpECNIntFallbackSynLoss;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  v35 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_20:
    v34 = 2654435761u * self->_tcpECNIntFallbackReorder;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  v34 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_21:
    v33 = 2654435761u * self->_tcpECNIntFallbackCE;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  v33 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_22:
    v32 = 2654435761u * self->_tcpECNIntOnAvgRTT;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  v32 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_23:
    v31 = 2654435761u * self->_tcpECNIntOnRTTVar;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  v31 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_24:
    v30 = 2654435761u * self->_tcpECNIntOnOOBPer;
    if ((*&has & 0x400000000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  v30 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_25:
    v3 = 2654435761u * self->_tcpECNIntOnSACKE;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  v3 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_26:
    v4 = 2654435761u * self->_tcpECNIntOnReorderPer;
    if ((*&has & 0x20000000000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  v4 = 0;
  if ((*&has & 0x20000000000) != 0)
  {
LABEL_27:
    v5 = 2654435761u * self->_tcpECNIntRxmtPer;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  v5 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_28:
    v6 = 2654435761u * self->_tcpECNIntOffAvgRTT;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  v6 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_29:
    v7 = 2654435761u * self->_tcpECNIntOffRTTVar;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  v7 = 0;
  if ((*&has & 0x80000) != 0)
  {
LABEL_30:
    v8 = 2654435761u * self->_tcpECNIntOffOOBPer;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  v8 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_31:
    v9 = 2654435761u * self->_tcpECNIntOffSACKE;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  v9 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_32:
    v10 = 2654435761u * self->_tcpECNIntOffReorderPer;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  v10 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_33:
    v11 = 2654435761u * self->_tcpECNIntOffRxmtPer;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  v11 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_34:
    v12 = 2654435761u * self->_tcpECNIntOnTotalTxPkts;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  v12 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_35:
    v13 = 2654435761u * self->_tcpECNIntOnTotalRxmtPkts;
    if ((*&has & 0x1000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  v13 = 0;
  if ((*&has & 0x1000000000) != 0)
  {
LABEL_36:
    v14 = 2654435761u * self->_tcpECNIntOnTotalRxPkts;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  v14 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_37:
    v15 = 2654435761u * self->_tcpECNIntOnTotalOOPkts;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  v15 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_38:
    v16 = 2654435761u * self->_tcpECNIntOnDropRst;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  v16 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_39:
    v17 = 2654435761u * self->_tcpECNIntOnDropRxmt;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  v17 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_40:
    v18 = 2654435761u * self->_tcpECNIntOffTotalTxPkts;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  v18 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_41:
    v19 = 2654435761u * self->_tcpECNIntOffTotalRxmtPkts;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  v19 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_42:
    v20 = 2654435761u * self->_tcpECNIntOffTotalRxPkts;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  v20 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_43:
    v21 = 2654435761u * self->_tcpECNIntOffTotalOOPkts;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  v21 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_44:
    v22 = 2654435761u * self->_tcpECNIntOffDropRst;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  v22 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_45:
    v23 = 2654435761u * self->_tcpECNIntOffDropRxmt;
    if ((*&has & 0x800000000000) != 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  v23 = 0;
  if ((*&has & 0x800000000000) != 0)
  {
LABEL_46:
    v24 = 2654435761u * self->_tcpECNIntTotalConnections;
    if ((*&has & 0x1000000000000) != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  v24 = 0;
  if ((*&has & 0x1000000000000) != 0)
  {
LABEL_47:
    v25 = 2654435761u * self->_tcpUnsentDataAtSleepCnt;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  v25 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_48:
    v26 = 2654435761u * self->_tcpECNIntFallbackDropRst;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_49;
    }

LABEL_98:
    v27 = 0;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_50;
    }

LABEL_99:
    v28 = 0;
    return v51 ^ v52 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_97:
  v26 = 0;
  if ((*&has & 0x800) == 0)
  {
    goto LABEL_98;
  }

LABEL_49:
  v27 = 2654435761u * self->_tcpECNIntFallbackDropRxmt;
  if ((*&has & 0x2000) == 0)
  {
    goto LABEL_99;
  }

LABEL_50:
  v28 = 2654435761u * self->_tcpECNIntFallbackSYNRst;
  return v51 ^ v52 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 50);
  if (v3)
  {
    self->_interfaceType = *(a3 + 1);
    *&self->_has |= 1uLL;
    v3 = *(a3 + 50);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_53;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_ipProtocol = *(a3 + 2);
  *&self->_has |= 2uLL;
  v3 = *(a3 + 50);
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 0x80000000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_tcpECNIntClientSetup = *(a3 + 3);
  *&self->_has |= 4uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x80000000000) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_tcpECNIntServerSetup = *(a3 + 44);
  *&self->_has |= 0x80000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x100000000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_tcpECNIntClientSuccess = *(a3 + 4);
  *&self->_has |= 8uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x100000000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_tcpECNIntServerSuccess = *(a3 + 45);
  *&self->_has |= 0x100000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x8000) == 0)
  {
LABEL_8:
    if ((v3 & 0x400000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_tcpECNIntNotSupportedPeer = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x400000000000) == 0)
  {
LABEL_9:
    if ((v3 & 0x200000000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_tcpECNIntSynLost = *(a3 + 47);
  *&self->_has |= 0x400000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x200000000000) == 0)
  {
LABEL_10:
    if ((v3 & 0x8000000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_tcpECNIntSynAckLost = *(a3 + 46);
  *&self->_has |= 0x200000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x8000000000) == 0)
  {
LABEL_11:
    if ((v3 & 0x10000000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_tcpECNIntRecvCE = *(a3 + 40);
  *&self->_has |= 0x8000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x10000000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x40000000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_tcpECNIntRecvECE = *(a3 + 41);
  *&self->_has |= 0x10000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x40000000000) == 0)
  {
LABEL_13:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_tcpECNIntSentECE = *(a3 + 43);
  *&self->_has |= 0x40000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x80) == 0)
  {
LABEL_14:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_tcpECNIntConnRecvCE = *(a3 + 8);
  *&self->_has |= 0x80uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x100) == 0)
  {
LABEL_15:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_tcpECNIntConnRecvECE = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x40) == 0)
  {
LABEL_16:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_tcpECNIntConnPLNoCE = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x20) == 0)
  {
LABEL_17:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_tcpECNIntConnPLCE = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x10) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_tcpECNIntConnNoPLCE = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_tcpECNIntFallbackSynLoss = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x1000) == 0)
  {
LABEL_20:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_tcpECNIntFallbackReorder = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x200) == 0)
  {
LABEL_21:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_tcpECNIntFallbackCE = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_22:
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_tcpECNIntOnAvgRTT = *(a3 + 29);
  *&self->_has |= 0x10000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x100000000) == 0)
  {
LABEL_23:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_tcpECNIntOnRTTVar = *(a3 + 33);
  *&self->_has |= 0x100000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_24:
    if ((v3 & 0x400000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_tcpECNIntOnOOBPer = *(a3 + 32);
  *&self->_has |= 0x80000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_25:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_tcpECNIntOnSACKE = *(a3 + 35);
  *&self->_has |= 0x400000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_26:
    if ((v3 & 0x20000000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_tcpECNIntOnReorderPer = *(a3 + 34);
  *&self->_has |= 0x200000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x20000000000) == 0)
  {
LABEL_27:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_tcpECNIntRxmtPer = *(a3 + 42);
  *&self->_has |= 0x20000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x10000) == 0)
  {
LABEL_28:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_tcpECNIntOffAvgRTT = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x100000) == 0)
  {
LABEL_29:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_tcpECNIntOffRTTVar = *(a3 + 21);
  *&self->_has |= 0x100000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x80000) == 0)
  {
LABEL_30:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_tcpECNIntOffOOBPer = *(a3 + 20);
  *&self->_has |= 0x80000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x800000) == 0)
  {
LABEL_31:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_tcpECNIntOffSACKE = *(a3 + 24);
  *&self->_has |= 0x800000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x200000) == 0)
  {
LABEL_32:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_tcpECNIntOffReorderPer = *(a3 + 22);
  *&self->_has |= 0x200000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x400000) == 0)
  {
LABEL_33:
    if ((v3 & 0x4000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_tcpECNIntOffRxmtPer = *(a3 + 23);
  *&self->_has |= 0x400000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x4000000000) == 0)
  {
LABEL_34:
    if ((v3 & 0x2000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_tcpECNIntOnTotalTxPkts = *(a3 + 39);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x2000000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x1000000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_tcpECNIntOnTotalRxmtPkts = *(a3 + 38);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x1000000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_tcpECNIntOnTotalRxPkts = *(a3 + 37);
  *&self->_has |= 0x1000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_tcpECNIntOnTotalOOPkts = *(a3 + 36);
  *&self->_has |= 0x800000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_tcpECNIntOnDropRst = *(a3 + 30);
  *&self->_has |= 0x20000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_39:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_tcpECNIntOnDropRxmt = *(a3 + 31);
  *&self->_has |= 0x40000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_40:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_tcpECNIntOffTotalTxPkts = *(a3 + 28);
  *&self->_has |= 0x8000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_41:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_tcpECNIntOffTotalRxmtPkts = *(a3 + 27);
  *&self->_has |= 0x4000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_42:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_tcpECNIntOffTotalRxPkts = *(a3 + 26);
  *&self->_has |= 0x2000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_43:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_tcpECNIntOffTotalOOPkts = *(a3 + 25);
  *&self->_has |= 0x1000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x20000) == 0)
  {
LABEL_44:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_tcpECNIntOffDropRst = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x40000) == 0)
  {
LABEL_45:
    if ((v3 & 0x800000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_tcpECNIntOffDropRxmt = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x800000000000) == 0)
  {
LABEL_46:
    if ((v3 & 0x1000000000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_tcpECNIntTotalConnections = *(a3 + 48);
  *&self->_has |= 0x800000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x1000000000000) == 0)
  {
LABEL_47:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_tcpUnsentDataAtSleepCnt = *(a3 + 49);
  *&self->_has |= 0x1000000000000uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x400) == 0)
  {
LABEL_48:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_tcpECNIntFallbackDropRst = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(a3 + 50);
  if ((v3 & 0x800) == 0)
  {
LABEL_49:
    if ((v3 & 0x2000) == 0)
    {
      return;
    }

LABEL_99:
    self->_tcpECNIntFallbackSYNRst = *(a3 + 14);
    *&self->_has |= 0x2000uLL;
    return;
  }

LABEL_98:
  self->_tcpECNIntFallbackDropRxmt = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  if ((*(a3 + 50) & 0x2000) != 0)
  {
    goto LABEL_99;
  }
}

@end