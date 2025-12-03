@interface AWDWiFiMetricsManagerAutoJoinCumulative
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)excludedDueToAJBlacklistCountAtIndex:(unint64_t)index;
- (unsigned)scanTypesCountAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasAjScansPerformedWithLocation:(BOOL)location;
- (void)setHasAjScansPerformedWithoutLocation:(BOOL)location;
- (void)setHasBandScanCount24:(BOOL)count24;
- (void)setHasBandScanCount5:(BOOL)count5;
- (void)setHasCcaBitmap:(BOOL)bitmap;
- (void)setHasDidAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount:(BOOL)count;
- (void)setHasRssiBitmap:(BOOL)bitmap;
- (void)setHasUserChoseToAssociateToAJBlacklistedCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiMetricsManagerAutoJoinCumulative

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAutoJoinCumulative;
  [(AWDWiFiMetricsManagerAutoJoinCumulative *)&v3 dealloc];
}

- (unsigned)scanTypesCountAtIndex:(unint64_t)index
{
  p_scanTypesCounts = &self->_scanTypesCounts;
  count = self->_scanTypesCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_scanTypesCounts->list[index];
}

- (unsigned)excludedDueToAJBlacklistCountAtIndex:(unint64_t)index
{
  p_excludedDueToAJBlacklistCounts = &self->_excludedDueToAJBlacklistCounts;
  count = self->_excludedDueToAJBlacklistCounts.count;
  if (count <= index)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", index, count), 0), "raise"}];
  }

  return p_excludedDueToAJBlacklistCounts->list[index];
}

- (void)setHasUserChoseToAssociateToAJBlacklistedCount:(BOOL)count
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

- (void)setHasAjScansPerformedWithLocation:(BOOL)location
{
  if (location)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasAjScansPerformedWithoutLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasDidAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount:(BOOL)count
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

- (void)setHasRssiBitmap:(BOOL)bitmap
{
  if (bitmap)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasCcaBitmap:(BOOL)bitmap
{
  if (bitmap)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasBandScanCount24:(BOOL)count24
{
  if (count24)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasBandScanCount5:(BOOL)count5
{
  if (count5)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAutoJoinCumulative;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerAutoJoinCumulative description](&v3, sel_description), -[AWDWiFiMetricsManagerAutoJoinCumulative dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"scanTypesCount"];
  [dictionary setObject:PBRepeatedUInt32NSArray() forKey:@"excludedDueToAJBlacklistCount"];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userChoseToAssociateToAJBlacklistedCount), @"userChoseToAssociateToAJBlacklistedCount"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ajScansPerformedWithLocation), @"ajScansPerformedWithLocation"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ajScansPerformedWithoutLocation), @"ajScansPerformedWithoutLocation"}];
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount), @"didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssiBitmap), @"rssiBitmap"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount24), @"bandScanCount24"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return dictionary;
    }

    goto LABEL_11;
  }

