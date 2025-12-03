@interface AWDMMCSTcpInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasTcpiCellRxpackets:(BOOL)rxpackets;
- (void)setHasTcpiCellTxbytes:(BOOL)txbytes;
- (void)setHasTcpiCellTxpackets:(BOOL)txpackets;
- (void)setHasTcpiFlags:(BOOL)flags;
- (void)setHasTcpiLastOutif:(BOOL)outif;
- (void)setHasTcpiOptions:(BOOL)options;
- (void)setHasTcpiRcvMss:(BOOL)mss;
- (void)setHasTcpiRcvNxt:(BOOL)nxt;
- (void)setHasTcpiRcvSpace:(BOOL)space;
- (void)setHasTcpiRcvWscale:(BOOL)wscale;
- (void)setHasTcpiRto:(BOOL)rto;
- (void)setHasTcpiRttbest:(BOOL)rttbest;
- (void)setHasTcpiRttcur:(BOOL)rttcur;
- (void)setHasTcpiRttvar:(BOOL)rttvar;
- (void)setHasTcpiRxbytes:(BOOL)rxbytes;
- (void)setHasTcpiRxduplicatebytes:(BOOL)rxduplicatebytes;
- (void)setHasTcpiRxoutoforderbytes:(BOOL)rxoutoforderbytes;
- (void)setHasTcpiRxpackets:(BOOL)rxpackets;
- (void)setHasTcpiSndBw:(BOOL)bw;
- (void)setHasTcpiSndCwnd:(BOOL)cwnd;
- (void)setHasTcpiSndMss:(BOOL)mss;
- (void)setHasTcpiSndNxt:(BOOL)nxt;
- (void)setHasTcpiSndSbbytes:(BOOL)sbbytes;
- (void)setHasTcpiSndSsthresh:(BOOL)ssthresh;
- (void)setHasTcpiSndWnd:(BOOL)wnd;
- (void)setHasTcpiSndWscale:(BOOL)wscale;
- (void)setHasTcpiSrtt:(BOOL)srtt;
- (void)setHasTcpiState:(BOOL)state;
- (void)setHasTcpiSynrexmits:(BOOL)synrexmits;
- (void)setHasTcpiTxbytes:(BOOL)txbytes;
- (void)setHasTcpiTxpackets:(BOOL)txpackets;
- (void)setHasTcpiTxretransmitbytes:(BOOL)txretransmitbytes;
- (void)setHasTcpiTxunacked:(BOOL)txunacked;
- (void)setHasTcpiUnused1:(BOOL)unused1;
- (void)setHasTcpiUnused2:(BOOL)unused2;
- (void)setHasTcpiWifiRxbytes:(BOOL)rxbytes;
- (void)setHasTcpiWifiRxpackets:(BOOL)rxpackets;
- (void)setHasTcpiWifiTxbytes:(BOOL)txbytes;
- (void)setHasTcpiWifiTxpackets:(BOOL)txpackets;
- (void)writeTo:(id)to;
@end

@implementation AWDMMCSTcpInfo

