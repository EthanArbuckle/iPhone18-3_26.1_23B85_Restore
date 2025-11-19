@interface AWDSiriRequestRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorDomain:(id)a3;
- (int)StringAsIRATRecommendation:(id)a3;
- (int)StringAsRequestStatus:(id)a3;
- (int)StringAsUnderlyingErrorDomain:(id)a3;
- (int)errorDomain;
- (int)iRATRecommendation;
- (int)requestStatus;
- (int)underlyingErrorDomain;
- (unint64_t)hash;
- (void)addTransportHistory:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBeaconPer:(BOOL)a3;
- (void)setHasBtRetransmissionRateTx:(BOOL)a3;
- (void)setHasBtRssi:(BOOL)a3;
- (void)setHasBtTech:(BOOL)a3;
- (void)setHasEndTimestamp:(BOOL)a3;
- (void)setHasErrorCode:(BOOL)a3;
- (void)setHasErrorDomain:(BOOL)a3;
- (void)setHasExpectedThroughputVIBE:(BOOL)a3;
- (void)setHasIRATRecommendation:(BOOL)a3;
- (void)setHasIRATRecommendationDelay:(BOOL)a3;
- (void)setHasIdsErrorCode:(BOOL)a3;
- (void)setHasIdsMessageDelay:(BOOL)a3;
- (void)setHasIdsSocketDelay:(BOOL)a3;
- (void)setHasLsmRecommendationBe:(BOOL)a3;
- (void)setHasNwtype:(BOOL)a3;
- (void)setHasPacketLifetimeVIBE:(BOOL)a3;
- (void)setHasPacketLossRateVIBE:(BOOL)a3;
- (void)setHasRequestStatus:(BOOL)a3;
- (void)setHasStartTimestamp:(BOOL)a3;
- (void)setHasTimeToFirstWord:(BOOL)a3;
- (void)setHasUnderlyingErrorCode:(BOOL)a3;
- (void)setHasUnderlyingErrorDomain:(BOOL)a3;
- (void)setHasWifiCCA:(BOOL)a3;
- (void)setHasWifiRSSI:(BOOL)a3;
- (void)setHasWifiSNR:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDSiriRequestRecord

- (void)dealloc
{
  [(AWDSiriRequestRecord *)self setTransportHistorys:0];
  v3.receiver = self;
  v3.super_class = AWDSiriRequestRecord;
  [(AWDSiriRequestRecord *)&v3 dealloc];
}

- (void)setHasStartTimestamp:(BOOL)a3
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

- (void)setHasEndTimestamp:(BOOL)a3
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

- (int)requestStatus
{
  if ((*(&self->_has + 2) & 0x80) != 0)
  {
    return self->_requestStatus;
  }

  else
  {
    return 1;
  }
}

- (void)setHasRequestStatus:(BOOL)a3
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

- (int)StringAsRequestStatus:(id)a3
{
  v4 = 1;
  if (([a3 isEqualToString:@"success"] & 1) == 0)
  {
    if ([a3 isEqualToString:@"failure"])
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

- (int)errorDomain
{
  if ((*(&self->_has + 2) & 2) != 0)
  {
    return self->_errorDomain;
  }

  else
  {
    return 1;
  }
}

- (void)setHasErrorDomain:(BOOL)a3
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

- (int)StringAsErrorDomain:(id)a3
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

- (void)setHasErrorCode:(BOOL)a3
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

- (int)underlyingErrorDomain
{
  if ((*(&self->_has + 3) & 2) != 0)
  {
    return self->_underlyingErrorDomain;
  }

  else
  {
    return 1;
  }
}

- (void)setHasUnderlyingErrorDomain:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (int)StringAsUnderlyingErrorDomain:(id)a3
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

- (void)setHasUnderlyingErrorCode:(BOOL)a3
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

- (void)setHasTimeToFirstWord:(BOOL)a3
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

- (int)iRATRecommendation
{
  if ((*(&self->_has + 2) & 4) != 0)
  {
    return self->_iRATRecommendation;
  }

  else
  {
    return 1;
  }
}

- (void)setHasIRATRecommendation:(BOOL)a3
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

- (int)StringAsIRATRecommendation:(id)a3
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

- (void)setHasIRATRecommendationDelay:(BOOL)a3
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

- (void)addTransportHistory:(id)a3
{
  transportHistorys = self->_transportHistorys;
  if (!transportHistorys)
  {
    transportHistorys = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_transportHistorys = transportHistorys;
  }

  [(NSMutableArray *)transportHistorys addObject:a3];
}

- (void)setHasWifiRSSI:(BOOL)a3
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

- (void)setHasWifiSNR:(BOOL)a3
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

- (void)setHasWifiCCA:(BOOL)a3
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

- (void)setHasBeaconPer:(BOOL)a3
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

- (void)setHasNwtype:(BOOL)a3
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

- (void)setHasLsmRecommendationBe:(BOOL)a3
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

- (void)setHasExpectedThroughputVIBE:(BOOL)a3
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

- (void)setHasPacketLifetimeVIBE:(BOOL)a3
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

- (void)setHasPacketLossRateVIBE:(BOOL)a3
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

- (void)setHasBtRssi:(BOOL)a3
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

- (void)setHasBtRetransmissionRateTx:(BOOL)a3
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

- (void)setHasBtTech:(BOOL)a3
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

- (void)setHasIdsMessageDelay:(BOOL)a3
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

- (void)setHasIdsSocketDelay:(BOOL)a3
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

- (void)setHasIdsErrorCode:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDSiriRequestRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDSiriRequestRecord description](&v3, sel_description), -[AWDSiriRequestRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_startTimestamp), @"startTimestamp"}];
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_41;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endTimestamp), @"endTimestamp"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_63;
  }

