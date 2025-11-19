@interface AWDWiFiCLTMSliceSpecific
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)temperatureBucketedAtIndex:(unint64_t)a3;
- (int)txPowerBackoffBucketedAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (unsigned)batteryVoltageBucketedAtIndex:(unint64_t)a3;
- (unsigned)cltmIndexBucketedAtIndex:(unint64_t)a3;
- (unsigned)numActiveChainsBucketedAtIndex:(unint64_t)a3;
- (unsigned)ppmBucketedAtIndex:(unint64_t)a3;
- (unsigned)txDutyCycleBucketedAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBatteryVoltage:(BOOL)a3;
- (void)setHasCltmIndex:(BOOL)a3;
- (void)setHasNumActiveChains:(BOOL)a3;
- (void)setHasPpm:(BOOL)a3;
- (void)setHasTemperature:(BOOL)a3;
- (void)setHasTxDutyCycle:(BOOL)a3;
- (void)setHasTxPowerBackoff:(BOOL)a3;
- (void)setHasUpdateCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiCLTMSliceSpecific

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiCLTMSliceSpecific;
  [(AWDWiFiCLTMSliceSpecific *)&v3 dealloc];
}

- (void)setHasTxDutyCycle:(BOOL)a3
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

- (void)setHasTxPowerBackoff:(BOOL)a3
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

- (void)setHasNumActiveChains:(BOOL)a3
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

- (void)setHasTemperature:(BOOL)a3
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

- (void)setHasBatteryVoltage:(BOOL)a3
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

- (unsigned)txDutyCycleBucketedAtIndex:(unint64_t)a3
{
  p_txDutyCycleBucketeds = &self->_txDutyCycleBucketeds;
  count = self->_txDutyCycleBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txDutyCycleBucketeds->list[a3];
}

- (int)txPowerBackoffBucketedAtIndex:(unint64_t)a3
{
  p_txPowerBackoffBucketeds = &self->_txPowerBackoffBucketeds;
  count = self->_txPowerBackoffBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_txPowerBackoffBucketeds->list[a3];
}

- (unsigned)numActiveChainsBucketedAtIndex:(unint64_t)a3
{
  p_numActiveChainsBucketeds = &self->_numActiveChainsBucketeds;
  count = self->_numActiveChainsBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_numActiveChainsBucketeds->list[a3];
}

- (int)temperatureBucketedAtIndex:(unint64_t)a3
{
  p_temperatureBucketeds = &self->_temperatureBucketeds;
  count = self->_temperatureBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_temperatureBucketeds->list[a3];
}

- (unsigned)batteryVoltageBucketedAtIndex:(unint64_t)a3
{
  p_batteryVoltageBucketeds = &self->_batteryVoltageBucketeds;
  count = self->_batteryVoltageBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_batteryVoltageBucketeds->list[a3];
}

- (void)setHasCltmIndex:(BOOL)a3
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

- (void)setHasPpm:(BOOL)a3
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

- (void)setHasUpdateCount:(BOOL)a3
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

- (unsigned)cltmIndexBucketedAtIndex:(unint64_t)a3
{
  p_cltmIndexBucketeds = &self->_cltmIndexBucketeds;
  count = self->_cltmIndexBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_cltmIndexBucketeds->list[a3];
}

- (unsigned)ppmBucketedAtIndex:(unint64_t)a3
{
  p_ppmBucketeds = &self->_ppmBucketeds;
  count = self->_ppmBucketeds.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_ppmBucketeds->list[a3];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiCLTMSliceSpecific;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiCLTMSliceSpecific description](&v3, sel_description), -[AWDWiFiCLTMSliceSpecific dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_txDutyCycle), @"txDutyCycle"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_txPowerBackoff), @"txPowerBackoff"}];
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numActiveChains), @"numActiveChains"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_temperature), @"temperature"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_batteryVoltage), @"batteryVoltage"}];
  }

