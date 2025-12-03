@interface AWDWRMWiFiCallingEnd
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasATMRegistrationState:(BOOL)state;
- (void)setHasBBAudioErasures:(BOOL)erasures;
- (void)setHasBBAudioPacketLoss:(BOOL)loss;
- (void)setHasBSSLoad:(BOOL)load;
- (void)setHasBeaconRate:(BOOL)rate;
- (void)setHasCaptiveNetwork:(BOOL)network;
- (void)setHasHOBool:(BOOL)bool;
- (void)setHasHOCapability:(BOOL)capability;
- (void)setHasIPSecTunnelStatus:(BOOL)status;
- (void)setHasIWLANStatus:(BOOL)status;
- (void)setHasLTEDataLQM:(BOOL)m;
- (void)setHasLTEQoSAvailable:(BOOL)available;
- (void)setHasLTERSRP:(BOOL)p;
- (void)setHasLTESINR:(BOOL)r;
- (void)setHasLTETxPower:(BOOL)power;
- (void)setHasLTEVoiceLQM:(BOOL)m;
- (void)setHasLatteDejitterBufferUnderflow:(BOOL)underflow;
- (void)setHasLatteErasures:(BOOL)erasures;
- (void)setHasLatteNominalJitterBufferSize:(BOOL)size;
- (void)setHasLatteRTPPacketLoss:(BOOL)loss;
- (void)setHasServingCellRAT:(BOOL)t;
- (void)setHasServingCellRSRP:(BOOL)p;
- (void)setHasServingCellSINR:(BOOL)r;
- (void)setHasSessionId:(BOOL)id;
- (void)setHasSignalBar:(BOOL)bar;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasWOWEnabled:(BOOL)enabled;
- (void)setHasWiFiBSSIDChange:(BOOL)change;
- (void)setHasWiFiPreferred:(BOOL)preferred;
- (void)setHasWiFiRSSI:(BOOL)i;
- (void)setHasWiFiRxRetry:(BOOL)retry;
- (void)setHasWiFiSINR:(BOOL)r;
- (void)setHasWiFiTxPER:(BOOL)r;
- (void)writeTo:(id)to;
@end

@implementation AWDWRMWiFiCallingEnd

