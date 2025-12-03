@interface AWDMETRICSKCellularPowerLogNRSCGRel
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)event;
- (int)StringAsFr:(id)fr;
- (int)event;
- (int)fr;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEvent:(BOOL)event;
- (void)setHasFr:(BOOL)fr;
- (void)setHasIsDataPreferred:(BOOL)preferred;
- (void)setHasNumSubs:(BOOL)subs;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNRSCGRel

- (int)event
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_event;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEvent:(BOOL)event
{
  if (event)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"INVALID"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"RELEASE_BY_NW"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_GERAN_UTRAN"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_SUCCESS"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"MCG_RLF"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"MCG_DATA_INACTIVITY"])
  {
    v4 = 5;
  }

  else if ([eventCopy isEqualToString:@"MCG_MSIM"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"MCG_ABORT"])
  {
    v4 = 7;
  }

  else if ([eventCopy isEqualToString:@"MCG_RECONFIG_FAILURE"])
  {
    v4 = 8;
  }

  else if ([eventCopy isEqualToString:@"MCG_OTHER_FAILURE"])
  {
    v4 = 9;
  }

  else if ([eventCopy isEqualToString:@"SCG_RECONFIG_FAILURE"])
  {
    v4 = 10;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_UNKNOWN"])
  {
    v4 = 11;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_FREQ_NOT_IMPLEMENTED"])
  {
    v4 = 12;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_CONFIG_UNKNOWN"])
  {
    v4 = 13;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_INVALID_CONFIG"])
  {
    v4 = 14;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_RRC_CONN"])
  {
    v4 = 15;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_MIB_ACQ"])
  {
    v4 = 16;
  }

  else if ([eventCopy isEqualToString:@"SCG_SDM_RELEASE"])
  {
    v4 = 17;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_SUCCESS"])
  {
    v4 = 18;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_FAIL_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_FAIL_CONFIG"])
  {
    v4 = 20;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_FAIL_MIB_ACQ"])
  {
    v4 = 21;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_FAIL_RACH"])
  {
    v4 = 22;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_EUTRA_FAIL_OTHER"])
  {
    v4 = 23;
  }

  else if ([eventCopy isEqualToString:@"HO_TO_NRSA_FAIL_NR_NULL_CIPHERING"])
  {
    v4 = 24;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)fr
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_fr;
  }

  else
  {
    return 1;
  }
}

- (void)setHasFr:(BOOL)fr
{
  if (fr)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsFr:(id)fr
{
  frCopy = fr;
  if ([frCopy isEqualToString:@"POWERLOG_SUB6"])
  {
    v4 = 1;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_MMWAVE"])
  {
    v4 = 2;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_SUB6_MMWAVE"])
  {
    v4 = 3;
  }

  else if ([frCopy isEqualToString:@"POWERLOG_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumSubs:(BOOL)subs
{
  if (subs)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDataPreferred:(BOOL)preferred
{
  if (preferred)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNRSCGRel;
  v4 = [(AWDMETRICSKCellularPowerLogNRSCGRel *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRSCGRel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v9 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  event = self->_event;
  if (event >= 0x19)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
  }

  else
  {
    v11 = off_27825A8C0[event];
  }

  [dictionary setObject:v11 forKey:@"event"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_19:
  fr = self->_fr;
  if (fr > 2)
  {
    if (fr != 3)
    {
      if (fr == 255)
      {
        v13 = @"POWERLOG_INVALID";
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v13 = @"POWERLOG_SUB6_MMWAVE";
  }

  else
  {
    if (fr != 1)
    {
      if (fr == 2)
      {
        v13 = @"POWERLOG_MMWAVE";
        goto LABEL_29;
      }

LABEL_26:
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_fr];
      goto LABEL_29;
    }

    v13 = @"POWERLOG_SUB6";
  }

LABEL_29:
  [dictionary setObject:v13 forKey:@"fr"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_30:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [dictionary setObject:v14 forKey:@"subs_id"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
    [dictionary setObject:v5 forKey:@"num_subs"];
  }

LABEL_7:
  plmn = self->_plmn;
  if (plmn)
  {
    [dictionary setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [dictionary setObject:v7 forKey:@"is_data_preferred"];
  }

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
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  event = self->_event;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  fr = self->_fr;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_7:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isDataPreferred = self->_isDataPreferred;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 4) = self->_event;
  *(toCopy + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(toCopy + 5) = self->_fr;
  *(toCopy + 48) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  *(toCopy + 10) = self->_subsId;
  *(toCopy + 48) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(toCopy + 6) = self->_numSubs;
    *(toCopy + 48) |= 8u;
  }

LABEL_7:
  if (self->_plmn)
  {
    v6 = toCopy;
    [toCopy setPlmn:?];
    toCopy = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(toCopy + 44) = self->_isDataPreferred;
    *(toCopy + 48) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_event;
  *(v5 + 48) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v5 + 20) = self->_fr;
  *(v5 + 48) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_5:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(v5 + 40) = self->_subsId;
  *(v5 + 48) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v5 + 24) = self->_numSubs;
    *(v5 + 48) |= 8u;
  }

LABEL_7:
  v8 = [(NSData *)self->_plmn copyWithZone:zone];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if (has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 48))
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_event != *(equalCopy + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_fr != *(equalCopy + 5))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 48) & 0x10) == 0 || self->_subsId != *(equalCopy + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 0x10) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 48) & 8) == 0 || self->_numSubs != *(equalCopy + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 48) & 8) != 0)
  {
    goto LABEL_32;
  }

  plmn = self->_plmn;
  if (plmn | *(equalCopy + 4))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  v8 = (v6 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(equalCopy + 44) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(equalCopy + 44))
      {
        goto LABEL_32;
      }

      v8 = 1;
      goto LABEL_33;
    }

LABEL_32:
    v8 = 0;
  }

LABEL_33:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_event;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_fr;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v5 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v6 = 2654435761 * self->_subsId;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_numSubs;
    goto LABEL_12;
  }

LABEL_11:
  v7 = 0;
LABEL_12:
  v8 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v9 = 2654435761 * self->_isDataPreferred;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v9 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_event = *(fromCopy + 4);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 48);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_fr = *(fromCopy + 5);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 48);
  if ((v5 & 0x10) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  self->_subsId = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 48) & 8) != 0)
  {
LABEL_6:
    self->_numSubs = *(fromCopy + 6);
    *&self->_has |= 8u;
  }

LABEL_7:
  if (*(fromCopy + 4))
  {
    v6 = fromCopy;
    [(AWDMETRICSKCellularPowerLogNRSCGRel *)self setPlmn:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 48) & 0x20) != 0)
  {
    self->_isDataPreferred = *(fromCopy + 44);
    *&self->_has |= 0x20u;
  }
}

@end