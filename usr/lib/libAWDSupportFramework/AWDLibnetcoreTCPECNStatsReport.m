@interface AWDLibnetcoreTCPECNStatsReport
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTcpECNClientNegotiationEnabled:(BOOL)a3;
- (void)setHasTcpECNClientSuccess:(BOOL)a3;
- (void)setHasTcpECNConnNoPacketLossCE:(BOOL)a3;
- (void)setHasTcpECNConnPacketLossCE:(BOOL)a3;
- (void)setHasTcpECNConnPacketLossNoCE:(BOOL)a3;
- (void)setHasTcpECNConnRecvCE:(BOOL)a3;
- (void)setHasTcpECNConnRecvECE:(BOOL)a3;
- (void)setHasTcpECNFallbackCE:(BOOL)a3;
- (void)setHasTcpECNFallbackReorder:(BOOL)a3;
- (void)setHasTcpECNFallbackSynLoss:(BOOL)a3;
- (void)setHasTcpECNNotSupportedPeer:(BOOL)a3;
- (void)setHasTcpECNRecvCE:(BOOL)a3;
- (void)setHasTcpECNRecvECE:(BOOL)a3;
- (void)setHasTcpECNSentECE:(BOOL)a3;
- (void)setHasTcpECNServerNegotiationEnabled:(BOOL)a3;
- (void)setHasTcpECNServerSetup:(BOOL)a3;
- (void)setHasTcpECNServerSuccess:(BOOL)a3;
- (void)setHasTcpECNSynAckLost:(BOOL)a3;
- (void)setHasTcpECNSynLost:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDLibnetcoreTCPECNStatsReport

- (void)setHasTcpECNClientNegotiationEnabled:(BOOL)a3
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

- (void)setHasTcpECNServerNegotiationEnabled:(BOOL)a3
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

- (void)setHasTcpECNServerSetup:(BOOL)a3
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

- (void)setHasTcpECNClientSuccess:(BOOL)a3
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

- (void)setHasTcpECNServerSuccess:(BOOL)a3
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

- (void)setHasTcpECNNotSupportedPeer:(BOOL)a3
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

- (void)setHasTcpECNSynLost:(BOOL)a3
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

- (void)setHasTcpECNSynAckLost:(BOOL)a3
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

- (void)setHasTcpECNRecvCE:(BOOL)a3
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

- (void)setHasTcpECNRecvECE:(BOOL)a3
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

- (void)setHasTcpECNSentECE:(BOOL)a3
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

- (void)setHasTcpECNConnRecvCE:(BOOL)a3
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

- (void)setHasTcpECNConnRecvECE:(BOOL)a3
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

- (void)setHasTcpECNConnPacketLossNoCE:(BOOL)a3
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

- (void)setHasTcpECNConnPacketLossCE:(BOOL)a3
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

- (void)setHasTcpECNConnNoPacketLossCE:(BOOL)a3
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

- (void)setHasTcpECNFallbackSynLoss:(BOOL)a3
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

- (void)setHasTcpECNFallbackReorder:(BOOL)a3
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

- (void)setHasTcpECNFallbackCE:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDLibnetcoreTCPECNStatsReport;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDLibnetcoreTCPECNStatsReport description](&v3, sel_description), -[AWDLibnetcoreTCPECNStatsReport dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tcpECNClientNegotiationEnabled), @"tcpECNClientNegotiationEnabled"}];
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_tcpECNServerNegotiationEnabled), @"tcpECNServerNegotiationEnabled"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNClientSetup), @"tcpECNClientSetup"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNServerSetup), @"tcpECNServerSetup"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNClientSuccess), @"tcpECNClientSuccess"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNServerSuccess), @"tcpECNServerSuccess"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNNotSupportedPeer), @"tcpECNNotSupportedPeer"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNSynLost), @"tcpECNSynLost"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNSynAckLost), @"tcpECNSynAckLost"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNRecvCE), @"tcpECNRecvCE"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNRecvECE), @"tcpECNRecvECE"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNSentECE), @"tcpECNSentECE"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNConnRecvCE), @"tcpECNConnRecvCE"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNConnRecvECE), @"tcpECNConnRecvECE"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNConnPacketLossNoCE), @"tcpECNConnPacketLossNoCE"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNConnPacketLossCE), @"tcpECNConnPacketLossCE"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNConnNoPacketLossCE), @"tcpECNConnNoPacketLossCE"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_41:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNFallbackReorder), @"tcpECNFallbackReorder"}];
    if ((*&self->_has & 0x80) == 0)
    {
      return v3;
    }

    goto LABEL_21;
  }