- (void)dealloc
{
  [(AWDWRMWiFiCallingEnd *)self setWRMRecommendedRAT:0];
  [(AWDWRMWiFiCallingEnd *)self setCallId:0];
  [(AWDWRMWiFiCallingEnd *)self setCallEndReason:0];
  v3.receiver = self;
  v3.super_class = AWDWRMWiFiCallingEnd;
  [(AWDWRMWiFiCallingEnd *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  v3 = 8;
  if (!timestamp)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasWiFiRSSI:(BOOL)i
{
  v3 = 16;
  if (!i)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasWiFiTxPER:(BOOL)r
{
  v3 = 0x1000000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasWiFiSINR:(BOOL)r
{
  v3 = 32;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasWiFiBSSIDChange:(BOOL)change
{
  v3 = 0x100000000;
  if (!change)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasBeaconRate:(BOOL)rate
{
  v3 = 512;
  if (!rate)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasCaptiveNetwork:(BOOL)network
{
  v3 = 0x4000000;
  if (!network)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasWOWEnabled:(BOOL)enabled
{
  v3 = 0x80000000;
  if (!enabled)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasWiFiRxRetry:(BOOL)retry
{
  v3 = 0x800000;
  if (!retry)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasLTEDataLQM:(BOOL)m
{
  v3 = 2048;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasLTETxPower:(BOOL)power
{
  v3 = 0x2000;
  if (!power)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasLTEQoSAvailable:(BOOL)available
{
  v3 = 0x40000000;
  if (!available)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasBSSLoad:(BOOL)load
{
  v3 = 256;
  if (!load)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasLTEVoiceLQM:(BOOL)m
{
  v3 = 0x4000;
  if (!m)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasLTESINR:(BOOL)r
{
  v3 = 4096;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasLTERSRP:(BOOL)p
{
  v3 = 2;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasSignalBar:(BOOL)bar
{
  v3 = 0x400000;
  if (!bar)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (void)setHasLatteNominalJitterBufferSize:(BOOL)size
{
  v3 = 0x20000;
  if (!size)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasLatteDejitterBufferUnderflow:(BOOL)underflow
{
  v3 = 0x8000;
  if (!underflow)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasLatteRTPPacketLoss:(BOOL)loss
{
  v3 = 0x40000;
  if (!loss)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasLatteErasures:(BOOL)erasures
{
  v3 = 0x10000;
  if (!erasures)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasHOCapability:(BOOL)capability
{
  v3 = 0x8000000;
  if (!capability)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasHOBool:(BOOL)bool
{
  v3 = 1024;
  if (!bool)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasIWLANStatus:(BOOL)status
{
  v3 = 0x20000000;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasSessionId:(BOOL)id
{
  v3 = 0x200000;
  if (!id)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasIPSecTunnelStatus:(BOOL)status
{
  v3 = 0x10000000;
  if (!status)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasATMRegistrationState:(BOOL)state
{
  v3 = 0x2000000;
  if (!state)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasBBAudioPacketLoss:(BOOL)loss
{
  v3 = 128;
  if (!loss)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasBBAudioErasures:(BOOL)erasures
{
  v3 = 64;
  if (!erasures)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasWiFiPreferred:(BOOL)preferred
{
  v3 = 0x200000000;
  if (!preferred)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasServingCellRAT:(BOOL)t
{
  v3 = 0x80000;
  if (!t)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasServingCellSINR:(BOOL)r
{
  v3 = 0x100000;
  if (!r)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)setHasServingCellRSRP:(BOOL)p
{
  v3 = 4;
  if (!p)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWRMWiFiCallingEnd;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWRMWiFiCallingEnd description](&v3, sel_description), -[AWDWRMWiFiCallingEnd dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wiFiRSSI), @"WiFi_RSSI"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wiFiTxPER), @"WiFi_TxPER"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wiFiSINR), @"WiFi_SINR"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wiFiBSSIDChange), @"WiFi_BSSID_Change"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_beaconRate), @"Beacon_Rate"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_captiveNetwork), @"Captive_Network"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wOWEnabled), @"WOW_Enabled"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_wiFiRxRetry), @"WiFi_RxRetry"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lTEDataLQM), @"LTE_Data_LQM"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lTETxPower), @"LTE_Tx_Power"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_lTEQoSAvailable), @"LTE_QoS_Available"}];
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bSSLoad), @"BSS_Load"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lTEVoiceLQM), @"LTE_Voice_LQM"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_lTESINR), @"LTE_SINR"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_lTERSRP), @"LTE_RSRP"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_lTECTRSRP), @"LTE_CT_RSRP"}];
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_signalBar), @"Signal_bar"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_latteNominalJitterBufferSize), @"Latte_Nominal_Jitter_Buffer_Size"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_latteDejitterBufferUnderflow), @"Latte_Dejitter_Buffer_Underflow"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_latteRTPPacketLoss), @"Latte_RTP_Packet_Loss"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_latteErasures), @"Latte_Erasures"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_69:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hOCapability), @"HO_Capability"}];
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_hOBool), @"HO_Bool"}];
  }

LABEL_26:
  wRMRecommendedRAT = self->_wRMRecommendedRAT;
  if (wRMRecommendedRAT)
  {
    [dictionary setObject:wRMRecommendedRAT forKey:@"WRM_Recommended_RAT"];
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_iWLANStatus), @"iWLAN_Status"}];
  }

  callId = self->_callId;
  if (callId)
  {
    [dictionary setObject:callId forKey:@"call_id"];
  }

  v7 = self->_has;
  if ((*&v7 & 0x200000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_sessionId), @"session_id"}];
    v7 = self->_has;
  }

  if ((*&v7 & 0x10000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_iPSecTunnelStatus), @"IPSec_Tunnel_status"}];
  }

  callEndReason = self->_callEndReason;
  if (callEndReason)
  {
    [dictionary setObject:callEndReason forKey:@"Call_End_Reason"];
  }

  v9 = self->_has;
  if ((*&v9 & 0x2000000) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_aTMRegistrationState), @"ATM_Registration_State"}];
    v9 = self->_has;
    if ((*&v9 & 0x80) == 0)
    {
LABEL_40:
      if ((*&v9 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v9 & 0x80) == 0)
  {
    goto LABEL_40;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBAudioPacketLoss), @"BB_Audio_Packet_Loss"}];
  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_41:
    if ((*&v9 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bBAudioErasures), @"BB_Audio_Erasures"}];
  v9 = self->_has;
  if ((*&v9 & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_wiFiPreferred), @"WiFi_Preferred"}];
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_43:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

LABEL_76:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_servingCellSINR), @"ServingCell_SINR"}];
    if ((*&self->_has & 4) == 0)
    {
      return dictionary;
    }

    goto LABEL_45;
  }

LABEL_75:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_servingCellRAT), @"ServingCell_RAT"}];
  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    goto LABEL_76;
  }

LABEL_44:
  if ((*&v9 & 4) != 0)
  {
LABEL_45:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_servingCellRSRP), @"ServingCell_RSRP"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_48;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  wiFiRSSI = self->_wiFiRSSI;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_49;
  }

LABEL_48:
  wiFiTxPER = self->_wiFiTxPER;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_50;
  }

LABEL_49:
  wiFiSINR = self->_wiFiSINR;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

LABEL_50:
  wiFiBSSIDChange = self->_wiFiBSSIDChange;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_51:
  beaconRate = self->_beaconRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_53;
  }

LABEL_52:
  captiveNetwork = self->_captiveNetwork;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_53:
  wOWEnabled = self->_wOWEnabled;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_55;
  }

LABEL_54:
  wiFiRxRetry = self->_wiFiRxRetry;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_56;
  }

LABEL_55:
  lTEDataLQM = self->_lTEDataLQM;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_57;
  }

LABEL_56:
  lTETxPower = self->_lTETxPower;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_58;
  }

LABEL_57:
  lTEQoSAvailable = self->_lTEQoSAvailable;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_58:
  bSSLoad = self->_bSSLoad;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_60;
  }

LABEL_59:
  lTEVoiceLQM = self->_lTEVoiceLQM;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_61;
  }

