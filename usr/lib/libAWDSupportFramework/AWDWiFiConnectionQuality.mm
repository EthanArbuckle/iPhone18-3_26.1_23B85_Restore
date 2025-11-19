@interface AWDWiFiConnectionQuality
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAdditionalUniqueIDs:(id)a3;
- (void)addOtherUniqueIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAssocReason:(BOOL)a3;
- (void)setHasAssociatedTime:(BOOL)a3;
- (void)setHasBand:(BOOL)a3;
- (void)setHasBytesInTotal:(BOOL)a3;
- (void)setHasBytesOutActive:(BOOL)a3;
- (void)setHasBytesOutTotal:(BOOL)a3;
- (void)setHasCaptiveFlag:(BOOL)a3;
- (void)setHasCca:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasChannelWidth:(BOOL)a3;
- (void)setHasColocatedState:(BOOL)a3;
- (void)setHasDataStalls:(BOOL)a3;
- (void)setHasDisassocReason:(BOOL)a3;
- (void)setHasFailedConnections:(BOOL)a3;
- (void)setHasFaultyStay:(BOOL)a3;
- (void)setHasHotspot20:(BOOL)a3;
- (void)setHasLat:(BOOL)a3;
- (void)setHasLon:(BOOL)a3;
- (void)setHasLowLQMStay:(BOOL)a3;
- (void)setHasLowqStay:(BOOL)a3;
- (void)setHasLqmTranCount:(BOOL)a3;
- (void)setHasOverAllStay:(BOOL)a3;
- (void)setHasPacketsIn:(BOOL)a3;
- (void)setHasPacketsOut:(BOOL)a3;
- (void)setHasPhyMode:(BOOL)a3;
- (void)setHasReTxBytes:(BOOL)a3;
- (void)setHasReceivedDupes:(BOOL)a3;
- (void)setHasRoundTripTimeAvg:(BOOL)a3;
- (void)setHasRoundTripTimeAvgActive:(BOOL)a3;
- (void)setHasRoundTripTimeMin:(BOOL)a3;
- (void)setHasRoundTripTimeMinActive:(BOOL)a3;
- (void)setHasRoundTripTimeVar:(BOOL)a3;
- (void)setHasRoundTripTimeVarActive:(BOOL)a3;
- (void)setHasRssi:(BOOL)a3;
- (void)setHasRxOutOfOrderBytes:(BOOL)a3;
- (void)setHasSecurityType:(BOOL)a3;
- (void)setHasSnr:(BOOL)a3;
- (void)setHasSuccessfulConnections:(BOOL)a3;
- (void)setHasTimeOfDay:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiConnectionQuality

- (void)dealloc
{
  [(AWDWiFiConnectionQuality *)self setUniqueID:0];
  [(AWDWiFiConnectionQuality *)self setAdditionalUniqueIDs:0];
  [(AWDWiFiConnectionQuality *)self setOtherUniqueIDs:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiConnectionQuality;
  [(AWDWiFiConnectionQuality *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  v3 = 0x100000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFEFFFFFLL | v3);
}

- (void)addAdditionalUniqueIDs:(id)a3
{
  additionalUniqueIDs = self->_additionalUniqueIDs;
  if (!additionalUniqueIDs)
  {
    additionalUniqueIDs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_additionalUniqueIDs = additionalUniqueIDs;
  }

  [(NSMutableArray *)additionalUniqueIDs addObject:a3];
}

- (void)addOtherUniqueIDs:(id)a3
{
  otherUniqueIDs = self->_otherUniqueIDs;
  if (!otherUniqueIDs)
  {
    otherUniqueIDs = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_otherUniqueIDs = otherUniqueIDs;
  }

  [(NSMutableArray *)otherUniqueIDs addObject:a3];
}

- (void)setHasLat:(BOOL)a3
{
  v3 = 128;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFF7FLL | v3);
}

- (void)setHasLon:(BOOL)a3
{
  v3 = 256;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFEFFLL | v3);
}

- (void)setHasOverAllStay:(BOOL)a3
{
  v3 = 4096;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFEFFFLL | v3);
}

- (void)setHasFaultyStay:(BOOL)a3
{
  v3 = 64;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFBFLL | v3);
}

- (void)setHasLowLQMStay:(BOOL)a3
{
  v3 = 512;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFDFFLL | v3);
}

- (void)setHasLowqStay:(BOOL)a3
{
  v3 = 1024;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFBFFLL | v3);
}

- (void)setHasLqmTranCount:(BOOL)a3
{
  v3 = 2048;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFF7FFLL | v3);
}

- (void)setHasSuccessfulConnections:(BOOL)a3
{
  v3 = 0x40000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFBFFFFLL | v3);
}

- (void)setHasFailedConnections:(BOOL)a3
{
  v3 = 32;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFDFLL | v3);
}

- (void)setHasPacketsIn:(BOOL)a3
{
  v3 = 0x2000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFDFFFLL | v3);
}

- (void)setHasPacketsOut:(BOOL)a3
{
  v3 = 0x4000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFBFFFLL | v3);
}

- (void)setHasBytesInTotal:(BOOL)a3
{
  v3 = 2;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFDLL | v3);
}

- (void)setHasBytesOutTotal:(BOOL)a3
{
  v3 = 8;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFF7 | v3);
}

- (void)setHasBytesOutActive:(BOOL)a3
{
  v3 = 4;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFFBLL | v3);
}

- (void)setHasReTxBytes:(BOOL)a3
{
  v3 = 0x8000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFF7FFFLL | v3);
}

- (void)setHasDataStalls:(BOOL)a3
{
  v3 = 16;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFFFFEFLL | v3);
}

- (void)setHasReceivedDupes:(BOOL)a3
{
  v3 = 0x10000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFEFFFFLL | v3);
}

- (void)setHasRxOutOfOrderBytes:(BOOL)a3
{
  v3 = 0x20000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFFDFFFFLL | v3);
}

- (void)setHasRoundTripTimeMin:(BOOL)a3
{
  v3 = 0x200000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFDFFFFFFFFLL | v3);
}

- (void)setHasRoundTripTimeAvg:(BOOL)a3
{
  v3 = 0x80000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFF7FFFFFFFLL | v3);
}

- (void)setHasRoundTripTimeVar:(BOOL)a3
{
  v3 = 0x800000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7FFFFFFFFLL | v3);
}

- (void)setHasRoundTripTimeMinActive:(BOOL)a3
{
  v3 = 0x400000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFBFFFFFFFFLL | v3);
}

- (void)setHasRoundTripTimeAvgActive:(BOOL)a3
{
  v3 = 0x100000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFEFFFFFFFFLL | v3);
}

- (void)setHasRoundTripTimeVarActive:(BOOL)a3
{
  v3 = 0x1000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEFFFFFFFFFLL | v3);
}

- (void)setHasSecurityType:(BOOL)a3
{
  v3 = 0x4000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBFFFFFFFFFLL | v3);
}

- (void)setHasCaptiveFlag:(BOOL)a3
{
  v3 = 0x1000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFEFFFFFFLL | v3);
}

- (void)setHasColocatedState:(BOOL)a3
{
  v3 = 0x10000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFEFFFFFFFLL | v3);
}

- (void)setHasHotspot20:(BOOL)a3
{
  v3 = 0x10000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFFFFFFFFFFLL | v3);
}

