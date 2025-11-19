@interface AWDWiFiMetricsManagerAutoJoinCumulative
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)excludedDueToAJBlacklistCountAtIndex:(unint64_t)a3;
- (unsigned)scanTypesCountAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAjScansPerformedWithLocation:(BOOL)a3;
- (void)setHasAjScansPerformedWithoutLocation:(BOOL)a3;
- (void)setHasBandScanCount24:(BOOL)a3;
- (void)setHasBandScanCount5:(BOOL)a3;
- (void)setHasCcaBitmap:(BOOL)a3;
- (void)setHasDidAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount:(BOOL)a3;
- (void)setHasRssiBitmap:(BOOL)a3;
- (void)setHasUserChoseToAssociateToAJBlacklistedCount:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (unsigned)scanTypesCountAtIndex:(unint64_t)a3
{
  p_scanTypesCounts = &self->_scanTypesCounts;
  count = self->_scanTypesCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_scanTypesCounts->list[a3];
}

- (unsigned)excludedDueToAJBlacklistCountAtIndex:(unint64_t)a3
{
  p_excludedDueToAJBlacklistCounts = &self->_excludedDueToAJBlacklistCounts;
  count = self->_excludedDueToAJBlacklistCounts.count;
  if (count <= a3)
  {
    [objc_msgSend(MEMORY[0x29EDB8DD0] exceptionWithName:*MEMORY[0x29EDB8D10] reason:objc_msgSend(MEMORY[0x29EDBA0F8] userInfo:{"stringWithFormat:", @"idx (%lu) is out of range (%lu)", a3, count), 0), "raise"}];
  }

  return p_excludedDueToAJBlacklistCounts->list[a3];
}

- (void)setHasUserChoseToAssociateToAJBlacklistedCount:(BOOL)a3
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

- (void)setHasAjScansPerformedWithLocation:(BOOL)a3
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

- (void)setHasAjScansPerformedWithoutLocation:(BOOL)a3
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

- (void)setHasDidAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount:(BOOL)a3
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

- (void)setHasRssiBitmap:(BOOL)a3
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

- (void)setHasCcaBitmap:(BOOL)a3
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

- (void)setHasBandScanCount24:(BOOL)a3
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

- (void)setHasBandScanCount5:(BOOL)a3
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

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiMetricsManagerAutoJoinCumulative;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiMetricsManagerAutoJoinCumulative description](&v3, sel_description), -[AWDWiFiMetricsManagerAutoJoinCumulative dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"scanTypesCount"];
  [v3 setObject:PBRepeatedUInt32NSArray() forKey:@"excludedDueToAJBlacklistCount"];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_userChoseToAssociateToAJBlacklistedCount), @"userChoseToAssociateToAJBlacklistedCount"}];
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

  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ajScansPerformedWithLocation), @"ajScansPerformedWithLocation"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ajScansPerformedWithoutLocation), @"ajScansPerformedWithoutLocation"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount), @"didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount"}];
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
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_rssiBitmap), @"rssiBitmap"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount24), @"bandScanCount24"}];
    if ((*&self->_has & 0x10) == 0)
    {
      return v3;
    }

    goto LABEL_11;
  }

LABEL_18:
  [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_ccaBitmap), @"ccaBitmap"}];
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  if ((has & 0x10) != 0)
  {
LABEL_11:
    [v3 setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_bandScanCount5), @"bandScanCount5"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
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

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 7) = self->_timestamp;
    *(a3 + 48) |= 1u;
  }

  if ([(AWDWiFiMetricsManagerAutoJoinCumulative *)self scanTypesCountsCount])
  {
    [a3 clearScanTypesCounts];
    v5 = [(AWDWiFiMetricsManagerAutoJoinCumulative *)self scanTypesCountsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addScanTypesCount:{-[AWDWiFiMetricsManagerAutoJoinCumulative scanTypesCountAtIndex:](self, "scanTypesCountAtIndex:", i)}];
      }
    }
  }

  if ([(AWDWiFiMetricsManagerAutoJoinCumulative *)self excludedDueToAJBlacklistCountsCount])
  {
    [a3 clearExcludedDueToAJBlacklistCounts];
    v8 = [(AWDWiFiMetricsManagerAutoJoinCumulative *)self excludedDueToAJBlacklistCountsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        [a3 addExcludedDueToAJBlacklistCount:{-[AWDWiFiMetricsManagerAutoJoinCumulative excludedDueToAJBlacklistCountAtIndex:](self, "excludedDueToAJBlacklistCountAtIndex:", j)}];
      }
    }
  }

  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(a3 + 23) = self->_userChoseToAssociateToAJBlacklistedCount;
    *(a3 + 48) |= 0x100u;
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

  *(a3 + 16) = self->_ajScansPerformedWithLocation;
  *(a3 + 48) |= 2u;
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
  *(a3 + 17) = self->_ajScansPerformedWithoutLocation;
  *(a3 + 48) |= 4u;
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
  *(a3 + 21) = self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount;
  *(a3 + 48) |= 0x40u;
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
  *(a3 + 22) = self->_rssiBitmap;
  *(a3 + 48) |= 0x80u;
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
  *(a3 + 20) = self->_ccaBitmap;
  *(a3 + 48) |= 0x20u;
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
  *(a3 + 18) = self->_bandScanCount24;
  *(a3 + 48) |= 8u;
  if ((*&self->_has & 0x10) == 0)
  {
    return;
  }