LABEL_60:
  lTESINR = self->_lTESINR;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_62;
  }

LABEL_61:
  lTERSRP = self->_lTERSRP;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_63;
  }

LABEL_62:
  lTECTRSRP = self->_lTECTRSRP;
  PBDataWriterWriteSint64Field();
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_64;
  }

LABEL_63:
  signalBar = self->_signalBar;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_65;
  }

LABEL_64:
  latteNominalJitterBufferSize = self->_latteNominalJitterBufferSize;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_66;
  }

LABEL_65:
  latteDejitterBufferUnderflow = self->_latteDejitterBufferUnderflow;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_67;
  }

LABEL_66:
  latteRTPPacketLoss = self->_latteRTPPacketLoss;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_68;
  }

LABEL_67:
  latteErasures = self->_latteErasures;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_68:
  hOCapability = self->_hOCapability;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    hOBool = self->_hOBool;
    PBDataWriterWriteUint32Field();
  }

LABEL_26:
  if (self->_wRMRecommendedRAT)
  {
    PBDataWriterWriteStringField();
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    iWLANStatus = self->_iWLANStatus;
    PBDataWriterWriteBOOLField();
  }

  if (self->_callId)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((*&v7 & 0x200000) != 0)
  {
    sessionId = self->_sessionId;
    PBDataWriterWriteUint32Field();
    v7 = self->_has;
  }

  if ((*&v7 & 0x10000000) != 0)
  {
    iPSecTunnelStatus = self->_iPSecTunnelStatus;
    PBDataWriterWriteBOOLField();
  }

  if (self->_callEndReason)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((*&v10 & 0x2000000) != 0)
  {
    aTMRegistrationState = self->_aTMRegistrationState;
    PBDataWriterWriteBOOLField();
    v10 = self->_has;
    if ((*&v10 & 0x80) == 0)
    {
LABEL_40:
      if ((*&v10 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_72;
    }
  }

  else if ((*&v10 & 0x80) == 0)
  {
    goto LABEL_40;
  }

  bBAudioPacketLoss = self->_bBAudioPacketLoss;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x40) == 0)
  {
LABEL_41:
    if ((*&v10 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_73;
  }

LABEL_72:
  bBAudioErasures = self->_bBAudioErasures;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&v10 & 0x80000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_74;
  }

LABEL_73:
  wiFiPreferred = self->_wiFiPreferred;
  PBDataWriterWriteBOOLField();
  v10 = self->_has;
  if ((*&v10 & 0x80000) == 0)
  {
LABEL_43:
    if ((*&v10 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

LABEL_75:
    servingCellSINR = self->_servingCellSINR;
    PBDataWriterWriteSint32Field();
    if ((*&self->_has & 4) == 0)
    {
      return;
    }

    goto LABEL_76;
  }

LABEL_74:
  servingCellRAT = self->_servingCellRAT;
  PBDataWriterWriteUint32Field();
  v10 = self->_has;
  if ((*&v10 & 0x100000) != 0)
  {
    goto LABEL_75;
  }

LABEL_44:
  if ((*&v10 & 4) == 0)
  {
    return;
  }

LABEL_76:
  servingCellRSRP = self->_servingCellRSRP;

  PBDataWriterWriteSint64Field();
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(to + 4) = self->_timestamp;
    *(to + 172) |= 8uLL;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(to + 5) = self->_wiFiRSSI;
  *(to + 172) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(to + 39) = self->_wiFiTxPER;
  *(to + 172) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(to + 6) = self->_wiFiSINR;
  *(to + 172) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(to + 167) = self->_wiFiBSSIDChange;
  *(to + 172) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(to + 17) = self->_beaconRate;
  *(to + 172) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(to + 161) = self->_captiveNetwork;
  *(to + 172) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(to + 166) = self->_wOWEnabled;
  *(to + 172) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(to + 38) = self->_wiFiRxRetry;
  *(to + 172) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(to + 23) = self->_lTEDataLQM;
  *(to + 172) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(to + 25) = self->_lTETxPower;
  *(to + 172) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(to + 165) = self->_lTEQoSAvailable;
  *(to + 172) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(to + 16) = self->_bSSLoad;
  *(to + 172) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(to + 26) = self->_lTEVoiceLQM;
  *(to + 172) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(to + 24) = self->_lTESINR;
  *(to + 172) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(to + 2) = self->_lTERSRP;
  *(to + 172) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(to + 1) = self->_lTECTRSRP;
  *(to + 172) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(to + 34) = self->_signalBar;
  *(to + 172) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(to + 29) = self->_latteNominalJitterBufferSize;
  *(to + 172) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(to + 27) = self->_latteDejitterBufferUnderflow;
  *(to + 172) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(to + 30) = self->_latteRTPPacketLoss;
  *(to + 172) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(to + 28) = self->_latteErasures;
  *(to + 172) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_69:
  *(to + 162) = self->_hOCapability;
  *(to + 172) |= 0x8000000uLL;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    *(to + 22) = self->_hOBool;
    *(to + 172) |= 0x400uLL;
  }

LABEL_26:
  if (self->_wRMRecommendedRAT)
  {
    [to setWRMRecommendedRAT:?];
  }

  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(to + 164) = self->_iWLANStatus;
    *(to + 172) |= 0x20000000uLL;
  }

  if (self->_callId)
  {
    [to setCallId:?];
  }

  v6 = self->_has;
  if ((*&v6 & 0x200000) != 0)
  {
    *(to + 33) = self->_sessionId;
    *(to + 172) |= 0x200000uLL;
    v6 = self->_has;
  }

  if ((*&v6 & 0x10000000) != 0)
  {
    *(to + 163) = self->_iPSecTunnelStatus;
    *(to + 172) |= 0x10000000uLL;
  }

  if (self->_callEndReason)
  {
    [to setCallEndReason:?];
  }

  v7 = self->_has;
  if ((*&v7 & 0x2000000) != 0)
  {
    *(to + 160) = self->_aTMRegistrationState;
    *(to + 172) |= 0x2000000uLL;
    v7 = self->_has;
    if ((*&v7 & 0x80) == 0)
    {
LABEL_40:
      if ((*&v7 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v7 & 0x80) == 0)
  {
    goto LABEL_40;
  }

  *(to + 15) = self->_bBAudioPacketLoss;
  *(to + 172) |= 0x80uLL;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_41:
    if ((*&v7 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(to + 14) = self->_bBAudioErasures;
  *(to + 172) |= 0x40uLL;
  v7 = self->_has;
  if ((*&v7 & 0x200000000) == 0)
  {
LABEL_42:
    if ((*&v7 & 0x80000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(to + 168) = self->_wiFiPreferred;
  *(to + 172) |= 0x200000000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x80000) == 0)
  {
LABEL_43:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(to + 31) = self->_servingCellRAT;
  *(to + 172) |= 0x80000uLL;
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_44:
    if ((*&v7 & 4) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_76:
  *(to + 32) = self->_servingCellSINR;
  *(to + 172) |= 0x100000uLL;
  if ((*&self->_has & 4) == 0)
  {
    return;
  }

LABEL_45:
  *(to + 3) = self->_servingCellRSRP;
  *(to + 172) |= 4uLL;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v5 + 32) = self->_timestamp;
    *(v5 + 172) |= 8uLL;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_wiFiRSSI;
  *(v5 + 172) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 156) = self->_wiFiTxPER;
  *(v5 + 172) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_5:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 48) = self->_wiFiSINR;
  *(v5 + 172) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_6:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 167) = self->_wiFiBSSIDChange;
  *(v5 + 172) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_7:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 68) = self->_beaconRate;
  *(v5 + 172) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 161) = self->_captiveNetwork;
  *(v5 + 172) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_9:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 166) = self->_wOWEnabled;
  *(v5 + 172) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 152) = self->_wiFiRxRetry;
  *(v5 + 172) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 92) = self->_lTEDataLQM;
  *(v5 + 172) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 100) = self->_lTETxPower;
  *(v5 + 172) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_13:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 165) = self->_lTEQoSAvailable;
  *(v5 + 172) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 64) = self->_bSSLoad;
  *(v5 + 172) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 104) = self->_lTEVoiceLQM;
  *(v5 + 172) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 96) = self->_lTESINR;
  *(v5 + 172) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_17:
    if ((*&has & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 16) = self->_lTERSRP;
  *(v5 + 172) |= 2uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_18:
    if ((*&has & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 8) = self->_lTECTRSRP;
  *(v5 + 172) |= 1uLL;
  has = self->_has;
  if ((*&has & 0x400000) == 0)
  {
LABEL_19:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 136) = self->_signalBar;
  *(v5 + 172) |= 0x400000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_20:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v5 + 116) = self->_latteNominalJitterBufferSize;
  *(v5 + 172) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_21:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(v5 + 108) = self->_latteDejitterBufferUnderflow;
  *(v5 + 172) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_22:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v5 + 120) = self->_latteRTPPacketLoss;
  *(v5 + 172) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_23:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v5 + 112) = self->_latteErasures;
  *(v5 + 172) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_63:
  *(v5 + 162) = self->_hOCapability;
  *(v5 + 172) |= 0x8000000uLL;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_25:
    *(v5 + 88) = self->_hOBool;
    *(v5 + 172) |= 0x400uLL;
  }