- (void)setHasDisassocReason:(BOOL)a3
{
  v3 = 0x20000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFDFFFFFFFLL | v3);
}

- (void)setHasAssocReason:(BOOL)a3
{
  v3 = 0x200000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFDFFFFFLL | v3);
}

- (void)setHasBand:(BOOL)a3
{
  v3 = 0x800000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFF7FFFFFLL | v3);
}

- (void)setHasChannel:(BOOL)a3
{
  v3 = 0x4000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFBFFFFFFLL | v3);
}

- (void)setHasChannelWidth:(BOOL)a3
{
  v3 = 0x8000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFF7FFFFFFLL | v3);
}

- (void)setHasRssi:(BOOL)a3
{
  v3 = 0x2000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDFFFFFFFFFLL | v3);
}

- (void)setHasSnr:(BOOL)a3
{
  v3 = 0x8000000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7FFFFFFFFFLL | v3);
}

- (void)setHasCca:(BOOL)a3
{
  v3 = 0x2000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFDFFFFFFLL | v3);
}

- (void)setHasPhyMode:(BOOL)a3
{
  v3 = 0x40000000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFBFFFFFFFLL | v3);
}

- (void)setHasTimeOfDay:(BOOL)a3
{
  v3 = 0x80000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFF7FFFFLL | v3);
}

- (void)setHasAssociatedTime:(BOOL)a3
{
  v3 = 0x400000;
  if (!a3)
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFFFFBFFFFFLL | v3);
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiConnectionQuality;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiConnectionQuality description](&v3, sel_description), -[AWDWiFiConnectionQuality dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  uniqueID = self->_uniqueID;
  if (uniqueID)
  {
    [v3 setObject:uniqueID forKey:@"uniqueID"];
  }

  additionalUniqueIDs = self->_additionalUniqueIDs;
  if (additionalUniqueIDs)
  {
    [v3 setObject:additionalUniqueIDs forKey:@"additionalUniqueIDs"];
  }

  otherUniqueIDs = self->_otherUniqueIDs;
  if (otherUniqueIDs)
  {
    [v3 setObject:otherUniqueIDs forKey:@"otherUniqueIDs"];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_lat), @"lat"}];
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_11:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_11;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithDouble:", self->_lon), @"lon"}];
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_54;
  }

LABEL_53:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_overAllStay), @"overAllStay"}];
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_13:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_55;
  }

LABEL_54:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_faultyStay), @"faultyStay"}];
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_56;
  }

LABEL_55:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowLQMStay), @"lowLQMStay"}];
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_57;
  }

LABEL_56:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lowqStay), @"lowqStay"}];
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_16:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lqmTranCount), @"lqmTranCount"}];
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_17:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_successfulConnections), @"successfulConnections"}];
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_18:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_failedConnections), @"failedConnections"}];
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_19:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsIn), @"packetsIn"}];
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_20:
    if ((*&has & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_packetsOut), @"packetsOut"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_21:
    if ((*&has & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesInTotal), @"bytesInTotal"}];
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_22:
    if ((*&has & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOutTotal), @"bytesOutTotal"}];
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesInActive), @"bytesInActive"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_24:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_bytesOutActive), @"bytesOutActive"}];
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_25:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_reTxBytes), @"reTxBytes"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_26:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_dataStalls), @"dataStalls"}];
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_receivedDupes), @"receivedDupes"}];
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_28:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_rxOutOfOrderBytes), @"rxOutOfOrderBytes"}];
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_29:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *&v4 = self->_roundTripTimeMin;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeMin"}];
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_30:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *&v4 = self->_roundTripTimeAvg;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeAvg"}];
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_31:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *&v4 = self->_roundTripTimeVar;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeVar"}];
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_32:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *&v4 = self->_roundTripTimeMinActive;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeMinActive"}];
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *&v4 = self->_roundTripTimeAvgActive;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeAvgActive"}];
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  *&v4 = self->_roundTripTimeVarActive;
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithFloat:", v4), @"roundTripTimeVarActive"}];
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_securityType), @"securityType"}];
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_captiveFlag), @"captiveFlag"}];
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_colocatedState), @"colocatedState"}];
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_hotspot20), @"hotspot20"}];
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_disassocReason), @"disassocReason"}];
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_40:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_assocReason), @"assocReason"}];
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_41:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_83;
  }

LABEL_82:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_band), @"band"}];
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

LABEL_83:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_85;
  }

LABEL_84:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channelWidth), @"channelWidth"}];
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

LABEL_85:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_rssi), @"rssi"}];
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_87;
  }

LABEL_86:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_snr), @"snr"}];
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_88;
  }

LABEL_87:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_cca), @"cca"}];
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_48;
    }

LABEL_89:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeOfDay), @"timeOfDay"}];
    if ((*&self->_has & 0x400000) == 0)
    {
      return v3;
    }

    goto LABEL_49;
  }

LABEL_88:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_phyMode), @"phyMode"}];
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_89;
  }

LABEL_48:
  if ((*&has & 0x400000) != 0)
  {
LABEL_49:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_associatedTime), @"associatedTime"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v69 = *MEMORY[0x29EDCA608];
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_uniqueID)
  {
    PBDataWriterWriteStringField();
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  additionalUniqueIDs = self->_additionalUniqueIDs;
  v6 = [(NSMutableArray *)additionalUniqueIDs countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v64;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v64 != v8)
        {
          objc_enumerationMutation(additionalUniqueIDs);
        }

        v10 = *(*(&v63 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)additionalUniqueIDs countByEnumeratingWithState:&v63 objects:v68 count:16];
    }

    while (v7);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  otherUniqueIDs = self->_otherUniqueIDs;
  v12 = [(NSMutableArray *)otherUniqueIDs countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v60;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(otherUniqueIDs);
        }

        v16 = *(*(&v59 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)otherUniqueIDs countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    lat = self->_lat;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_21:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_63;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_21;
  }

  lon = self->_lon;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  overAllStay = self->_overAllStay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  faultyStay = self->_faultyStay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_24:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  lowLQMStay = self->_lowLQMStay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_25:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  lowqStay = self->_lowqStay;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_26:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  lqmTranCount = self->_lqmTranCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_27:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  successfulConnections = self->_successfulConnections;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_28:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  failedConnections = self->_failedConnections;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_29:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  packetsIn = self->_packetsIn;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_30:
    if ((*&has & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  packetsOut = self->_packetsOut;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_31:
    if ((*&has & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  bytesInTotal = self->_bytesInTotal;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_32:
    if ((*&has & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  bytesOutTotal = self->_bytesOutTotal;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_33:
    if ((*&has & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  bytesInActive = self->_bytesInActive;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_34:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  bytesOutActive = self->_bytesOutActive;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_35:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  reTxBytes = self->_reTxBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_36:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  dataStalls = self->_dataStalls;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_37:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  receivedDupes = self->_receivedDupes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_38:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  rxOutOfOrderBytes = self->_rxOutOfOrderBytes;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  roundTripTimeMin = self->_roundTripTimeMin;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  roundTripTimeAvg = self->_roundTripTimeAvg;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_83;
  }

LABEL_82:
  roundTripTimeVar = self->_roundTripTimeVar;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

LABEL_83:
  roundTripTimeMinActive = self->_roundTripTimeMinActive;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_85;
  }

LABEL_84:
  roundTripTimeAvgActive = self->_roundTripTimeAvgActive;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

LABEL_85:
  roundTripTimeVarActive = self->_roundTripTimeVarActive;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_87;
  }

LABEL_86:
  securityType = self->_securityType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_88;
  }

LABEL_87:
  captiveFlag = self->_captiveFlag;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

LABEL_88:
  colocatedState = self->_colocatedState;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_90;
  }

LABEL_89:
  hotspot20 = self->_hotspot20;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_91;
  }

LABEL_90:
  disassocReason = self->_disassocReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_50:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  assocReason = self->_assocReason;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_51:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  band = self->_band;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_52:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_93:
  channel = self->_channel;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

LABEL_94:
  channelWidth = self->_channelWidth;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_54:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_96;
  }

LABEL_95:
  rssi = self->_rssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_55:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_97;
  }