LABEL_41:
  requestStatus = self->_requestStatus;
  if (requestStatus == 1)
  {
    v15 = @"success";
  }

  else if (requestStatus == 2)
  {
    v15 = @"failure";
  }

  else
  {
    v15 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_requestStatus];
  }

  [v3 setObject:v15 forKey:@"requestStatus"];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_67;
  }

LABEL_63:
  v16 = self->_errorDomain - 1;
  if (v16 >= 4)
  {
    v17 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_errorDomain];
  }

  else
  {
    v17 = off_29EE33040[v16];
  }

  [v3 setObject:v17 forKey:@"errorDomain"];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_errorCode), @"errorCode"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_72;
  }

LABEL_68:
  v18 = self->_underlyingErrorDomain - 1;
  if (v18 >= 4)
  {
    v19 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_underlyingErrorDomain];
  }

  else
  {
    v19 = off_29EE33040[v18];
  }

  [v3 setObject:v19 forKey:@"underlyingErrorDomain"];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_73;
  }

LABEL_72:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_underlyingErrorCode), @"underlyingErrorCode"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_74;
  }

LABEL_73:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeToFirstWord), @"timeToFirstWord"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_74:
  v20 = self->_iRATRecommendation - 1;
  if (v20 >= 4)
  {
    v21 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"(unknown: %i)", self->_iRATRecommendation];
  }

  else
  {
    v21 = off_29EE33060[v20];
  }

  [v3 setObject:v21 forKey:@"iRATRecommendation"];
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_iRATRecommendationDelay), @"iRATRecommendationDelay"}];
  }

LABEL_12:
  if ([(NSMutableArray *)self->_transportHistorys count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_transportHistorys, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    transportHistorys = self->_transportHistorys;
    v7 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(transportHistorys);
          }

          [v5 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"transportHistory"];
  }

  v11 = self->_has;
  if ((*&v11 & 0x2000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiRSSI), @"wifiRSSI"}];
    v11 = self->_has;
    if ((*&v11 & 0x4000) == 0)
    {
LABEL_23:
      if ((*&v11 & 0x1000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v11 & 0x4000) == 0)
  {
    goto LABEL_23;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiSNR), @"wifiSNR"}];
  v11 = self->_has;
  if ((*&v11 & 0x1000) == 0)
  {
LABEL_24:
    if ((*&v11 & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_wifiCCA), @"wifiCCA"}];
  v11 = self->_has;
  if ((*&v11 & 0x8000) == 0)
  {
LABEL_25:
    if ((*&v11 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_beaconPer), @"beaconPer"}];
  v11 = self->_has;
  if ((*&v11 & 0x400000) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x80) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nwtype), @"nwtype"}];
  v11 = self->_has;
  if ((*&v11 & 0x80) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_lsmRecommendationBe), @"lsmRecommendationBe"}];
  v11 = self->_has;
  if ((*&v11 & 0x20) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_expectedThroughputVIBE), @"expectedThroughputVIBE"}];
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_52;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_packetLifetimeVIBE), @"packetLifetimeVIBE"}];
  v11 = self->_has;
  if ((*&v11 & 0x200) == 0)
  {
LABEL_30:
    if ((*&v11 & 4) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_53;
  }

LABEL_52:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_packetLossRateVIBE), @"packetLossRateVIBE"}];
  v11 = self->_has;
  if ((*&v11 & 4) == 0)
  {
LABEL_31:
    if ((*&v11 & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_btRssi), @"btRssi"}];
  v11 = self->_has;
  if ((*&v11 & 2) == 0)
  {
LABEL_32:
    if ((*&v11 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_btRetransmissionRateTx), @"btRetransmissionRateTx"}];
  v11 = self->_has;
  if ((*&v11 & 1) == 0)
  {
LABEL_33:
    if ((*&v11 & 8) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_btRetransmissionRateRx), @"btRetransmissionRateRx"}];
  v11 = self->_has;
  if ((*&v11 & 8) == 0)
  {
LABEL_34:
    if ((*&v11 & 0x100000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithLongLong:", self->_btTech), @"btTech"}];
  v11 = self->_has;
  if ((*&v11 & 0x100000) == 0)
  {
LABEL_35:
    if ((*&v11 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

LABEL_58:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_idsSocketDelay), @"idsSocketDelay"}];
    if ((*&self->_has & 0x80000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_idsMessageDelay), @"idsMessageDelay"}];
  v11 = self->_has;
  if ((*&v11 & 0x200000) != 0)
  {
    goto LABEL_58;
  }

LABEL_36:
  if ((*&v11 & 0x80000) != 0)
  {
LABEL_37:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_idsErrorCode), @"idsErrorCode"}];
  }

