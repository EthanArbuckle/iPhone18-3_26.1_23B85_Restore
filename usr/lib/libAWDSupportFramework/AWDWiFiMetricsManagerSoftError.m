@interface AWDWiFiMetricsManagerSoftError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChipCountersPerSlice:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBatteryChargeLevel:(BOOL)a3;
- (void)setHasChannel:(BOOL)a3;
- (void)setHasInCar:(BOOL)a3;
- (void)setHasLastSoftErrorUserFeedbk:(BOOL)a3;
- (void)setHasLowPowerMode:(BOOL)a3;
- (void)setHasMotionState:(BOOL)a3;
- (void)setHasSample1Cca:(BOOL)a3;
- (void)setHasSample1Rssi:(BOOL)a3;
- (void)setHasSample1Snr:(BOOL)a3;
- (void)setHasSample2Cca:(BOOL)a3;
- (void)setHasSample2Rssi:(BOOL)a3;
- (void)setHasSample2Snr:(BOOL)a3;
- (void)setHasSample2TimeStamp:(BOOL)a3;
- (void)setHasSoftErrorType:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerSoftError

- (void)dealloc
{
  [(AWDWiFiMetricsManagerSoftError *)self setAppId:0];
  [(AWDWiFiMetricsManagerSoftError *)self setApOUI:0];
  [(AWDWiFiMetricsManagerSoftError *)self setChipCounters:0];
  [(AWDWiFiMetricsManagerSoftError *)self setBtCoexStats:0];
  [(AWDWiFiMetricsManagerSoftError *)self setBtCoexModeChange:0];
  [(AWDWiFiMetricsManagerSoftError *)self setChipCountersPerSlices:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerSoftError;
  [(AWDWiFiMetricsManagerSoftError *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasSoftErrorType:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasSample2TimeStamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasSample1Rssi:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSample2Rssi:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasSample1Cca:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSample2Cca:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasSample1Snr:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasSample2Snr:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasInCar:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBFFF | v3;
}

- (void)setHasMotionState:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasChannel:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasBatteryChargeLevel:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasLowPowerMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x8000 | *&self->_has & 0x7FFF;
}

- (void)setHasLastSoftErrorUserFeedbk:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addChipCountersPerSlice:(id)a3
{
  chipCountersPerSlices = self->_chipCountersPerSlices;
  if (!chipCountersPerSlices)
  {
    chipCountersPerSlices = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_chipCountersPerSlices = chipCountersPerSlices;
  }

  [(NSMutableArray *)chipCountersPerSlices addObject:a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerSoftError;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerSoftError description](&v3, sel_description), -[AWDWiFiMetricsManagerSoftError dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_44;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_softErrorType), @"softErrorType"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sample1TimeStamp), @"sample1TimeStamp"}];
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_sample2TimeStamp), @"sample2TimeStamp"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample1Rssi), @"sample1Rssi"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample2Rssi), @"sample2Rssi"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample1Cca), @"sample1Cca"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample2Cca), @"sample2Cca"}];
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample1Snr), @"sample1Snr"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_sample2Snr), @"sample2Snr"}];
  }

LABEL_12:
  appId = self->_appId;
  if (appId)
  {
    [v3 setObject:appId forKey:@"appId"];
  }

  v6 = self->_has;
  if ((v6 & 0x4000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_inCar), @"inCar"}];
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_motionState), @"motionState"}];
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_channel), @"channel"}];
  }