LABEL_40:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNFallbackSynLoss), @"tcpECNFallbackSynLoss"}];
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_41;
  }

LABEL_20:
  if ((*&has & 0x80) != 0)
  {
LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpECNFallbackCE), @"tcpECNFallbackCE"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    tcpECNClientNegotiationEnabled = self->_tcpECNClientNegotiationEnabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  tcpECNServerNegotiationEnabled = self->_tcpECNServerNegotiationEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  tcpECNClientSetup = self->_tcpECNClientSetup;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  tcpECNServerSetup = self->_tcpECNServerSetup;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  tcpECNClientSuccess = self->_tcpECNClientSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  tcpECNServerSuccess = self->_tcpECNServerSuccess;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  tcpECNNotSupportedPeer = self->_tcpECNNotSupportedPeer;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  tcpECNSynLost = self->_tcpECNSynLost;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  tcpECNSynAckLost = self->_tcpECNSynAckLost;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  tcpECNRecvCE = self->_tcpECNRecvCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  tcpECNRecvECE = self->_tcpECNRecvECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  tcpECNSentECE = self->_tcpECNSentECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  tcpECNConnRecvCE = self->_tcpECNConnRecvCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  tcpECNConnRecvECE = self->_tcpECNConnRecvECE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  tcpECNConnPacketLossNoCE = self->_tcpECNConnPacketLossNoCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  tcpECNConnPacketLossCE = self->_tcpECNConnPacketLossCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  tcpECNConnNoPacketLossCE = self->_tcpECNConnNoPacketLossCE;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

LABEL_40:
    tcpECNFallbackReorder = self->_tcpECNFallbackReorder;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x80) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

LABEL_39:
  tcpECNFallbackSynLoss = self->_tcpECNFallbackSynLoss;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_40;
  }

LABEL_20:
  if ((*&has & 0x80) == 0)
  {
    return;
  }

LABEL_41:
  tcpECNFallbackCE = self->_tcpECNFallbackCE;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(a3 + 152) = self->_tcpECNClientNegotiationEnabled;
    *(a3 + 39) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 153) = self->_tcpECNServerNegotiationEnabled;
  *(a3 + 39) |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(a3 + 1) = self->_tcpECNClientSetup;
  *(a3 + 39) |= 1u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(a3 + 15) = self->_tcpECNServerSetup;
  *(a3 + 39) |= 0x4000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(a3 + 2) = self->_tcpECNClientSuccess;
  *(a3 + 39) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(a3 + 16) = self->_tcpECNServerSuccess;
  *(a3 + 39) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(a3 + 11) = self->_tcpECNNotSupportedPeer;
  *(a3 + 39) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(a3 + 18) = self->_tcpECNSynLost;
  *(a3 + 39) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(a3 + 17) = self->_tcpECNSynAckLost;
  *(a3 + 39) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(a3 + 12) = self->_tcpECNRecvCE;
  *(a3 + 39) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(a3 + 13) = self->_tcpECNRecvECE;
  *(a3 + 39) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(a3 + 14) = self->_tcpECNSentECE;
  *(a3 + 39) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 6) = self->_tcpECNConnRecvCE;
  *(a3 + 39) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 7) = self->_tcpECNConnRecvECE;
  *(a3 + 39) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 5) = self->_tcpECNConnPacketLossNoCE;
  *(a3 + 39) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 4) = self->_tcpECNConnPacketLossCE;
  *(a3 + 39) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 3) = self->_tcpECNConnNoPacketLossCE;
  *(a3 + 39) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 10) = self->_tcpECNFallbackSynLoss;
  *(a3 + 39) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    *(a3 + 8) = self->_tcpECNFallbackCE;
    *(a3 + 39) |= 0x80u;
    return;
  }