- (void)setHasTcpiState:(BOOL)state
{
  v3 = 0x1000000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasTcpiOptions:(BOOL)options
{
  v3 = 0x80000;
  if (!options)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasTcpiSndWscale:(BOOL)wscale
{
  v3 = 0x400000000;
  if (!wscale)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasTcpiRcvWscale:(BOOL)wscale
{
  v3 = 0x800000;
  if (!wscale)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasTcpiFlags:(BOOL)flags
{
  v3 = 0x20000;
  if (!flags)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasTcpiRto:(BOOL)rto
{
  v3 = 0x1000000;
  if (!rto)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasTcpiSndMss:(BOOL)mss
{
  v3 = 0x20000000;
  if (!mss)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasTcpiRcvMss:(BOOL)mss
{
  v3 = 0x100000;
  if (!mss)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasTcpiRttcur:(BOOL)rttcur
{
  v3 = 0x4000000;
  if (!rttcur)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasTcpiSrtt:(BOOL)srtt
{
  v3 = 0x800000000;
  if (!srtt)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasTcpiRttvar:(BOOL)rttvar
{
  v3 = 0x8000000;
  if (!rttvar)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasTcpiRttbest:(BOOL)rttbest
{
  v3 = 0x2000000;
  if (!rttbest)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasTcpiSndSsthresh:(BOOL)ssthresh
{
  v3 = 0x100000000;
  if (!ssthresh)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasTcpiSndCwnd:(BOOL)cwnd
{
  v3 = 0x10000000;
  if (!cwnd)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasTcpiRcvSpace:(BOOL)space
{
  v3 = 0x400000;
  if (!space)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasTcpiSndWnd:(BOOL)wnd
{
  v3 = 0x200000000;
  if (!wnd)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasTcpiSndNxt:(BOOL)nxt
{
  v3 = 0x40000000;
  if (!nxt)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTcpiRcvNxt:(BOOL)nxt
{
  v3 = 0x200000;
  if (!nxt)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasTcpiLastOutif:(BOOL)outif
{
  v3 = 0x40000;
  if (!outif)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasTcpiSndSbbytes:(BOOL)sbbytes
{
  v3 = 0x80000000;
  if (!sbbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasTcpiTxpackets:(BOOL)txpackets
{
  v3 = 1024;
  if (!txpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasTcpiTxbytes:(BOOL)txbytes
{
  v3 = 512;
  if (!txbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasTcpiTxretransmitbytes:(BOOL)txretransmitbytes
{
  v3 = 2048;
  if (!txretransmitbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasTcpiTxunacked:(BOOL)txunacked
{
  v3 = 4096;
  if (!txunacked)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasTcpiRxpackets:(BOOL)rxpackets
{
  v3 = 128;
  if (!rxpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasTcpiRxbytes:(BOOL)rxbytes
{
  v3 = 16;
  if (!rxbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasTcpiRxduplicatebytes:(BOOL)rxduplicatebytes
{
  v3 = 32;
  if (!rxduplicatebytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasTcpiRxoutoforderbytes:(BOOL)rxoutoforderbytes
{
  v3 = 64;
  if (!rxoutoforderbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasTcpiSndBw:(BOOL)bw
{
  v3 = 256;
  if (!bw)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasTcpiSynrexmits:(BOOL)synrexmits
{
  v3 = 0x2000000000;
  if (!synrexmits)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasTcpiUnused1:(BOOL)unused1
{
  v3 = 0x4000000000;
  if (!unused1)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasTcpiUnused2:(BOOL)unused2
{
  v3 = 0x8000000000;
  if (!unused2)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasTcpiCellRxpackets:(BOOL)rxpackets
{
  v3 = 2;
  if (!rxpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasTcpiCellTxpackets:(BOOL)txpackets
{
  v3 = 8;
  if (!txpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasTcpiCellTxbytes:(BOOL)txbytes
{
  v3 = 4;
  if (!txbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasTcpiWifiRxpackets:(BOOL)rxpackets
{
  v3 = 0x4000;
  if (!rxpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasTcpiWifiRxbytes:(BOOL)rxbytes
{
  v3 = 0x2000;
  if (!rxbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasTcpiWifiTxpackets:(BOOL)txpackets
{
  v3 = 0x10000;
  if (!txpackets)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasTcpiWifiTxbytes:(BOOL)txbytes
{
  v3 = 0x8000;
  if (!txbytes)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMMCSTcpInfo;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMMCSTcpInfo description](&v3, sel_description), -[AWDMMCSTcpInfo dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x1000000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiState), @"tcpi_state"}];
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiOptions), @"tcpi_options"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndWscale), @"tcpi_snd_wscale"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRcvWscale), @"tcpi_rcv_wscale"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiFlags), @"tcpi_flags"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRto), @"tcpi_rto"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndMss), @"tcpi_snd_mss"}];
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRcvMss), @"tcpi_rcv_mss"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRttcur), @"tcpi_rttcur"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSrtt), @"tcpi_srtt"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRttvar), @"tcpi_rttvar"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRttbest), @"tcpi_rttbest"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndSsthresh), @"tcpi_snd_ssthresh"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndCwnd), @"tcpi_snd_cwnd"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRcvSpace), @"tcpi_rcv_space"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndWnd), @"tcpi_snd_wnd"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndNxt), @"tcpi_snd_nxt"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiRcvNxt), @"tcpi_rcv_nxt"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_tcpiLastOutif), @"tcpi_last_outif"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiSndSbbytes), @"tcpi_snd_sbbytes"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiTxpackets), @"tcpi_txpackets"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiTxbytes), @"tcpi_txbytes"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiTxretransmitbytes), @"tcpi_txretransmitbytes"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiTxunacked), @"tcpi_txunacked"}];
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiRxpackets), @"tcpi_rxpackets"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiRxbytes), @"tcpi_rxbytes"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiRxduplicatebytes), @"tcpi_rxduplicatebytes"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_29:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiRxoutoforderbytes), @"tcpi_rxoutoforderbytes"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiSndBw), @"tcpi_snd_bw"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_tcpiSynrexmits), @"tcpi_synrexmits"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_tcpiUnused1), @"tcpi_unused1"}];
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_33:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_tcpiUnused2), @"tcpi_unused2"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_34:
    if ((*&has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiCellRxpackets), @"tcpi_cell_rxpackets"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_35:
    if ((*&has & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiCellRxbytes), @"tcpi_cell_rxbytes"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_36:
    if ((*&has & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiCellTxpackets), @"tcpi_cell_txpackets"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_37:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiCellTxbytes), @"tcpi_cell_txbytes"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiWifiRxpackets), @"tcpi_wifi_rxpackets"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_39:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_40;
    }

LABEL_81:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiWifiTxpackets), @"tcpi_wifi_txpackets"}];
    if ((*&self->_has & 0x8000) == 0)
    {
      return dictionary;
    }

    goto LABEL_41;
  }

LABEL_80:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiWifiRxbytes), @"tcpi_wifi_rxbytes"}];
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_81;
  }

LABEL_40:
  if ((*&has & 0x8000) != 0)
  {
LABEL_41:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_tcpiWifiTxbytes), @"tcpi_wifi_txbytes"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x1000000000) != 0)
  {
    tcpiState = self->_tcpiState;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  tcpiOptions = self->_tcpiOptions;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  tcpiSndWscale = self->_tcpiSndWscale;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  tcpiRcvWscale = self->_tcpiRcvWscale;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  tcpiFlags = self->_tcpiFlags;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  tcpiRto = self->_tcpiRto;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  tcpiSndMss = self->_tcpiSndMss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  tcpiRcvMss = self->_tcpiRcvMss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  tcpiRttcur = self->_tcpiRttcur;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  tcpiSrtt = self->_tcpiSrtt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  tcpiRttvar = self->_tcpiRttvar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  tcpiRttbest = self->_tcpiRttbest;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  tcpiSndSsthresh = self->_tcpiSndSsthresh;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  tcpiSndCwnd = self->_tcpiSndCwnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  tcpiRcvSpace = self->_tcpiRcvSpace;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  tcpiSndWnd = self->_tcpiSndWnd;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  tcpiSndNxt = self->_tcpiSndNxt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  tcpiRcvNxt = self->_tcpiRcvNxt;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  tcpiLastOutif = self->_tcpiLastOutif;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  tcpiSndSbbytes = self->_tcpiSndSbbytes;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  tcpiTxpackets = self->_tcpiTxpackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  tcpiTxbytes = self->_tcpiTxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  tcpiTxretransmitbytes = self->_tcpiTxretransmitbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  tcpiTxunacked = self->_tcpiTxunacked;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  tcpiRxpackets = self->_tcpiRxpackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  tcpiRxbytes = self->_tcpiRxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  tcpiRxduplicatebytes = self->_tcpiRxduplicatebytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_29:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  tcpiRxoutoforderbytes = self->_tcpiRxoutoforderbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  tcpiSndBw = self->_tcpiSndBw;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  tcpiSynrexmits = self->_tcpiSynrexmits;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  tcpiUnused1 = self->_tcpiUnused1;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_33:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  tcpiUnused2 = self->_tcpiUnused2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_34:
    if ((*&has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  tcpiCellRxpackets = self->_tcpiCellRxpackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_35:
    if ((*&has & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  tcpiCellRxbytes = self->_tcpiCellRxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_36:
    if ((*&has & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  tcpiCellTxpackets = self->_tcpiCellTxpackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_37:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  tcpiCellTxbytes = self->_tcpiCellTxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  tcpiWifiRxpackets = self->_tcpiWifiRxpackets;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_39:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_40;
    }

LABEL_80:
    tcpiWifiTxpackets = self->_tcpiWifiTxpackets;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x8000) == 0)
    {
      return;
    }

    goto LABEL_81;
  }

LABEL_79:
  tcpiWifiRxbytes = self->_tcpiWifiRxbytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    goto LABEL_80;
  }

LABEL_40:
  if ((*&has & 0x8000) == 0)
  {
    return;
  }

LABEL_81:
  tcpiWifiTxbytes = self->_tcpiWifiTxbytes;

  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 0x1000000000) != 0)
  {
    *(to + 55) = self->_tcpiState;
    *(to + 236) |= 0x1000000000uLL;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(to + 38) = self->_tcpiOptions;
  *(to + 236) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(to + 53) = self->_tcpiSndWscale;
  *(to + 236) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(to + 42) = self->_tcpiRcvWscale;
  *(to + 236) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(to + 36) = self->_tcpiFlags;
  *(to + 236) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(to + 43) = self->_tcpiRto;
  *(to + 236) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(to + 48) = self->_tcpiSndMss;
  *(to + 236) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(to + 39) = self->_tcpiRcvMss;
  *(to + 236) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(to + 45) = self->_tcpiRttcur;
  *(to + 236) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(to + 54) = self->_tcpiSrtt;
  *(to + 236) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(to + 46) = self->_tcpiRttvar;
  *(to + 236) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(to + 44) = self->_tcpiRttbest;
  *(to + 236) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(to + 51) = self->_tcpiSndSsthresh;
  *(to + 236) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(to + 47) = self->_tcpiSndCwnd;
  *(to + 236) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(to + 41) = self->_tcpiRcvSpace;
  *(to + 236) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 52) = self->_tcpiSndWnd;
  *(to + 236) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 49) = self->_tcpiSndNxt;
  *(to + 236) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 40) = self->_tcpiRcvNxt;
  *(to + 236) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 37) = self->_tcpiLastOutif;
  *(to + 236) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 50) = self->_tcpiSndSbbytes;
  *(to + 236) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 11) = self->_tcpiTxpackets;
  *(to + 236) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 10) = self->_tcpiTxbytes;
  *(to + 236) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 12) = self->_tcpiTxretransmitbytes;
  *(to + 236) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 13) = self->_tcpiTxunacked;
  *(to + 236) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 8) = self->_tcpiRxpackets;
  *(to + 236) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 5) = self->_tcpiRxbytes;
  *(to + 236) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 6) = self->_tcpiRxduplicatebytes;
  *(to + 236) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_29:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(to + 7) = self->_tcpiRxoutoforderbytes;
  *(to + 236) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(to + 9) = self->_tcpiSndBw;
  *(to + 236) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(to + 56) = self->_tcpiSynrexmits;
  *(to + 236) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(to + 57) = self->_tcpiUnused1;
  *(to + 236) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_33:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(to + 58) = self->_tcpiUnused2;
  *(to + 236) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_34:
    if ((*&has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(to + 2) = self->_tcpiCellRxpackets;
  *(to + 236) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_35:
    if ((*&has & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(to + 1) = self->_tcpiCellRxbytes;
  *(to + 236) |= 1uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_36:
    if ((*&has & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(to + 4) = self->_tcpiCellTxpackets;
  *(to + 236) |= 8uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_37:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(to + 3) = self->_tcpiCellTxbytes;
  *(to + 236) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(to + 15) = self->_tcpiWifiRxpackets;
  *(to + 236) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_39:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(to + 14) = self->_tcpiWifiRxbytes;
  *(to + 236) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_40:
    if ((*&has & 0x8000) == 0)
    {
      return;
    }

LABEL_81:
    *(to + 16) = self->_tcpiWifiTxbytes;
    *(to + 236) |= 0x8000uLL;
    return;
  }

LABEL_80:
  *(to + 17) = self->_tcpiWifiTxpackets;
  *(to + 236) |= 0x10000uLL;
  if ((*&self->_has & 0x8000) != 0)
  {
    goto LABEL_81;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((*&has & 0x1000000000) != 0)
  {
    *(result + 55) = self->_tcpiState;
    *(result + 236) |= 0x1000000000uLL;
    has = self->_has;
    if ((*&has & 0x80000) == 0)
    {
LABEL_3:
      if ((*&has & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_45;
    }
  }

  else if ((*&has & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  *(result + 38) = self->_tcpiOptions;
  *(result + 236) |= 0x80000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(result + 53) = self->_tcpiSndWscale;
  *(result + 236) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_5:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(result + 42) = self->_tcpiRcvWscale;
  *(result + 236) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_6:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(result + 36) = self->_tcpiFlags;
  *(result + 236) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(result + 43) = self->_tcpiRto;
  *(result + 236) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(result + 48) = self->_tcpiSndMss;
  *(result + 236) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_9:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(result + 39) = self->_tcpiRcvMss;
  *(result + 236) |= 0x100000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(result + 45) = self->_tcpiRttcur;
  *(result + 236) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_11:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(result + 54) = self->_tcpiSrtt;
  *(result + 236) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_12:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(result + 46) = self->_tcpiRttvar;
  *(result + 236) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(result + 44) = self->_tcpiRttbest;
  *(result + 236) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_14:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(result + 51) = self->_tcpiSndSsthresh;
  *(result + 236) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_15:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(result + 47) = self->_tcpiSndCwnd;
  *(result + 236) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(result + 41) = self->_tcpiRcvSpace;
  *(result + 236) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_17:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(result + 52) = self->_tcpiSndWnd;
  *(result + 236) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_18:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(result + 49) = self->_tcpiSndNxt;
  *(result + 236) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_19:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(result + 40) = self->_tcpiRcvNxt;
  *(result + 236) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_20:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(result + 37) = self->_tcpiLastOutif;
  *(result + 236) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_21:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(result + 50) = self->_tcpiSndSbbytes;
  *(result + 236) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_22:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(result + 11) = self->_tcpiTxpackets;
  *(result + 236) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(result + 10) = self->_tcpiTxbytes;
  *(result + 236) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(result + 12) = self->_tcpiTxretransmitbytes;
  *(result + 236) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_25:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(result + 13) = self->_tcpiTxunacked;
  *(result + 236) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_26:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(result + 8) = self->_tcpiRxpackets;
  *(result + 236) |= 0x80uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(result + 5) = self->_tcpiRxbytes;
  *(result + 236) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(result + 6) = self->_tcpiRxduplicatebytes;
  *(result + 236) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_29:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(result + 7) = self->_tcpiRxoutoforderbytes;
  *(result + 236) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_30:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(result + 9) = self->_tcpiSndBw;
  *(result + 236) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(result + 56) = self->_tcpiSynrexmits;
  *(result + 236) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(result + 57) = self->_tcpiUnused1;
  *(result + 236) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_33:
    if ((*&has & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(result + 58) = self->_tcpiUnused2;
  *(result + 236) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_34:
    if ((*&has & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(result + 2) = self->_tcpiCellRxpackets;
  *(result + 236) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_35:
    if ((*&has & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(result + 1) = self->_tcpiCellRxbytes;
  *(result + 236) |= 1uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_36:
    if ((*&has & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(result + 4) = self->_tcpiCellTxpackets;
  *(result + 236) |= 8uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_37:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(result + 3) = self->_tcpiCellTxbytes;
  *(result + 236) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_38:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(result + 15) = self->_tcpiWifiRxpackets;
  *(result + 236) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_39:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(result + 14) = self->_tcpiWifiRxbytes;
  *(result + 236) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_40:
    if ((*&has & 0x8000) == 0)
    {
      return result;
    }

    goto LABEL_41;
  }

LABEL_81:
  *(result + 17) = self->_tcpiWifiTxpackets;
  *(result + 236) |= 0x10000uLL;
  if ((*&self->_has & 0x8000) == 0)
  {
    return result;
  }

LABEL_41:
  *(result + 16) = self->_tcpiWifiTxbytes;
  *(result + 236) |= 0x8000uLL;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 236);
    if ((*&has & 0x1000000000) != 0)
    {
      if ((v7 & 0x1000000000) == 0 || self->_tcpiState != *(equal + 55))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x1000000000) != 0)
    {
LABEL_201:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_tcpiOptions != *(equal + 38))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x400000000) != 0)
    {
      if ((v7 & 0x400000000) == 0 || self->_tcpiSndWscale != *(equal + 53))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x400000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_tcpiRcvWscale != *(equal + 42))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_tcpiFlags != *(equal + 36))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_tcpiRto != *(equal + 43))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x20000000) != 0)
    {
      if ((v7 & 0x20000000) == 0 || self->_tcpiSndMss != *(equal + 48))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x20000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v7 & 0x100000) == 0 || self->_tcpiRcvMss != *(equal + 39))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x100000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x4000000) != 0)
    {
      if ((v7 & 0x4000000) == 0 || self->_tcpiRttcur != *(equal + 45))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x4000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x800000000) != 0)
    {
      if ((v7 & 0x800000000) == 0 || self->_tcpiSrtt != *(equal + 54))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x800000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x8000000) != 0)
    {
      if ((v7 & 0x8000000) == 0 || self->_tcpiRttvar != *(equal + 46))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x8000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_tcpiRttbest != *(equal + 44))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x100000000) != 0)
    {
      if ((v7 & 0x100000000) == 0 || self->_tcpiSndSsthresh != *(equal + 51))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x10000000) != 0)
    {
      if ((v7 & 0x10000000) == 0 || self->_tcpiSndCwnd != *(equal + 47))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x10000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v7 & 0x400000) == 0 || self->_tcpiRcvSpace != *(equal + 41))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x400000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x200000000) != 0)
    {
      if ((v7 & 0x200000000) == 0 || self->_tcpiSndWnd != *(equal + 52))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x200000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x40000000) != 0)
    {
      if ((v7 & 0x40000000) == 0 || self->_tcpiSndNxt != *(equal + 49))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x40000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v7 & 0x200000) == 0 || self->_tcpiRcvNxt != *(equal + 40))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x200000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_tcpiLastOutif != *(equal + 37))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x80000000) != 0)
    {
      if ((v7 & 0x80000000) == 0 || self->_tcpiSndSbbytes != *(equal + 50))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x80000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_tcpiTxpackets != *(equal + 11))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v7 & 0x200) == 0 || self->_tcpiTxbytes != *(equal + 10))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x200) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_tcpiTxretransmitbytes != *(equal + 12))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v7 & 0x1000) == 0 || self->_tcpiTxunacked != *(equal + 13))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x1000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_tcpiRxpackets != *(equal + 8))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_tcpiRxbytes != *(equal + 5))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_tcpiRxduplicatebytes != *(equal + 6))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_tcpiRxoutoforderbytes != *(equal + 7))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v7 & 0x100) == 0 || self->_tcpiSndBw != *(equal + 9))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x100) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x2000000000) != 0)
    {
      if ((v7 & 0x2000000000) == 0 || self->_tcpiSynrexmits != *(equal + 56))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x2000000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x4000000000) != 0)
    {
      if ((v7 & 0x4000000000) == 0 || self->_tcpiUnused1 != *(equal + 57))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x4000000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x8000000000) != 0)
    {
      if ((v7 & 0x8000000000) == 0 || self->_tcpiUnused2 != *(equal + 58))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x8000000000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_tcpiCellRxpackets != *(equal + 2))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_201;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_tcpiCellRxbytes != *(equal + 1))
      {
        goto LABEL_201;
      }
    }

    else if (v7)
    {
      goto LABEL_201;
    }

    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_tcpiCellTxpackets != *(equal + 4))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_tcpiCellTxbytes != *(equal + 3))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v7 & 0x4000) == 0 || self->_tcpiWifiRxpackets != *(equal + 15))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x4000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x2000) != 0)
    {
      if ((v7 & 0x2000) == 0 || self->_tcpiWifiRxbytes != *(equal + 14))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x2000) != 0)
    {
      goto LABEL_201;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_tcpiWifiTxpackets != *(equal + 17))
      {
        goto LABEL_201;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_201;
    }

    LOBYTE(v5) = (*(equal + 236) & 0x8000) == 0;
    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_tcpiWifiTxbytes != *(equal + 16))
      {
        goto LABEL_201;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x1000000000) != 0)
  {
    v43 = 2654435761 * self->_tcpiState;
    if ((*&has & 0x80000) != 0)
    {
LABEL_3:
      v42 = 2654435761 * self->_tcpiOptions;
      if ((*&has & 0x400000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v43 = 0;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_3;
    }
  }

  v42 = 0;
  if ((*&has & 0x400000000) != 0)
  {
LABEL_4:
    v41 = 2654435761 * self->_tcpiSndWscale;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  v41 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_5:
    v40 = 2654435761 * self->_tcpiRcvWscale;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  v40 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_6:
    v39 = 2654435761 * self->_tcpiFlags;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  v39 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_7:
    v38 = 2654435761 * self->_tcpiRto;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  v38 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_8:
    v37 = 2654435761 * self->_tcpiSndMss;
    if ((*&has & 0x100000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  v37 = 0;
  if ((*&has & 0x100000) != 0)
  {
LABEL_9:
    v36 = 2654435761 * self->_tcpiRcvMss;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  v36 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_10:
    v35 = 2654435761 * self->_tcpiRttcur;
    if ((*&has & 0x800000000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  v35 = 0;
  if ((*&has & 0x800000000) != 0)
  {
LABEL_11:
    v34 = 2654435761 * self->_tcpiSrtt;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  v34 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_12:
    v33 = 2654435761 * self->_tcpiRttvar;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  v33 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_13:
    v32 = 2654435761 * self->_tcpiRttbest;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  v32 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_14:
    v31 = 2654435761 * self->_tcpiSndSsthresh;
    if ((*&has & 0x10000000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  v31 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_15:
    v30 = 2654435761 * self->_tcpiSndCwnd;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  v30 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_16:
    v3 = 2654435761 * self->_tcpiRcvSpace;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  v3 = 0;
  if ((*&has & 0x200000000) != 0)
  {
LABEL_17:
    v4 = 2654435761 * self->_tcpiSndWnd;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  v4 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_18:
    v5 = 2654435761 * self->_tcpiSndNxt;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  v5 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_19:
    v6 = 2654435761 * self->_tcpiRcvNxt;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  v6 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_20:
    v7 = 2654435761 * self->_tcpiLastOutif;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  v7 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_21:
    v8 = 2654435761 * self->_tcpiSndSbbytes;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  v8 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_22:
    v9 = 2654435761u * self->_tcpiTxpackets;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  v9 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_23:
    v10 = 2654435761u * self->_tcpiTxbytes;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  v10 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_24:
    v11 = 2654435761u * self->_tcpiTxretransmitbytes;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  v11 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_25:
    v12 = 2654435761u * self->_tcpiTxunacked;
    if ((*&has & 0x80) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  v12 = 0;
  if ((*&has & 0x80) != 0)
  {
LABEL_26:
    v13 = 2654435761u * self->_tcpiRxpackets;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  v13 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_27:
    v14 = 2654435761u * self->_tcpiRxbytes;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  v14 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_28:
    v15 = 2654435761u * self->_tcpiRxduplicatebytes;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  v15 = 0;
  if ((*&has & 0x40) != 0)
  {
LABEL_29:
    v16 = 2654435761u * self->_tcpiRxoutoforderbytes;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  v16 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_30:
    v17 = 2654435761u * self->_tcpiSndBw;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  v17 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_31:
    v18 = 2654435761 * self->_tcpiSynrexmits;
    if ((*&has & 0x4000000000) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  v18 = 0;
  if ((*&has & 0x4000000000) != 0)
  {
LABEL_32:
    v19 = 2654435761 * self->_tcpiUnused1;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  v19 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_33:
    v20 = 2654435761 * self->_tcpiUnused2;
    if ((*&has & 2) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  v20 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_34:
    v21 = 2654435761u * self->_tcpiCellRxpackets;
    if (*&has)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  v21 = 0;
  if (*&has)
  {
LABEL_35:
    v22 = 2654435761u * self->_tcpiCellRxbytes;
    if ((*&has & 8) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  v22 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_36:
    v23 = 2654435761u * self->_tcpiCellTxpackets;
    if ((*&has & 4) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  v23 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_37:
    v24 = 2654435761u * self->_tcpiCellTxbytes;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  v24 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_38:
    v25 = 2654435761u * self->_tcpiWifiRxpackets;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  v25 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_39:
    v26 = 2654435761u * self->_tcpiWifiRxbytes;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_40;
    }

LABEL_80:
    v27 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_41;
    }

LABEL_81:
    v28 = 0;
    return v42 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_79:
  v26 = 0;
  if ((*&has & 0x10000) == 0)
  {
    goto LABEL_80;
  }

LABEL_40:
  v27 = 2654435761u * self->_tcpiWifiTxpackets;
  if ((*&has & 0x8000) == 0)
  {
    goto LABEL_81;
  }

LABEL_41:
  v28 = 2654435761u * self->_tcpiWifiTxbytes;
  return v42 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)from
{
  v3 = *(from + 236);
  if ((v3 & 0x1000000000) != 0)
  {
    self->_tcpiState = *(from + 55);
    *&self->_has |= 0x1000000000uLL;
    v3 = *(from + 236);
    if ((v3 & 0x80000) == 0)
    {
LABEL_3:
      if ((v3 & 0x400000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((v3 & 0x80000) == 0)
  {
    goto LABEL_3;
  }

  self->_tcpiOptions = *(from + 38);
  *&self->_has |= 0x80000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x400000000) == 0)
  {
LABEL_4:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_tcpiSndWscale = *(from + 53);
  *&self->_has |= 0x400000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x800000) == 0)
  {
LABEL_5:
    if ((v3 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_tcpiRcvWscale = *(from + 42);
  *&self->_has |= 0x800000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x20000) == 0)
  {
LABEL_6:
    if ((v3 & 0x1000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_tcpiFlags = *(from + 36);
  *&self->_has |= 0x20000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x1000000) == 0)
  {
LABEL_7:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_tcpiRto = *(from + 43);
  *&self->_has |= 0x1000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x20000000) == 0)
  {
LABEL_8:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_tcpiSndMss = *(from + 48);
  *&self->_has |= 0x20000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x100000) == 0)
  {
LABEL_9:
    if ((v3 & 0x4000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_tcpiRcvMss = *(from + 39);
  *&self->_has |= 0x100000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x4000000) == 0)
  {
LABEL_10:
    if ((v3 & 0x800000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_tcpiRttcur = *(from + 45);
  *&self->_has |= 0x4000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x800000000) == 0)
  {
LABEL_11:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_tcpiSrtt = *(from + 54);
  *&self->_has |= 0x800000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x8000000) == 0)
  {
LABEL_12:
    if ((v3 & 0x2000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_tcpiRttvar = *(from + 46);
  *&self->_has |= 0x8000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x2000000) == 0)
  {
LABEL_13:
    if ((v3 & 0x100000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_tcpiRttbest = *(from + 44);
  *&self->_has |= 0x2000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x100000000) == 0)
  {
LABEL_14:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_tcpiSndSsthresh = *(from + 51);
  *&self->_has |= 0x100000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x10000000) == 0)
  {
LABEL_15:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_tcpiSndCwnd = *(from + 47);
  *&self->_has |= 0x10000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x400000) == 0)
  {
LABEL_16:
    if ((v3 & 0x200000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_tcpiRcvSpace = *(from + 41);
  *&self->_has |= 0x400000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x200000000) == 0)
  {
LABEL_17:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_tcpiSndWnd = *(from + 52);
  *&self->_has |= 0x200000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x40000000) == 0)
  {
LABEL_18:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_tcpiSndNxt = *(from + 49);
  *&self->_has |= 0x40000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x200000) == 0)
  {
LABEL_19:
    if ((v3 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_tcpiRcvNxt = *(from + 40);
  *&self->_has |= 0x200000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x40000) == 0)
  {
LABEL_20:
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_tcpiLastOutif = *(from + 37);
  *&self->_has |= 0x40000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x80000000) == 0)
  {
LABEL_21:
    if ((v3 & 0x400) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_tcpiSndSbbytes = *(from + 50);
  *&self->_has |= 0x80000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x400) == 0)
  {
LABEL_22:
    if ((v3 & 0x200) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_tcpiTxpackets = *(from + 11);
  *&self->_has |= 0x400uLL;
  v3 = *(from + 236);
  if ((v3 & 0x200) == 0)
  {
LABEL_23:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_tcpiTxbytes = *(from + 10);
  *&self->_has |= 0x200uLL;
  v3 = *(from + 236);
  if ((v3 & 0x800) == 0)
  {
LABEL_24:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_tcpiTxretransmitbytes = *(from + 12);
  *&self->_has |= 0x800uLL;
  v3 = *(from + 236);
  if ((v3 & 0x1000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_tcpiTxunacked = *(from + 13);
  *&self->_has |= 0x1000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x80) == 0)
  {
LABEL_26:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_tcpiRxpackets = *(from + 8);
  *&self->_has |= 0x80uLL;
  v3 = *(from + 236);
  if ((v3 & 0x10) == 0)
  {
LABEL_27:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_tcpiRxbytes = *(from + 5);
  *&self->_has |= 0x10uLL;
  v3 = *(from + 236);
  if ((v3 & 0x20) == 0)
  {
LABEL_28:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_tcpiRxduplicatebytes = *(from + 6);
  *&self->_has |= 0x20uLL;
  v3 = *(from + 236);
  if ((v3 & 0x40) == 0)
  {
LABEL_29:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_tcpiRxoutoforderbytes = *(from + 7);
  *&self->_has |= 0x40uLL;
  v3 = *(from + 236);
  if ((v3 & 0x100) == 0)
  {
LABEL_30:
    if ((v3 & 0x2000000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_tcpiSndBw = *(from + 9);
  *&self->_has |= 0x100uLL;
  v3 = *(from + 236);
  if ((v3 & 0x2000000000) == 0)
  {
LABEL_31:
    if ((v3 & 0x4000000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_tcpiSynrexmits = *(from + 56);
  *&self->_has |= 0x2000000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x4000000000) == 0)
  {
LABEL_32:
    if ((v3 & 0x8000000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_tcpiUnused1 = *(from + 57);
  *&self->_has |= 0x4000000000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x8000000000) == 0)
  {
LABEL_33:
    if ((v3 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_tcpiUnused2 = *(from + 58);
  *&self->_has |= 0x8000000000uLL;
  v3 = *(from + 236);
  if ((v3 & 2) == 0)
  {
LABEL_34:
    if ((v3 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_tcpiCellRxpackets = *(from + 2);
  *&self->_has |= 2uLL;
  v3 = *(from + 236);
  if ((v3 & 1) == 0)
  {
LABEL_35:
    if ((v3 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_tcpiCellRxbytes = *(from + 1);
  *&self->_has |= 1uLL;
  v3 = *(from + 236);
  if ((v3 & 8) == 0)
  {
LABEL_36:
    if ((v3 & 4) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_tcpiCellTxpackets = *(from + 4);
  *&self->_has |= 8uLL;
  v3 = *(from + 236);
  if ((v3 & 4) == 0)
  {
LABEL_37:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_tcpiCellTxbytes = *(from + 3);
  *&self->_has |= 4uLL;
  v3 = *(from + 236);
  if ((v3 & 0x4000) == 0)
  {
LABEL_38:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_tcpiWifiRxpackets = *(from + 15);
  *&self->_has |= 0x4000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x2000) == 0)
  {
LABEL_39:
    if ((v3 & 0x10000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_tcpiWifiRxbytes = *(from + 14);
  *&self->_has |= 0x2000uLL;
  v3 = *(from + 236);
  if ((v3 & 0x10000) == 0)
  {
LABEL_40:
    if ((v3 & 0x8000) == 0)
    {
      return;
    }

LABEL_81:
    self->_tcpiWifiTxbytes = *(from + 16);
    *&self->_has |= 0x8000uLL;
    return;
  }

LABEL_80:
  self->_tcpiWifiTxpackets = *(from + 17);
  *&self->_has |= 0x10000uLL;
  if ((*(from + 236) & 0x8000) != 0)
  {
    goto LABEL_81;
  }
}

@end