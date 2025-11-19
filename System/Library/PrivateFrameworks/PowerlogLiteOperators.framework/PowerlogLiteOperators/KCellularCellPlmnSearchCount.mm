@interface KCellularCellPlmnSearchCount
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCdma1xSearchCount:(BOOL)a3;
- (void)setHasCdmaEvdoSearchCount:(BOOL)a3;
- (void)setHasDurationMs:(BOOL)a3;
- (void)setHasGsmSearchCount:(BOOL)a3;
- (void)setHasLteSearchCount:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)setHasTdscdmaSearchCount:(BOOL)a3;
- (void)setHasUmtsSearchCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularCellPlmnSearchCount

- (void)setHasDurationMs:(BOOL)a3
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

- (void)setHasGsmSearchCount:(BOOL)a3
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

- (void)setHasUmtsSearchCount:(BOOL)a3
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

- (void)setHasTdscdmaSearchCount:(BOOL)a3
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

- (void)setHasLteSearchCount:(BOOL)a3
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

- (void)setHasCdma1xSearchCount:(BOOL)a3
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

- (void)setHasCdmaEvdoSearchCount:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = KCellularCellPlmnSearchCount;
  v4 = [(KCellularCellPlmnSearchCount *)&v8 description];
  v5 = [(KCellularCellPlmnSearchCount *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_durationMs];
  [v3 setObject:v8 forKey:@"duration_ms"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_gsmSearchCount];
  [v3 setObject:v9 forKey:@"gsm_search_count"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_umtsSearchCount];
  [v3 setObject:v10 forKey:@"umts_search_count"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tdscdmaSearchCount];
  [v3 setObject:v11 forKey:@"tdscdma_search_count"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_lteSearchCount];
  [v3 setObject:v12 forKey:@"lte_search_count"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdma1xSearchCount];
  [v3 setObject:v13 forKey:@"cdma_1x_search_count"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_cdmaEvdoSearchCount];
  [v3 setObject:v14 forKey:@"cdma_evdo_search_count"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  durationMs = self->_durationMs;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  gsmSearchCount = self->_gsmSearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  umtsSearchCount = self->_umtsSearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  tdscdmaSearchCount = self->_tdscdmaSearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  lteSearchCount = self->_lteSearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  cdma1xSearchCount = self->_cdma1xSearchCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  cdmaEvdoSearchCount = self->_cdmaEvdoSearchCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 6) = self->_durationMs;
  *(v4 + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v4 + 7) = self->_gsmSearchCount;
  *(v4 + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v4 + 11) = self->_umtsSearchCount;
  *(v4 + 24) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v4 + 10) = self->_tdscdmaSearchCount;
  *(v4 + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v4 + 8) = self->_lteSearchCount;
  *(v4 + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v4 + 4) = self->_cdma1xSearchCount;
  *(v4 + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  *(v4 + 5) = self->_cdmaEvdoSearchCount;
  *(v4 + 24) |= 4u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_10:
    *(v4 + 9) = self->_subsId;
    *(v4 + 24) |= 0x40u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_durationMs;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_gsmSearchCount;
  *(result + 24) |= 0x10u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 11) = self->_umtsSearchCount;
  *(result + 24) |= 0x100u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 10) = self->_tdscdmaSearchCount;
  *(result + 24) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 8) = self->_lteSearchCount;
  *(result + 24) |= 0x20u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 4) = self->_cdma1xSearchCount;
  *(result + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 5) = self->_cdmaEvdoSearchCount;
  *(result + 24) |= 4u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 9) = self->_subsId;
  *(result + 24) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_47;
    }
  }

  else if (v6)
  {
LABEL_47:
    v7 = 0;
    goto LABEL_48;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_durationMs != *(v4 + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_gsmSearchCount != *(v4 + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(v4 + 24) & 0x100) == 0 || self->_umtsSearchCount != *(v4 + 11))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_tdscdmaSearchCount != *(v4 + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_lteSearchCount != *(v4 + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_cdma1xSearchCount != *(v4 + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_cdmaEvdoSearchCount != *(v4 + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_subsId != *(v4 + 9))
    {
      goto LABEL_47;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 0x40) == 0;
  }

LABEL_48:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_durationMs;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_gsmSearchCount;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_umtsSearchCount;
    if ((has & 0x80) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_tdscdmaSearchCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_lteSearchCount;
    if ((has & 2) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 2) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_cdma1xSearchCount;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 4) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_cdmaEvdoSearchCount;
  if ((has & 0x40) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_durationMs = *(v4 + 6);
  *&self->_has |= 8u;
  v5 = *(v4 + 24);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_gsmSearchCount = *(v4 + 7);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 24);
  if ((v5 & 0x100) == 0)
  {
LABEL_5:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_umtsSearchCount = *(v4 + 11);
  *&self->_has |= 0x100u;
  v5 = *(v4 + 24);
  if ((v5 & 0x80) == 0)
  {
LABEL_6:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_tdscdmaSearchCount = *(v4 + 10);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_7:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_lteSearchCount = *(v4 + 8);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 24);
  if ((v5 & 2) == 0)
  {
LABEL_8:
    if ((v5 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_cdma1xSearchCount = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
  if ((v5 & 4) == 0)
  {
LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_cdmaEvdoSearchCount = *(v4 + 5);
  *&self->_has |= 4u;
  if ((*(v4 + 24) & 0x40) != 0)
  {
LABEL_10:
    self->_subsId = *(v4 + 9);
    *&self->_has |= 0x40u;
  }

LABEL_11:
}

@end