@interface AWDMETRICSKCellularPowerLogPLMNSearchHistMBin
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsBinId:(id)id;
- (int)binId;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasSearchDurationBinIndex:(BOOL)index;
- (void)writeTo:(id)to;
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

- (int)StringAsBinId:(id)id
{
  idCopy = id;
  if ([idCopy isEqualToString:@"NO_SEARCH"])
  {
    v4 = 0;
  }

  else if ([idCopy isEqualToString:@"SLS_GSM"])
  {
    v4 = 1;
  }

  else if ([idCopy isEqualToString:@"DBS_GSM"])
  {
    v4 = 2;
  }

  else if ([idCopy isEqualToString:@"DBS_MCC_GSM"])
  {
    v4 = 3;
  }

  else if ([idCopy isEqualToString:@"RBS_GSM"])
  {
    v4 = 4;
  }

  else if ([idCopy isEqualToString:@"SBS_GSM"])
  {
    v4 = 5;
  }

  else if ([idCopy isEqualToString:@"FBS_GSM"])
  {
    v4 = 6;
  }

  else if ([idCopy isEqualToString:@"SLS_DBS_GSM"])
  {
    v4 = 7;
  }

  else if ([idCopy isEqualToString:@"ESLS_GSM"])
  {
    v4 = 8;
  }

  else if ([idCopy isEqualToString:@"EARLY_MCC_SLS_GSM"])
  {
    v4 = 9;
  }

  else if ([idCopy isEqualToString:@"SLS_UMTS"])
  {
    v4 = 10;
  }

  else if ([idCopy isEqualToString:@"DBS_UMTS"])
  {
    v4 = 11;
  }

  else if ([idCopy isEqualToString:@"DBS_MCC_UMTS"])
  {
    v4 = 12;
  }

  else if ([idCopy isEqualToString:@"RBS_UMTS"])
  {
    v4 = 13;
  }

  else if ([idCopy isEqualToString:@"SBS_UMTS"])
  {
    v4 = 14;
  }

  else if ([idCopy isEqualToString:@"FBS_UMTS"])
  {
    v4 = 15;
  }

  else if ([idCopy isEqualToString:@"SLS_DBS_UMTS"])
  {
    v4 = 16;
  }

  else if ([idCopy isEqualToString:@"ESLS_UMTS"])
  {
    v4 = 17;
  }

  else if ([idCopy isEqualToString:@"EARLY_MCC_SLS_UMTS"])
  {
    v4 = 18;
  }

  else if ([idCopy isEqualToString:@"SLS_LTE"])
  {
    v4 = 19;
  }

  else if ([idCopy isEqualToString:@"DBS_LTE"])
  {
    v4 = 20;
  }

  else if ([idCopy isEqualToString:@"DBS_MCC_LTE"])
  {
    v4 = 21;
  }

  else if ([idCopy isEqualToString:@"RBS_LTE"])
  {
    v4 = 22;
  }

  else if ([idCopy isEqualToString:@"SBS_LTE"])
  {
    v4 = 23;
  }

  else if ([idCopy isEqualToString:@"FBS_LTE"])
  {
    v4 = 24;
  }

  else if ([idCopy isEqualToString:@"SLS_DBS_LTE"])
  {
    v4 = 25;
  }

  else if ([idCopy isEqualToString:@"ESLS_LTE"])
  {
    v4 = 26;
  }

  else if ([idCopy isEqualToString:@"EARLY_MCC_SLS_LTE"])
  {
    v4 = 27;
  }

  else if ([idCopy isEqualToString:@"SLS_NR"])
  {
    v4 = 28;
  }

  else if ([idCopy isEqualToString:@"DBS_NR"])
  {
    v4 = 29;
  }

  else if ([idCopy isEqualToString:@"DBS_MCC_NR"])
  {
    v4 = 30;
  }

  else if ([idCopy isEqualToString:@"RBS_NR"])
  {
    v4 = 31;
  }

  else if ([idCopy isEqualToString:@"SBS_NR"])
  {
    v4 = 32;
  }

  else if ([idCopy isEqualToString:@"FBS_NR"])
  {
    v4 = 33;
  }

  else if ([idCopy isEqualToString:@"SLS_DBS_NR"])
  {
    v4 = 34;
  }

  else if ([idCopy isEqualToString:@"ESLS_NR"])
  {
    v4 = 35;
  }

  else if ([idCopy isEqualToString:@"EARLY_MCC_SLS_NR"])
  {
    v4 = 36;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSearchDurationBinIndex:(BOOL)index
{
  if (index)
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
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogPLMNSearchHistMBin *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
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

    [dictionary setObject:v6 forKey:@"bin_id"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
    [dictionary setObject:v7 forKey:@"duration"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_searchDurationBinIndex];
    [dictionary setObject:v8 forKey:@"search_duration_bin_index"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if (has)
  {
    binId = self->_binId;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    searchDurationBinIndex = self->_searchDurationBinIndex;
    PBDataWriterWriteUint32Field();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_binId;
    *(toCopy + 20) |= 1u;
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

  toCopy[3] = self->_duration;
  *(toCopy + 20) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[4] = self->_searchDurationBinIndex;
    *(toCopy + 20) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0 || self->_binId != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 20))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) == 0 || self->_duration != *(equalCopy + 3))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 20) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(equalCopy + 20) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 20) & 4) == 0 || self->_searchDurationBinIndex != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 20);
  if (v5)
  {
    self->_binId = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 20);
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

  else if ((*(fromCopy + 20) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 3);
  *&self->_has |= 2u;
  if ((*(fromCopy + 20) & 4) != 0)
  {
LABEL_4:
    self->_searchDurationBinIndex = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end