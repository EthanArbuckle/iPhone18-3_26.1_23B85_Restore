@interface AWDWiFiMetricsManagerAutoJoinRecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)scannedNetworksExcludedFromAJDueToBlacklistReasonCountsAtIndex:(unint64_t)a3;
- (void)addNetworksExcludedFromAJDueToThresholds:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasBandExclusionReason:(BOOL)a3;
- (void)setHasBandScanCount24:(BOOL)a3;
- (void)setHasBandScanCount5:(BOOL)a3;
- (void)setHasCcaBitmap:(BOOL)a3;
- (void)setHasEndedTimestamp:(BOOL)a3;
- (void)setHasEnteredKnownNetworkGeotagLocationTimeStamp:(BOOL)a3;
- (void)setHasKnownNetworksFoundInScans:(BOOL)a3;
- (void)setHasLastScanError:(BOOL)a3;
- (void)setHasLastScanType:(BOOL)a3;
- (void)setHasNwExclusionCount:(BOOL)a3;
- (void)setHasResetReason:(BOOL)a3;
- (void)setHasResetTypes:(BOOL)a3;
- (void)setHasRetryIndex:(BOOL)a3;
- (void)setHasRssiBitmap:(BOOL)a3;
- (void)setHasScanResultFound:(BOOL)a3;
- (void)setHasScanTypes:(BOOL)a3;
- (void)setHasState:(BOOL)a3;
- (void)setHasTimestamp:(BOOL)a3;
- (void)setHasWakeTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDWiFiMetricsManagerAutoJoinRecord

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  [(AWDWiFiMetricsManagerAutoJoinRecord *)self setNetworksExcludedFromAJDueToThresholds:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAutoJoinRecord;
  [(AWDWiFiMetricsManagerAutoJoinRecord *)&v3 dealloc];
}

- (void)setHasTimestamp:(BOOL)a3
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

- (void)setHasEndedTimestamp:(BOOL)a3
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

- (void)setHasWakeTimestamp:(BOOL)a3
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

- (void)setHasEnteredKnownNetworkGeotagLocationTimeStamp:(BOOL)a3
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

- (void)setHasState:(BOOL)a3
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

- (void)setHasRetryIndex:(BOOL)a3
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

- (unsigned)scannedNetworksExcludedFromAJDueToBlacklistReasonCountsAtIndex:(unint64_t)a3
{
  p_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts = &self->_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts;
  count = self->_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts->list[a3];
}

- (void)setHasScanTypes:(BOOL)a3
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

- (void)setHasLastScanType:(BOOL)a3
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

- (void)setHasResetTypes:(BOOL)a3
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

- (void)setHasResetReason:(BOOL)a3
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

- (void)setHasScanResultFound:(BOOL)a3
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

- (void)setHasKnownNetworksFoundInScans:(BOOL)a3
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

- (void)setHasLastScanError:(BOOL)a3
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

- (void)setHasRssiBitmap:(BOOL)a3
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

- (void)setHasCcaBitmap:(BOOL)a3
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

- (void)setHasBandScanCount24:(BOOL)a3
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

- (void)setHasBandScanCount5:(BOOL)a3
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

- (void)setHasNwExclusionCount:(BOOL)a3
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

- (void)addNetworksExcludedFromAJDueToThresholds:(id)a3
{
  networksExcludedFromAJDueToThresholds = self->_networksExcludedFromAJDueToThresholds;
  if (!networksExcludedFromAJDueToThresholds)
  {
    networksExcludedFromAJDueToThresholds = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_networksExcludedFromAJDueToThresholds = networksExcludedFromAJDueToThresholds;
  }

  [(NSMutableArray *)networksExcludedFromAJDueToThresholds addObject:a3];
}

- (void)setHasBandExclusionReason:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAutoJoinRecord;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerAutoJoinRecord description](&v3, sel_description), -[AWDWiFiMetricsManagerAutoJoinRecord dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_36;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_beganTimestamp), @"beganTimestamp"}];
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_endedTimestamp), @"endedTimestamp"}];
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_wakeTimestamp), @"wakeTimestamp"}];
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_39;
  }