LABEL_26:

  *(v6 + 144) = [(NSString *)self->_wRMRecommendedRAT copyWithZone:zone];
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    *(v6 + 164) = self->_iWLANStatus;
    *(v6 + 172) |= 0x20000000uLL;
  }

  *(v6 + 80) = [(NSString *)self->_callId copyWithZone:zone];
  v8 = self->_has;
  if ((*&v8 & 0x200000) != 0)
  {
    *(v6 + 132) = self->_sessionId;
    *(v6 + 172) |= 0x200000uLL;
    v8 = self->_has;
  }

  if ((*&v8 & 0x10000000) != 0)
  {
    *(v6 + 163) = self->_iPSecTunnelStatus;
    *(v6 + 172) |= 0x10000000uLL;
  }

  *(v6 + 72) = [(NSString *)self->_callEndReason copyWithZone:zone];
  v9 = self->_has;
  if ((*&v9 & 0x2000000) != 0)
  {
    *(v6 + 160) = self->_aTMRegistrationState;
    *(v6 + 172) |= 0x2000000uLL;
    v9 = self->_has;
    if ((*&v9 & 0x80) == 0)
    {
LABEL_34:
      if ((*&v9 & 0x40) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_67;
    }
  }

  else if ((*&v9 & 0x80) == 0)
  {
    goto LABEL_34;
  }

  *(v6 + 60) = self->_bBAudioPacketLoss;
  *(v6 + 172) |= 0x80uLL;
  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_35:
    if ((*&v9 & 0x200000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 56) = self->_bBAudioErasures;
  *(v6 + 172) |= 0x40uLL;
  v9 = self->_has;
  if ((*&v9 & 0x200000000) == 0)
  {
LABEL_36:
    if ((*&v9 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 168) = self->_wiFiPreferred;
  *(v6 + 172) |= 0x200000000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x80000) == 0)
  {
LABEL_37:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

LABEL_70:
    *(v6 + 128) = self->_servingCellSINR;
    *(v6 + 172) |= 0x100000uLL;
    if ((*&self->_has & 4) == 0)
    {
      return v6;
    }

    goto LABEL_39;
  }

LABEL_69:
  *(v6 + 124) = self->_servingCellRAT;
  *(v6 + 172) |= 0x80000uLL;
  v9 = self->_has;
  if ((*&v9 & 0x100000) != 0)
  {
    goto LABEL_70;
  }

LABEL_38:
  if ((*&v9 & 4) != 0)
  {
LABEL_39:
    *(v6 + 24) = self->_servingCellRSRP;
    *(v6 + 172) |= 4uLL;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(equal + 172);
  if ((*&has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_timestamp != *(equal + 4))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_wiFiRSSI != *(equal + 5))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v7 & 0x1000000) == 0 || self->_wiFiTxPER != *(equal + 39))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x1000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_wiFiSINR != *(equal + 6))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x100000000) != 0)
  {
    if ((v7 & 0x100000000) == 0)
    {
      goto LABEL_207;
    }

    v8 = *(equal + 167);
    if (self->_wiFiBSSIDChange)
    {
      if ((*(equal + 167) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 167))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x100000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_beaconRate != *(equal + 17))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x4000000) != 0)
  {
    if ((v7 & 0x4000000) == 0)
    {
      goto LABEL_207;
    }

    v9 = *(equal + 161);
    if (self->_captiveNetwork)
    {
      if ((*(equal + 161) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 161))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x4000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x80000000) != 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_207;
    }

    v10 = *(equal + 166);
    if (self->_wOWEnabled)
    {
      if ((*(equal + 166) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 166))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x80000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v7 & 0x800000) == 0 || self->_wiFiRxRetry != *(equal + 38))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x800000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_lTEDataLQM != *(equal + 23))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v7 & 0x2000) == 0 || self->_lTETxPower != *(equal + 25))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x2000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x40000000) != 0)
  {
    if ((v7 & 0x40000000) == 0)
    {
      goto LABEL_207;
    }

    v11 = *(equal + 165);
    if (self->_lTEQoSAvailable)
    {
      if ((*(equal + 165) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 165))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x40000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_bSSLoad != *(equal + 16))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_lTEVoiceLQM != *(equal + 26))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_lTESINR != *(equal + 24))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_lTERSRP != *(equal + 2))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_207;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_lTECTRSRP != *(equal + 1))
    {
      goto LABEL_207;
    }
  }

  else if (v7)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v7 & 0x400000) == 0 || self->_signalBar != *(equal + 34))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x400000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v7 & 0x20000) == 0 || self->_latteNominalJitterBufferSize != *(equal + 29))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x20000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_latteDejitterBufferUnderflow != *(equal + 27))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_latteRTPPacketLoss != *(equal + 30))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_latteErasures != *(equal + 28))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x8000000) != 0)
  {
    if ((v7 & 0x8000000) == 0)
    {
      goto LABEL_207;
    }

    v12 = *(equal + 162);
    if (self->_hOCapability)
    {
      if ((*(equal + 162) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 162))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x8000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_hOBool != *(equal + 22))
    {
      goto LABEL_207;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_207;
  }

  wRMRecommendedRAT = self->_wRMRecommendedRAT;
  if (wRMRecommendedRAT | *(equal + 18))
  {
    v5 = [(NSString *)wRMRecommendedRAT isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v14 = *(equal + 172);
  if ((*&has & 0x20000000) != 0)
  {
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_207;
    }

    v15 = *(equal + 164);
    if (self->_iWLANStatus)
    {
      if ((*(equal + 164) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 164))
    {
      goto LABEL_207;
    }
  }

  else if ((v14 & 0x20000000) != 0)
  {
    goto LABEL_207;
  }

  callId = self->_callId;
  if (callId | *(equal + 10))
  {
    v5 = [(NSString *)callId isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v17 = *(equal + 172);
  if ((*&has & 0x200000) != 0)
  {
    if ((v17 & 0x200000) == 0 || self->_sessionId != *(equal + 33))
    {
      goto LABEL_207;
    }
  }

  else if ((v17 & 0x200000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x10000000) != 0)
  {
    if ((v17 & 0x10000000) == 0)
    {
      goto LABEL_207;
    }

    v18 = *(equal + 163);
    if (self->_iPSecTunnelStatus)
    {
      if ((*(equal + 163) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 163))
    {
      goto LABEL_207;
    }
  }

  else if ((v17 & 0x10000000) != 0)
  {
    goto LABEL_207;
  }

  callEndReason = self->_callEndReason;
  if (callEndReason | *(equal + 9))
  {
    v5 = [(NSString *)callEndReason isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v20 = *(equal + 172);
  if ((*&has & 0x2000000) != 0)
  {
    if ((v20 & 0x2000000) == 0)
    {
      goto LABEL_207;
    }

    v21 = *(equal + 160);
    if (self->_aTMRegistrationState)
    {
      if ((*(equal + 160) & 1) == 0)
      {
        goto LABEL_207;
      }
    }

    else if (*(equal + 160))
    {
      goto LABEL_207;
    }
  }

  else if ((v20 & 0x2000000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v20 & 0x80) == 0 || self->_bBAudioPacketLoss != *(equal + 15))
    {
      goto LABEL_207;
    }
  }

  else if ((v20 & 0x80) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v20 & 0x40) == 0 || self->_bBAudioErasures != *(equal + 14))
    {
      goto LABEL_207;
    }
  }

  else if ((v20 & 0x40) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x200000000) == 0)
  {
    if ((v20 & 0x200000000) != 0)
    {
      goto LABEL_207;
    }

    goto LABEL_193;
  }

  if ((v20 & 0x200000000) == 0)
  {
    goto LABEL_207;
  }

  v22 = *(equal + 168);
  if (self->_wiFiPreferred)
  {
    if ((*(equal + 168) & 1) == 0)
    {
      goto LABEL_207;
    }

    goto LABEL_193;
  }

  if (*(equal + 168))
  {
LABEL_207:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_193:
  if ((*&has & 0x80000) != 0)
  {
    if ((v20 & 0x80000) == 0 || self->_servingCellRAT != *(equal + 31))
    {
      goto LABEL_207;
    }
  }

  else if ((v20 & 0x80000) != 0)
  {
    goto LABEL_207;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v20 & 0x100000) == 0 || self->_servingCellSINR != *(equal + 32))
    {
      goto LABEL_207;
    }
  }

  else if ((v20 & 0x100000) != 0)
  {
    goto LABEL_207;
  }

  LOBYTE(v5) = (*(equal + 172) & 4) == 0;
  if ((*&has & 4) != 0)
  {
    if ((v20 & 4) == 0 || self->_servingCellRSRP != *(equal + 3))
    {
      goto LABEL_207;
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v43 = 2654435761u * self->_timestamp;
    if ((*&has & 0x10) != 0)
    {
LABEL_3:
      v42 = 2654435761 * self->_wiFiRSSI;
      if ((*&has & 0x1000000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v43 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v42 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_4:
    v41 = 2654435761 * self->_wiFiTxPER;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_29;
  }

LABEL_28:
  v41 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_5:
    v40 = 2654435761 * self->_wiFiSINR;
    if ((*&has & 0x100000000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_30;
  }

LABEL_29:
  v40 = 0;
  if ((*&has & 0x100000000) != 0)
  {
LABEL_6:
    v39 = 2654435761 * self->_wiFiBSSIDChange;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_30:
  v39 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_7:
    v38 = 2654435761 * self->_beaconRate;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_32;
  }

LABEL_31:
  v38 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_8:
    v37 = 2654435761 * self->_captiveNetwork;
    if ((*&has & 0x80000000) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_32:
  v37 = 0;
  if ((*&has & 0x80000000) != 0)
  {
LABEL_9:
    v36 = 2654435761 * self->_wOWEnabled;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_33:
  v36 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_10:
    v35 = 2654435761 * self->_wiFiRxRetry;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_35;
  }

LABEL_34:
  v35 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_11:
    v34 = 2654435761 * self->_lTEDataLQM;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_36;
  }

LABEL_35:
  v34 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_12:
    v33 = 2654435761 * self->_lTETxPower;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_37;
  }

LABEL_36:
  v33 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_13:
    v32 = 2654435761 * self->_lTEQoSAvailable;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_14;
    }

    goto LABEL_38;
  }

LABEL_37:
  v32 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_14:
    v31 = 2654435761 * self->_bSSLoad;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_39;
  }

LABEL_38:
  v31 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_15:
    v30 = 2654435761 * self->_lTEVoiceLQM;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_40;
  }

LABEL_39:
  v30 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_16:
    v29 = 2654435761 * self->_lTESINR;
    if ((*&has & 2) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_41;
  }

LABEL_40:
  v29 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_17:
    v28 = 2654435761 * self->_lTERSRP;
    if (*&has)
    {
      goto LABEL_18;
    }

    goto LABEL_42;
  }

LABEL_41:
  v28 = 0;
  if (*&has)
  {
LABEL_18:
    v27 = 2654435761 * self->_lTECTRSRP;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_43;
  }

LABEL_42:
  v27 = 0;
  if ((*&has & 0x400000) != 0)
  {
LABEL_19:
    v26 = 2654435761 * self->_signalBar;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_44;
  }

LABEL_43:
  v26 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_20:
    v25 = 2654435761 * self->_latteNominalJitterBufferSize;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_45;
  }

LABEL_44:
  v25 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_21:
    v24 = 2654435761 * self->_latteDejitterBufferUnderflow;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_46;
  }