LABEL_18:
  apOUI = self->_apOUI;
  if (apOUI)
  {
    [v3 setObject:apOUI forKey:@"apOUI"];
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryChargeLevel), @"batteryChargeLevel"}];
    v8 = self->_has;
  }

  if (v8 < 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithBool:", self->_lowPowerMode), @"lowPowerMode"}];
  }

  chipCounters = self->_chipCounters;
  if (chipCounters)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerChipCounters dictionaryRepresentation](chipCounters forKey:{"dictionaryRepresentation"), @"chipCounters"}];
  }

  btCoexStats = self->_btCoexStats;
  if (btCoexStats)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerBTCoexStats dictionaryRepresentation](btCoexStats forKey:{"dictionaryRepresentation"), @"btCoexStats"}];
  }

  btCoexModeChange = self->_btCoexModeChange;
  if (btCoexModeChange)
  {
    [v3 setObject:-[AWDWiFiMetricsManagerBTCoexModeChange dictionaryRepresentation](btCoexModeChange forKey:{"dictionaryRepresentation"), @"btCoexModeChange"}];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lastSoftErrorUserFeedbk), @"lastSoftErrorUserFeedbk"}];
  }

  if ([(NSMutableArray *)self->_chipCountersPerSlices count])
  {
    v12 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_chipCountersPerSlices, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    chipCountersPerSlices = self->_chipCountersPerSlices;
    v14 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(chipCountersPerSlices);
          }

          [v12 addObject:{objc_msgSend(*(*(&v20 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v15 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"chipCountersPerSlice"];
  }

  v18 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((has & 4) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_42;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  softErrorType = self->_softErrorType;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_42:
  sample1TimeStamp = self->_sample1TimeStamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_44;
  }

LABEL_43:
  sample2TimeStamp = self->_sample2TimeStamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_45;
  }

LABEL_44:
  sample1Rssi = self->_sample1Rssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_46;
  }

LABEL_45:
  sample2Rssi = self->_sample2Rssi;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_47;
  }

LABEL_46:
  sample1Cca = self->_sample1Cca;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_48;
  }

LABEL_47:
  sample2Cca = self->_sample2Cca;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_48:
  sample1Snr = self->_sample1Snr;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    sample2Snr = self->_sample2Snr;
    PBDataWriterWriteInt32Field();
  }

LABEL_12:
  if (self->_appId)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x4000) != 0)
  {
    inCar = self->_inCar;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  motionState = self->_motionState;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    channel = self->_channel;
    PBDataWriterWriteUint32Field();
  }

LABEL_18:
  if (self->_apOUI)
  {
    PBDataWriterWriteDataField();
  }

  v8 = self->_has;
  if ((v8 & 8) != 0)
  {
    batteryChargeLevel = self->_batteryChargeLevel;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
  }

  if (v8 < 0)
  {
    lowPowerMode = self->_lowPowerMode;
    PBDataWriterWriteBOOLField();
  }

  if (self->_chipCounters)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btCoexStats)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_btCoexModeChange)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    lastSoftErrorUserFeedbk = self->_lastSoftErrorUserFeedbk;
    PBDataWriterWriteUint32Field();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  chipCountersPerSlices = self->_chipCountersPerSlices;
  v13 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(chipCountersPerSlices);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 3) = self->_timestamp;
    *(a3 + 68) |= 4u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_39;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 32) = self->_softErrorType;
  *(a3 + 68) |= 0x2000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(a3 + 1) = self->_sample1TimeStamp;
  *(a3 + 68) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(a3 + 2) = self->_sample2TimeStamp;
  *(a3 + 68) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(a3 + 27) = self->_sample1Rssi;
  *(a3 + 68) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 30) = self->_sample2Rssi;
  *(a3 + 68) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 26) = self->_sample1Cca;
  *(a3 + 68) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 29) = self->_sample2Cca;
  *(a3 + 68) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_45:
  *(a3 + 28) = self->_sample1Snr;
  *(a3 + 68) |= 0x200u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    *(a3 + 31) = self->_sample2Snr;
    *(a3 + 68) |= 0x1000u;
  }