LABEL_38:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_enteredKnownNetworkGeotagLocationTimeStamp), @"enteredKnownNetworkGeotagLocationTimeStamp"}];
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_39:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_state), @"state"}];
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_8:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_retryIndex), @"retryIndex"}];
  }

LABEL_9:
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"scannedNetworksExcludedFromAJDueToBlacklistReasonCounts"];
  v5 = self->_has;
  if ((*&v5 & 0x40000) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanTypes), @"scanTypes"}];
    v5 = self->_has;
    if ((*&v5 & 0x800) == 0)
    {
LABEL_11:
      if ((*&v5 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v5 & 0x800) == 0)
  {
    goto LABEL_11;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lastScanType), @"lastScanType"}];
  v5 = self->_has;
  if ((*&v5 & 0x4000) == 0)
  {
LABEL_12:
    if ((*&v5 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_44;
  }

LABEL_43:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resetTypes), @"resetTypes"}];
  v5 = self->_has;
  if ((*&v5 & 0x2000) == 0)
  {
LABEL_13:
    if ((*&v5 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_45;
  }

LABEL_44:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_resetReason), @"resetReason"}];
  v5 = self->_has;
  if ((*&v5 & 0x20000) == 0)
  {
LABEL_14:
    if ((*&v5 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

LABEL_45:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_scanResultFound), @"scanResultFound"}];
  v5 = self->_has;
  if ((*&v5 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v5 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_47;
  }

LABEL_46:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_knownNetworksFoundInScans), @"knownNetworksFoundInScans"}];
  v5 = self->_has;
  if ((*&v5 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v5 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_48;
  }

LABEL_47:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_lastScanError), @"lastScanError"}];
  v5 = self->_has;
  if ((*&v5 & 0x10000) == 0)
  {
LABEL_17:
    if ((*&v5 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_49;
  }

LABEL_48:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssiBitmap), @"rssiBitmap"}];
  v5 = self->_has;
  if ((*&v5 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v5 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_50;
  }

LABEL_49:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaBitmap), @"ccaBitmap"}];
  v5 = self->_has;
  if ((*&v5 & 0x40) == 0)
  {
LABEL_19:
    if ((*&v5 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_51;
  }

LABEL_50:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount24), @"bandScanCount24"}];
  v5 = self->_has;
  if ((*&v5 & 0x80) == 0)
  {
LABEL_20:
    if ((*&v5 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_51:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount5), @"bandScanCount5"}];
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_21:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_nwExclusionCount), @"nwExclusionCount"}];
  }