LABEL_45:
  v24 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_22:
    v23 = 2654435761 * self->_latteRTPPacketLoss;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_23:
    v22 = 2654435761 * self->_latteErasures;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_24;
    }

LABEL_48:
    v4 = 0;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_49;
  }

LABEL_47:
  v22 = 0;
  if ((*&has & 0x8000000) == 0)
  {
    goto LABEL_48;
  }

LABEL_24:
  v4 = 2654435761 * self->_hOCapability;
  if ((*&has & 0x400) != 0)
  {
LABEL_25:
    v5 = 2654435761 * self->_hOBool;
    goto LABEL_50;
  }

LABEL_49:
  v5 = 0;
LABEL_50:
  v6 = [(NSString *)self->_wRMRecommendedRAT hash];
  if ((*(&self->_has + 3) & 0x20) != 0)
  {
    v7 = 2654435761 * self->_iWLANStatus;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(NSString *)self->_callId hash];
  v9 = self->_has;
  if ((*&v9 & 0x200000) != 0)
  {
    v10 = 2654435761 * self->_sessionId;
    if ((*&v9 & 0x10000000) != 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v10 = 0;
    if ((*&v9 & 0x10000000) != 0)
    {
LABEL_55:
      v11 = 2654435761 * self->_iPSecTunnelStatus;
      goto LABEL_58;
    }
  }

  v11 = 0;
LABEL_58:
  v12 = [(NSString *)self->_callEndReason hash];
  v13 = self->_has;
  if ((*&v13 & 0x2000000) != 0)
  {
    v14 = 2654435761 * self->_aTMRegistrationState;
    if ((*&v13 & 0x80) != 0)
    {
LABEL_60:
      v15 = 2654435761 * self->_bBAudioPacketLoss;
      if ((*&v13 & 0x40) != 0)
      {
        goto LABEL_61;
      }

      goto LABEL_68;
    }
  }

  else
  {
    v14 = 0;
    if ((*&v13 & 0x80) != 0)
    {
      goto LABEL_60;
    }
  }

  v15 = 0;
  if ((*&v13 & 0x40) != 0)
  {
LABEL_61:
    v16 = 2654435761 * self->_bBAudioErasures;
    if ((*&v13 & 0x200000000) != 0)
    {
      goto LABEL_62;
    }

    goto LABEL_69;
  }

LABEL_68:
  v16 = 0;
  if ((*&v13 & 0x200000000) != 0)
  {
LABEL_62:
    v17 = 2654435761 * self->_wiFiPreferred;
    if ((*&v13 & 0x80000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_70;
  }

LABEL_69:
  v17 = 0;
  if ((*&v13 & 0x80000) != 0)
  {
LABEL_63:
    v18 = 2654435761 * self->_servingCellRAT;
    if ((*&v13 & 0x100000) != 0)
    {
      goto LABEL_64;
    }

LABEL_71:
    v19 = 0;
    if ((*&v13 & 4) != 0)
    {
      goto LABEL_65;
    }

LABEL_72:
    v20 = 0;
    return v42 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v7 ^ v6 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
  }

LABEL_70:
  v18 = 0;
  if ((*&v13 & 0x100000) == 0)
  {
    goto LABEL_71;
  }

LABEL_64:
  v19 = 2654435761 * self->_servingCellSINR;
  if ((*&v13 & 4) == 0)
  {
    goto LABEL_72;
  }

LABEL_65:
  v20 = 2654435761 * self->_servingCellRSRP;
  return v42 ^ v43 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v35 ^ v34 ^ v33 ^ v32 ^ v31 ^ v30 ^ v29 ^ v28 ^ v27 ^ v26 ^ v25 ^ v24 ^ v23 ^ v22 ^ v4 ^ v5 ^ v7 ^ v6 ^ v8 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v20;
}

- (void)mergeFrom:(id)from
{
  v5 = *(from + 172);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(from + 4);
    *&self->_has |= 8uLL;
    v5 = *(from + 172);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x1000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_49;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_wiFiRSSI = *(from + 5);
  *&self->_has |= 0x10uLL;
  v5 = *(from + 172);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_wiFiTxPER = *(from + 39);
  *&self->_has |= 0x1000000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x100000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_wiFiSINR = *(from + 6);
  *&self->_has |= 0x20uLL;
  v5 = *(from + 172);
  if ((v5 & 0x100000000) == 0)
  {
LABEL_6:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_wiFiBSSIDChange = *(from + 167);
  *&self->_has |= 0x100000000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x200) == 0)
  {
LABEL_7:
    if ((v5 & 0x4000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_beaconRate = *(from + 17);
  *&self->_has |= 0x200uLL;
  v5 = *(from + 172);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_captiveNetwork = *(from + 161);
  *&self->_has |= 0x4000000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x80000000) == 0)
  {
LABEL_9:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_wOWEnabled = *(from + 166);
  *&self->_has |= 0x80000000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x800000) == 0)
  {
LABEL_10:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_wiFiRxRetry = *(from + 38);
  *&self->_has |= 0x800000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x800) == 0)
  {
LABEL_11:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_lTEDataLQM = *(from + 23);
  *&self->_has |= 0x800uLL;
  v5 = *(from + 172);
  if ((v5 & 0x2000) == 0)
  {
LABEL_12:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_lTETxPower = *(from + 25);
  *&self->_has |= 0x2000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_13:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_lTEQoSAvailable = *(from + 165);
  *&self->_has |= 0x40000000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x100) == 0)
  {
LABEL_14:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_bSSLoad = *(from + 16);
  *&self->_has |= 0x100uLL;
  v5 = *(from + 172);
  if ((v5 & 0x4000) == 0)
  {
LABEL_15:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_lTEVoiceLQM = *(from + 26);
  *&self->_has |= 0x4000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x1000) == 0)
  {
LABEL_16:
    if ((v5 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_lTESINR = *(from + 24);
  *&self->_has |= 0x1000uLL;
  v5 = *(from + 172);
  if ((v5 & 2) == 0)
  {
LABEL_17:
    if ((v5 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_lTERSRP = *(from + 2);
  *&self->_has |= 2uLL;
  v5 = *(from + 172);
  if ((v5 & 1) == 0)
  {
LABEL_18:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_lTECTRSRP = *(from + 1);
  *&self->_has |= 1uLL;
  v5 = *(from + 172);
  if ((v5 & 0x400000) == 0)
  {
LABEL_19:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_signalBar = *(from + 34);
  *&self->_has |= 0x400000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x20000) == 0)
  {
LABEL_20:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_latteNominalJitterBufferSize = *(from + 29);
  *&self->_has |= 0x20000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x8000) == 0)
  {
LABEL_21:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_latteDejitterBufferUnderflow = *(from + 27);
  *&self->_has |= 0x8000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x40000) == 0)
  {
LABEL_22:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_latteRTPPacketLoss = *(from + 30);
  *&self->_has |= 0x40000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x10000) == 0)
  {
LABEL_23:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_latteErasures = *(from + 28);
  *&self->_has |= 0x10000uLL;
  v5 = *(from + 172);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_24:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_69:
  self->_hOCapability = *(from + 162);
  *&self->_has |= 0x8000000uLL;
  if ((*(from + 172) & 0x400) != 0)
  {
LABEL_25:
    self->_hOBool = *(from + 22);
    *&self->_has |= 0x400uLL;
  }

LABEL_26:
  if (*(from + 18))
  {
    [(AWDWRMWiFiCallingEnd *)self setWRMRecommendedRAT:?];
  }

  if ((*(from + 175) & 0x20) != 0)
  {
    self->_iWLANStatus = *(from + 164);
    *&self->_has |= 0x20000000uLL;
  }

  if (*(from + 10))
  {
    [(AWDWRMWiFiCallingEnd *)self setCallId:?];
  }

  v6 = *(from + 172);
  if ((v6 & 0x200000) != 0)
  {
    self->_sessionId = *(from + 33);
    *&self->_has |= 0x200000uLL;
    v6 = *(from + 172);
  }

  if ((v6 & 0x10000000) != 0)
  {
    self->_iPSecTunnelStatus = *(from + 163);
    *&self->_has |= 0x10000000uLL;
  }

  if (*(from + 9))
  {
    [(AWDWRMWiFiCallingEnd *)self setCallEndReason:?];
  }

  v7 = *(from + 172);
  if ((v7 & 0x2000000) != 0)
  {
    self->_aTMRegistrationState = *(from + 160);
    *&self->_has |= 0x2000000uLL;
    v7 = *(from + 172);
    if ((v7 & 0x80) == 0)
    {
LABEL_40:
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_73;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_40;
  }

  self->_bBAudioPacketLoss = *(from + 15);
  *&self->_has |= 0x80uLL;
  v7 = *(from + 172);
  if ((v7 & 0x40) == 0)
  {
LABEL_41:
    if ((v7 & 0x200000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_bBAudioErasures = *(from + 14);
  *&self->_has |= 0x40uLL;
  v7 = *(from + 172);
  if ((v7 & 0x200000000) == 0)
  {
LABEL_42:
    if ((v7 & 0x80000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_wiFiPreferred = *(from + 168);
  *&self->_has |= 0x200000000uLL;
  v7 = *(from + 172);
  if ((v7 & 0x80000) == 0)
  {
LABEL_43:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_servingCellRAT = *(from + 31);
  *&self->_has |= 0x80000uLL;
  v7 = *(from + 172);
  if ((v7 & 0x100000) == 0)
  {
LABEL_44:
    if ((v7 & 4) == 0)
    {
      return;
    }

    goto LABEL_45;
  }

LABEL_76:
  self->_servingCellSINR = *(from + 32);
  *&self->_has |= 0x100000uLL;
  if ((*(from + 172) & 4) == 0)
  {
    return;
  }

LABEL_45:
  self->_servingCellRSRP = *(from + 3);
  *&self->_has |= 4uLL;
}

@end