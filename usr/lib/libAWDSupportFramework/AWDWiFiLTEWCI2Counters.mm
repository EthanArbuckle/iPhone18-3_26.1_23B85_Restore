@interface AWDWiFiLTEWCI2Counters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addWci2Counters:(id)counters;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasLteTxPowerLimitTimeInMS:(BOOL)s;
- (void)setHasTimeSharingWLANIntervalCount:(BOOL)count;
- (void)setHasTimeSharingWLANTimeInMS:(BOOL)s;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasType4DueToTimerExpiryCount:(BOOL)count;
- (void)setHasType4HonouredCount:(BOOL)count;
- (void)setHasType4HonouredTimeInMS:(BOOL)s;
- (void)setHasWlanProtectionFramesDueToLTECoexCount:(BOOL)count;
- (void)setHasWlanRxPriCount:(BOOL)count;
- (void)setHasWlanRxPriTimeInMS:(BOOL)s;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiLTEWCI2Counters

- (void)dealloc
{
  [(AWDWiFiLTEWCI2Counters *)self setWci2Counters:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiLTEWCI2Counters;
  [(AWDWiFiLTEWCI2Counters *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasWlanRxPriTimeInMS:(BOOL)s
{
  if (s)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasWlanRxPriCount:(BOOL)count
{
  if (count)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasLteTxPowerLimitTimeInMS:(BOOL)s
{
  if (s)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasType4HonouredTimeInMS:(BOOL)s
{
  if (s)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasType4HonouredCount:(BOOL)count
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

- (void)setHasTimeSharingWLANTimeInMS:(BOOL)s
{
  if (s)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeSharingWLANIntervalCount:(BOOL)count
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

- (void)setHasWlanProtectionFramesDueToLTECoexCount:(BOOL)count
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

- (void)setHasType4DueToTimerExpiryCount:(BOOL)count
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

- (void)addWci2Counters:(id)counters
{
  wci2Counters = self->_wci2Counters;
  if (!wci2Counters)
  {
    wci2Counters = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_wci2Counters = wci2Counters;
  }

  [(NSMutableArray *)wci2Counters addObject:counters];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiLTEWCI2Counters;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiLTEWCI2Counters description](&v3, sel_description), -[AWDWiFiLTEWCI2Counters dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
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

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanRxPriTimeInMS), @"wlanRxPriTimeInMS"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanRxPriCount), @"wlanRxPriCount"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lteTxPowerLimitTimeInMS), @"lteTxPowerLimitTimeInMS"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_lteTxPowerLimitCount), @"lteTxPowerLimitCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4HonouredTimeInMS), @"type4HonouredTimeInMS"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4HonouredCount), @"type4HonouredCount"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSharingWLANTimeInMS), @"timeSharingWLANTimeInMS"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timeSharingWLANIntervalCount), @"timeSharingWLANIntervalCount"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_32:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wlanProtectionFramesDueToLTECoexCount), @"wlanProtectionFramesDueToLTECoexCount"}];
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_type4DueToTimerExpiryCount), @"type4DueToTimerExpiryCount"}];
  }

LABEL_13:
  if ([(NSMutableArray *)self->_wci2Counters count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_wci2Counters, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    wci2Counters = self->_wci2Counters;
    v7 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(wci2Counters);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"wci2Counters"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
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

  wlanRxPriTimeInMS = self->_wlanRxPriTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  wlanRxPriCount = self->_wlanRxPriCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  lteTxPowerLimitTimeInMS = self->_lteTxPowerLimitTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  lteTxPowerLimitCount = self->_lteTxPowerLimitCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  type4HonouredTimeInMS = self->_type4HonouredTimeInMS;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  type4HonouredCount = self->_type4HonouredCount;
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
  timeSharingWLANTimeInMS = self->_timeSharingWLANTimeInMS;
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
  timeSharingWLANIntervalCount = self->_timeSharingWLANIntervalCount;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  wlanProtectionFramesDueToLTECoexCount = self->_wlanProtectionFramesDueToLTECoexCount;
  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    type4DueToTimerExpiryCount = self->_type4DueToTimerExpiryCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_13:
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  wci2Counters = self->_wci2Counters;
  v7 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(wci2Counters);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(to + 5) = self->_timestamp;
    *(to + 52) |= 0x10u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(to + 11) = self->_wlanRxPriTimeInMS;
  *(to + 52) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(to + 10) = self->_wlanRxPriCount;
  *(to + 52) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(to + 2) = self->_lteTxPowerLimitTimeInMS;
  *(to + 52) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(to + 1) = self->_lteTxPowerLimitCount;
  *(to + 52) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 8) = self->_type4HonouredTimeInMS;
  *(to + 52) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 7) = self->_type4HonouredCount;
  *(to + 52) |= 0x40u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 4) = self->_timeSharingWLANTimeInMS;
  *(to + 52) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_27:
    *(to + 9) = self->_wlanProtectionFramesDueToLTECoexCount;
    *(to + 52) |= 0x100u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_26:
  *(to + 3) = self->_timeSharingWLANIntervalCount;
  *(to + 52) |= 4u;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  if ((has & 0x20) != 0)
  {
LABEL_12:
    *(to + 6) = self->_type4DueToTimerExpiryCount;
    *(to + 52) |= 0x20u;
  }

LABEL_13:
  if ([(AWDWiFiLTEWCI2Counters *)self wci2CountersCount])
  {
    [to clearWci2Counters];
    wci2CountersCount = [(AWDWiFiLTEWCI2Counters *)self wci2CountersCount];
    if (wci2CountersCount)
    {
      v7 = wci2CountersCount;
      for (i = 0; i != v7; ++i)
      {
        [to addWci2Counters:{-[AWDWiFiLTEWCI2Counters wci2CountersAtIndex:](self, "wci2CountersAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    *(v5 + 40) = self->_timestamp;
    *(v5 + 104) |= 0x10u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x200) == 0)
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

  *(v5 + 88) = self->_wlanRxPriTimeInMS;
  *(v5 + 104) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 80) = self->_wlanRxPriCount;
  *(v5 + 104) |= 0x200u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 16) = self->_lteTxPowerLimitTimeInMS;
  *(v5 + 104) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 8) = self->_lteTxPowerLimitCount;
  *(v5 + 104) |= 1u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 64) = self->_type4HonouredTimeInMS;
  *(v5 + 104) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 56) = self->_type4HonouredCount;
  *(v5 + 104) |= 0x40u;
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
  *(v5 + 32) = self->_timeSharingWLANTimeInMS;
  *(v5 + 104) |= 8u;
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
  *(v5 + 24) = self->_timeSharingWLANIntervalCount;
  *(v5 + 104) |= 4u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  *(v5 + 72) = self->_wlanProtectionFramesDueToLTECoexCount;
  *(v5 + 104) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_12:
    *(v5 + 48) = self->_type4DueToTimerExpiryCount;
    *(v5 + 104) |= 0x20u;
  }