LABEL_19:
  *(a3 + 19) = self->_bandScanCount5;
  *(a3 + 48) |= 0x10u;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  IsEqual = [a3 isMemberOfClass:objc_opt_class()];
  if (IsEqual)
  {
    v6 = *(a3 + 48);
    if (*&self->_has)
    {
      if ((v6 & 1) == 0 || self->_timestamp != *(a3 + 7))
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
        v8 = *(a3 + 48);
        if ((has & 0x100) != 0)
        {
          if ((*(a3 + 48) & 0x100) == 0 || self->_userChoseToAssociateToAJBlacklistedCount != *(a3 + 23))
          {
            goto LABEL_48;
          }
        }

        else if ((*(a3 + 48) & 0x100) != 0)
        {
          goto LABEL_48;
        }

        if ((has & 2) != 0)
        {
          if ((v8 & 2) == 0 || self->_ajScansPerformedWithLocation != *(a3 + 16))
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
          if ((v8 & 4) == 0 || self->_ajScansPerformedWithoutLocation != *(a3 + 17))
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
          if ((v8 & 0x40) == 0 || self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount != *(a3 + 21))
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
          if ((v8 & 0x80) == 0 || self->_rssiBitmap != *(a3 + 22))
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
          if ((v8 & 0x20) == 0 || self->_ccaBitmap != *(a3 + 20))
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
          if ((v8 & 8) == 0 || self->_bandScanCount24 != *(a3 + 18))
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
          if ((v8 & 0x10) == 0 || self->_bandScanCount5 != *(a3 + 19))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 48))
  {
    self->_timestamp = *(a3 + 7);
    *&self->_has |= 1u;
  }

  v5 = [a3 scanTypesCountsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[AWDWiFiMetricsManagerAutoJoinCumulative addScanTypesCount:](self, "addScanTypesCount:", [a3 scanTypesCountAtIndex:i]);
    }
  }

  v8 = [a3 excludedDueToAJBlacklistCountsCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[AWDWiFiMetricsManagerAutoJoinCumulative addExcludedDueToAJBlacklistCount:](self, "addExcludedDueToAJBlacklistCount:", [a3 excludedDueToAJBlacklistCountAtIndex:j]);
    }
  }

  v11 = *(a3 + 48);
  if ((v11 & 0x100) != 0)
  {
    self->_userChoseToAssociateToAJBlacklistedCount = *(a3 + 23);
    *&self->_has |= 0x100u;
    v11 = *(a3 + 48);
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

  self->_ajScansPerformedWithLocation = *(a3 + 16);
  *&self->_has |= 2u;
  v11 = *(a3 + 48);
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
  self->_ajScansPerformedWithoutLocation = *(a3 + 17);
  *&self->_has |= 4u;
  v11 = *(a3 + 48);
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
  self->_didAssocTo5GHzAfterBroadcastPeriodicAllBandScanCount = *(a3 + 21);
  *&self->_has |= 0x40u;
  v11 = *(a3 + 48);
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
  self->_rssiBitmap = *(a3 + 22);
  *&self->_has |= 0x80u;
  v11 = *(a3 + 48);
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
  self->_ccaBitmap = *(a3 + 20);
  *&self->_has |= 0x20u;
  v11 = *(a3 + 48);
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
  self->_bandScanCount24 = *(a3 + 18);
  *&self->_has |= 8u;
  if ((*(a3 + 48) & 0x10) == 0)
  {
    return;
  }

LABEL_17:
  self->_bandScanCount5 = *(a3 + 19);
  *&self->_has |= 0x10u;
}

@end