LABEL_38:
  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v44 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    startTimestamp = self->_startTimestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  endTimestamp = self->_endTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  requestStatus = self->_requestStatus;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  errorDomain = self->_errorDomain;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  errorCode = self->_errorCode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  underlyingErrorDomain = self->_underlyingErrorDomain;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  underlyingErrorCode = self->_underlyingErrorCode;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  timeToFirstWord = self->_timeToFirstWord;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_45:
  iRATRecommendation = self->_iRATRecommendation;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    iRATRecommendationDelay = self->_iRATRecommendationDelay;
    PBDataWriterWriteUint64Field();
  }

LABEL_12:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  transportHistorys = self->_transportHistorys;
  v7 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(transportHistorys);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }

  v12 = self->_has;
  if ((*&v12 & 0x2000) != 0)
  {
    wifiRSSI = self->_wifiRSSI;
    PBDataWriterWriteInt64Field();
    v12 = self->_has;
    if ((*&v12 & 0x4000) == 0)
    {
LABEL_21:
      if ((*&v12 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v12 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  wifiSNR = self->_wifiSNR;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v12 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  wifiCCA = self->_wifiCCA;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x8000) == 0)
  {
LABEL_23:
    if ((*&v12 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  beaconPer = self->_beaconPer;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x400000) == 0)
  {
LABEL_24:
    if ((*&v12 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  nwtype = self->_nwtype;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x80) == 0)
  {
LABEL_25:
    if ((*&v12 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  lsmRecommendationBe = self->_lsmRecommendationBe;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x20) == 0)
  {
LABEL_26:
    if ((*&v12 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  expectedThroughputVIBE = self->_expectedThroughputVIBE;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x100) == 0)
  {
LABEL_27:
    if ((*&v12 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  packetLifetimeVIBE = self->_packetLifetimeVIBE;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v12 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  packetLossRateVIBE = self->_packetLossRateVIBE;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 4) == 0)
  {
LABEL_29:
    if ((*&v12 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  btRssi = self->_btRssi;
  PBDataWriterWriteUint64Field();
  v12 = self->_has;
  if ((*&v12 & 2) == 0)
  {
LABEL_30:
    if ((*&v12 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  btRetransmissionRateTx = self->_btRetransmissionRateTx;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 1) == 0)
  {
LABEL_31:
    if ((*&v12 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  btRetransmissionRateRx = self->_btRetransmissionRateRx;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 8) == 0)
  {
LABEL_32:
    if ((*&v12 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  btTech = self->_btTech;
  PBDataWriterWriteInt64Field();
  v12 = self->_has;
  if ((*&v12 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v12 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

LABEL_61:
    idsSocketDelay = self->_idsSocketDelay;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_60:
  idsMessageDelay = self->_idsMessageDelay;
  PBDataWriterWriteUint32Field();
  v12 = self->_has;
  if ((*&v12 & 0x200000) != 0)
  {
    goto LABEL_61;
  }

LABEL_34:
  if ((*&v12 & 0x80000) != 0)
  {
LABEL_35:
    idsErrorCode = self->_idsErrorCode;
    PBDataWriterWriteUint32Field();
  }

LABEL_36:
  v14 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(a3 + 11) = self->_startTimestamp;
    *(a3 + 46) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 5) = self->_endTimestamp;
  *(a3 + 46) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 40) = self->_requestStatus;
  *(a3 + 46) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(a3 + 34) = self->_errorDomain;
  *(a3 + 46) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(a3 + 33) = self->_errorCode;
  *(a3 + 46) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 45) = self->_underlyingErrorDomain;
  *(a3 + 46) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 44) = self->_underlyingErrorCode;
  *(a3 + 46) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

LABEL_42:
    *(a3 + 35) = self->_iRATRecommendation;
    *(a3 + 46) |= 0x40000u;
    if ((*&self->_has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_41:
  *(a3 + 12) = self->_timeToFirstWord;
  *(a3 + 46) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40000) != 0)
  {
    goto LABEL_42;
  }

LABEL_10:
  if ((*&has & 0x40) != 0)
  {
LABEL_11:
    *(a3 + 7) = self->_iRATRecommendationDelay;
    *(a3 + 46) |= 0x40u;
  }

LABEL_12:
  if ([(AWDSiriRequestRecord *)self transportHistorysCount])
  {
    [a3 clearTransportHistorys];
    v6 = [(AWDSiriRequestRecord *)self transportHistorysCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addTransportHistory:{-[AWDSiriRequestRecord transportHistoryAtIndex:](self, "transportHistoryAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 0x2000) != 0)
  {
    *(a3 + 14) = self->_wifiRSSI;
    *(a3 + 46) |= 0x2000u;
    v9 = self->_has;
    if ((*&v9 & 0x4000) == 0)
    {
LABEL_18:
      if ((*&v9 & 0x1000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_46;
    }
  }

  else if ((*&v9 & 0x4000) == 0)
  {
    goto LABEL_18;
  }

  *(a3 + 15) = self->_wifiSNR;
  *(a3 + 46) |= 0x4000u;
  v9 = self->_has;
  if ((*&v9 & 0x1000) == 0)
  {
LABEL_19:
    if ((*&v9 & 0x8000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 13) = self->_wifiCCA;
  *(a3 + 46) |= 0x1000u;
  v9 = self->_has;
  if ((*&v9 & 0x8000) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 32) = self->_beaconPer;
  *(a3 + 46) |= 0x8000u;
  v9 = self->_has;
  if ((*&v9 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 39) = self->_nwtype;
  *(a3 + 46) |= 0x400000u;
  v9 = self->_has;
  if ((*&v9 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(a3 + 8) = self->_lsmRecommendationBe;
  *(a3 + 46) |= 0x80u;
  v9 = self->_has;
  if ((*&v9 & 0x20) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(a3 + 6) = self->_expectedThroughputVIBE;
  *(a3 + 46) |= 0x20u;
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_24:
    if ((*&v9 & 0x200) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(a3 + 9) = self->_packetLifetimeVIBE;
  *(a3 + 46) |= 0x100u;
  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_25:
    if ((*&v9 & 4) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(a3 + 10) = self->_packetLossRateVIBE;
  *(a3 + 46) |= 0x200u;
  v9 = self->_has;
  if ((*&v9 & 4) == 0)
  {
LABEL_26:
    if ((*&v9 & 2) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(a3 + 3) = self->_btRssi;
  *(a3 + 46) |= 4u;
  v9 = self->_has;
  if ((*&v9 & 2) == 0)
  {
LABEL_27:
    if ((*&v9 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(a3 + 2) = self->_btRetransmissionRateTx;
  *(a3 + 46) |= 2u;
  v9 = self->_has;
  if ((*&v9 & 1) == 0)
  {
LABEL_28:
    if ((*&v9 & 8) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(a3 + 1) = self->_btRetransmissionRateRx;
  *(a3 + 46) |= 1u;
  v9 = self->_has;
  if ((*&v9 & 8) == 0)
  {
LABEL_29:
    if ((*&v9 & 0x100000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(a3 + 4) = self->_btTech;
  *(a3 + 46) |= 8u;
  v9 = self->_has;
  if ((*&v9 & 0x100000) == 0)
  {
LABEL_30:
    if ((*&v9 & 0x200000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 37) = self->_idsMessageDelay;
  *(a3 + 46) |= 0x100000u;
  v9 = self->_has;
  if ((*&v9 & 0x200000) == 0)
  {
LABEL_31:
    if ((*&v9 & 0x80000) == 0)
    {
      return;
    }

    goto LABEL_32;
  }

LABEL_58:
  *(a3 + 38) = self->_idsSocketDelay;
  *(a3 + 46) |= 0x200000u;
  if ((*&self->_has & 0x80000) == 0)
  {
    return;
  }

LABEL_32:
  *(a3 + 36) = self->_idsErrorCode;
  *(a3 + 46) |= 0x80000u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    *(v5 + 88) = self->_startTimestamp;
    *(v5 + 184) |= 0x400u;
    has = self->_has;
    if ((*&has & 0x10) == 0)
    {
LABEL_3:
      if ((*&has & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&has & 0x10) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 40) = self->_endTimestamp;
  *(v5 + 184) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_4:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 160) = self->_requestStatus;
  *(v5 + 184) |= 0x800000u;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_5:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 136) = self->_errorDomain;
  *(v5 + 184) |= 0x20000u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_6:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 132) = self->_errorCode;
  *(v5 + 184) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_7:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 180) = self->_underlyingErrorDomain;
  *(v5 + 184) |= 0x2000000u;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 176) = self->_underlyingErrorCode;
  *(v5 + 184) |= 0x1000000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 96) = self->_timeToFirstWord;
  *(v5 + 184) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_45:
  *(v5 + 140) = self->_iRATRecommendation;
  *(v5 + 184) |= 0x40000u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_11:
    *(v5 + 56) = self->_iRATRecommendationDelay;
    *(v5 + 184) |= 0x40u;
  }

LABEL_12:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  transportHistorys = self->_transportHistorys;
  v9 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(transportHistorys);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
        [v6 addTransportHistory:v13];
      }

      v10 = [(NSMutableArray *)transportHistorys countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((*&v14 & 0x2000) != 0)
  {
    *(v6 + 112) = self->_wifiRSSI;
    *(v6 + 184) |= 0x2000u;
    v14 = self->_has;
    if ((*&v14 & 0x4000) == 0)
    {
LABEL_21:
      if ((*&v14 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((*&v14 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  *(v6 + 120) = self->_wifiSNR;
  *(v6 + 184) |= 0x4000u;
  v14 = self->_has;
  if ((*&v14 & 0x1000) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v6 + 104) = self->_wifiCCA;
  *(v6 + 184) |= 0x1000u;
  v14 = self->_has;
  if ((*&v14 & 0x8000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v6 + 128) = self->_beaconPer;
  *(v6 + 184) |= 0x8000u;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v6 + 156) = self->_nwtype;
  *(v6 + 184) |= 0x400000u;
  v14 = self->_has;
  if ((*&v14 & 0x80) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v6 + 64) = self->_lsmRecommendationBe;
  *(v6 + 184) |= 0x80u;
  v14 = self->_has;
  if ((*&v14 & 0x20) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v6 + 48) = self->_expectedThroughputVIBE;
  *(v6 + 184) |= 0x20u;
  v14 = self->_has;
  if ((*&v14 & 0x100) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v6 + 72) = self->_packetLifetimeVIBE;
  *(v6 + 184) |= 0x100u;
  v14 = self->_has;
  if ((*&v14 & 0x200) == 0)
  {
LABEL_28:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v6 + 80) = self->_packetLossRateVIBE;
  *(v6 + 184) |= 0x200u;
  v14 = self->_has;
  if ((*&v14 & 4) == 0)
  {
LABEL_29:
    if ((*&v14 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v6 + 24) = self->_btRssi;
  *(v6 + 184) |= 4u;
  v14 = self->_has;
  if ((*&v14 & 2) == 0)
  {
LABEL_30:
    if ((*&v14 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v6 + 16) = self->_btRetransmissionRateTx;
  *(v6 + 184) |= 2u;
  v14 = self->_has;
  if ((*&v14 & 1) == 0)
  {
LABEL_31:
    if ((*&v14 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v6 + 8) = self->_btRetransmissionRateRx;
  *(v6 + 184) |= 1u;
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
LABEL_32:
    if ((*&v14 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(v6 + 32) = self->_btTech;
  *(v6 + 184) |= 8u;
  v14 = self->_has;
  if ((*&v14 & 0x100000) == 0)
  {
LABEL_33:
    if ((*&v14 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

LABEL_61:
    *(v6 + 152) = self->_idsSocketDelay;
    *(v6 + 184) |= 0x200000u;
    if ((*&self->_has & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_60:
  *(v6 + 148) = self->_idsMessageDelay;
  *(v6 + 184) |= 0x100000u;
  v14 = self->_has;
  if ((*&v14 & 0x200000) != 0)
  {
    goto LABEL_61;
  }

LABEL_34:
  if ((*&v14 & 0x80000) != 0)
  {
LABEL_35:
    *(v6 + 144) = self->_idsErrorCode;
    *(v6 + 184) |= 0x80000u;
  }

LABEL_36:
  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(a3 + 46);
    if ((*&has & 0x400) != 0)
    {
      if ((v7 & 0x400) == 0 || self->_startTimestamp != *(a3 + 11))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x400) != 0)
    {
LABEL_134:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_endTimestamp != *(a3 + 5))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x800000) != 0)
    {
      if ((v7 & 0x800000) == 0 || self->_requestStatus != *(a3 + 40))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x800000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x20000) != 0)
    {
      if ((v7 & 0x20000) == 0 || self->_errorDomain != *(a3 + 34))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x20000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x10000) != 0)
    {
      if ((v7 & 0x10000) == 0 || self->_errorCode != *(a3 + 33))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x10000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x2000000) != 0)
    {
      if ((v7 & 0x2000000) == 0 || self->_underlyingErrorDomain != *(a3 + 45))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x2000000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x1000000) != 0)
    {
      if ((v7 & 0x1000000) == 0 || self->_underlyingErrorCode != *(a3 + 44))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x1000000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x800) != 0)
    {
      if ((v7 & 0x800) == 0 || self->_timeToFirstWord != *(a3 + 12))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x800) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x40000) != 0)
    {
      if ((v7 & 0x40000) == 0 || self->_iRATRecommendation != *(a3 + 35))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x40000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_iRATRecommendationDelay != *(a3 + 7))
      {
        goto LABEL_134;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_134;
    }

    transportHistorys = self->_transportHistorys;
    if (transportHistorys | *(a3 + 21))
    {
      v5 = [(NSMutableArray *)transportHistorys isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    v9 = *(a3 + 46);
    if ((*&has & 0x2000) != 0)
    {
      if ((v9 & 0x2000) == 0 || self->_wifiRSSI != *(a3 + 14))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x2000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x4000) != 0)
    {
      if ((v9 & 0x4000) == 0 || self->_wifiSNR != *(a3 + 15))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x4000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x1000) != 0)
    {
      if ((v9 & 0x1000) == 0 || self->_wifiCCA != *(a3 + 13))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x1000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v9 & 0x8000) == 0 || self->_beaconPer != *(a3 + 32))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x8000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x400000) != 0)
    {
      if ((v9 & 0x400000) == 0 || self->_nwtype != *(a3 + 39))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x400000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x80) != 0)
    {
      if ((v9 & 0x80) == 0 || self->_lsmRecommendationBe != *(a3 + 8))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x80) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x20) != 0)
    {
      if ((v9 & 0x20) == 0 || self->_expectedThroughputVIBE != *(a3 + 6))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x20) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x100) != 0)
    {
      if ((v9 & 0x100) == 0 || self->_packetLifetimeVIBE != *(a3 + 9))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x100) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x200) != 0)
    {
      if ((v9 & 0x200) == 0 || self->_packetLossRateVIBE != *(a3 + 10))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x200) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 4) != 0)
    {
      if ((v9 & 4) == 0 || self->_btRssi != *(a3 + 3))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 4) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 2) != 0)
    {
      if ((v9 & 2) == 0 || self->_btRetransmissionRateTx != *(a3 + 2))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 2) != 0)
    {
      goto LABEL_134;
    }

    if (*&has)
    {
      if ((v9 & 1) == 0 || self->_btRetransmissionRateRx != *(a3 + 1))
      {
        goto LABEL_134;
      }
    }

    else if (v9)
    {
      goto LABEL_134;
    }

    if ((*&has & 8) != 0)
    {
      if ((v9 & 8) == 0 || self->_btTech != *(a3 + 4))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 8) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x100000) != 0)
    {
      if ((v9 & 0x100000) == 0 || self->_idsMessageDelay != *(a3 + 37))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x100000) != 0)
    {
      goto LABEL_134;
    }

    if ((*&has & 0x200000) != 0)
    {
      if ((v9 & 0x200000) == 0 || self->_idsSocketDelay != *(a3 + 38))
      {
        goto LABEL_134;
      }
    }

    else if ((v9 & 0x200000) != 0)
    {
      goto LABEL_134;
    }

    LOBYTE(v5) = (v9 & 0x80000) == 0;
    if ((*&has & 0x80000) != 0)
    {
      if ((v9 & 0x80000) == 0 || self->_idsErrorCode != *(a3 + 36))
      {
        goto LABEL_134;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 0x400) != 0)
  {
    v32 = 2654435761u * self->_startTimestamp;
    if ((*&has & 0x10) != 0)
    {
LABEL_3:
      v31 = 2654435761u * self->_endTimestamp;
      if ((*&has & 0x800000) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v32 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v31 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_4:
    v30 = 2654435761 * self->_requestStatus;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v30 = 0;
  if ((*&has & 0x20000) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_errorDomain;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v4 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_6:
    v5 = 2654435761 * self->_errorCode;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v5 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_underlyingErrorDomain;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v6 = 0;
  if ((*&has & 0x1000000) != 0)
  {
LABEL_8:
    v7 = 2654435761 * self->_underlyingErrorCode;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v7 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_9:
    v8 = 2654435761u * self->_timeToFirstWord;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v9 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v8 = 0;
  if ((*&has & 0x40000) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v9 = 2654435761 * self->_iRATRecommendation;
  if ((*&has & 0x40) != 0)
  {
LABEL_11:
    v10 = 2654435761u * self->_iRATRecommendationDelay;
    goto LABEL_22;
  }

LABEL_21:
  v10 = 0;
LABEL_22:
  v11 = [(NSMutableArray *)self->_transportHistorys hash];
  v12 = self->_has;
  if ((*&v12 & 0x2000) != 0)
  {
    v13 = 2654435761 * self->_wifiRSSI;
    if ((*&v12 & 0x4000) != 0)
    {
LABEL_24:
      v14 = 2654435761 * self->_wifiSNR;
      if ((*&v12 & 0x1000) != 0)
      {
        goto LABEL_25;
      }

      goto LABEL_41;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x4000) != 0)
    {
      goto LABEL_24;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x1000) != 0)
  {
LABEL_25:
    v15 = 2654435761 * self->_wifiCCA;
    if ((*&v12 & 0x8000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_42;
  }

LABEL_41:
  v15 = 0;
  if ((*&v12 & 0x8000) != 0)
  {
LABEL_26:
    v16 = 2654435761 * self->_beaconPer;
    if ((*&v12 & 0x400000) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_43;
  }

LABEL_42:
  v16 = 0;
  if ((*&v12 & 0x400000) != 0)
  {
LABEL_27:
    v17 = 2654435761 * self->_nwtype;
    if ((*&v12 & 0x80) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_44;
  }

LABEL_43:
  v17 = 0;
  if ((*&v12 & 0x80) != 0)
  {
LABEL_28:
    v18 = 2654435761 * self->_lsmRecommendationBe;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_45;
  }

LABEL_44:
  v18 = 0;
  if ((*&v12 & 0x20) != 0)
  {
LABEL_29:
    v19 = 2654435761 * self->_expectedThroughputVIBE;
    if ((*&v12 & 0x100) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_46;
  }

LABEL_45:
  v19 = 0;
  if ((*&v12 & 0x100) != 0)
  {
LABEL_30:
    v20 = 2654435761 * self->_packetLifetimeVIBE;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_47;
  }

LABEL_46:
  v20 = 0;
  if ((*&v12 & 0x200) != 0)
  {
LABEL_31:
    v21 = 2654435761 * self->_packetLossRateVIBE;
    if ((*&v12 & 4) != 0)
    {
      goto LABEL_32;
    }

    goto LABEL_48;
  }

LABEL_47:
  v21 = 0;
  if ((*&v12 & 4) != 0)
  {
LABEL_32:
    v22 = 2654435761u * self->_btRssi;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

LABEL_48:
  v22 = 0;
  if ((*&v12 & 2) != 0)
  {
LABEL_33:
    v23 = 2654435761 * self->_btRetransmissionRateTx;
    if (*&v12)
    {
      goto LABEL_34;
    }

    goto LABEL_50;
  }

LABEL_49:
  v23 = 0;
  if (*&v12)
  {
LABEL_34:
    v24 = 2654435761 * self->_btRetransmissionRateRx;
    if ((*&v12 & 8) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_51;
  }

LABEL_50:
  v24 = 0;
  if ((*&v12 & 8) != 0)
  {
LABEL_35:
    v25 = 2654435761 * self->_btTech;
    if ((*&v12 & 0x100000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_52;
  }

LABEL_51:
  v25 = 0;
  if ((*&v12 & 0x100000) != 0)
  {
LABEL_36:
    v26 = 2654435761 * self->_idsMessageDelay;
    if ((*&v12 & 0x200000) != 0)
    {
      goto LABEL_37;
    }

LABEL_53:
    v27 = 0;
    if ((*&v12 & 0x80000) != 0)
    {
      goto LABEL_38;
    }

LABEL_54:
    v28 = 0;
    return v31 ^ v32 ^ v30 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
  }

LABEL_52:
  v26 = 0;
  if ((*&v12 & 0x200000) == 0)
  {
    goto LABEL_53;
  }

LABEL_37:
  v27 = 2654435761 * self->_idsSocketDelay;
  if ((*&v12 & 0x80000) == 0)
  {
    goto LABEL_54;
  }

LABEL_38:
  v28 = 2654435761 * self->_idsErrorCode;
  return v31 ^ v32 ^ v30 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v11 ^ v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 46);
  if ((v5 & 0x400) != 0)
  {
    self->_startTimestamp = *(a3 + 11);
    *&self->_has |= 0x400u;
    v5 = *(a3 + 46);
    if ((v5 & 0x10) == 0)
    {
LABEL_3:
      if ((v5 & 0x800000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  self->_endTimestamp = *(a3 + 5);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 46);
  if ((v5 & 0x800000) == 0)
  {
LABEL_4:
    if ((v5 & 0x20000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_requestStatus = *(a3 + 40);
  *&self->_has |= 0x800000u;
  v5 = *(a3 + 46);
  if ((v5 & 0x20000) == 0)
  {
LABEL_5:
    if ((v5 & 0x10000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_errorDomain = *(a3 + 34);
  *&self->_has |= 0x20000u;
  v5 = *(a3 + 46);
  if ((v5 & 0x10000) == 0)
  {
LABEL_6:
    if ((v5 & 0x2000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_errorCode = *(a3 + 33);
  *&self->_has |= 0x10000u;
  v5 = *(a3 + 46);
  if ((v5 & 0x2000000) == 0)
  {
LABEL_7:
    if ((v5 & 0x1000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_underlyingErrorDomain = *(a3 + 45);
  *&self->_has |= 0x2000000u;
  v5 = *(a3 + 46);
  if ((v5 & 0x1000000) == 0)
  {
LABEL_8:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_underlyingErrorCode = *(a3 + 44);
  *&self->_has |= 0x1000000u;
  v5 = *(a3 + 46);
  if ((v5 & 0x800) == 0)
  {
LABEL_9:
    if ((v5 & 0x40000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_timeToFirstWord = *(a3 + 12);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 46);
  if ((v5 & 0x40000) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_45:
  self->_iRATRecommendation = *(a3 + 35);
  *&self->_has |= 0x40000u;
  if ((*(a3 + 46) & 0x40) != 0)
  {
LABEL_11:
    self->_iRATRecommendationDelay = *(a3 + 7);
    *&self->_has |= 0x40u;
  }

LABEL_12:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(a3 + 21);
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

        [(AWDSiriRequestRecord *)self addTransportHistory:*(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *(a3 + 46);
  if ((v11 & 0x2000) != 0)
  {
    self->_wifiRSSI = *(a3 + 14);
    *&self->_has |= 0x2000u;
    v11 = *(a3 + 46);
    if ((v11 & 0x4000) == 0)
    {
LABEL_21:
      if ((v11 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_49;
    }
  }

  else if ((v11 & 0x4000) == 0)
  {
    goto LABEL_21;
  }

  self->_wifiSNR = *(a3 + 15);
  *&self->_has |= 0x4000u;
  v11 = *(a3 + 46);
  if ((v11 & 0x1000) == 0)
  {
LABEL_22:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_wifiCCA = *(a3 + 13);
  *&self->_has |= 0x1000u;
  v11 = *(a3 + 46);
  if ((v11 & 0x8000) == 0)
  {
LABEL_23:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_beaconPer = *(a3 + 32);
  *&self->_has |= 0x8000u;
  v11 = *(a3 + 46);
  if ((v11 & 0x400000) == 0)
  {
LABEL_24:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_nwtype = *(a3 + 39);
  *&self->_has |= 0x400000u;
  v11 = *(a3 + 46);
  if ((v11 & 0x80) == 0)
  {
LABEL_25:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_lsmRecommendationBe = *(a3 + 8);
  *&self->_has |= 0x80u;
  v11 = *(a3 + 46);
  if ((v11 & 0x20) == 0)
  {
LABEL_26:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_expectedThroughputVIBE = *(a3 + 6);
  *&self->_has |= 0x20u;
  v11 = *(a3 + 46);
  if ((v11 & 0x100) == 0)
  {
LABEL_27:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_packetLifetimeVIBE = *(a3 + 9);
  *&self->_has |= 0x100u;
  v11 = *(a3 + 46);
  if ((v11 & 0x200) == 0)
  {
LABEL_28:
    if ((v11 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_packetLossRateVIBE = *(a3 + 10);
  *&self->_has |= 0x200u;
  v11 = *(a3 + 46);
  if ((v11 & 4) == 0)
  {
LABEL_29:
    if ((v11 & 2) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_btRssi = *(a3 + 3);
  *&self->_has |= 4u;
  v11 = *(a3 + 46);
  if ((v11 & 2) == 0)
  {
LABEL_30:
    if ((v11 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_btRetransmissionRateTx = *(a3 + 2);
  *&self->_has |= 2u;
  v11 = *(a3 + 46);
  if ((v11 & 1) == 0)
  {
LABEL_31:
    if ((v11 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_btRetransmissionRateRx = *(a3 + 1);
  *&self->_has |= 1u;
  v11 = *(a3 + 46);
  if ((v11 & 8) == 0)
  {
LABEL_32:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_btTech = *(a3 + 4);
  *&self->_has |= 8u;
  v11 = *(a3 + 46);
  if ((v11 & 0x100000) == 0)
  {
LABEL_33:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

LABEL_61:
    self->_idsSocketDelay = *(a3 + 38);
    *&self->_has |= 0x200000u;
    if ((*(a3 + 46) & 0x80000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

LABEL_60:
  self->_idsMessageDelay = *(a3 + 37);
  *&self->_has |= 0x100000u;
  v11 = *(a3 + 46);
  if ((v11 & 0x200000) != 0)
  {
    goto LABEL_61;
  }

LABEL_34:
  if ((v11 & 0x80000) != 0)
  {
LABEL_35:
    self->_idsErrorCode = *(a3 + 36);
    *&self->_has |= 0x80000u;
  }

LABEL_36:
  v12 = *MEMORY[0x29EDCA608];
}

@end