LABEL_13:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  wci2Counters = self->_wci2Counters;
  v9 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(wci2Counters);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addWci2Counters:v13];
      }

      v10 = [(NSMutableArray *)wci2Counters countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    v7 = *(equal + 52);
    if ((has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_timestamp != *(equal + 5))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
LABEL_59:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 0x400) != 0)
    {
      if ((*(equal + 52) & 0x400) == 0 || self->_wlanRxPriTimeInMS != *(equal + 11))
      {
        goto LABEL_59;
      }
    }

    else if ((*(equal + 52) & 0x400) != 0)
    {
      goto LABEL_59;
    }

    if ((*&self->_has & 0x200) != 0)
    {
      if ((*(equal + 52) & 0x200) == 0 || self->_wlanRxPriCount != *(equal + 10))
      {
        goto LABEL_59;
      }
    }

    else if ((*(equal + 52) & 0x200) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_lteTxPowerLimitTimeInMS != *(equal + 2))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_59;
    }

    if (has)
    {
      if ((v7 & 1) == 0 || self->_lteTxPowerLimitCount != *(equal + 1))
      {
        goto LABEL_59;
      }
    }

    else if (v7)
    {
      goto LABEL_59;
    }

    if ((has & 0x80) != 0)
    {
      if ((v7 & 0x80) == 0 || self->_type4HonouredTimeInMS != *(equal + 8))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x80) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 0x40) != 0)
    {
      if ((v7 & 0x40) == 0 || self->_type4HonouredCount != *(equal + 7))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x40) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_timeSharingWLANTimeInMS != *(equal + 4))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 8) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_timeSharingWLANIntervalCount != *(equal + 3))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_59;
    }

    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(equal + 52) & 0x100) == 0 || self->_wlanProtectionFramesDueToLTECoexCount != *(equal + 9))
      {
        goto LABEL_59;
      }
    }

    else if ((*(equal + 52) & 0x100) != 0)
    {
      goto LABEL_59;
    }

    if ((has & 0x20) != 0)
    {
      if ((v7 & 0x20) == 0 || self->_type4DueToTimerExpiryCount != *(equal + 6))
      {
        goto LABEL_59;
      }
    }

    else if ((v7 & 0x20) != 0)
    {
      goto LABEL_59;
    }

    wci2Counters = self->_wci2Counters;
    if (wci2Counters | *(equal + 12))
    {

      LOBYTE(v5) = [(NSMutableArray *)wci2Counters isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    v7 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v8 = 2654435761u * self->_wlanRxPriTimeInMS;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_4:
    v9 = 2654435761u * self->_wlanRxPriCount;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v10 = 2654435761u * self->_lteTxPowerLimitTimeInMS;
    if (has)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if (has)
  {
LABEL_6:
    v11 = 2654435761u * self->_lteTxPowerLimitCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v12 = 2654435761u * self->_type4HonouredTimeInMS;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v13 = 2654435761u * self->_type4HonouredCount;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  v13 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v14 = 2654435761u * self->_timeSharingWLANTimeInMS;
    if ((has & 4) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  v14 = 0;
  if ((has & 4) != 0)
  {
LABEL_10:
    v15 = 2654435761u * self->_timeSharingWLANIntervalCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    v16 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    v17 = 0;
    return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSMutableArray *)self->_wci2Counters hash:v3];
  }

LABEL_21:
  v15 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v16 = 2654435761u * self->_wlanProtectionFramesDueToLTECoexCount;
  if ((has & 0x20) == 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v17 = 2654435761u * self->_type4DueToTimerExpiryCount;
  return v8 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSMutableArray *)self->_wci2Counters hash:v3];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x29EDCA608];
  v4 = *(from + 52);
  if ((v4 & 0x10) != 0)
  {
    self->_timestamp = *(from + 5);
    *&self->_has |= 0x10u;
    v4 = *(from + 52);
    if ((v4 & 0x400) == 0)
    {
LABEL_3:
      if ((v4 & 0x200) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(from + 52) & 0x400) == 0)
  {
    goto LABEL_3;
  }

  self->_wlanRxPriTimeInMS = *(from + 11);
  *&self->_has |= 0x400u;
  v4 = *(from + 52);
  if ((v4 & 0x200) == 0)
  {
LABEL_4:
    if ((v4 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_wlanRxPriCount = *(from + 10);
  *&self->_has |= 0x200u;
  v4 = *(from + 52);
  if ((v4 & 2) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_lteTxPowerLimitTimeInMS = *(from + 2);
  *&self->_has |= 2u;
  v4 = *(from + 52);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_lteTxPowerLimitCount = *(from + 1);
  *&self->_has |= 1u;
  v4 = *(from + 52);
  if ((v4 & 0x80) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_type4HonouredTimeInMS = *(from + 8);
  *&self->_has |= 0x80u;
  v4 = *(from + 52);
  if ((v4 & 0x40) == 0)
  {
LABEL_8:
    if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_type4HonouredCount = *(from + 7);
  *&self->_has |= 0x40u;
  v4 = *(from + 52);
  if ((v4 & 8) == 0)
  {
LABEL_9:
    if ((v4 & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_timeSharingWLANTimeInMS = *(from + 4);
  *&self->_has |= 8u;
  v4 = *(from + 52);
  if ((v4 & 4) == 0)
  {
LABEL_10:
    if ((v4 & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_timeSharingWLANIntervalCount = *(from + 3);
  *&self->_has |= 4u;
  v4 = *(from + 52);
  if ((v4 & 0x100) == 0)
  {
LABEL_11:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_30:
  self->_wlanProtectionFramesDueToLTECoexCount = *(from + 9);
  *&self->_has |= 0x100u;
  if ((*(from + 52) & 0x20) != 0)
  {
LABEL_12:
    self->_type4DueToTimerExpiryCount = *(from + 6);
    *&self->_has |= 0x20u;
  }

LABEL_13:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(from + 12);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(AWDWiFiLTEWCI2Counters *)self addWci2Counters:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end