LABEL_12:
  if (self->_appId)
  {
    [a3 setAppId:?];
  }

  v6 = self->_has;
  if ((v6 & 0x4000) != 0)
  {
    *(a3 + 132) = self->_inCar;
    *(a3 + 68) |= 0x4000u;
    v6 = self->_has;
    if ((v6 & 0x40) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  *(a3 + 25) = self->_motionState;
  *(a3 + 68) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_17:
    *(a3 + 18) = self->_channel;
    *(a3 + 68) |= 0x10u;
  }

LABEL_18:
  if (self->_apOUI)
  {
    [a3 setApOUI:?];
  }

  v7 = self->_has;
  if ((v7 & 8) != 0)
  {
    *(a3 + 12) = self->_batteryChargeLevel;
    *(a3 + 68) |= 8u;
    v7 = self->_has;
  }

  if (v7 < 0)
  {
    *(a3 + 133) = self->_lowPowerMode;
    *(a3 + 68) |= 0x8000u;
  }

  if (self->_chipCounters)
  {
    [a3 setChipCounters:?];
  }

  if (self->_btCoexStats)
  {
    [a3 setBtCoexStats:?];
  }

  if (self->_btCoexModeChange)
  {
    [a3 setBtCoexModeChange:?];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(a3 + 24) = self->_lastSoftErrorUserFeedbk;
    *(a3 + 68) |= 0x20u;
  }

  if ([(AWDWiFiMetricsManagerSoftError *)self chipCountersPerSlicesCount])
  {
    [a3 clearChipCountersPerSlices];
    v8 = [(AWDWiFiMetricsManagerSoftError *)self chipCountersPerSlicesCount];
    if (v8)
    {
      v9 = v8;
      for (i = 0; i != v9; ++i)
      {
        [a3 addChipCountersPerSlice:{-[AWDWiFiMetricsManagerSoftError chipCountersPerSliceAtIndex:](self, "chipCountersPerSliceAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_timestamp;
    *(v5 + 136) |= 4u;
    has = self->_has;
    if ((has & 0x2000) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 128) = self->_softErrorType;
  *(v5 + 136) |= 0x2000u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 8) = self->_sample1TimeStamp;
  *(v5 + 136) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 16) = self->_sample2TimeStamp;
  *(v5 + 136) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 108) = self->_sample1Rssi;
  *(v5 + 136) |= 0x100u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 120) = self->_sample2Rssi;
  *(v5 + 136) |= 0x800u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 104) = self->_sample1Cca;
  *(v5 + 136) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 116) = self->_sample2Cca;
  *(v5 + 136) |= 0x400u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_10:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  *(v5 + 112) = self->_sample1Snr;
  *(v5 + 136) |= 0x200u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    *(v5 + 124) = self->_sample2Snr;
    *(v5 + 136) |= 0x1000u;
  }

