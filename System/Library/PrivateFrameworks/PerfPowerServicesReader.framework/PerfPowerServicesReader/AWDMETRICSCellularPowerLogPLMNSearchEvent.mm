@interface AWDMETRICSCellularPowerLogPLMNSearchEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNetworkSelectionMode:(id)mode;
- (int)StringAsRat:(id)rat;
- (int)StringAsSearchType:(id)type;
- (int)StringAsState:(id)state;
- (int)networkSelectionMode;
- (int)rat;
- (int)searchType;
- (int)state;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasNetworkSelectionMode:(BOOL)mode;
- (void)setHasRat:(BOOL)rat;
- (void)setHasSearchType:(BOOL)type;
- (void)setHasState:(BOOL)state;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSCellularPowerLogPLMNSearchEvent

- (int)state
{
  if ((*&self->_has & 0x20) != 0)
  {
    return self->_state;
  }

  else
  {
    return 0;
  }
}

- (void)setHasState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (int)StringAsState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"COMPLETED"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [stateCopy isEqualToString:@"ABORTED"];
  }

  return v4;
}

- (int)rat
{
  if ((*&self->_has & 8) != 0)
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
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsRat:(id)rat
{
  ratCopy = rat;
  if ([ratCopy isEqualToString:@"GSM"])
  {
    v4 = 0;
  }

  else if ([ratCopy isEqualToString:@"UMTS"])
  {
    v4 = 1;
  }

  else if ([ratCopy isEqualToString:@"LTE"])
  {
    v4 = 2;
  }

  else if ([ratCopy isEqualToString:@"TDS"])
  {
    v4 = 3;
  }

  else if ([ratCopy isEqualToString:@"NR"])
  {
    v4 = 4;
  }

  else if ([ratCopy isEqualToString:@"CDMA"])
  {
    v4 = 5;
  }

  else if ([ratCopy isEqualToString:@"HDR"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)searchType
{
  if ((*&self->_has & 0x10) != 0)
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
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsSearchType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"SLS"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"FAST_MCC_SLS"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"DBS"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"RBS"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"COMPLETE"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"ESLS"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)networkSelectionMode
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_networkSelectionMode;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNetworkSelectionMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsNetworkSelectionMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"AUTOMATIC"])
  {
    v4 = 0;
  }

  else if ([modeCopy isEqualToString:@"MANUAL"])
  {
    v4 = 1;
  }

  else if ([modeCopy isEqualToString:@"LIMITED"])
  {
    v4 = 2;
  }

  else if ([modeCopy isEqualToString:@"LIMITED_ROUTINE_ACQUISITION"])
  {
    v4 = 3;
  }

  else if ([modeCopy isEqualToString:@"LIMITED_MANUAL_ACQUISITION"])
  {
    v4 = 4;
  }

  else if ([modeCopy isEqualToString:@"MANUAL_CSG"])
  {
    v4 = 5;
  }

  else if ([modeCopy isEqualToString:@"AUTOMATIC_CAMP_ONLY"])
  {
    v4 = 6;
  }

  else if ([modeCopy isEqualToString:@"MANUAL_CAMP_ONLY"])
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
  v8.super_class = AWDMETRICSCellularPowerLogPLMNSearchEvent;
  v4 = [(AWDMETRICSCellularPowerLogPLMNSearchEvent *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSCellularPowerLogPLMNSearchEvent *)self dictionaryRepresentation];
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  if (state)
  {
    if (state == 1)
    {
      v9 = @"ABORTED";
    }

    else
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_state];
    }
  }

  else
  {
    v9 = @"COMPLETED";
  }

  [dictionary setObject:v9 forKey:@"state"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_19:
  rat = self->_rat;
  if (rat >= 7)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_rat];
  }

  else
  {
    v11 = off_279A10F20[rat];
  }

  [dictionary setObject:v11 forKey:@"rat"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_23:
  searchType = self->_searchType;
  if (searchType >= 6)
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_searchType];
  }

  else
  {
    v13 = off_279A10F58[searchType];
  }

  [dictionary setObject:v13 forKey:@"search_type"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_31;
  }

LABEL_27:
  networkSelectionMode = self->_networkSelectionMode;
  if (networkSelectionMode >= 8)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkSelectionMode];
  }

  else
  {
    v15 = off_279A10F88[networkSelectionMode];
  }

  [dictionary setObject:v15 forKey:@"network_selection_mode"];

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

LABEL_31:
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  state = self->_state;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  rat = self->_rat;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  searchType = self->_searchType;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  networkSelectionMode = self->_networkSelectionMode;
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 8) = self->_state;
  *(toCopy + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(toCopy + 6) = self->_rat;
  *(toCopy + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(toCopy + 7) = self->_searchType;
  *(toCopy + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 5) = self->_networkSelectionMode;
  *(toCopy + 40) |= 4u;
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
    if ((has & 0x20) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_state;
  *(result + 40) |= 0x20u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(result + 6) = self->_rat;
  *(result + 40) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(result + 7) = self->_searchType;
  *(result + 40) |= 0x10u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 5) = self->_networkSelectionMode;
  *(result + 40) |= 4u;
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

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 40) & 0x20) == 0 || self->_state != *(equalCopy + 8))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x20) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 40) & 8) == 0 || self->_rat != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 8) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 40) & 0x10) == 0 || self->_searchType != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_networkSelectionMode != *(equalCopy + 5))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 40) & 4) != 0)
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
    if ((*&self->_has & 0x20) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_state;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 8) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_rat;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_searchType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_networkSelectionMode;
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
    if ((v5 & 0x20) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(fromCopy + 40) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  self->_state = *(fromCopy + 8);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  self->_rat = *(fromCopy + 6);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 40);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  self->_searchType = *(fromCopy + 7);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 40);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_networkSelectionMode = *(fromCopy + 5);
  *&self->_has |= 4u;
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