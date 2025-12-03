@interface AWDScanStatsPerSlice
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)numChanScannedAtIndex:(unint64_t)index;
- (unsigned)numScanBlankedAtIndex:(unint64_t)index;
- (unsigned)numScanModeAtIndex:(unint64_t)index;
- (void)addScanObject:(id)object;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAvgAgeScan:(BOOL)scan;
- (void)setHasNumScanWifiCritical:(BOOL)critical;
- (void)writeTo:(id)to;
@end

@implementation AWDScanStatsPerSlice

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  [(AWDScanStatsPerSlice *)self setScanObjects:0];
  v3.receiver = self;
  v3.super_class = AWDScanStatsPerSlice;
  [(AWDScanStatsPerSlice *)&v3 dealloc];
}

- (void)setHasNumScanWifiCritical:(BOOL)critical
{
  if (critical)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasAvgAgeScan:(BOOL)scan
{
  if (scan)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)numChanScannedAtIndex:(unint64_t)index
{
  p_numChanScanneds = &self->_numChanScanneds;
  count = self->_numChanScanneds.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_numChanScanneds->list[index];
}

- (unsigned)numScanModeAtIndex:(unint64_t)index
{
  p_numScanModes = &self->_numScanModes;
  count = self->_numScanModes.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_numScanModes->list[index];
}

- (unsigned)numScanBlankedAtIndex:(unint64_t)index
{
  p_numScanBlankeds = &self->_numScanBlankeds;
  count = self->_numScanBlankeds.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_numScanBlankeds->list[index];
}

- (void)addScanObject:(id)object
{
  scanObjects = self->_scanObjects;
  if (!scanObjects)
  {
    scanObjects = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_scanObjects = scanObjects;
  }

  [(NSMutableArray *)scanObjects addObject:object];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDScanStatsPerSlice;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDScanStatsPerSlice description](&v3, sel_description), -[AWDScanStatsPerSlice dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_numAbort), @"num_abort"}];
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numScanWifiCritical), @"num_scan_wifi_critical"}];
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_avgAgeScan), @"avg_age_scan"}];
  }

LABEL_5:
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"num_chan_scanned"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"num_scan_mode"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"num_scan_blanked"];
  if ([(NSMutableArray *)self->_scanObjects count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_scanObjects, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    scanObjects = self->_scanObjects;
    v7 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(scanObjects);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"scan_object"];
  }

  v11 = *MEMORY[0x29EDCA608];
  return dictionary;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    numAbort = self->_numAbort;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  numScanWifiCritical = self->_numScanWifiCritical;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    avgAgeScan = self->_avgAgeScan;
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
  if (self->_numChanScanneds.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_numChanScanneds.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_numChanScanneds.count);
  }

  if (self->_numScanModes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_numScanModes.list[v8];
      PBDataWriterWriteUint32Field();
      ++v8;
    }

    while (v8 < self->_numScanModes.count);
  }

  if (self->_numScanBlankeds.count)
  {
    v10 = 0;
    do
    {
      v11 = self->_numScanBlankeds.list[v10];
      PBDataWriterWriteUint32Field();
      ++v10;
    }

    while (v10 < self->_numScanBlankeds.count);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  scanObjects = self->_scanObjects;
  v13 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(scanObjects);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v14 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_23:
    *(to + 23) = self->_numScanWifiCritical;
    *(to + 104) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 10) = self->_numAbort;
  *(to + 104) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_23;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(to + 22) = self->_avgAgeScan;
    *(to + 104) |= 2u;
  }