LABEL_40:
  *(a3 + 9) = self->_tcpECNFallbackReorder;
  *(a3 + 39) |= 0x100u;
  if ((*&self->_has & 0x80) != 0)
  {
    goto LABEL_41;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    *(result + 152) = self->_tcpECNClientNegotiationEnabled;
    *(result + 39) |= 0x40000u;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 153) = self->_tcpECNServerNegotiationEnabled;
  *(result + 39) |= 0x80000u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_4:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(result + 1) = self->_tcpECNClientSetup;
  *(result + 39) |= 1u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_5:
    if ((*&has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(result + 15) = self->_tcpECNServerSetup;
  *(result + 39) |= 0x4000u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_6:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(result + 2) = self->_tcpECNClientSuccess;
  *(result + 39) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_7:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(result + 16) = self->_tcpECNServerSuccess;
  *(result + 39) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_8:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(result + 11) = self->_tcpECNNotSupportedPeer;
  *(result + 39) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_9:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(result + 18) = self->_tcpECNSynLost;
  *(result + 39) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(result + 17) = self->_tcpECNSynAckLost;
  *(result + 39) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(result + 12) = self->_tcpECNRecvCE;
  *(result + 39) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(result + 13) = self->_tcpECNRecvECE;
  *(result + 39) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(result + 14) = self->_tcpECNSentECE;
  *(result + 39) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(result + 6) = self->_tcpECNConnRecvCE;
  *(result + 39) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_15:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(result + 7) = self->_tcpECNConnRecvECE;
  *(result + 39) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_16:
    if ((*&has & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(result + 5) = self->_tcpECNConnPacketLossNoCE;
  *(result + 39) |= 0x10u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_17:
    if ((*&has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(result + 4) = self->_tcpECNConnPacketLossCE;
  *(result + 39) |= 8u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_18:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(result + 3) = self->_tcpECNConnNoPacketLossCE;
  *(result + 39) |= 4u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_19:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(result + 10) = self->_tcpECNFallbackSynLoss;
  *(result + 39) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      return result;
    }

    goto LABEL_21;
  }

LABEL_41:
  *(result + 9) = self->_tcpECNFallbackReorder;
  *(result + 39) |= 0x100u;
  if ((*&self->_has & 0x80) == 0)
  {
    return result;
  }

LABEL_21:
  *(result + 8) = self->_tcpECNFallbackCE;
  *(result + 39) |= 0x80u;
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
  v7 = *(a3 + 39);
  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_107;
    }

    v8 = *(a3 + 152);
    if (self->_tcpECNClientNegotiationEnabled)
    {
      if ((*(a3 + 152) & 1) == 0)
      {
        goto LABEL_107;
      }
    }

    else if (*(a3 + 152))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x80000) != 0)
  {
    if ((v7 & 0x80000) != 0)
    {
      v9 = *(a3 + 153);
      if (self->_tcpECNServerNegotiationEnabled)
      {
        if ((*(a3 + 153) & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      else if (*(a3 + 153))
      {
        goto LABEL_107;
      }

      goto LABEL_6;
    }

LABEL_107:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((v7 & 0x80000) != 0)
  {
    goto LABEL_107;
  }

LABEL_6:
  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_tcpECNClientSetup != *(a3 + 1))
    {
      goto LABEL_107;
    }
  }

  else if (v7)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_tcpECNServerSetup != *(a3 + 15))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_tcpECNClientSuccess != *(a3 + 2))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_tcpECNServerSuccess != *(a3 + 16))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_tcpECNNotSupportedPeer != *(a3 + 11))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_tcpECNSynLost != *(a3 + 18))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_tcpECNSynAckLost != *(a3 + 17))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_tcpECNRecvCE != *(a3 + 12))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_tcpECNRecvECE != *(a3 + 13))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_tcpECNSentECE != *(a3 + 14))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_tcpECNConnRecvCE != *(a3 + 6))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_tcpECNConnRecvECE != *(a3 + 7))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_tcpECNConnPacketLossNoCE != *(a3 + 5))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_tcpECNConnPacketLossCE != *(a3 + 4))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_tcpECNConnNoPacketLossCE != *(a3 + 3))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_tcpECNFallbackSynLoss != *(a3 + 10))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_107;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_tcpECNFallbackReorder != *(a3 + 9))
    {
      goto LABEL_107;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_107;
  }

  LOBYTE(v5) = (*(a3 + 39) & 0x80) == 0;
  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_tcpECNFallbackCE != *(a3 + 8))
    {
      goto LABEL_107;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    v3 = 2654435761 * self->_tcpECNClientNegotiationEnabled;
    if ((*&has & 0x80000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_tcpECNServerNegotiationEnabled;
      if (*&has)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v3 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if (*&has)
  {
LABEL_4:
    v5 = 2654435761u * self->_tcpECNClientSetup;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  v5 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_5:
    v6 = 2654435761u * self->_tcpECNServerSetup;
    if ((*&has & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v6 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_6:
    v7 = 2654435761u * self->_tcpECNClientSuccess;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_7:
    v8 = 2654435761u * self->_tcpECNServerSuccess;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v8 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_8:
    v9 = 2654435761u * self->_tcpECNNotSupportedPeer;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_9:
    v10 = 2654435761u * self->_tcpECNSynLost;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_10:
    v11 = 2654435761u * self->_tcpECNSynAckLost;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v12 = 2654435761u * self->_tcpECNRecvCE;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_12:
    v13 = 2654435761u * self->_tcpECNRecvECE;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_13:
    v14 = 2654435761u * self->_tcpECNSentECE;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_14:
    v15 = 2654435761u * self->_tcpECNConnRecvCE;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_15;
    }

LABEL_30:
    v16 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_29:
  v15 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_15:
  v16 = 2654435761u * self->_tcpECNConnRecvECE;
  if ((*&has & 0x10) != 0)
  {
LABEL_16:
    v17 = 2654435761u * self->_tcpECNConnPacketLossNoCE;
    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
LABEL_32:
  if ((*&has & 8) != 0)
  {
    v18 = 2654435761u * self->_tcpECNConnPacketLossCE;
    if ((*&has & 4) != 0)
    {
LABEL_34:
      v19 = 2654435761u * self->_tcpECNConnNoPacketLossCE;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 4) != 0)
    {
      goto LABEL_34;
    }
  }

  v19 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_35:
    v20 = 2654435761u * self->_tcpECNFallbackSynLoss;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_36;
    }

LABEL_41:
    v21 = 0;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_37;
    }

LABEL_42:
    v22 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
  }

LABEL_40:
  v20 = 0;
  if ((*&has & 0x100) == 0)
  {
    goto LABEL_41;
  }

LABEL_36:
  v21 = 2654435761u * self->_tcpECNFallbackReorder;
  if ((*&has & 0x80) == 0)
  {
    goto LABEL_42;
  }

LABEL_37:
  v22 = 2654435761u * self->_tcpECNFallbackCE;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22;
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 39);
  if ((v3 & 0x40000) != 0)
  {
    self->_tcpECNClientNegotiationEnabled = *(a3 + 152);
    *&self->_has |= 0x40000u;
    v3 = *(a3 + 39);
    if ((v3 & 0x80000) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v3 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  self->_tcpECNServerNegotiationEnabled = *(a3 + 153);
  *&self->_has |= 0x80000u;
  v3 = *(a3 + 39);
  if ((v3 & 1) == 0)
  {
LABEL_4:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_tcpECNClientSetup = *(a3 + 1);
  *&self->_has |= 1u;
  v3 = *(a3 + 39);
  if ((v3 & 0x4000) == 0)
  {
LABEL_5:
    if ((v3 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_tcpECNServerSetup = *(a3 + 15);
  *&self->_has |= 0x4000u;
  v3 = *(a3 + 39);
  if ((v3 & 2) == 0)
  {
LABEL_6:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_tcpECNClientSuccess = *(a3 + 2);
  *&self->_has |= 2u;
  v3 = *(a3 + 39);
  if ((v3 & 0x8000) == 0)
  {
LABEL_7:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_tcpECNServerSuccess = *(a3 + 16);
  *&self->_has |= 0x8000u;
  v3 = *(a3 + 39);
  if ((v3 & 0x400) == 0)
  {
LABEL_8:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_tcpECNNotSupportedPeer = *(a3 + 11);
  *&self->_has |= 0x400u;
  v3 = *(a3 + 39);
  if ((v3 & 0x20000) == 0)
  {
LABEL_9:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_tcpECNSynLost = *(a3 + 18);
  *&self->_has |= 0x20000u;
  v3 = *(a3 + 39);
  if ((v3 & 0x10000) == 0)
  {
LABEL_10:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_tcpECNSynAckLost = *(a3 + 17);
  *&self->_has |= 0x10000u;
  v3 = *(a3 + 39);
  if ((v3 & 0x800) == 0)
  {
LABEL_11:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_tcpECNRecvCE = *(a3 + 12);
  *&self->_has |= 0x800u;
  v3 = *(a3 + 39);
  if ((v3 & 0x1000) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_tcpECNRecvECE = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v3 = *(a3 + 39);
  if ((v3 & 0x2000) == 0)
  {
LABEL_13:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_tcpECNSentECE = *(a3 + 14);
  *&self->_has |= 0x2000u;
  v3 = *(a3 + 39);
  if ((v3 & 0x20) == 0)
  {
LABEL_14:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_tcpECNConnRecvCE = *(a3 + 6);
  *&self->_has |= 0x20u;
  v3 = *(a3 + 39);
  if ((v3 & 0x40) == 0)
  {
LABEL_15:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_tcpECNConnRecvECE = *(a3 + 7);
  *&self->_has |= 0x40u;
  v3 = *(a3 + 39);
  if ((v3 & 0x10) == 0)
  {
LABEL_16:
    if ((v3 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_tcpECNConnPacketLossNoCE = *(a3 + 5);
  *&self->_has |= 0x10u;
  v3 = *(a3 + 39);
  if ((v3 & 8) == 0)
  {
LABEL_17:
    if ((v3 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_tcpECNConnPacketLossCE = *(a3 + 4);
  *&self->_has |= 8u;
  v3 = *(a3 + 39);
  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_tcpECNConnNoPacketLossCE = *(a3 + 3);
  *&self->_has |= 4u;
  v3 = *(a3 + 39);
  if ((v3 & 0x200) == 0)
  {
LABEL_19:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_tcpECNFallbackSynLoss = *(a3 + 10);
  *&self->_has |= 0x200u;
  v3 = *(a3 + 39);
  if ((v3 & 0x100) == 0)
  {
LABEL_20:
    if ((v3 & 0x80) == 0)
    {
      return;
    }

LABEL_41:
    self->_tcpECNFallbackCE = *(a3 + 8);
    *&self->_has |= 0x80u;
    return;
  }

LABEL_40:
  self->_tcpECNFallbackReorder = *(a3 + 9);
  *&self->_has |= 0x100u;
  if ((*(a3 + 39) & 0x80) != 0)
  {
    goto LABEL_41;
  }
}

@end