LABEL_12:

  *(v6 + 40) = [(NSString *)self->_appId copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 0x4000) != 0)
  {
    *(v6 + 132) = self->_inCar;
    *(v6 + 136) |= 0x4000u;
    v8 = self->_has;
    if ((v8 & 0x40) == 0)
    {
LABEL_14:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else if ((v8 & 0x40) == 0)
  {
    goto LABEL_14;
  }

  *(v6 + 100) = self->_motionState;
  *(v6 + 136) |= 0x40u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_15:
    *(v6 + 72) = self->_channel;
    *(v6 + 136) |= 0x10u;
  }

LABEL_16:

  *(v6 + 32) = [(NSData *)self->_apOUI copyWithZone:a3];
  v9 = self->_has;
  if ((v9 & 8) != 0)
  {
    *(v6 + 48) = self->_batteryChargeLevel;
    *(v6 + 136) |= 8u;
    v9 = self->_has;
  }

  if (v9 < 0)
  {
    *(v6 + 133) = self->_lowPowerMode;
    *(v6 + 136) |= 0x8000u;
  }

  *(v6 + 80) = [(AWDWiFiMetricsManagerChipCounters *)self->_chipCounters copyWithZone:a3];
  *(v6 + 64) = [(AWDWiFiMetricsManagerBTCoexStats *)self->_btCoexStats copyWithZone:a3];

  *(v6 + 56) = [(AWDWiFiMetricsManagerBTCoexModeChange *)self->_btCoexModeChange copyWithZone:a3];
  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 96) = self->_lastSoftErrorUserFeedbk;
    *(v6 + 136) |= 0x20u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  chipCountersPerSlices = self->_chipCountersPerSlices;
  v11 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(chipCountersPerSlices);
        }

        v15 = [*(*(&v18 + 1) + 8 * i) copyWithZone:a3];
        [v6 addChipCountersPerSlice:v15];
      }

      v12 = [(NSMutableArray *)chipCountersPerSlices countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  has = self->_has;
  v7 = *(a3 + 68);
  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_timestamp != *(a3 + 3))
    {
      goto LABEL_93;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(a3 + 68) & 0x2000) == 0 || self->_softErrorType != *(a3 + 32))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x2000) != 0)
  {
    goto LABEL_93;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_sample1TimeStamp != *(a3 + 1))
    {
      goto LABEL_93;
    }
  }

  else if (v7)
  {
    goto LABEL_93;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_sample2TimeStamp != *(a3 + 2))
    {
      goto LABEL_93;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 68) & 0x100) == 0 || self->_sample1Rssi != *(a3 + 27))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x100) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(a3 + 68) & 0x800) == 0 || self->_sample2Rssi != *(a3 + 30))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x800) != 0)
  {
    goto LABEL_93;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_sample1Cca != *(a3 + 26))
    {
      goto LABEL_93;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(a3 + 68) & 0x400) == 0 || self->_sample2Cca != *(a3 + 29))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x400) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(a3 + 68) & 0x200) == 0 || self->_sample1Snr != *(a3 + 28))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x200) != 0)
  {
    goto LABEL_93;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(a3 + 68) & 0x1000) == 0 || self->_sample2Snr != *(a3 + 31))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x1000) != 0)
  {
    goto LABEL_93;
  }

  appId = self->_appId;
  if (appId | *(a3 + 5))
  {
    v5 = [(NSString *)appId isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v9 = *(a3 + 68);
  if ((has & 0x4000) != 0)
  {
    if ((*(a3 + 68) & 0x4000) == 0)
    {
      goto LABEL_93;
    }

    v10 = *(a3 + 132);
    if (self->_inCar)
    {
      if ((*(a3 + 132) & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    else if (*(a3 + 132))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x4000) != 0)
  {
    goto LABEL_93;
  }

  if ((has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_motionState != *(a3 + 25))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_93;
  }

  if ((has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_channel != *(a3 + 18))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_93;
  }

  apOUI = self->_apOUI;
  if (apOUI | *(a3 + 4))
  {
    v5 = [(NSData *)apOUI isEqual:?];
    if (!v5)
    {
      return v5;
    }

    has = self->_has;
  }

  v12 = *(a3 + 68);
  if ((has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_batteryChargeLevel != *(a3 + 12))
    {
      goto LABEL_93;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_93;
  }

  if (has < 0)
  {
    if ((*(a3 + 68) & 0x8000) == 0)
    {
      goto LABEL_93;
    }

    v17 = *(a3 + 133);
    if (self->_lowPowerMode)
    {
      if ((*(a3 + 133) & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    else if (*(a3 + 133))
    {
      goto LABEL_93;
    }
  }

  else if ((*(a3 + 68) & 0x8000) != 0)
  {
    goto LABEL_93;
  }

  chipCounters = self->_chipCounters;
  if (chipCounters | *(a3 + 10))
  {
    v5 = [(AWDWiFiMetricsManagerChipCounters *)chipCounters isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  btCoexStats = self->_btCoexStats;
  if (btCoexStats | *(a3 + 8))
  {
    v5 = [(AWDWiFiMetricsManagerBTCoexStats *)btCoexStats isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  btCoexModeChange = self->_btCoexModeChange;
  if (btCoexModeChange | *(a3 + 7))
  {
    v5 = [(AWDWiFiMetricsManagerBTCoexModeChange *)btCoexModeChange isEqual:?];
    if (!v5)
    {
      return v5;
    }
  }

  v16 = *(a3 + 68);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v16 & 0x20) == 0 || self->_lastSoftErrorUserFeedbk != *(a3 + 24))
    {
      goto LABEL_93;
    }

    goto LABEL_100;
  }

  if ((v16 & 0x20) != 0)
  {
LABEL_93:
    LOBYTE(v5) = 0;
    return v5;
  }

LABEL_100:
  chipCountersPerSlices = self->_chipCountersPerSlices;
  if (chipCountersPerSlices | *(a3 + 11))
  {

    LOBYTE(v5) = [(NSMutableArray *)chipCountersPerSlices isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    v27 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 0x2000) != 0)
    {
LABEL_3:
      v26 = 2654435761 * self->_softErrorType;
      if (has)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v27 = 0;
    if ((*&self->_has & 0x2000) != 0)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  if (has)
  {
LABEL_4:
    v25 = 2654435761u * self->_sample1TimeStamp;
    if ((has & 2) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v25 = 0;
  if ((has & 2) != 0)
  {
LABEL_5:
    v24 = 2654435761u * self->_sample2TimeStamp;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v24 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_6:
    v23 = 2654435761 * self->_sample1Rssi;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v23 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_7:
    v22 = 2654435761 * self->_sample2Rssi;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  v22 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v21 = 2654435761 * self->_sample1Cca;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v21 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v20 = 2654435761 * self->_sample2Cca;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    v19 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_19:
  v20 = 0;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  v19 = 2654435761 * self->_sample1Snr;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_11:
    v18 = 2654435761 * self->_sample2Snr;
    goto LABEL_22;
  }

LABEL_21:
  v18 = 0;
LABEL_22:
  v17 = [(NSString *)self->_appId hash];
  v4 = self->_has;
  if ((v4 & 0x4000) == 0)
  {
    v15 = 0;
    if ((v4 & 0x40) != 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    v5 = 0;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_28;
  }

  v15 = 2654435761 * self->_inCar;
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_27;
  }

LABEL_24:
  v5 = 2654435761 * self->_motionState;
  if ((v4 & 0x10) != 0)
  {
LABEL_25:
    v6 = 2654435761 * self->_channel;
    goto LABEL_29;
  }

LABEL_28:
  v6 = 0;
LABEL_29:
  v7 = [(NSData *)self->_apOUI hash];
  if ((*&self->_has & 8) != 0)
  {
    v8 = 2654435761 * self->_batteryChargeLevel;
    if ((*&self->_has & 0x8000) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = 0;
    if ((*&self->_has & 0x8000) != 0)
    {
LABEL_31:
      v9 = 2654435761 * self->_lowPowerMode;
      goto LABEL_34;
    }
  }

  v9 = 0;
LABEL_34:
  v10 = [(AWDWiFiMetricsManagerChipCounters *)self->_chipCounters hash];
  v11 = [(AWDWiFiMetricsManagerBTCoexStats *)self->_btCoexStats hash];
  v12 = [(AWDWiFiMetricsManagerBTCoexModeChange *)self->_btCoexModeChange hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v13 = 2654435761 * self->_lastSoftErrorUserFeedbk;
  }

  else
  {
    v13 = 0;
  }

  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v16 ^ v5 ^ v6 ^ v17 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ [(NSMutableArray *)self->_chipCountersPerSlices hash];
}

- (void)mergeFrom:(id)a3
{
  v25 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 68);
  if ((v5 & 4) != 0)
  {
    self->_timestamp = *(a3 + 3);
    *&self->_has |= 4u;
    v5 = *(a3 + 68);
    if ((v5 & 0x2000) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*(a3 + 68) & 0x2000) == 0)
  {
    goto LABEL_3;
  }

  self->_softErrorType = *(a3 + 32);
  *&self->_has |= 0x2000u;
  v5 = *(a3 + 68);
  if ((v5 & 1) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_sample1TimeStamp = *(a3 + 1);
  *&self->_has |= 1u;
  v5 = *(a3 + 68);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_sample2TimeStamp = *(a3 + 2);
  *&self->_has |= 2u;
  v5 = *(a3 + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_6:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_sample1Rssi = *(a3 + 27);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_sample2Rssi = *(a3 + 30);
  *&self->_has |= 0x800u;
  v5 = *(a3 + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_sample1Cca = *(a3 + 26);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_sample2Cca = *(a3 + 29);
  *&self->_has |= 0x400u;
  v5 = *(a3 + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_10:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_35:
  self->_sample1Snr = *(a3 + 28);
  *&self->_has |= 0x200u;
  if ((*(a3 + 68) & 0x1000) != 0)
  {
LABEL_11:
    self->_sample2Snr = *(a3 + 31);
    *&self->_has |= 0x1000u;
  }

LABEL_12:
  if (*(a3 + 5))
  {
    [(AWDWiFiMetricsManagerSoftError *)self setAppId:?];
  }

  v6 = *(a3 + 68);
  if ((v6 & 0x4000) != 0)
  {
    self->_inCar = *(a3 + 132);
    *&self->_has |= 0x4000u;
    v6 = *(a3 + 68);
    if ((v6 & 0x40) == 0)
    {
LABEL_16:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else if ((v6 & 0x40) == 0)
  {
    goto LABEL_16;
  }

  self->_motionState = *(a3 + 25);
  *&self->_has |= 0x40u;
  if ((*(a3 + 68) & 0x10) != 0)
  {
LABEL_17:
    self->_channel = *(a3 + 18);
    *&self->_has |= 0x10u;
  }

LABEL_18:
  if (*(a3 + 4))
  {
    [(AWDWiFiMetricsManagerSoftError *)self setApOUI:?];
  }

  v7 = *(a3 + 68);
  if ((v7 & 8) != 0)
  {
    self->_batteryChargeLevel = *(a3 + 12);
    *&self->_has |= 8u;
    v7 = *(a3 + 68);
  }

  if (v7 < 0)
  {
    self->_lowPowerMode = *(a3 + 133);
    *&self->_has |= 0x8000u;
  }

  chipCounters = self->_chipCounters;
  v9 = *(a3 + 10);
  if (chipCounters)
  {
    if (v9)
    {
      [(AWDWiFiMetricsManagerChipCounters *)chipCounters mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(AWDWiFiMetricsManagerSoftError *)self setChipCounters:?];
  }

  btCoexStats = self->_btCoexStats;
  v11 = *(a3 + 8);
  if (btCoexStats)
  {
    if (v11)
    {
      [(AWDWiFiMetricsManagerBTCoexStats *)btCoexStats mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(AWDWiFiMetricsManagerSoftError *)self setBtCoexStats:?];
  }

  btCoexModeChange = self->_btCoexModeChange;
  v13 = *(a3 + 7);
  if (btCoexModeChange)
  {
    if (v13)
    {
      [(AWDWiFiMetricsManagerBTCoexModeChange *)btCoexModeChange mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(AWDWiFiMetricsManagerSoftError *)self setBtCoexModeChange:?];
  }

  if ((*(a3 + 68) & 0x20) != 0)
  {
    self->_lastSoftErrorUserFeedbk = *(a3 + 24);
    *&self->_has |= 0x20u;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = *(a3 + 11);
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v21;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(AWDWiFiMetricsManagerSoftError *)self addChipCountersPerSlice:*(*(&v20 + 1) + 8 * i)];
      }

      v16 = [v14 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x29EDCA608];
}

@end