LABEL_18:
  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaBitmap), @"ccaBitmap"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount5), @"bandScanCount5"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_scanTypesCounts.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_scanTypesCounts.list[v5];
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_scanTypesCounts.count);
  }

  if (self->_excludedDueToAJBlacklistCounts.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_excludedDueToAJBlacklistCounts.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_excludedDueToAJBlacklistCounts.count);
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    userChoseToAssociateToAJBlacklistedCount = self->_userChoseToAssociateToAJBlacklistedCount;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_11:
      if ((has & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_11;
  }

  ajScansPerformedWithLocation = self->_ajScansPerformedWithLocation;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_12:
    if ((has & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_21;
  }

LABEL_20:
  ajScansPerformedWithoutLocation = self->_ajScansPerformedWithoutLocation;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_13:
    if ((has & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_22;
  }

LABEL_21:
  didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount = self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

LABEL_22:
  rssiBitmap = self->_rssiBitmap;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_15:
    if ((has & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_24:
    bandScanCount24 = self->_bandScanCount24;
    PBDataWriterWriteUint32Field();
    if ((*&self->_has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_25;
  }

LABEL_23:
  ccaBitmap = self->_ccaBitmap;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_24;
  }

LABEL_16:
  if ((has & 0x10) == 0)
  {
    return;
  }

LABEL_25:
  bandScanCount5 = self->_bandScanCount5;

  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 7) = self->_timestamp;
    *(to + 48) |= 1u;
  }

  if ([(AWDWiFiMetricsManagerAutoJoinCumulative *)self scanTypesCountsCount])
  {
    [to clearScanTypesCounts];
    scanTypesCountsCount = [(AWDWiFiMetricsManagerAutoJoinCumulative *)self scanTypesCountsCount];
    if (scanTypesCountsCount)
    {
      v6 = scanTypesCountsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addScanTypesCount:{-[AWDWiFiMetricsManagerAutoJoinCumulative scanTypesCountAtIndex:](self, "scanTypesCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerAutoJoinCumulative *)self excludedDueToAJBlacklistCountsCount])
  {
    [to clearExcludedDueToAJBlacklistCounts];
    excludedDueToAJBlacklistCountsCount = [(AWDWiFiMetricsManagerAutoJoinCumulative *)self excludedDueToAJBlacklistCountsCount];
    if (excludedDueToAJBlacklistCountsCount)
    {
      v9 = excludedDueToAJBlacklistCountsCount;
      for (j = 0; j != v9; ++j)
      {
        [to addExcludedDueToAJBlacklistCount:{-[AWDWiFiMetricsManagerAutoJoinCumulative excludedDueToAJBlacklistCountAtIndex:](self, "excludedDueToAJBlacklistCountAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(to + 23) = self->_userChoseToAssociateToAJBlacklistedCount;
    *(to + 48) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_13:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_13;
  }

  *(to + 16) = self->_ajScansPerformedWithLocation;
  *(to + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_14:
    if ((has & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(to + 17) = self->_ajScansPerformedWithoutLocation;
  *(to + 48) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_15:
    if ((has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(to + 21) = self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount;
  *(to + 48) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_16:
    if ((has & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(to + 22) = self->_rssiBitmap;
  *(to + 48) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_17:
    if ((has & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(to + 20) = self->_ccaBitmap;
  *(to + 48) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_18:
    if ((has & 0x10) == 0)
    {
      return;
    }

    goto LABEL_19;
  }

LABEL_27:
  *(to + 18) = self->_bandScanCount24;
  *(to + 48) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return;
  }

LABEL_19:
  *(to + 19) = self->_bandScanCount5;
  *(to + 48) |= 0x10u;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 56) = self->_timestamp;
    *(v4 + 96) |= 1u;
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(v5 + 92) = self->_userChoseToAssociateToAJBlacklistedCount;
    *(v5 + 96) |= 0x100u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 64) = self->_ajScansPerformedWithLocation;
  *(v5 + 96) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 0x40) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 68) = self->_ajScansPerformedWithoutLocation;
  *(v5 + 96) |= 4u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 84) = self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount;
  *(v5 + 96) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 88) = self->_rssiBitmap;
  *(v5 + 96) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    *(v5 + 72) = self->_bandScanCount24;
    *(v5 + 96) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_11;
  }

LABEL_18:
  *(v5 + 80) = self->_ccaBitmap;
  *(v5 + 96) |= 0x20u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    *(v5 + 76) = self->_bandScanCount5;
    *(v5 + 96) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  IsEqual = [equal isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(equal + 48);
    if (*&self->_has)
    {
      if ((v6 & 1) == 0 || self->_timestamp != *(equal + 7))
      {
        goto LABEL_48;
      }
    }

    else if (v6)
    {
LABEL_48:
      LOBYTE(IsEqual) = 0;
      return IsEqual;
    }

    IsEqual = PBRepeatedUInt32IsEqual();
    if (IsEqual)
    {
      IsEqual = PBRepeatedUInt32IsEqual();
      if (IsEqual)
      {
        has = self->_has;
        v8 = *(equal + 48);
        if ((has & 0x100) != 0)
        {
          if ((*(equal + 48) & 0x100) == 0 || self->_userChoseToAssociateToAJBlacklistedCount != *(equal + 23))
          {
            goto LABEL_48;
          }
        }

        else if ((*(equal + 48) & 0x100) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 2) != 0)
        {
          if ((v8 & 2) == 0 || self->_ajScansPerformedWithLocation != *(equal + 16))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 2) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 4) != 0)
        {
          if ((v8 & 4) == 0 || self->_ajScansPerformedWithoutLocation != *(equal + 17))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 4) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 0x40) != 0)
        {
          if ((v8 & 0x40) == 0 || self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount != *(equal + 21))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 0x40) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 0x80) != 0)
        {
          if ((v8 & 0x80) == 0 || self->_rssiBitmap != *(equal + 22))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 0x80) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 0x20) != 0)
        {
          if ((v8 & 0x20) == 0 || self->_ccaBitmap != *(equal + 20))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 0x20) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 8) != 0)
        {
          if ((v8 & 8) == 0 || self->_bandScanCount24 != *(equal + 18))
          {
            goto LABEL_48;
          }
        }

        else if ((v8 & 8) != 0)
        {
          goto LABEL_48;
        }

        LOBYTE(IsEqual) = (v8 & 0x10) == 0;
        if ((has & 0x10) != 0)
        {
          if ((v8 & 0x10) == 0 || self->_bandScanCount5 != *(equal + 19))
          {
            goto LABEL_48;
          }

          LOBYTE(IsEqual) = 1;
        }
      }
    }
  }

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = PBRepeatedUInt32Hash();
  v5 = PBRepeatedUInt32Hash();
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = 2654435761 * self->_userChoseToAssociateToAJBlacklistedCount;
    if ((has & 2) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_ajScansPerformedWithLocation;
      if ((has & 4) != 0)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v7 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_ajScansPerformedWithoutLocation;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  v9 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v10 = 2654435761 * self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  v10 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v11 = 2654435761 * self->_rssiBitmap;
    if ((has & 0x20) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_10:
    v12 = 2654435761 * self->_ccaBitmap;
    if ((has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_19:
    v13 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_12;
    }

LABEL_20:
    v14 = 0;
    return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
  }

LABEL_18:
  v12 = 0;
  if ((has & 8) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  v13 = 2654435761 * self->_bandScanCount24;
  if ((has & 0x10) == 0)
  {
    goto LABEL_20;
  }

LABEL_12:
  v14 = 2654435761 * self->_bandScanCount5;
  return v4 ^ v3 ^ v5 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 48))
  {
    self->_timestamp = *(from + 7);
    *&self->_has |= 1u;
  }

  scanTypesCountsCount = [from scanTypesCountsCount];
  if (scanTypesCountsCount)
  {
    v6 = scanTypesCountsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricsManagerAutoJoinCumulative addScanTypesCount:](self, "addScanTypesCount:", [from scanTypesCountAtIndex:i]);
    }
  }

  excludedDueToAJBlacklistCountsCount = [from excludedDueToAJBlacklistCountsCount];
  if (excludedDueToAJBlacklistCountsCount)
  {
    v9 = excludedDueToAJBlacklistCountsCount;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricsManagerAutoJoinCumulative addExcludedDueToAJBlacklistCount:](self, "addExcludedDueToAJBlacklistCount:", [from excludedDueToAJBlacklistCountAtIndex:j]);
    }
  }

  v11 = *(from + 48);
  if ((v11 & 0x100) != 0)
  {
    self->_userChoseToAssociateToAJBlacklistedCount = *(from + 23);
    *&self->_has |= 0x100u;
    v11 = *(from + 48);
    if ((v11 & 2) == 0)
    {
LABEL_11:
      if ((v11 & 4) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_ajScansPerformedWithLocation = *(from + 16);
  *&self->_has |= 2u;
  v11 = *(from + 48);
  if ((v11 & 4) == 0)
  {
LABEL_12:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_ajScansPerformedWithoutLocation = *(from + 17);
  *&self->_has |= 4u;
  v11 = *(from + 48);
  if ((v11 & 0x40) == 0)
  {
LABEL_13:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_23;
  }

LABEL_22:
  self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount = *(from + 21);
  *&self->_has |= 0x40u;
  v11 = *(from + 48);
  if ((v11 & 0x80) == 0)
  {
LABEL_14:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  self->_rssiBitmap = *(from + 22);
  *&self->_has |= 0x80u;
  v11 = *(from + 48);
  if ((v11 & 0x20) == 0)
  {
LABEL_15:
    if ((v11 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_ccaBitmap = *(from + 20);
  *&self->_has |= 0x20u;
  v11 = *(from + 48);
  if ((v11 & 8) == 0)
  {
LABEL_16:
    if ((v11 & 0x10) == 0)
    {
      return;
    }

    goto LABEL_17;
  }

LABEL_25:
  self->_bandScanCount24 = *(from + 18);
  *&self->_has |= 8u;
  if ((*(from + 48) & 0x10) == 0)
  {
    return;
  }

LABEL_17:
  self->_bandScanCount5 = *(from + 19);
  *&self->_has |= 0x10u;
}

@end