LABEL_5:
  if ([(AWDScanStatsPerSlice *)self numChanScannedsCount])
  {
    [to clearNumChanScanneds];
    numChanScannedsCount = [(AWDScanStatsPerSlice *)self numChanScannedsCount];
    if (numChanScannedsCount)
    {
      v7 = numChanScannedsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addNumChanScanned:{-[AWDScanStatsPerSlice numChanScannedAtIndex:](self, "numChanScannedAtIndex:", i)}];
      }
    }
  }

  if ([(AWDScanStatsPerSlice *)self numScanModesCount])
  {
    [to clearNumScanModes];
    numScanModesCount = [(AWDScanStatsPerSlice *)self numScanModesCount];
    if (numScanModesCount)
    {
      v10 = numScanModesCount;
      for (j = 0; j != v10; ++j)
      {
        [to addNumScanMode:{-[AWDScanStatsPerSlice numScanModeAtIndex:](self, "numScanModeAtIndex:", j)}];
      }
    }
  }

  if ([(AWDScanStatsPerSlice *)self numScanBlankedsCount])
  {
    [to clearNumScanBlankeds];
    numScanBlankedsCount = [(AWDScanStatsPerSlice *)self numScanBlankedsCount];
    if (numScanBlankedsCount)
    {
      v13 = numScanBlankedsCount;
      for (k = 0; k != v13; ++k)
      {
        [to addNumScanBlanked:{-[AWDScanStatsPerSlice numScanBlankedAtIndex:](self, "numScanBlankedAtIndex:", k)}];
      }
    }
  }

  if ([(AWDScanStatsPerSlice *)self scanObjectsCount])
  {
    [to clearScanObjects];
    scanObjectsCount = [(AWDScanStatsPerSlice *)self scanObjectsCount];
    if (scanObjectsCount)
    {
      v16 = scanObjectsCount;
      for (m = 0; m != v16; ++m)
      {
        [to addScanObject:{-[AWDScanStatsPerSlice scanObjectAtIndex:](self, "scanObjectAtIndex:", m)}];
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
  if (has)
  {
    *(v5 + 80) = self->_numAbort;
    *(v5 + 104) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 92) = self->_numScanWifiCritical;
  *(v5 + 104) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v5 + 88) = self->_avgAgeScan;
    *(v5 + 104) |= 2u;
  }

LABEL_5:
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  scanObjects = self->_scanObjects;
  v9 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(scanObjects);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:zone];
        [v6 addScanObject:v13];
      }

      v10 = [(NSMutableArray *)scanObjects countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 104);
    if (*&self->_has)
    {
      if ((*(equal + 104) & 1) == 0 || self->_numAbort != *(equal + 10))
      {
        goto LABEL_22;
      }
    }

    else if (*(equal + 104))
    {
LABEL_22:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 104) & 4) == 0 || self->_numScanWifiCritical != *(equal + 23))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 104) & 4) != 0)
    {
      goto LABEL_22;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 104) & 2) == 0 || self->_avgAgeScan != *(equal + 22))
      {
        goto LABEL_22;
      }
    }

    else if ((*(equal + 104) & 2) != 0)
    {
      goto LABEL_22;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        IsEqual = PBRepeatedUInt32IsEqual();
        if (IsEqual)
        {
          scanObjects = self->_scanObjects;
          if (scanObjects | *(equal + 12))
          {

            LOBYTE(IsEqual) = [(NSMutableArray *)scanObjects isEqual:?];
          }

          else
          {
            LOBYTE(IsEqual) = 1;
          }
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_numAbort;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_numScanWifiCritical;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_avgAgeScan;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ PBRepeatedUInt32Hash();
  v7 = PBRepeatedUInt32Hash();
  v8 = v6 ^ v7 ^ PBRepeatedUInt32Hash();
  return v8 ^ [(NSMutableArray *)self->_scanObjects hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *(from + 104);
  if (v5)
  {
    self->_numAbort = *(from + 10);
    *&self->_has |= 1u;
    v5 = *(from + 104);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 104) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_numScanWifiCritical = *(from + 23);
  *&self->_has |= 4u;
  if ((*(from + 104) & 2) != 0)
  {
LABEL_4:
    self->_avgAgeScan = *(from + 22);
    *&self->_has |= 2u;
  }

LABEL_5:
  numChanScannedsCount = [from numChanScannedsCount];
  if (numChanScannedsCount)
  {
    v7 = numChanScannedsCount;
    for (i = 0; i != v7; ++i)
    {
      -[AWDScanStatsPerSlice addNumChanScanned:](self, "addNumChanScanned:", [from numChanScannedAtIndex:i]);
    }
  }

  numScanModesCount = [from numScanModesCount];
  if (numScanModesCount)
  {
    v10 = numScanModesCount;
    for (j = 0; j != v10; ++j)
    {
      -[AWDScanStatsPerSlice addNumScanMode:](self, "addNumScanMode:", [from numScanModeAtIndex:j]);
    }
  }

  numScanBlankedsCount = [from numScanBlankedsCount];
  if (numScanBlankedsCount)
  {
    v13 = numScanBlankedsCount;
    for (k = 0; k != v13; ++k)
    {
      -[AWDScanStatsPerSlice addNumScanBlanked:](self, "addNumScanBlanked:", [from numScanBlankedAtIndex:k]);
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = *(from + 12);
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      for (m = 0; m != v17; ++m)
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(AWDScanStatsPerSlice *)self addScanObject:*(*(&v21 + 1) + 8 * m)];
      }

      v17 = [v15 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x29EDCA608];
}

@end