LABEL_8:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"txDutyCycleBucketed"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"txPowerBackoffBucketed"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"numActiveChainsBucketed"];
  [v3 setObject:PBRepeatedInt32NSArray() forKey:@"temperatureBucketed"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"batteryVoltageBucketed"];
  v5 = self->_has;
  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ppm), @"ppm"}];
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_cltmIndex), @"cltmIndex"}];
  v5 = self->_has;
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v5 & 2) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_updateCount), @"updateCount"}];
  }

LABEL_12:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"cltmIndexBucketed"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"ppmBucketed"];
  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  txDutyCycle = self->_txDutyCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  txPowerBackoff = self->_txPowerBackoff;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  numActiveChains = self->_numActiveChains;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_38:
  temperature = self->_temperature;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    batteryVoltage = self->_batteryVoltage;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_txDutyCycleBucketeds.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_txDutyCycleBucketeds.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_txDutyCycleBucketeds.count);
  }

  if (self->_txPowerBackoffBucketeds.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_txPowerBackoffBucketeds.list[v8];
      PBDataWriterWriteInt32Field();
      ++v8;
    }

    while (v8 < self->_txPowerBackoffBucketeds.count);
  }

  if (self->_numActiveChainsBucketeds.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_numActiveChainsBucketeds.list[v10];
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < self->_numActiveChainsBucketeds.count);
  }

  if (self->_temperatureBucketeds.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_temperatureBucketeds.list[v12];
      PBDataWriterWriteInt32Field();
      ++v12;
    }

    while (v12 < self->_temperatureBucketeds.count);
  }

  if (self->_batteryVoltageBucketeds.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_batteryVoltageBucketeds.list[v14];
      PBDataWriterWriteUint32Field();
      ++v14;
    }

    while (v14 < self->_batteryVoltageBucketeds.count);
  }

  v16 = self->_has;
  if ((v16 & 8) != 0)
  {
    cltmIndex = self->_cltmIndex;
    PBDataWriterWriteUint32Field();
    v16 = self->_has;
    if ((v16 & 0x20) == 0)
    {
LABEL_25:
      if ((v16 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v16 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  ppm = self->_ppm;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_26:
    updateCount = self->_updateCount;
    PBDataWriterWriteUint64Field();
  }

LABEL_27:
  if (self->_cltmIndexBucketeds.count)
  {
    v18 = 0;
    do
    {
      v19 = self->_cltmIndexBucketeds.list[v18];
      PBDataWriterWriteUint32Field();
      ++v18;
    }

    while (v18 < self->_cltmIndexBucketeds.count);
  }

  p_ppmBucketeds = &self->_ppmBucketeds;
  if (p_ppmBucketeds->count)
  {
    v21 = 0;
    do
    {
      v22 = p_ppmBucketeds->list[v21];
      PBDataWriterWriteUint32Field();
      ++v21;
    }

    while (v21 < p_ppmBucketeds->count);
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if (has)
  {
    *(a3 + 22) = self->_timestamp;
    *(a3 + 110) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_43;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 53) = self->_txDutyCycle;
  *(a3 + 110) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 54) = self->_txPowerBackoff;
  *(a3 + 110) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

LABEL_45:
    *(a3 + 52) = self->_temperature;
    *(a3 + 110) |= 0x40u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_44:
  *(a3 + 50) = self->_numActiveChains;
  *(a3 + 110) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    goto LABEL_45;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(a3 + 48) = self->_batteryVoltage;
    *(a3 + 110) |= 4u;
  }

LABEL_8:
  if ([(AWDWiFiCLTMSliceSpecific *)self txDutyCycleBucketedsCount])
  {
    [a3 clearTxDutyCycleBucketeds];
    v6 = [(AWDWiFiCLTMSliceSpecific *)self txDutyCycleBucketedsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addTxDutyCycleBucketed:{-[AWDWiFiCLTMSliceSpecific txDutyCycleBucketedAtIndex:](self, "txDutyCycleBucketedAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiCLTMSliceSpecific *)self txPowerBackoffBucketedsCount])
  {
    [a3 clearTxPowerBackoffBucketeds];
    v9 = [(AWDWiFiCLTMSliceSpecific *)self txPowerBackoffBucketedsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [a3 addTxPowerBackoffBucketed:{-[AWDWiFiCLTMSliceSpecific txPowerBackoffBucketedAtIndex:](self, "txPowerBackoffBucketedAtIndex:", j)}];
      }
    }
  }

  if ([(AWDWiFiCLTMSliceSpecific *)self numActiveChainsBucketedsCount])
  {
    [a3 clearNumActiveChainsBucketeds];
    v12 = [(AWDWiFiCLTMSliceSpecific *)self numActiveChainsBucketedsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [a3 addNumActiveChainsBucketed:{-[AWDWiFiCLTMSliceSpecific numActiveChainsBucketedAtIndex:](self, "numActiveChainsBucketedAtIndex:", k)}];
      }
    }
  }

  if ([(AWDWiFiCLTMSliceSpecific *)self temperatureBucketedsCount])
  {
    [a3 clearTemperatureBucketeds];
    v15 = [(AWDWiFiCLTMSliceSpecific *)self temperatureBucketedsCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        [a3 addTemperatureBucketed:{-[AWDWiFiCLTMSliceSpecific temperatureBucketedAtIndex:](self, "temperatureBucketedAtIndex:", m)}];
      }
    }
  }

  if ([(AWDWiFiCLTMSliceSpecific *)self batteryVoltageBucketedsCount])
  {
    [a3 clearBatteryVoltageBucketeds];
    v18 = [(AWDWiFiCLTMSliceSpecific *)self batteryVoltageBucketedsCount];
    if (v18)
    {
      v19 = v18;
      for (n = 0; n != v19; ++n)
      {
        [a3 addBatteryVoltageBucketed:{-[AWDWiFiCLTMSliceSpecific batteryVoltageBucketedAtIndex:](self, "batteryVoltageBucketedAtIndex:", n)}];
      }
    }
  }

  v21 = self->_has;
  if ((v21 & 8) == 0)
  {
    if ((v21 & 0x20) == 0)
    {
      goto LABEL_30;
    }

LABEL_48:
    *(a3 + 51) = self->_ppm;
    *(a3 + 110) |= 0x20u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  *(a3 + 49) = self->_cltmIndex;
  *(a3 + 110) |= 8u;
  v21 = self->_has;
  if ((v21 & 0x20) != 0)
  {
    goto LABEL_48;
  }

LABEL_30:
  if ((v21 & 2) != 0)
  {
LABEL_31:
    *(a3 + 23) = self->_updateCount;
    *(a3 + 110) |= 2u;
  }

LABEL_32:
  if ([(AWDWiFiCLTMSliceSpecific *)self cltmIndexBucketedsCount])
  {
    [a3 clearCltmIndexBucketeds];
    v22 = [(AWDWiFiCLTMSliceSpecific *)self cltmIndexBucketedsCount];
    if (v22)
    {
      v23 = v22;
      for (ii = 0; ii != v23; ++ii)
      {
        [a3 addCltmIndexBucketed:{-[AWDWiFiCLTMSliceSpecific cltmIndexBucketedAtIndex:](self, "cltmIndexBucketedAtIndex:", ii)}];
      }
    }
  }

  if ([(AWDWiFiCLTMSliceSpecific *)self ppmBucketedsCount])
  {
    [a3 clearPpmBucketeds];
    v25 = [(AWDWiFiCLTMSliceSpecific *)self ppmBucketedsCount];
    if (v25)
    {
      v26 = v25;
      for (jj = 0; jj != v26; ++jj)
      {
        [a3 addPpmBucketed:{-[AWDWiFiCLTMSliceSpecific ppmBucketedAtIndex:](self, "ppmBucketedAtIndex:", jj)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  has = self->_has;
  if (has)
  {
    *(v4 + 176) = self->_timestamp;
    *(v4 + 220) |= 1u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 212) = self->_txDutyCycle;
  *(v4 + 220) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v4 + 216) = self->_txPowerBackoff;
  *(v4 + 220) |= 0x100u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 200) = self->_numActiveChains;
  *(v4 + 220) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_6:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_17:
  *(v4 + 208) = self->_temperature;
  *(v4 + 220) |= 0x40u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_7:
    *(v4 + 192) = self->_batteryVoltage;
    *(v4 + 220) |= 4u;
  }

LABEL_8:
  PBRepeatedUInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedUInt32Copy();
  v7 = self->_has;
  if ((v7 & 8) == 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    *(v5 + 204) = self->_ppm;
    *(v5 + 220) |= 0x20u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v5 + 196) = self->_cltmIndex;
  *(v5 + 220) |= 8u;
  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v7 & 2) != 0)
  {
LABEL_11:
    *(v5 + 184) = self->_updateCount;
    *(v5 + 220) |= 2u;
  }

LABEL_12:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  if (![a3 isMemberOfClass:objc_opt_class()])
  {
    return 0;
  }

  has = self->_has;
  v6 = *(a3 + 110);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(a3 + 22))
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_txDutyCycle != *(a3 + 53))
    {
      return 0;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    return 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(a3 + 110) & 0x100) == 0 || self->_txPowerBackoff != *(a3 + 54))
    {
      return 0;
    }
  }

  else if ((*(a3 + 110) & 0x100) != 0)
  {
    return 0;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_numActiveChains != *(a3 + 50))
    {
      return 0;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    return 0;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_temperature != *(a3 + 52))
    {
      return 0;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    return 0;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_batteryVoltage != *(a3 + 48))
    {
      return 0;
    }
  }

  else if ((v6 & 4) != 0)
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedUInt32IsEqual() || !PBRepeatedInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  v7 = self->_has;
  v8 = *(a3 + 110);
  if ((v7 & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_cltmIndex != *(a3 + 49))
    {
      return 0;
    }
  }

  else if ((v8 & 8) != 0)
  {
    return 0;
  }

  if ((v7 & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_ppm != *(a3 + 51))
    {
      return 0;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    return 0;
  }

  if ((v7 & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_updateCount != *(a3 + 23))
    {
      return 0;
    }
  }

  else if ((v8 & 2) != 0)
  {
    return 0;
  }

  if (!PBRepeatedUInt32IsEqual())
  {
    return 0;
  }

  return PBRepeatedUInt32IsEqual();
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v21 = 2654435761u * self->_timestamp;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v20 = 2654435761 * self->_txDutyCycle;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v21 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_4:
    v19 = 2654435761 * self->_txPowerBackoff;
    if ((has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v19 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_5:
    v4 = 2654435761 * self->_numActiveChains;
    if ((has & 0x40) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v5 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v4 = 0;
  if ((has & 0x40) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v5 = 2654435761 * self->_temperature;
  if ((has & 4) != 0)
  {
LABEL_7:
    v6 = 2654435761 * self->_batteryVoltage;
    goto LABEL_14;
  }

LABEL_13:
  v6 = 0;
LABEL_14:
  v7 = PBRepeatedUInt32Hash();
  v8 = PBRepeatedInt32Hash();
  v9 = PBRepeatedUInt32Hash();
  v10 = PBRepeatedInt32Hash();
  v11 = PBRepeatedUInt32Hash();
  v12 = self->_has;
  if ((v12 & 8) == 0)
  {
    v13 = 0;
    if ((v12 & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v14 = 0;
    if ((v12 & 2) != 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = 0;
    goto LABEL_21;
  }

  v13 = 2654435761 * self->_cltmIndex;
  if ((v12 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v14 = 2654435761 * self->_ppm;
  if ((v12 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  v15 = 2654435761u * self->_updateCount;
LABEL_21:
  v16 = v20 ^ v21 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13;
  v17 = v14 ^ v15 ^ PBRepeatedUInt32Hash();
  return v16 ^ v17 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 110);
  if (v5)
  {
    self->_timestamp = *(a3 + 22);
    *&self->_has |= 1u;
    v5 = *(a3 + 110);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_txDutyCycle = *(a3 + 53);
  *&self->_has |= 0x80u;
  v5 = *(a3 + 110);
  if ((v5 & 0x100) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_txPowerBackoff = *(a3 + 54);
  *&self->_has |= 0x100u;
  v5 = *(a3 + 110);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_numActiveChains = *(a3 + 50);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 110);
  if ((v5 & 0x40) == 0)
  {
LABEL_6:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_38:
  self->_temperature = *(a3 + 52);
  *&self->_has |= 0x40u;
  if ((*(a3 + 110) & 4) != 0)
  {
LABEL_7:
    self->_batteryVoltage = *(a3 + 48);
    *&self->_has |= 4u;
  }

LABEL_8:
  v6 = [a3 txDutyCycleBucketedsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWiFiCLTMSliceSpecific addTxDutyCycleBucketed:](self, "addTxDutyCycleBucketed:", [a3 txDutyCycleBucketedAtIndex:i]);
    }
  }

  v9 = [a3 txPowerBackoffBucketedsCount];
  if (v9)
  {
    v10 = v9;
    for (j = 0; j != v10; ++j)
    {
      -[AWDWiFiCLTMSliceSpecific addTxPowerBackoffBucketed:](self, "addTxPowerBackoffBucketed:", [a3 txPowerBackoffBucketedAtIndex:j]);
    }
  }

  v12 = [a3 numActiveChainsBucketedsCount];
  if (v12)
  {
    v13 = v12;
    for (k = 0; k != v13; ++k)
    {
      -[AWDWiFiCLTMSliceSpecific addNumActiveChainsBucketed:](self, "addNumActiveChainsBucketed:", [a3 numActiveChainsBucketedAtIndex:k]);
    }
  }

  v15 = [a3 temperatureBucketedsCount];
  if (v15)
  {
    v16 = v15;
    for (m = 0; m != v16; ++m)
    {
      -[AWDWiFiCLTMSliceSpecific addTemperatureBucketed:](self, "addTemperatureBucketed:", [a3 temperatureBucketedAtIndex:m]);
    }
  }

  v18 = [a3 batteryVoltageBucketedsCount];
  if (v18)
  {
    v19 = v18;
    for (n = 0; n != v19; ++n)
    {
      -[AWDWiFiCLTMSliceSpecific addBatteryVoltageBucketed:](self, "addBatteryVoltageBucketed:", [a3 batteryVoltageBucketedAtIndex:n]);
    }
  }

  v21 = *(a3 + 110);
  if ((v21 & 8) != 0)
  {
    self->_cltmIndex = *(a3 + 49);
    *&self->_has |= 8u;
    v21 = *(a3 + 110);
    if ((v21 & 0x20) == 0)
    {
LABEL_25:
      if ((v21 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v21 & 0x20) == 0)
  {
    goto LABEL_25;
  }

  self->_ppm = *(a3 + 51);
  *&self->_has |= 0x20u;
  if ((*(a3 + 110) & 2) != 0)
  {
LABEL_26:
    self->_updateCount = *(a3 + 23);
    *&self->_has |= 2u;
  }

LABEL_27:
  v22 = [a3 cltmIndexBucketedsCount];
  if (v22)
  {
    v23 = v22;
    for (ii = 0; ii != v23; ++ii)
    {
      -[AWDWiFiCLTMSliceSpecific addCltmIndexBucketed:](self, "addCltmIndexBucketed:", [a3 cltmIndexBucketedAtIndex:ii]);
    }
  }

  v25 = [a3 ppmBucketedsCount];
  if (v25)
  {
    v26 = v25;
    for (jj = 0; jj != v26; ++jj)
    {
      -[AWDWiFiCLTMSliceSpecific addPpmBucketed:](self, "addPpmBucketed:", [a3 ppmBucketedAtIndex:jj]);
    }
  }
}

@end