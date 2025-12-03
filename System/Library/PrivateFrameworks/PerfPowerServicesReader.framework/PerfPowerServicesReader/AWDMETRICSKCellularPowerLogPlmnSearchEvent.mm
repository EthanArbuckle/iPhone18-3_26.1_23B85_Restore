@interface AWDMETRICSKCellularPowerLogPlmnSearchEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsRat:(id)rat;
- (int)StringAsResult:(id)result;
- (int)StringAsSearchReason:(id)reason;
- (int)StringAsSearchType:(id)type;
- (int)rat;
- (int)result;
- (int)searchReason;
- (int)searchType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasRat:(BOOL)rat;
- (void)setHasResult:(BOOL)result;
- (void)setHasSearchReason:(BOOL)reason;
- (void)setHasSearchType:(BOOL)type;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogPlmnSearchEvent

- (int)result
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (void)setHasResult:(BOOL)result
{
  if (result)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isEqualToString:@"SUCCESSFUL"])
  {
    v4 = 0;
  }

  else if ([resultCopy isEqualToString:@"NOT_SUCCESSFUL"])
  {
    v4 = 1;
  }

  else if ([resultCopy isEqualToString:@"ABORTED"])
  {
    v4 = 2;
  }

  else if ([resultCopy isEqualToString:@"REJECTED"])
  {
    v4 = 3;
  }

  else if ([resultCopy isEqualToString:@"RESULT_NONE"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)rat
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_rat;
  }

  else
  {
    return 0;
  }
}

- (void)setHasRat:(BOOL)rat
{
  if (rat)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"SYS_RAT_GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_UMTS"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_TDS"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_NR5G"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"SYS_RAT_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)searchType
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_searchType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSearchType:(BOOL)type
{
  if (type)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"NONE"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"SLS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DBS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"DBS_MCC"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RBS"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"SBS"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"FBS"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"SLS_DBS"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"ESLS"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"EARLY_MCC_SLS"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)searchReason
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_searchReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSearchReason:(BOOL)reason
{
  if (reason)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsSearchReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"INVALID"])
  {
    v4 = 0;
  }

  else if ([reasonCopy isEqualToString:@"CELL_SEL"])
  {
    v4 = 1;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_HPPLMN"])
  {
    v4 = 2;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_MANUAL"])
  {
    v4 = 3;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_OOS"])
  {
    v4 = 4;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_FAST_MCC"])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_CSG"])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:@"PLMN_OTHER"])
  {
    v4 = 7;
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

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogPlmnSearchEvent;
  v4 = [(AWDMETRICSKCellularPowerLogPlmnSearchEvent *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogPlmnSearchEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v7 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v8 = self->_result;
  if (v8 >= 5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_result];
  }

  else
  {
    v9 = off_279A10408[v8];
  }

  [dictionary setObject:v9 forKey:@"result"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_32;
  }

LABEL_17:
  rat = self->_rat;
  if (rat > 2)
  {
    if (rat == 3)
    {
      v11 = @"SYS_RAT_TDS";
      goto LABEL_31;
    }

    if (rat != 4)
    {
      if (rat == 255)
      {
        v11 = @"SYS_RAT_INVALID";
        goto LABEL_31;
      }

      goto LABEL_28;
    }

    v11 = @"SYS_RAT_NR5G";
  }

  else
  {
    if (!rat)
    {
      v11 = @"SYS_RAT_GSM";
      goto LABEL_31;
    }

    if (rat != 1)
    {
      if (rat == 2)
      {
        v11 = @"SYS_RAT_LTE";
        goto LABEL_31;
      }

LABEL_28:
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
      goto LABEL_31;
    }

    v11 = @"SYS_RAT_UMTS";
  }

LABEL_31:
  [dictionary setObject:v11 forKey:@"rat"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_36;
  }

LABEL_32:
  searchType = self->_searchType;
  if (searchType >= 0xA)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_searchType];
  }

  else
  {
    v13 = off_279A10430[searchType];
  }

  [dictionary setObject:v13 forKey:@"search_type"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_40;
  }

LABEL_36:
  searchReason = self->_searchReason;
  if (searchReason >= 8)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_searchReason];
  }

  else
  {
    v15 = off_279A10480[searchReason];
  }

  [dictionary setObject:v15 forKey:@"search_reason"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_40:
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_duration];
  [dictionary setObject:v16 forKey:@"duration"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v5 forKey:@"subs_id"];
  }

LABEL_9:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  result = self->_result;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  searchType = self->_searchType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  searchReason = self->_searchReason;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 40) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_result;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 5) = self->_rat;
  *(toCopy + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 8) = self->_searchType;
  *(toCopy + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 7) = self->_searchReason;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  *(toCopy + 4) = self->_duration;
  *(toCopy + 40) |= 2u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_8:
    *(toCopy + 9) = self->_subsId;
    *(toCopy + 40) |= 0x40u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = self->_timestamp;
    *(result + 40) |= 1u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_result;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 5) = self->_rat;
  *(result + 40) |= 4u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 8) = self->_searchType;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 7) = self->_searchReason;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

LABEL_15:
  *(result + 4) = self->_duration;
  *(result + 40) |= 2u;
  if ((*&self->_has & 0x40) == 0)
  {
    return result;
  }

LABEL_8:
  *(result + 9) = self->_subsId;
  *(result + 40) |= 0x40u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_36:
    v5 = 0;
    goto LABEL_37;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_result != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_rat != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_searchType != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_searchReason != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_duration != *(equalCopy + 4))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_36;
  }

  v5 = (*(equalCopy + 40) & 0x40) == 0;
  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 40) & 0x40) == 0 || self->_subsId != *(equalCopy + 9))
    {
      goto LABEL_36;
    }

    v5 = 1;
  }

LABEL_37:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_result;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_rat;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_searchType;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_searchReason;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_duration;
  if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 40) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_result = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_rat = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_searchType = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_searchReason = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 2) == 0)
  {
LABEL_7:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  self->_duration = *(fromCopy + 4);
  *&self->_has |= 2u;
  if ((*(fromCopy + 40) & 0x40) != 0)
  {
LABEL_8:
    self->_subsId = *(fromCopy + 9);
    *&self->_has |= 0x40u;
  }

LABEL_9:
}

@end