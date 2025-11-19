@interface AWDMETRICSKCellularPowerLogNRSCGRel
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)a3;
- (int)StringAsFr:(id)a3;
- (int)event;
- (int)fr;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEvent:(BOOL)a3;
- (void)setHasFr:(BOOL)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasEvent:(BOOL)a3
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

- (int)StringAsEvent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"INVALID"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"RELEASE_BY_NW"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"HO_TO_GERAN_UTRAN"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_SUCCESS"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MCG_RLF"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MCG_DATA_INACTIVITY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"MCG_MSIM"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MCG_ABORT"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"MCG_RECONFIG_FAILURE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"MCG_OTHER_FAILURE"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"SCG_RECONFIG_FAILURE"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_UNKNOWN"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_FREQ_NOT_IMPLEMENTED"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_CONFIG_UNKNOWN"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_INVALID_CONFIG"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_RRC_CONN"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_MIB_ACQ"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"SCG_SDM_RELEASE"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_SUCCESS"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_FAIL_UNKNOWN"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_FAIL_CONFIG"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_FAIL_MIB_ACQ"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_FAIL_RACH"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"HO_TO_EUTRA_FAIL_OTHER"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"HO_TO_NRSA_FAIL_NR_NULL_CIPHERING"])
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

- (void)setHasFr:(BOOL)a3
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

- (int)StringAsFr:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"POWERLOG_SUB6"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"POWERLOG_MMWAVE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"POWERLOG_SUB6_MMWAVE"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"POWERLOG_INVALID"])
  {
    v4 = 255;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasNumSubs:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsDataPreferred:(BOOL)a3
{
  if (a3)
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
  v5 = [(AWDMETRICSKCellularPowerLogNRSCGRel *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v9 forKey:@"timestamp"];

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

  [v3 setObject:v11 forKey:@"event"];

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
  [v3 setObject:v13 forKey:@"fr"];

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
  [v3 setObject:v14 forKey:@"subs_id"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_7:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v7 forKey:@"is_data_preferred"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 48) |= 1u;
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

  *(v4 + 4) = self->_event;
  *(v4 + 48) |= 2u;
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
  *(v4 + 5) = self->_fr;
  *(v4 + 48) |= 4u;
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
  *(v4 + 10) = self->_subsId;
  *(v4 + 48) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v4 + 6) = self->_numSubs;
    *(v4 + 48) |= 8u;
  }

LABEL_7:
  if (self->_plmn)
  {
    v6 = v4;
    [v4 setPlmn:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v4 + 44) = self->_isDataPreferred;
    *(v4 + 48) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = *(v6 + 32);
  *(v6 + 32) = v8;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v6 + 44) = self->_isDataPreferred;
    *(v6 + 48) |= 0x20u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(v4 + 48);
  if (has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_32;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_event != *(v4 + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_fr != *(v4 + 5))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 48) & 0x10) == 0 || self->_subsId != *(v4 + 10))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 0x10) != 0)
  {
    goto LABEL_32;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_numSubs != *(v4 + 6))
    {
      goto LABEL_32;
    }
  }

  else if ((*(v4 + 48) & 8) != 0)
  {
    goto LABEL_32;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 4))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_32;
    }

    has = self->_has;
    v6 = *(v4 + 48);
  }

  v8 = (v6 & 0x20) == 0;
  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(v4 + 44) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*(v4 + 44))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 48);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
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

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_event = *(v4 + 4);
  *&self->_has |= 2u;
  v5 = *(v4 + 48);
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
  self->_fr = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 48);
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
  self->_subsId = *(v4 + 10);
  *&self->_has |= 0x10u;
  if ((*(v4 + 48) & 8) != 0)
  {
LABEL_6:
    self->_numSubs = *(v4 + 6);
    *&self->_has |= 8u;
  }

LABEL_7:
  if (*(v4 + 4))
  {
    v6 = v4;
    [(AWDMETRICSKCellularPowerLogNRSCGRel *)self setPlmn:?];
    v4 = v6;
  }

  if ((*(v4 + 48) & 0x20) != 0)
  {
    self->_isDataPreferred = *(v4 + 44);
    *&self->_has |= 0x20u;
  }
}

@end