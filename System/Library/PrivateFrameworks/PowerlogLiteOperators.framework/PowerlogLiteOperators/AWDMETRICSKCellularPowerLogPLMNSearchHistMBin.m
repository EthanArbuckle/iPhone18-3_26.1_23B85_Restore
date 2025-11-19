@interface AWDMETRICSKCellularPowerLogPLMNSearchHistMBin
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)a3;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasSearchDurationBinIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogPLMNSearchHistMBin

- (int)binId
{
  if (*&self->_has)
  {
    return self->_binId;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsBinId:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NO_SEARCH"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"SLS_GSM"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DBS_GSM"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"DBS_MCC_GSM"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"RBS_GSM"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"SBS_GSM"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FBS_GSM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SLS_DBS_GSM"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ESLS_GSM"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"EARLY_MCC_SLS_GSM"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SLS_UMTS"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"DBS_UMTS"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"DBS_MCC_UMTS"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"RBS_UMTS"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"SBS_UMTS"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"FBS_UMTS"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"SLS_DBS_UMTS"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"ESLS_UMTS"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"EARLY_MCC_SLS_UMTS"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"SLS_LTE"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"DBS_LTE"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"DBS_MCC_LTE"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"RBS_LTE"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"SBS_LTE"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"FBS_LTE"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"SLS_DBS_LTE"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"ESLS_LTE"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"EARLY_MCC_SLS_LTE"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"SLS_NR"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"DBS_NR"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"DBS_MCC_NR"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"RBS_NR"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"SBS_NR"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"FBS_NR"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"SLS_DBS_NR"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"ESLS_NR"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"EARLY_MCC_SLS_NR"])
  {
    v4 = 36;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSearchDurationBinIndex:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogPLMNSearchHistMBin;
  v4 = [(AWDMETRICSKCellularPowerLogPLMNSearchHistMBin *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogPLMNSearchHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    binId = self->_binId;
    if (binId >= 0x25)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_binId];
    }

    else
    {
      v6 = off_278262608[binId];
    }

    [v3 setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [v3 setObject:v7 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_searchDurationBinIndex];
    [v3 setObject:v8 forKey:@"search_duration_bin_index"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    searchDurationBinIndex = self->_searchDurationBinIndex;
    PBDataWriterWriteUint32Field();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_binId;
    *(v4 + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_duration;
  *(v4 + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[4] = self->_searchDurationBinIndex;
    *(v4 + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_binId;
    *(result + 20) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 3) = self->_duration;
  *(result + 20) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_searchDurationBinIndex;
  *(result + 20) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) == 0 || self->_binId != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) == 0 || self->_duration != *(v4 + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 20) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 20) & 4) == 0 || self->_searchDurationBinIndex != *(v4 + 4))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_binId;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_duration;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_searchDurationBinIndex;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 20);
  if (v5)
  {
    self->_binId = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 20);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 20) & 4) != 0)
  {
LABEL_4:
    self->_searchDurationBinIndex = *(v4 + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end