LABEL_96:
  snr = self->_snr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_56:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_98;
  }

LABEL_97:
  cca = self->_cca;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_57:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_58;
    }

LABEL_99:
    timeOfDay = self->_timeOfDay;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_98:
  phyMode = self->_phyMode;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_99;
  }

LABEL_58:
  if ((*&has & 0x400000) != 0)
  {
LABEL_59:
    associatedTime = self->_associatedTime;
    PBDataWriterWriteUint32Field();
  }

LABEL_60:
  v19 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(a3 + 21) = self->_timestamp;
    *(a3 + 284) |= 0x100000uLL;
  }

  if (self->_uniqueID)
  {
    [a3 setUniqueID:?];
  }

  if ([(AWDWiFiConnectionQuality *)self additionalUniqueIDsCount])
  {
    [a3 clearAdditionalUniqueIDs];
    v5 = [(AWDWiFiConnectionQuality *)self additionalUniqueIDsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addAdditionalUniqueIDs:{-[AWDWiFiConnectionQuality additionalUniqueIDsAtIndex:](self, "additionalUniqueIDsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiConnectionQuality *)self otherUniqueIDsCount])
  {
    [a3 clearOtherUniqueIDs];
    v8 = [(AWDWiFiConnectionQuality *)self otherUniqueIDsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addOtherUniqueIDs:{-[AWDWiFiConnectionQuality otherUniqueIDsAtIndex:](self, "otherUniqueIDsAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(a3 + 8) = *&self->_lat;
    *(a3 + 284) |= 0x80uLL;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_15:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_57;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_15;
  }

  *(a3 + 9) = *&self->_lon;
  *(a3 + 284) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(a3 + 13) = self->_overAllStay;
  *(a3 + 284) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(a3 + 7) = self->_faultyStay;
  *(a3 + 284) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(a3 + 10) = self->_lowLQMStay;
  *(a3 + 284) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(a3 + 11) = self->_lowqStay;
  *(a3 + 284) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_20:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(a3 + 12) = self->_lqmTranCount;
  *(a3 + 284) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_21:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(a3 + 19) = self->_successfulConnections;
  *(a3 + 284) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_22:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(a3 + 6) = self->_failedConnections;
  *(a3 + 284) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(a3 + 14) = self->_packetsIn;
  *(a3 + 284) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_24:
    if ((*&has & 2) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(a3 + 15) = self->_packetsOut;
  *(a3 + 284) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_25:
    if ((*&has & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(a3 + 2) = self->_bytesInTotal;
  *(a3 + 284) |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_26:
    if ((*&has & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(a3 + 4) = self->_bytesOutTotal;
  *(a3 + 284) |= 8uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_27:
    if ((*&has & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(a3 + 1) = self->_bytesInActive;
  *(a3 + 284) |= 1uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_28:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(a3 + 3) = self->_bytesOutActive;
  *(a3 + 284) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_29:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(a3 + 16) = self->_reTxBytes;
  *(a3 + 284) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_30:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(a3 + 5) = self->_dataStalls;
  *(a3 + 284) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_31:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(a3 + 17) = self->_receivedDupes;
  *(a3 + 284) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_32:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(a3 + 18) = self->_rxOutOfOrderBytes;
  *(a3 + 284) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_33:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(a3 + 61) = LODWORD(self->_roundTripTimeMin);
  *(a3 + 284) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_34:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(a3 + 59) = LODWORD(self->_roundTripTimeAvg);
  *(a3 + 284) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_35:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(a3 + 63) = LODWORD(self->_roundTripTimeVar);
  *(a3 + 284) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_36:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(a3 + 62) = LODWORD(self->_roundTripTimeMinActive);
  *(a3 + 284) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(a3 + 60) = LODWORD(self->_roundTripTimeAvgActive);
  *(a3 + 284) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(a3 + 64) = LODWORD(self->_roundTripTimeVarActive);
  *(a3 + 284) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(a3 + 66) = self->_securityType;
  *(a3 + 284) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(a3 + 49) = self->_captiveFlag;
  *(a3 + 284) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(a3 + 53) = self->_colocatedState;
  *(a3 + 284) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(a3 + 280) = self->_hotspot20;
  *(a3 + 284) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(a3 + 54) = self->_disassocReason;
  *(a3 + 284) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_44:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(a3 + 46) = self->_assocReason;
  *(a3 + 284) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_45:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(a3 + 48) = self->_band;
  *(a3 + 284) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(a3 + 51) = self->_channel;
  *(a3 + 284) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(a3 + 52) = self->_channelWidth;
  *(a3 + 284) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_48:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(a3 + 65) = self->_rssi;
  *(a3 + 284) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_49:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(a3 + 67) = self->_snr;
  *(a3 + 284) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(a3 + 50) = self->_cca;
  *(a3 + 284) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(a3 + 58) = self->_phyMode;
  *(a3 + 284) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_52:
    if ((*&has & 0x400000) == 0)
    {
      return;
    }

    goto LABEL_53;
  }

LABEL_93:
  *(a3 + 20) = self->_timeOfDay;
  *(a3 + 284) |= 0x80000uLL;
  if ((*&self->_has & 0x400000) == 0)
  {
    return;
  }

LABEL_53:
  *(a3 + 47) = self->_associatedTime;
  *(a3 + 284) |= 0x400000uLL;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    *(v5 + 168) = self->_timestamp;
    *(v5 + 284) |= 0x100000uLL;
  }

  *(v6 + 272) = [(NSString *)self->_uniqueID copyWithZone:a3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  additionalUniqueIDs = self->_additionalUniqueIDs;
  v8 = [(NSMutableArray *)additionalUniqueIDs countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(additionalUniqueIDs);
        }

        v12 = [*(*(&v26 + 1) + 8 * i) copyWithZone:a3];
        [v6 addAdditionalUniqueIDs:v12];
      }

      v9 = [(NSMutableArray *)additionalUniqueIDs countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  otherUniqueIDs = self->_otherUniqueIDs;
  v14 = [(NSMutableArray *)otherUniqueIDs countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(otherUniqueIDs);
        }

        v18 = [*(*(&v22 + 1) + 8 * j) copyWithZone:a3];
        [v6 addOtherUniqueIDs:v18];
      }

      v15 = [(NSMutableArray *)otherUniqueIDs countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v15);
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(v6 + 64) = self->_lat;
    *(v6 + 284) |= 0x80uLL;
    has = self->_has;
    if ((*&has & 0x100) == 0)
    {
LABEL_19:
      if ((*&has & 0x1000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x100) == 0)
  {
    goto LABEL_19;
  }

  *(v6 + 72) = self->_lon;
  *(v6 + 284) |= 0x100uLL;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_20:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_62;
  }

LABEL_61:
  *(v6 + 104) = self->_overAllStay;
  *(v6 + 284) |= 0x1000uLL;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_63;
  }

LABEL_62:
  *(v6 + 56) = self->_faultyStay;
  *(v6 + 284) |= 0x40uLL;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v6 + 80) = self->_lowLQMStay;
  *(v6 + 284) |= 0x200uLL;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_23:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v6 + 88) = self->_lowqStay;
  *(v6 + 284) |= 0x400uLL;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_24:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  *(v6 + 96) = self->_lqmTranCount;
  *(v6 + 284) |= 0x800uLL;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_25:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  *(v6 + 152) = self->_successfulConnections;
  *(v6 + 284) |= 0x40000uLL;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_26:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v6 + 48) = self->_failedConnections;
  *(v6 + 284) |= 0x20uLL;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_27:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v6 + 112) = self->_packetsIn;
  *(v6 + 284) |= 0x2000uLL;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_28:
    if ((*&has & 2) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v6 + 120) = self->_packetsOut;
  *(v6 + 284) |= 0x4000uLL;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_29:
    if ((*&has & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v6 + 16) = self->_bytesInTotal;
  *(v6 + 284) |= 2uLL;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_30:
    if ((*&has & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  *(v6 + 32) = self->_bytesOutTotal;
  *(v6 + 284) |= 8uLL;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_31:
    if ((*&has & 4) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  *(v6 + 8) = self->_bytesInActive;
  *(v6 + 284) |= 1uLL;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_32:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  *(v6 + 24) = self->_bytesOutActive;
  *(v6 + 284) |= 4uLL;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_33:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  *(v6 + 128) = self->_reTxBytes;
  *(v6 + 284) |= 0x8000uLL;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_34:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  *(v6 + 40) = self->_dataStalls;
  *(v6 + 284) |= 0x10uLL;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_35:
    if ((*&has & 0x20000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  *(v6 + 136) = self->_receivedDupes;
  *(v6 + 284) |= 0x10000uLL;
  has = self->_has;
  if ((*&has & 0x20000) == 0)
  {
LABEL_36:
    if ((*&has & 0x200000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  *(v6 + 144) = self->_rxOutOfOrderBytes;
  *(v6 + 284) |= 0x20000uLL;
  has = self->_has;
  if ((*&has & 0x200000000) == 0)
  {
LABEL_37:
    if ((*&has & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  *(v6 + 244) = self->_roundTripTimeMin;
  *(v6 + 284) |= 0x200000000uLL;
  has = self->_has;
  if ((*&has & 0x80000000) == 0)
  {
LABEL_38:
    if ((*&has & 0x800000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  *(v6 + 236) = self->_roundTripTimeAvg;
  *(v6 + 284) |= 0x80000000uLL;
  has = self->_has;
  if ((*&has & 0x800000000) == 0)
  {
LABEL_39:
    if ((*&has & 0x400000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  *(v6 + 252) = self->_roundTripTimeVar;
  *(v6 + 284) |= 0x800000000uLL;
  has = self->_has;
  if ((*&has & 0x400000000) == 0)
  {
LABEL_40:
    if ((*&has & 0x100000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  *(v6 + 248) = self->_roundTripTimeMinActive;
  *(v6 + 284) |= 0x400000000uLL;
  has = self->_has;
  if ((*&has & 0x100000000) == 0)
  {
LABEL_41:
    if ((*&has & 0x1000000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_83;
  }

LABEL_82:
  *(v6 + 240) = self->_roundTripTimeAvgActive;
  *(v6 + 284) |= 0x100000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000000) == 0)
  {
LABEL_42:
    if ((*&has & 0x4000000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

LABEL_83:
  *(v6 + 256) = self->_roundTripTimeVarActive;
  *(v6 + 284) |= 0x1000000000uLL;
  has = self->_has;
  if ((*&has & 0x4000000000) == 0)
  {
LABEL_43:
    if ((*&has & 0x1000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_85;
  }

LABEL_84:
  *(v6 + 264) = self->_securityType;
  *(v6 + 284) |= 0x4000000000uLL;
  has = self->_has;
  if ((*&has & 0x1000000) == 0)
  {
LABEL_44:
    if ((*&has & 0x10000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

LABEL_85:
  *(v6 + 196) = self->_captiveFlag;
  *(v6 + 284) |= 0x1000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000) == 0)
  {
LABEL_45:
    if ((*&has & 0x10000000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_87;
  }

LABEL_86:
  *(v6 + 212) = self->_colocatedState;
  *(v6 + 284) |= 0x10000000uLL;
  has = self->_has;
  if ((*&has & 0x10000000000) == 0)
  {
LABEL_46:
    if ((*&has & 0x20000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_88;
  }

LABEL_87:
  *(v6 + 280) = self->_hotspot20;
  *(v6 + 284) |= 0x10000000000uLL;
  has = self->_has;
  if ((*&has & 0x20000000) == 0)
  {
LABEL_47:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v6 + 216) = self->_disassocReason;
  *(v6 + 284) |= 0x20000000uLL;
  has = self->_has;
  if ((*&has & 0x200000) == 0)
  {
LABEL_48:
    if ((*&has & 0x800000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v6 + 184) = self->_assocReason;
  *(v6 + 284) |= 0x200000uLL;
  has = self->_has;
  if ((*&has & 0x800000) == 0)
  {
LABEL_49:
    if ((*&has & 0x4000000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v6 + 192) = self->_band;
  *(v6 + 284) |= 0x800000uLL;
  has = self->_has;
  if ((*&has & 0x4000000) == 0)
  {
LABEL_50:
    if ((*&has & 0x8000000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v6 + 204) = self->_channel;
  *(v6 + 284) |= 0x4000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000) == 0)
  {
LABEL_51:
    if ((*&has & 0x2000000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v6 + 208) = self->_channelWidth;
  *(v6 + 284) |= 0x8000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000000) == 0)
  {
LABEL_52:
    if ((*&has & 0x8000000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_93:
  *(v6 + 260) = self->_rssi;
  *(v6 + 284) |= 0x2000000000uLL;
  has = self->_has;
  if ((*&has & 0x8000000000) == 0)
  {
LABEL_53:
    if ((*&has & 0x2000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

LABEL_94:
  *(v6 + 268) = self->_snr;
  *(v6 + 284) |= 0x8000000000uLL;
  has = self->_has;
  if ((*&has & 0x2000000) == 0)
  {
LABEL_54:
    if ((*&has & 0x40000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_96;
  }

LABEL_95:
  *(v6 + 200) = self->_cca;
  *(v6 + 284) |= 0x2000000uLL;
  has = self->_has;
  if ((*&has & 0x40000000) == 0)
  {
LABEL_55:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_56;
    }

LABEL_97:
    *(v6 + 160) = self->_timeOfDay;
    *(v6 + 284) |= 0x80000uLL;
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

LABEL_96:
  *(v6 + 232) = self->_phyMode;
  *(v6 + 284) |= 0x40000000uLL;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_97;
  }

LABEL_56:
  if ((*&has & 0x400000) != 0)
  {
LABEL_57:
    *(v6 + 188) = self->_associatedTime;
    *(v6 + 284) |= 0x400000uLL;
  }

LABEL_58:
  v20 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 284);
    if ((*(&self->_has + 2) & 0x10) != 0)
    {
      if ((v6 & 0x100000) == 0 || self->_timestamp != *(a3 + 21))
      {
        goto LABEL_215;
      }
    }

    else if ((v6 & 0x100000) != 0)
    {
      goto LABEL_215;
    }

    uniqueID = self->_uniqueID;
    if (!(uniqueID | *(a3 + 34)) || (v5 = [(NSString *)uniqueID isEqual:?]) != 0)
    {
      additionalUniqueIDs = self->_additionalUniqueIDs;
      if (!(additionalUniqueIDs | *(a3 + 22)) || (v5 = [(NSMutableArray *)additionalUniqueIDs isEqual:?]) != 0)
      {
        otherUniqueIDs = self->_otherUniqueIDs;
        if (!(otherUniqueIDs | *(a3 + 28)) || (v5 = [(NSMutableArray *)otherUniqueIDs isEqual:?]) != 0)
        {
          has = self->_has;
          v11 = *(a3 + 284);
          if ((*&has & 0x80) != 0)
          {
            if ((v11 & 0x80) == 0 || self->_lat != *(a3 + 8))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x80) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x100) != 0)
          {
            if ((v11 & 0x100) == 0 || self->_lon != *(a3 + 9))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x100) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x1000) != 0)
          {
            if ((v11 & 0x1000) == 0 || self->_overAllStay != *(a3 + 13))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x1000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x40) != 0)
          {
            if ((v11 & 0x40) == 0 || self->_faultyStay != *(a3 + 7))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x40) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x200) != 0)
          {
            if ((v11 & 0x200) == 0 || self->_lowLQMStay != *(a3 + 10))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x200) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x400) != 0)
          {
            if ((v11 & 0x400) == 0 || self->_lowqStay != *(a3 + 11))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x400) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x800) != 0)
          {
            if ((v11 & 0x800) == 0 || self->_lqmTranCount != *(a3 + 12))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x800) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x40000) != 0)
          {
            if ((v11 & 0x40000) == 0 || self->_successfulConnections != *(a3 + 19))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x40000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x20) != 0)
          {
            if ((v11 & 0x20) == 0 || self->_failedConnections != *(a3 + 6))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x20) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x2000) != 0)
          {
            if ((v11 & 0x2000) == 0 || self->_packetsIn != *(a3 + 14))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x2000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x4000) != 0)
          {
            if ((v11 & 0x4000) == 0 || self->_packetsOut != *(a3 + 15))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x4000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 2) != 0)
          {
            if ((v11 & 2) == 0 || self->_bytesInTotal != *(a3 + 2))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 2) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 8) != 0)
          {
            if ((v11 & 8) == 0 || self->_bytesOutTotal != *(a3 + 4))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 8) != 0)
          {
            goto LABEL_215;
          }

          if (*&has)
          {
            if ((v11 & 1) == 0 || self->_bytesInActive != *(a3 + 1))
            {
              goto LABEL_215;
            }
          }

          else if (v11)
          {
            goto LABEL_215;
          }

          if ((*&has & 4) != 0)
          {
            if ((v11 & 4) == 0 || self->_bytesOutActive != *(a3 + 3))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 4) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x8000) != 0)
          {
            if ((v11 & 0x8000) == 0 || self->_reTxBytes != *(a3 + 16))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x8000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x10) != 0)
          {
            if ((v11 & 0x10) == 0 || self->_dataStalls != *(a3 + 5))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x10) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x10000) != 0)
          {
            if ((v11 & 0x10000) == 0 || self->_receivedDupes != *(a3 + 17))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x10000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x20000) != 0)
          {
            if ((v11 & 0x20000) == 0 || self->_rxOutOfOrderBytes != *(a3 + 18))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x20000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x200000000) != 0)
          {
            if ((v11 & 0x200000000) == 0 || self->_roundTripTimeMin != *(a3 + 61))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x200000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x80000000) != 0)
          {
            if ((v11 & 0x80000000) == 0 || self->_roundTripTimeAvg != *(a3 + 59))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x80000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x800000000) != 0)
          {
            if ((v11 & 0x800000000) == 0 || self->_roundTripTimeVar != *(a3 + 63))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x800000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x400000000) != 0)
          {
            if ((v11 & 0x400000000) == 0 || self->_roundTripTimeMinActive != *(a3 + 62))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x400000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x100000000) != 0)
          {
            if ((v11 & 0x100000000) == 0 || self->_roundTripTimeAvgActive != *(a3 + 60))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x100000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x1000000000) != 0)
          {
            if ((v11 & 0x1000000000) == 0 || self->_roundTripTimeVarActive != *(a3 + 64))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x1000000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x4000000000) != 0)
          {
            if ((v11 & 0x4000000000) == 0 || self->_securityType != *(a3 + 66))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x4000000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x1000000) != 0)
          {
            if ((v11 & 0x1000000) == 0 || self->_captiveFlag != *(a3 + 49))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x1000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x10000000) != 0)
          {
            if ((v11 & 0x10000000) == 0 || self->_colocatedState != *(a3 + 53))
            {
              goto LABEL_215;
            }
          }

          else if ((v11 & 0x10000000) != 0)
          {
            goto LABEL_215;
          }

          if ((*&has & 0x10000000000) == 0)
          {
            if ((v11 & 0x10000000000) != 0)
            {
              goto LABEL_215;
            }

            goto LABEL_161;
          }

          if ((v11 & 0x10000000000) != 0)
          {
            v12 = *(a3 + 280);
            if (self->_hotspot20)
            {
              if ((*(a3 + 280) & 1) == 0)
              {
                goto LABEL_215;
              }

              goto LABEL_161;
            }

            if ((*(a3 + 280) & 1) == 0)
            {
LABEL_161:
              if ((*&has & 0x20000000) != 0)
              {
                if ((v11 & 0x20000000) == 0 || self->_disassocReason != *(a3 + 54))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x20000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x200000) != 0)
              {
                if ((v11 & 0x200000) == 0 || self->_assocReason != *(a3 + 46))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x200000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x800000) != 0)
              {
                if ((v11 & 0x800000) == 0 || self->_band != *(a3 + 48))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x800000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x4000000) != 0)
              {
                if ((v11 & 0x4000000) == 0 || self->_channel != *(a3 + 51))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x4000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x8000000) != 0)
              {
                if ((v11 & 0x8000000) == 0 || self->_channelWidth != *(a3 + 52))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x8000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x2000000000) != 0)
              {
                if ((v11 & 0x2000000000) == 0 || self->_rssi != *(a3 + 65))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x2000000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x8000000000) != 0)
              {
                if ((v11 & 0x8000000000) == 0 || self->_snr != *(a3 + 67))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x8000000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x2000000) != 0)
              {
                if ((v11 & 0x2000000) == 0 || self->_cca != *(a3 + 50))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x2000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x40000000) != 0)
              {
                if ((v11 & 0x40000000) == 0 || self->_phyMode != *(a3 + 58))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x40000000) != 0)
              {
                goto LABEL_215;
              }

              if ((*&has & 0x80000) != 0)
              {
                if ((v11 & 0x80000) == 0 || self->_timeOfDay != *(a3 + 20))
                {
                  goto LABEL_215;
                }
              }

              else if ((v11 & 0x80000) != 0)
              {
                goto LABEL_215;
              }

              LOBYTE(v5) = (v11 & 0x400000) == 0;
              if ((*&has & 0x400000) != 0)
              {
                if ((v11 & 0x400000) == 0 || self->_associatedTime != *(a3 + 47))
                {
                  goto LABEL_215;
                }

                LOBYTE(v5) = 1;
              }

              return v5;
            }
          }

LABEL_215:
          LOBYTE(v5) = 0;
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v75 = 2654435761u * self->_timestamp;
  }

  else
  {
    v75 = 0;
  }

  v74 = [(NSString *)self->_uniqueID hash];
  v73 = [(NSMutableArray *)self->_additionalUniqueIDs hash];
  v72 = [(NSMutableArray *)self->_otherUniqueIDs hash];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    lat = self->_lat;
    if (lat < 0.0)
    {
      lat = -lat;
    }

    *v3.i64 = floor(lat + 0.5);
    v8 = (lat - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v71 = v6;
  if ((*&has & 0x100) != 0)
  {
    lon = self->_lon;
    if (lon < 0.0)
    {
      lon = -lon;
    }

    *v3.i64 = floor(lon + 0.5);
    v12 = (lon - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    v70 = 2654435761u * self->_overAllStay;
    if ((*&has & 0x40) != 0)
    {
LABEL_22:
      v69 = 2654435761u * self->_faultyStay;
      if ((*&has & 0x200) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v70 = 0;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_22;
    }
  }

  v69 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_23:
    v68 = 2654435761u * self->_lowLQMStay;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  v68 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_24:
    v67 = 2654435761u * self->_lowqStay;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

LABEL_45:
  v67 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_25:
    v66 = 2654435761u * self->_lqmTranCount;
    if ((*&has & 0x40000) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_47;
  }

LABEL_46:
  v66 = 0;
  if ((*&has & 0x40000) != 0)
  {
LABEL_26:
    v65 = 2654435761u * self->_successfulConnections;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

LABEL_47:
  v65 = 0;
  if ((*&has & 0x20) != 0)
  {
LABEL_27:
    v64 = 2654435761u * self->_failedConnections;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

LABEL_48:
  v64 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_28:
    v63 = 2654435761u * self->_packetsIn;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_29;
    }

    goto LABEL_50;
  }

LABEL_49:
  v63 = 0;
  if ((*&has & 0x4000) != 0)
  {
LABEL_29:
    v62 = 2654435761u * self->_packetsOut;
    if ((*&has & 2) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_51;
  }

LABEL_50:
  v62 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_30:
    v61 = 2654435761u * self->_bytesInTotal;
    if ((*&has & 8) != 0)
    {
      goto LABEL_31;
    }

    goto LABEL_52;
  }

LABEL_51:
  v61 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_31:
    v60 = 2654435761u * self->_bytesOutTotal;
    if (*&has)
    {
      goto LABEL_32;
    }

    goto LABEL_53;
  }

LABEL_52:
  v60 = 0;
  if (*&has)
  {
LABEL_32:
    v59 = 2654435761u * self->_bytesInActive;
    if ((*&has & 4) != 0)
    {
      goto LABEL_33;
    }

    goto LABEL_54;
  }

LABEL_53:
  v59 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_33:
    v58 = 2654435761u * self->_bytesOutActive;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_34;
    }

    goto LABEL_55;
  }

LABEL_54:
  v58 = 0;
  if ((*&has & 0x8000) != 0)
  {
LABEL_34:
    v14 = 2654435761u * self->_reTxBytes;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_35;
    }

    goto LABEL_56;
  }

LABEL_55:
  v14 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_35:
    v15 = 2654435761u * self->_dataStalls;
    if ((*&has & 0x10000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_57;
  }

LABEL_56:
  v15 = 0;
  if ((*&has & 0x10000) != 0)
  {
LABEL_36:
    v16 = 2654435761u * self->_receivedDupes;
    if ((*&has & 0x20000) != 0)
    {
      goto LABEL_37;
    }

LABEL_58:
    v17 = 0;
    if ((*&has & 0x200000000) != 0)
    {
      goto LABEL_38;
    }

LABEL_59:
    v21 = 0;
    goto LABEL_60;
  }

LABEL_57:
  v16 = 0;
  if ((*&has & 0x20000) == 0)
  {
    goto LABEL_58;
  }

LABEL_37:
  v17 = 2654435761u * self->_rxOutOfOrderBytes;
  if ((*&has & 0x200000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_38:
  roundTripTimeMin = self->_roundTripTimeMin;
  if (roundTripTimeMin < 0.0)
  {
    roundTripTimeMin = -roundTripTimeMin;
  }

  *v3.i32 = floorf(roundTripTimeMin + 0.5);
  v19 = (roundTripTimeMin - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v20.i64[0] = 0x8000000080000000;
  v20.i64[1] = 0x8000000080000000;
  v3 = vbslq_s8(v20, v4, v3);
  v21 = 2654435761u * *v3.i32;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabsf(v19);
  }

LABEL_60:
  if ((*&has & 0x80000000) != 0)
  {
    roundTripTimeAvg = self->_roundTripTimeAvg;
    if (roundTripTimeAvg < 0.0)
    {
      roundTripTimeAvg = -roundTripTimeAvg;
    }

    *v3.i32 = floorf(roundTripTimeAvg + 0.5);
    v24 = (roundTripTimeAvg - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v25.i64[0] = 0x8000000080000000;
    v25.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v25, v4, v3);
    v22 = 2654435761u * *v3.i32;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabsf(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&has & 0x800000000) != 0)
  {
    roundTripTimeVar = self->_roundTripTimeVar;
    if (roundTripTimeVar < 0.0)
    {
      roundTripTimeVar = -roundTripTimeVar;
    }

    *v3.i32 = floorf(roundTripTimeVar + 0.5);
    v28 = (roundTripTimeVar - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v29.i64[0] = 0x8000000080000000;
    v29.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v29, v4, v3);
    v26 = 2654435761u * *v3.i32;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabsf(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&has & 0x400000000) != 0)
  {
    roundTripTimeMinActive = self->_roundTripTimeMinActive;
    if (roundTripTimeMinActive < 0.0)
    {
      roundTripTimeMinActive = -roundTripTimeMinActive;
    }

    *v3.i32 = floorf(roundTripTimeMinActive + 0.5);
    v32 = (roundTripTimeMinActive - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v33.i64[0] = 0x8000000080000000;
    v33.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v33, v4, v3);
    v30 = 2654435761u * *v3.i32;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabsf(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&has & 0x100000000) != 0)
  {
    roundTripTimeAvgActive = self->_roundTripTimeAvgActive;
    if (roundTripTimeAvgActive < 0.0)
    {
      roundTripTimeAvgActive = -roundTripTimeAvgActive;
    }

    *v3.i32 = floorf(roundTripTimeAvgActive + 0.5);
    v36 = (roundTripTimeAvgActive - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v37.i64[0] = 0x8000000080000000;
    v37.i64[1] = 0x8000000080000000;
    v3 = vbslq_s8(v37, v4, v3);
    v34 = 2654435761u * *v3.i32;
    if (v36 >= 0.0)
    {
      if (v36 > 0.0)
      {
        v34 += v36;
      }
    }

    else
    {
      v34 -= fabsf(v36);
    }
  }

  else
  {
    v34 = 0;
  }

  if ((*&has & 0x1000000000) != 0)
  {
    roundTripTimeVarActive = self->_roundTripTimeVarActive;
    if (roundTripTimeVarActive < 0.0)
    {
      roundTripTimeVarActive = -roundTripTimeVarActive;
    }

    *v3.i32 = floorf(roundTripTimeVarActive + 0.5);
    v40 = (roundTripTimeVarActive - *v3.i32) * 1.8447e19;
    *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
    v41.i64[0] = 0x8000000080000000;
    v41.i64[1] = 0x8000000080000000;
    v38 = 2654435761u * *vbslq_s8(v41, v4, v3).i32;
    if (v40 >= 0.0)
    {
      if (v40 > 0.0)
      {
        v38 += v40;
      }
    }

    else
    {
      v38 -= fabsf(v40);
    }
  }

  else
  {
    v38 = 0;
  }

  if ((*&has & 0x4000000000) != 0)
  {
    v42 = 2654435761 * self->_securityType;
    if ((*&has & 0x1000000) != 0)
    {
LABEL_104:
      v43 = 2654435761 * self->_captiveFlag;
      if ((*&has & 0x10000000) != 0)
      {
        goto LABEL_105;
      }

      goto LABEL_120;
    }
  }

  else
  {
    v42 = 0;
    if ((*&has & 0x1000000) != 0)
    {
      goto LABEL_104;
    }
  }

  v43 = 0;
  if ((*&has & 0x10000000) != 0)
  {
LABEL_105:
    v44 = 2654435761 * self->_colocatedState;
    if ((*&has & 0x10000000000) != 0)
    {
      goto LABEL_106;
    }

    goto LABEL_121;
  }

LABEL_120:
  v44 = 0;
  if ((*&has & 0x10000000000) != 0)
  {
LABEL_106:
    v45 = 2654435761 * self->_hotspot20;
    if ((*&has & 0x20000000) != 0)
    {
      goto LABEL_107;
    }

    goto LABEL_122;
  }

LABEL_121:
  v45 = 0;
  if ((*&has & 0x20000000) != 0)
  {
LABEL_107:
    v46 = 2654435761 * self->_disassocReason;
    if ((*&has & 0x200000) != 0)
    {
      goto LABEL_108;
    }

    goto LABEL_123;
  }

LABEL_122:
  v46 = 0;
  if ((*&has & 0x200000) != 0)
  {
LABEL_108:
    v47 = 2654435761 * self->_assocReason;
    if ((*&has & 0x800000) != 0)
    {
      goto LABEL_109;
    }

    goto LABEL_124;
  }

LABEL_123:
  v47 = 0;
  if ((*&has & 0x800000) != 0)
  {
LABEL_109:
    v48 = 2654435761 * self->_band;
    if ((*&has & 0x4000000) != 0)
    {
      goto LABEL_110;
    }

    goto LABEL_125;
  }

LABEL_124:
  v48 = 0;
  if ((*&has & 0x4000000) != 0)
  {
LABEL_110:
    v49 = 2654435761 * self->_channel;
    if ((*&has & 0x8000000) != 0)
    {
      goto LABEL_111;
    }

    goto LABEL_126;
  }

LABEL_125:
  v49 = 0;
  if ((*&has & 0x8000000) != 0)
  {
LABEL_111:
    v50 = 2654435761 * self->_channelWidth;
    if ((*&has & 0x2000000000) != 0)
    {
      goto LABEL_112;
    }

    goto LABEL_127;
  }

LABEL_126:
  v50 = 0;
  if ((*&has & 0x2000000000) != 0)
  {
LABEL_112:
    v51 = 2654435761 * self->_rssi;
    if ((*&has & 0x8000000000) != 0)
    {
      goto LABEL_113;
    }

    goto LABEL_128;
  }

LABEL_127:
  v51 = 0;
  if ((*&has & 0x8000000000) != 0)
  {
LABEL_113:
    v52 = 2654435761 * self->_snr;
    if ((*&has & 0x2000000) != 0)
    {
      goto LABEL_114;
    }

    goto LABEL_129;
  }

LABEL_128:
  v52 = 0;
  if ((*&has & 0x2000000) != 0)
  {
LABEL_114:
    v53 = 2654435761 * self->_cca;
    if ((*&has & 0x40000000) != 0)
    {
      goto LABEL_115;
    }

    goto LABEL_130;
  }

LABEL_129:
  v53 = 0;
  if ((*&has & 0x40000000) != 0)
  {
LABEL_115:
    v54 = 2654435761 * self->_phyMode;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_116;
    }

LABEL_131:
    v55 = 0;
    if ((*&has & 0x400000) != 0)
    {
      goto LABEL_117;
    }

LABEL_132:
    v56 = 0;
    return v74 ^ v75 ^ v73 ^ v72 ^ v71 ^ v10 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v14 ^ v15 ^ v16 ^ v17 ^ v21 ^ v22 ^ v26 ^ v30 ^ v34 ^ v38 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56;
  }

LABEL_130:
  v54 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_131;
  }

LABEL_116:
  v55 = 2654435761u * self->_timeOfDay;
  if ((*&has & 0x400000) == 0)
  {
    goto LABEL_132;
  }

LABEL_117:
  v56 = 2654435761 * self->_associatedTime;
  return v74 ^ v75 ^ v73 ^ v72 ^ v71 ^ v10 ^ v70 ^ v69 ^ v68 ^ v67 ^ v66 ^ v65 ^ v64 ^ v63 ^ v62 ^ v61 ^ v60 ^ v59 ^ v58 ^ v14 ^ v15 ^ v16 ^ v17 ^ v21 ^ v22 ^ v26 ^ v30 ^ v34 ^ v38 ^ v42 ^ v43 ^ v44 ^ v45 ^ v46 ^ v47 ^ v48 ^ v49 ^ v50 ^ v51 ^ v52 ^ v53 ^ v54 ^ v55 ^ v56;
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x29EDCA608];
  if ((*(a3 + 286) & 0x10) != 0)
  {
    self->_timestamp = *(a3 + 21);
    *&self->_has |= 0x100000uLL;
  }

  if (*(a3 + 34))
  {
    [(AWDWiFiConnectionQuality *)self setUniqueID:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a3 + 22);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiConnectionQuality *)self addAdditionalUniqueIDs:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(a3 + 28);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiConnectionQuality *)self addOtherUniqueIDs:*(*(&v17 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *(a3 + 284);
  if ((v15 & 0x80) != 0)
  {
    self->_lat = *(a3 + 8);
    *&self->_has |= 0x80uLL;
    v15 = *(a3 + 284);
    if ((v15 & 0x100) == 0)
    {
LABEL_21:
      if ((v15 & 0x1000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_63;
    }
  }

  else if ((v15 & 0x100) == 0)
  {
    goto LABEL_21;
  }

  self->_lon = *(a3 + 9);
  *&self->_has |= 0x100uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x1000) == 0)
  {
LABEL_22:
    if ((v15 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_overAllStay = *(a3 + 13);
  *&self->_has |= 0x1000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x40) == 0)
  {
LABEL_23:
    if ((v15 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_faultyStay = *(a3 + 7);
  *&self->_has |= 0x40uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x200) == 0)
  {
LABEL_24:
    if ((v15 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_lowLQMStay = *(a3 + 10);
  *&self->_has |= 0x200uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x400) == 0)
  {
LABEL_25:
    if ((v15 & 0x800) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_lowqStay = *(a3 + 11);
  *&self->_has |= 0x400uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x800) == 0)
  {
LABEL_26:
    if ((v15 & 0x40000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_68;
  }

LABEL_67:
  self->_lqmTranCount = *(a3 + 12);
  *&self->_has |= 0x800uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x40000) == 0)
  {
LABEL_27:
    if ((v15 & 0x20) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_successfulConnections = *(a3 + 19);
  *&self->_has |= 0x40000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x20) == 0)
  {
LABEL_28:
    if ((v15 & 0x2000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_failedConnections = *(a3 + 6);
  *&self->_has |= 0x20uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x2000) == 0)
  {
LABEL_29:
    if ((v15 & 0x4000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_71;
  }

LABEL_70:
  self->_packetsIn = *(a3 + 14);
  *&self->_has |= 0x2000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x4000) == 0)
  {
LABEL_30:
    if ((v15 & 2) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_72;
  }

LABEL_71:
  self->_packetsOut = *(a3 + 15);
  *&self->_has |= 0x4000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 2) == 0)
  {
LABEL_31:
    if ((v15 & 8) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

LABEL_72:
  self->_bytesInTotal = *(a3 + 2);
  *&self->_has |= 2uLL;
  v15 = *(a3 + 284);
  if ((v15 & 8) == 0)
  {
LABEL_32:
    if ((v15 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_74;
  }

LABEL_73:
  self->_bytesOutTotal = *(a3 + 4);
  *&self->_has |= 8uLL;
  v15 = *(a3 + 284);
  if ((v15 & 1) == 0)
  {
LABEL_33:
    if ((v15 & 4) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_75;
  }

LABEL_74:
  self->_bytesInActive = *(a3 + 1);
  *&self->_has |= 1uLL;
  v15 = *(a3 + 284);
  if ((v15 & 4) == 0)
  {
LABEL_34:
    if ((v15 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_76;
  }

LABEL_75:
  self->_bytesOutActive = *(a3 + 3);
  *&self->_has |= 4uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x8000) == 0)
  {
LABEL_35:
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_77;
  }

LABEL_76:
  self->_reTxBytes = *(a3 + 16);
  *&self->_has |= 0x8000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x10) == 0)
  {
LABEL_36:
    if ((v15 & 0x10000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_78;
  }

LABEL_77:
  self->_dataStalls = *(a3 + 5);
  *&self->_has |= 0x10uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x10000) == 0)
  {
LABEL_37:
    if ((v15 & 0x20000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_79;
  }

LABEL_78:
  self->_receivedDupes = *(a3 + 17);
  *&self->_has |= 0x10000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x20000) == 0)
  {
LABEL_38:
    if ((v15 & 0x200000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_80;
  }

LABEL_79:
  self->_rxOutOfOrderBytes = *(a3 + 18);
  *&self->_has |= 0x20000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x200000000) == 0)
  {
LABEL_39:
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_81;
  }

LABEL_80:
  self->_roundTripTimeMin = *(a3 + 61);
  *&self->_has |= 0x200000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x80000000) == 0)
  {
LABEL_40:
    if ((v15 & 0x800000000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_82;
  }

LABEL_81:
  self->_roundTripTimeAvg = *(a3 + 59);
  *&self->_has |= 0x80000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x800000000) == 0)
  {
LABEL_41:
    if ((v15 & 0x400000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_83;
  }

LABEL_82:
  self->_roundTripTimeVar = *(a3 + 63);
  *&self->_has |= 0x800000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x400000000) == 0)
  {
LABEL_42:
    if ((v15 & 0x100000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_84;
  }

LABEL_83:
  self->_roundTripTimeMinActive = *(a3 + 62);
  *&self->_has |= 0x400000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x100000000) == 0)
  {
LABEL_43:
    if ((v15 & 0x1000000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_85;
  }

LABEL_84:
  self->_roundTripTimeAvgActive = *(a3 + 60);
  *&self->_has |= 0x100000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x1000000000) == 0)
  {
LABEL_44:
    if ((v15 & 0x4000000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_86;
  }

LABEL_85:
  self->_roundTripTimeVarActive = *(a3 + 64);
  *&self->_has |= 0x1000000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x4000000000) == 0)
  {
LABEL_45:
    if ((v15 & 0x1000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_87;
  }

LABEL_86:
  self->_securityType = *(a3 + 66);
  *&self->_has |= 0x4000000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x1000000) == 0)
  {
LABEL_46:
    if ((v15 & 0x10000000) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_88;
  }

LABEL_87:
  self->_captiveFlag = *(a3 + 49);
  *&self->_has |= 0x1000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x10000000) == 0)
  {
LABEL_47:
    if ((v15 & 0x10000000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_89;
  }

LABEL_88:
  self->_colocatedState = *(a3 + 53);
  *&self->_has |= 0x10000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x10000000000) == 0)
  {
LABEL_48:
    if ((v15 & 0x20000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_90;
  }

LABEL_89:
  self->_hotspot20 = *(a3 + 280);
  *&self->_has |= 0x10000000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x20000000) == 0)
  {
LABEL_49:
    if ((v15 & 0x200000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_91;
  }

LABEL_90:
  self->_disassocReason = *(a3 + 54);
  *&self->_has |= 0x20000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x200000) == 0)
  {
LABEL_50:
    if ((v15 & 0x800000) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_92;
  }

LABEL_91:
  self->_assocReason = *(a3 + 46);
  *&self->_has |= 0x200000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x800000) == 0)
  {
LABEL_51:
    if ((v15 & 0x4000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_93;
  }

LABEL_92:
  self->_band = *(a3 + 48);
  *&self->_has |= 0x800000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x4000000) == 0)
  {
LABEL_52:
    if ((v15 & 0x8000000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_94;
  }

LABEL_93:
  self->_channel = *(a3 + 51);
  *&self->_has |= 0x4000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x8000000) == 0)
  {
LABEL_53:
    if ((v15 & 0x2000000000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_95;
  }

LABEL_94:
  self->_channelWidth = *(a3 + 52);
  *&self->_has |= 0x8000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x2000000000) == 0)
  {
LABEL_54:
    if ((v15 & 0x8000000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_96;
  }

LABEL_95:
  self->_rssi = *(a3 + 65);
  *&self->_has |= 0x2000000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x8000000000) == 0)
  {
LABEL_55:
    if ((v15 & 0x2000000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_97;
  }

LABEL_96:
  self->_snr = *(a3 + 67);
  *&self->_has |= 0x8000000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x2000000) == 0)
  {
LABEL_56:
    if ((v15 & 0x40000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_98;
  }

LABEL_97:
  self->_cca = *(a3 + 50);
  *&self->_has |= 0x2000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x40000000) == 0)
  {
LABEL_57:
    if ((v15 & 0x80000) == 0)
    {
      goto LABEL_58;
    }

LABEL_99:
    self->_timeOfDay = *(a3 + 20);
    *&self->_has |= 0x80000uLL;
    if ((*(a3 + 284) & 0x400000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_98:
  self->_phyMode = *(a3 + 58);
  *&self->_has |= 0x40000000uLL;
  v15 = *(a3 + 284);
  if ((v15 & 0x80000) != 0)
  {
    goto LABEL_99;
  }

LABEL_58:
  if ((v15 & 0x400000) != 0)
  {
LABEL_59:
    self->_associatedTime = *(a3 + 47);
    *&self->_has |= 0x400000uLL;
  }

LABEL_60:
  v16 = *MEMORY[0x29EDCA608];
}

@end