LABEL_22:
  if ([(NSMutableArray *)self->_networksExcludedFromAJDueToThresholds count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_networksExcludedFromAJDueToThresholds, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    networksExcludedFromAJDueToThresholds = self->_networksExcludedFromAJDueToThresholds;
    v8 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(networksExcludedFromAJDueToThresholds);
          }

          [v6 addObject:{objc_msgSend(*(*(&v14 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"networksExcludedFromAJDueToThresholds"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandExclusionReason), @"bandExclusionReason"}];
  }

  v12 = *MEMORY[0x29EDCA608];
  return v3;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  beganTimestamp = self->_beganTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  endedTimestamp = self->_endedTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  wakeTimestamp = self->_wakeTimestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  enteredKnownNetworkGeotagLocationTimeStamp = self->_enteredKnownNetworkGeotagLocationTimeStamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_40:
  state = self->_state;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_8:
    retryIndex = self->_retryIndex;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
  if (self->_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts.list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < self->_scannedNetworksExcludedFromAJDueToBlacklistReasonCounts.count);
  }

  v8 = self->_has;
  if ((*&v8 & 0x40000) != 0)
  {
    scanTypes = self->_scanTypes;
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((*&v8 & 0x800) == 0)
    {
LABEL_14:
      if ((*&v8 & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_14;
  }

  lastScanType = self->_lastScanType;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  resetTypes = self->_resetTypes;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  resetReason = self->_resetReason;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  scanResultFound = self->_scanResultFound;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  knownNetworksFoundInScans = self->_knownNetworksFoundInScans;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  lastScanError = self->_lastScanError;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  rssiBitmap = self->_rssiBitmap;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_21:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  ccaBitmap = self->_ccaBitmap;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_22:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  bandScanCount24 = self->_bandScanCount24;
  PBDataWriterWriteUint32Field();
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_23:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_52:
  bandScanCount5 = self->_bandScanCount5;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_24:
    nwExclusionCount = self->_nwExclusionCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_25:
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  networksExcludedFromAJDueToThresholds = self->_networksExcludedFromAJDueToThresholds;
  v11 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v36;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v36 != v13)
        {
          objc_enumerationMutation(networksExcludedFromAJDueToThresholds);
        }

        v15 = *(*(&v35 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    bandExclusionReason = self->_bandExclusionReason;
    PBDataWriterWriteUint32Field();
  }

  v17 = *MEMORY[0x29EDCA608];
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(a3 + 7) = self->_timestamp;
    *(a3 + 36) |= 8u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_35;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 4) = self->_beganTimestamp;
  *(a3 + 36) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 5) = self->_endedTimestamp;
  *(a3 + 36) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(a3 + 8) = self->_wakeTimestamp;
  *(a3 + 36) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

LABEL_38:
    *(a3 + 35) = self->_state;
    *(a3 + 36) |= 0x80000u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  *(a3 + 6) = self->_enteredKnownNetworkGeotagLocationTimeStamp;
  *(a3 + 36) |= 4u;
  has = self->_has;
  if ((*&has & 0x80000) != 0)
  {
    goto LABEL_38;
  }

LABEL_7:
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    *(a3 + 31) = self->_retryIndex;
    *(a3 + 36) |= 0x8000u;
  }

LABEL_9:
  if ([(AWDWiFiMetricsManagerAutoJoinRecord *)self scannedNetworksExcludedFromAJDueToBlacklistReasonCountsCount])
  {
    [a3 clearScannedNetworksExcludedFromAJDueToBlacklistReasonCounts];
    v6 = [(AWDWiFiMetricsManagerAutoJoinRecord *)self scannedNetworksExcludedFromAJDueToBlacklistReasonCountsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addScannedNetworksExcludedFromAJDueToBlacklistReasonCounts:{-[AWDWiFiMetricsManagerAutoJoinRecord scannedNetworksExcludedFromAJDueToBlacklistReasonCountsAtIndex:](self, "scannedNetworksExcludedFromAJDueToBlacklistReasonCountsAtIndex:", i)}];
      }
    }
  }

  v9 = self->_has;
  if ((*&v9 & 0x40000) != 0)
  {
    *(a3 + 34) = self->_scanTypes;
    *(a3 + 36) |= 0x40000u;
    v9 = self->_has;
    if ((*&v9 & 0x800) == 0)
    {
LABEL_15:
      if ((*&v9 & 0x4000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_42;
    }
  }

  else if ((*&v9 & 0x800) == 0)
  {
    goto LABEL_15;
  }

  *(a3 + 24) = self->_lastScanType;
  *(a3 + 36) |= 0x800u;
  v9 = self->_has;
  if ((*&v9 & 0x4000) == 0)
  {
LABEL_16:
    if ((*&v9 & 0x2000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(a3 + 30) = self->_resetTypes;
  *(a3 + 36) |= 0x4000u;
  v9 = self->_has;
  if ((*&v9 & 0x2000) == 0)
  {
LABEL_17:
    if ((*&v9 & 0x20000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(a3 + 29) = self->_resetReason;
  *(a3 + 36) |= 0x2000u;
  v9 = self->_has;
  if ((*&v9 & 0x20000) == 0)
  {
LABEL_18:
    if ((*&v9 & 0x200) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(a3 + 33) = self->_scanResultFound;
  *(a3 + 36) |= 0x20000u;
  v9 = self->_has;
  if ((*&v9 & 0x200) == 0)
  {
LABEL_19:
    if ((*&v9 & 0x400) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(a3 + 22) = self->_knownNetworksFoundInScans;
  *(a3 + 36) |= 0x200u;
  v9 = self->_has;
  if ((*&v9 & 0x400) == 0)
  {
LABEL_20:
    if ((*&v9 & 0x10000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(a3 + 23) = self->_lastScanError;
  *(a3 + 36) |= 0x400u;
  v9 = self->_has;
  if ((*&v9 & 0x10000) == 0)
  {
LABEL_21:
    if ((*&v9 & 0x100) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(a3 + 32) = self->_rssiBitmap;
  *(a3 + 36) |= 0x10000u;
  v9 = self->_has;
  if ((*&v9 & 0x100) == 0)
  {
LABEL_22:
    if ((*&v9 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(a3 + 21) = self->_ccaBitmap;
  *(a3 + 36) |= 0x100u;
  v9 = self->_has;
  if ((*&v9 & 0x40) == 0)
  {
LABEL_23:
    if ((*&v9 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_50:
    *(a3 + 20) = self->_bandScanCount5;
    *(a3 + 36) |= 0x80u;
    if ((*&self->_has & 0x1000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_49:
  *(a3 + 19) = self->_bandScanCount24;
  *(a3 + 36) |= 0x40u;
  v9 = self->_has;
  if ((*&v9 & 0x80) != 0)
  {
    goto LABEL_50;
  }

LABEL_24:
  if ((*&v9 & 0x1000) != 0)
  {
LABEL_25:
    *(a3 + 28) = self->_nwExclusionCount;
    *(a3 + 36) |= 0x1000u;
  }

LABEL_26:
  if ([(AWDWiFiMetricsManagerAutoJoinRecord *)self networksExcludedFromAJDueToThresholdsCount])
  {
    [a3 clearNetworksExcludedFromAJDueToThresholds];
    v10 = [(AWDWiFiMetricsManagerAutoJoinRecord *)self networksExcludedFromAJDueToThresholdsCount];
    if (v10)
    {
      v11 = v10;
      for (j = 0; j != v11; ++j)
      {
        [a3 addNetworksExcludedFromAJDueToThresholds:{-[AWDWiFiMetricsManagerAutoJoinRecord networksExcludedFromAJDueToThresholdsAtIndex:](self, "networksExcludedFromAJDueToThresholdsAtIndex:", j)}];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(a3 + 18) = self->_bandExclusionReason;
    *(a3 + 36) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    *(v5 + 56) = self->_timestamp;
    *(v5 + 144) |= 8u;
    has = self->_has;
    if ((*&has & 1) == 0)
    {
LABEL_3:
      if ((*&has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_34;
    }
  }

  else if ((*&has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 32) = self->_beganTimestamp;
  *(v5 + 144) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_4:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(v5 + 40) = self->_endedTimestamp;
  *(v5 + 144) |= 2u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_5:
    if ((*&has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 64) = self->_wakeTimestamp;
  *(v5 + 144) |= 0x10u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_6:
    if ((*&has & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 48) = self->_enteredKnownNetworkGeotagLocationTimeStamp;
  *(v5 + 144) |= 4u;
  has = self->_has;
  if ((*&has & 0x80000) == 0)
  {
LABEL_7:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_37:
  *(v5 + 140) = self->_state;
  *(v5 + 144) |= 0x80000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_8:
    *(v5 + 124) = self->_retryIndex;
    *(v5 + 144) |= 0x8000u;
  }

LABEL_9:
  PBRepeatedUInt32Copy();
  v8 = self->_has;
  if ((*&v8 & 0x40000) != 0)
  {
    v6[34] = self->_scanTypes;
    v6[36] |= 0x40000u;
    v8 = self->_has;
    if ((*&v8 & 0x800) == 0)
    {
LABEL_11:
      if ((*&v8 & 0x4000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_41;
    }
  }

  else if ((*&v8 & 0x800) == 0)
  {
    goto LABEL_11;
  }

  v6[24] = self->_lastScanType;
  v6[36] |= 0x800u;
  v8 = self->_has;
  if ((*&v8 & 0x4000) == 0)
  {
LABEL_12:
    if ((*&v8 & 0x2000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

LABEL_41:
  v6[30] = self->_resetTypes;
  v6[36] |= 0x4000u;
  v8 = self->_has;
  if ((*&v8 & 0x2000) == 0)
  {
LABEL_13:
    if ((*&v8 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_43;
  }

LABEL_42:
  v6[29] = self->_resetReason;
  v6[36] |= 0x2000u;
  v8 = self->_has;
  if ((*&v8 & 0x20000) == 0)
  {
LABEL_14:
    if ((*&v8 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_44;
  }

LABEL_43:
  v6[33] = self->_scanResultFound;
  v6[36] |= 0x20000u;
  v8 = self->_has;
  if ((*&v8 & 0x200) == 0)
  {
LABEL_15:
    if ((*&v8 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  v6[22] = self->_knownNetworksFoundInScans;
  v6[36] |= 0x200u;
  v8 = self->_has;
  if ((*&v8 & 0x400) == 0)
  {
LABEL_16:
    if ((*&v8 & 0x10000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  v6[23] = self->_lastScanError;
  v6[36] |= 0x400u;
  v8 = self->_has;
  if ((*&v8 & 0x10000) == 0)
  {
LABEL_17:
    if ((*&v8 & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  v6[32] = self->_rssiBitmap;
  v6[36] |= 0x10000u;
  v8 = self->_has;
  if ((*&v8 & 0x100) == 0)
  {
LABEL_18:
    if ((*&v8 & 0x40) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  v6[21] = self->_ccaBitmap;
  v6[36] |= 0x100u;
  v8 = self->_has;
  if ((*&v8 & 0x40) == 0)
  {
LABEL_19:
    if ((*&v8 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  v6[19] = self->_bandScanCount24;
  v6[36] |= 0x40u;
  v8 = self->_has;
  if ((*&v8 & 0x80) == 0)
  {
LABEL_20:
    if ((*&v8 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_49:
  v6[20] = self->_bandScanCount5;
  v6[36] |= 0x80u;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_21:
    v6[28] = self->_nwExclusionCount;
    v6[36] |= 0x1000u;
  }

LABEL_22:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  networksExcludedFromAJDueToThresholds = self->_networksExcludedFromAJDueToThresholds;
  v10 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(networksExcludedFromAJDueToThresholds);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:a3];
        [v6 addNetworksExcludedFromAJDueToThresholds:v14];
      }

      v11 = [(NSMutableArray *)networksExcludedFromAJDueToThresholds countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v6[18] = self->_bandExclusionReason;
    v6[36] |= 0x20u;
  }

  v15 = *MEMORY[0x29EDCA608];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    has = self->_has;
    v7 = *(a3 + 36);
    if ((*&has & 8) != 0)
    {
      if ((v7 & 8) == 0 || self->_timestamp != *(a3 + 7))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 8) != 0)
    {
LABEL_105:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    if (*&has)
    {
      if ((v7 & 1) == 0 || self->_beganTimestamp != *(a3 + 4))
      {
        goto LABEL_105;
      }
    }

    else if (v7)
    {
      goto LABEL_105;
    }

    if ((*&has & 2) != 0)
    {
      if ((v7 & 2) == 0 || self->_endedTimestamp != *(a3 + 5))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 2) != 0)
    {
      goto LABEL_105;
    }

    if ((*&has & 0x10) != 0)
    {
      if ((v7 & 0x10) == 0 || self->_wakeTimestamp != *(a3 + 8))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 0x10) != 0)
    {
      goto LABEL_105;
    }

    if ((*&has & 4) != 0)
    {
      if ((v7 & 4) == 0 || self->_enteredKnownNetworkGeotagLocationTimeStamp != *(a3 + 6))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 4) != 0)
    {
      goto LABEL_105;
    }

    if ((*&has & 0x80000) != 0)
    {
      if ((v7 & 0x80000) == 0 || self->_state != *(a3 + 35))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 0x80000) != 0)
    {
      goto LABEL_105;
    }

    if ((*&has & 0x8000) != 0)
    {
      if ((v7 & 0x8000) == 0 || self->_retryIndex != *(a3 + 31))
      {
        goto LABEL_105;
      }
    }

    else if ((v7 & 0x8000) != 0)
    {
      goto LABEL_105;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      v8 = self->_has;
      v9 = *(a3 + 36);
      if ((*&v8 & 0x40000) != 0)
      {
        if ((v9 & 0x40000) == 0 || self->_scanTypes != *(a3 + 34))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x40000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x800) != 0)
      {
        if ((v9 & 0x800) == 0 || self->_lastScanType != *(a3 + 24))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x800) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x4000) != 0)
      {
        if ((v9 & 0x4000) == 0 || self->_resetTypes != *(a3 + 30))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x4000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x2000) != 0)
      {
        if ((v9 & 0x2000) == 0 || self->_resetReason != *(a3 + 29))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x2000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x20000) != 0)
      {
        if ((v9 & 0x20000) == 0 || self->_scanResultFound != *(a3 + 33))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x20000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x200) != 0)
      {
        if ((v9 & 0x200) == 0 || self->_knownNetworksFoundInScans != *(a3 + 22))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x200) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x400) != 0)
      {
        if ((v9 & 0x400) == 0 || self->_lastScanError != *(a3 + 23))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x400) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x10000) != 0)
      {
        if ((v9 & 0x10000) == 0 || self->_rssiBitmap != *(a3 + 32))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x10000) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x100) != 0)
      {
        if ((v9 & 0x100) == 0 || self->_ccaBitmap != *(a3 + 21))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x100) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x40) != 0)
      {
        if ((v9 & 0x40) == 0 || self->_bandScanCount24 != *(a3 + 19))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x40) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x80) != 0)
      {
        if ((v9 & 0x80) == 0 || self->_bandScanCount5 != *(a3 + 20))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x80) != 0)
      {
        goto LABEL_105;
      }

      if ((*&v8 & 0x1000) != 0)
      {
        if ((v9 & 0x1000) == 0 || self->_nwExclusionCount != *(a3 + 28))
        {
          goto LABEL_105;
        }
      }

      else if ((v9 & 0x1000) != 0)
      {
        goto LABEL_105;
      }

      networksExcludedFromAJDueToThresholds = self->_networksExcludedFromAJDueToThresholds;
      if (networksExcludedFromAJDueToThresholds | *(a3 + 13))
      {
        IsEqual = [(NSMutableArray *)networksExcludedFromAJDueToThresholds isEqual:?];
        if (!IsEqual)
        {
          return IsEqual;
        }

        v8 = self->_has;
      }

      v11 = *(a3 + 36);
      LOBYTE(IsEqual) = (v11 & 0x20) == 0;
      if ((*&v8 & 0x20) != 0)
      {
        if ((v11 & 0x20) == 0 || self->_bandExclusionReason != *(a3 + 18))
        {
          goto LABEL_105;
        }

        LOBYTE(IsEqual) = 1;
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((*&has & 8) != 0)
  {
    v27 = 2654435761u * self->_timestamp;
    if (*&has)
    {
LABEL_3:
      v26 = 2654435761u * self->_beganTimestamp;
      if ((*&has & 2) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v27 = 0;
    if (*&has)
    {
      goto LABEL_3;
    }
  }

  v26 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_4:
    v25 = 2654435761u * self->_endedTimestamp;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v25 = 0;
  if ((*&has & 0x10) != 0)
  {
LABEL_5:
    v24 = 2654435761u * self->_wakeTimestamp;
    if ((*&has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v24 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_6:
    v23 = 2654435761u * self->_enteredKnownNetworkGeotagLocationTimeStamp;
    if ((*&has & 0x80000) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v22 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_13:
  v23 = 0;
  if ((*&has & 0x80000) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v22 = 2654435761 * self->_state;
  if ((*&has & 0x8000) != 0)
  {
LABEL_8:
    v21 = 2654435761 * self->_retryIndex;
    goto LABEL_16;
  }

LABEL_15:
  v21 = 0;
LABEL_16:
  v20 = PBRepeatedUInt32Hash();
  v4 = self->_has;
  if ((*&v4 & 0x40000) != 0)
  {
    v19 = 2654435761 * self->_scanTypes;
    if ((*&v4 & 0x800) != 0)
    {
LABEL_18:
      v18 = 2654435761 * self->_lastScanType;
      if ((*&v4 & 0x4000) != 0)
      {
        goto LABEL_19;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v19 = 0;
    if ((*&v4 & 0x800) != 0)
    {
      goto LABEL_18;
    }
  }

  v18 = 0;
  if ((*&v4 & 0x4000) != 0)
  {
LABEL_19:
    v17 = 2654435761 * self->_resetTypes;
    if ((*&v4 & 0x2000) != 0)
    {
      goto LABEL_20;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = 0;
  if ((*&v4 & 0x2000) != 0)
  {
LABEL_20:
    v16 = 2654435761 * self->_resetReason;
    if ((*&v4 & 0x20000) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

LABEL_32:
  v16 = 0;
  if ((*&v4 & 0x20000) != 0)
  {
LABEL_21:
    v15 = 2654435761 * self->_scanResultFound;
    if ((*&v4 & 0x200) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

LABEL_33:
  v15 = 0;
  if ((*&v4 & 0x200) != 0)
  {
LABEL_22:
    v5 = 2654435761 * self->_knownNetworksFoundInScans;
    if ((*&v4 & 0x400) != 0)
    {
      goto LABEL_23;
    }

    goto LABEL_35;
  }

LABEL_34:
  v5 = 0;
  if ((*&v4 & 0x400) != 0)
  {
LABEL_23:
    v6 = 2654435761 * self->_lastScanError;
    if ((*&v4 & 0x10000) != 0)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_35:
  v6 = 0;
  if ((*&v4 & 0x10000) != 0)
  {
LABEL_24:
    v7 = 2654435761 * self->_rssiBitmap;
    if ((*&v4 & 0x100) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  v7 = 0;
  if ((*&v4 & 0x100) != 0)
  {
LABEL_25:
    v8 = 2654435761 * self->_ccaBitmap;
    if ((*&v4 & 0x40) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_38;
  }

LABEL_37:
  v8 = 0;
  if ((*&v4 & 0x40) != 0)
  {
LABEL_26:
    v9 = 2654435761 * self->_bandScanCount24;
    if ((*&v4 & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_39:
    v10 = 0;
    if ((*&v4 & 0x1000) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_40;
  }

LABEL_38:
  v9 = 0;
  if ((*&v4 & 0x80) == 0)
  {
    goto LABEL_39;
  }

LABEL_27:
  v10 = 2654435761 * self->_bandScanCount5;
  if ((*&v4 & 0x1000) != 0)
  {
LABEL_28:
    v11 = 2654435761 * self->_nwExclusionCount;
    goto LABEL_41;
  }

LABEL_40:
  v11 = 0;
LABEL_41:
  v12 = [(NSMutableArray *)self->_networksExcludedFromAJDueToThresholds hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v13 = 2654435761 * self->_bandExclusionReason;
  }

  else
  {
    v13 = 0;
  }

  return v26 ^ v27 ^ v25 ^ v24 ^ v23 ^ v22 ^ v21 ^ v19 ^ v18 ^ v17 ^ v16 ^ v20 ^ v15 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v13 ^ v12;
}

- (void)mergeFrom:(id)a3
{
  v21 = *MEMORY[0x29EDCA608];
  v5 = *(a3 + 36);
  if ((v5 & 8) != 0)
  {
    self->_timestamp = *(a3 + 7);
    *&self->_has |= 8u;
    v5 = *(a3 + 36);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_37;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_beganTimestamp = *(a3 + 4);
  *&self->_has |= 1u;
  v5 = *(a3 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_endedTimestamp = *(a3 + 5);
  *&self->_has |= 2u;
  v5 = *(a3 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_wakeTimestamp = *(a3 + 8);
  *&self->_has |= 0x10u;
  v5 = *(a3 + 36);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 0x80000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_enteredKnownNetworkGeotagLocationTimeStamp = *(a3 + 6);
  *&self->_has |= 4u;
  v5 = *(a3 + 36);
  if ((v5 & 0x80000) == 0)
  {
LABEL_7:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_40:
  self->_state = *(a3 + 35);
  *&self->_has |= 0x80000u;
  if ((*(a3 + 36) & 0x8000) != 0)
  {
LABEL_8:
    self->_retryIndex = *(a3 + 31);
    *&self->_has |= 0x8000u;
  }

LABEL_9:
  v6 = [a3 scannedNetworksExcludedFromAJDueToBlacklistReasonCountsCount];
  if (v6)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      -[AWDWiFiMetricsManagerAutoJoinRecord addScannedNetworksExcludedFromAJDueToBlacklistReasonCounts:](self, "addScannedNetworksExcludedFromAJDueToBlacklistReasonCounts:", [a3 scannedNetworksExcludedFromAJDueToBlacklistReasonCountsAtIndex:i]);
    }
  }

  v9 = *(a3 + 36);
  if ((v9 & 0x40000) != 0)
  {
    self->_scanTypes = *(a3 + 34);
    *&self->_has |= 0x40000u;
    v9 = *(a3 + 36);
    if ((v9 & 0x800) == 0)
    {
LABEL_14:
      if ((v9 & 0x4000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_44;
    }
  }

  else if ((v9 & 0x800) == 0)
  {
    goto LABEL_14;
  }

  self->_lastScanType = *(a3 + 24);
  *&self->_has |= 0x800u;
  v9 = *(a3 + 36);
  if ((v9 & 0x4000) == 0)
  {
LABEL_15:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_resetTypes = *(a3 + 30);
  *&self->_has |= 0x4000u;
  v9 = *(a3 + 36);
  if ((v9 & 0x2000) == 0)
  {
LABEL_16:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_resetReason = *(a3 + 29);
  *&self->_has |= 0x2000u;
  v9 = *(a3 + 36);
  if ((v9 & 0x20000) == 0)
  {
LABEL_17:
    if ((v9 & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_scanResultFound = *(a3 + 33);
  *&self->_has |= 0x20000u;
  v9 = *(a3 + 36);
  if ((v9 & 0x200) == 0)
  {
LABEL_18:
    if ((v9 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_knownNetworksFoundInScans = *(a3 + 22);
  *&self->_has |= 0x200u;
  v9 = *(a3 + 36);
  if ((v9 & 0x400) == 0)
  {
LABEL_19:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_lastScanError = *(a3 + 23);
  *&self->_has |= 0x400u;
  v9 = *(a3 + 36);
  if ((v9 & 0x10000) == 0)
  {
LABEL_20:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_rssiBitmap = *(a3 + 32);
  *&self->_has |= 0x10000u;
  v9 = *(a3 + 36);
  if ((v9 & 0x100) == 0)
  {
LABEL_21:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_ccaBitmap = *(a3 + 21);
  *&self->_has |= 0x100u;
  v9 = *(a3 + 36);
  if ((v9 & 0x40) == 0)
  {
LABEL_22:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_bandScanCount24 = *(a3 + 19);
  *&self->_has |= 0x40u;
  v9 = *(a3 + 36);
  if ((v9 & 0x80) == 0)
  {
LABEL_23:
    if ((v9 & 0x1000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_52:
  self->_bandScanCount5 = *(a3 + 20);
  *&self->_has |= 0x80u;
  if ((*(a3 + 36) & 0x1000) != 0)
  {
LABEL_24:
    self->_nwExclusionCount = *(a3 + 28);
    *&self->_has |= 0x1000u;
  }

LABEL_25:
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(a3 + 13);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(AWDWiFiMetricsManagerAutoJoinRecord *)self addNetworksExcludedFromAJDueToThresholds:*(*(&v16 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  if ((*(a3 + 144) & 0x20) != 0)
  {
    self->_bandExclusionReason = *(a3 + 18);
    *&self->_has |= 0x20u;
  }

  v15 = *MEMORY[0x29EDCA608];
}

@end