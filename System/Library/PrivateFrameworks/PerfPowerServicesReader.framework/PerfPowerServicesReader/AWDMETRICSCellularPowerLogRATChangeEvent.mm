@interface AWDMETRICSCellularPowerLogRATChangeEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEvent:(id)a3;
- (int)event;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEvent:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSCellularPowerLogRATChangeEvent

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
  if ([v3 isEqualToString:@"HDR_ALMP"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CDMA_TO_LTE_START"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"GSM_TO_WCDMA_START"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"GSM_TO_LTE_START"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_GSM_START"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_LTE_START"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"LTE_TO_HYBRID_START"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"LTE_TO_1X_START"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"LTE_TO_GSM_START"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"LTE_TO_WCDMA_START"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"GERAN_TO_GSM_START"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"GERAN_TO_WCDMA_START"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"GERAN_TO_LTE_START"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"DS_GERAN_GRR_START"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_LTE_START"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_WCDMA_START"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CDMA_TO_LTE_SUCCESS"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"GSM_TO_WCDMA_SUCCESS"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"GSM_TO_LTE_SUCCESS"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_GSM_SUCCESS"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_LTE_SUCCESS"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"LTE_TO_HYBRID_SUCCESS"])
  {
    v4 = 21;
  }

  else if ([v3 isEqualToString:@"LTE_TO_1X_SUCCESS"])
  {
    v4 = 22;
  }

  else if ([v3 isEqualToString:@"LTE_TO_GSM_SUCCESS"])
  {
    v4 = 23;
  }

  else if ([v3 isEqualToString:@"LTE_TO_WCDMA_SUCCESS"])
  {
    v4 = 24;
  }

  else if ([v3 isEqualToString:@"GERAN_SUCCESS"])
  {
    v4 = 25;
  }

  else if ([v3 isEqualToString:@"DS_GERAN_GRR_SUCCESS"])
  {
    v4 = 26;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_LTE_SUCCESS"])
  {
    v4 = 27;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_WCDMA_SUCCESS"])
  {
    v4 = 28;
  }

  else if ([v3 isEqualToString:@"CDMA_TO_LTE_FAIL"])
  {
    v4 = 29;
  }

  else if ([v3 isEqualToString:@"GSM_TO_WCDMA_FAIL"])
  {
    v4 = 30;
  }

  else if ([v3 isEqualToString:@"GSM_TO_LTE_FAIL"])
  {
    v4 = 31;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_GSM_FAIL"])
  {
    v4 = 32;
  }

  else if ([v3 isEqualToString:@"WCDMA_TO_LTE_FAIL"])
  {
    v4 = 33;
  }

  else if ([v3 isEqualToString:@"LTE_TO_HYBRID_FAIL"])
  {
    v4 = 34;
  }

  else if ([v3 isEqualToString:@"LTE_TO_1X_FAIL"])
  {
    v4 = 35;
  }

  else if ([v3 isEqualToString:@"LTE_TO_GSM_FAIL"])
  {
    v4 = 36;
  }

  else if ([v3 isEqualToString:@"LTE_TO_WCDMA_FAIL"])
  {
    v4 = 37;
  }

  else if ([v3 isEqualToString:@"GERAN_FAIL"])
  {
    v4 = 38;
  }

  else if ([v3 isEqualToString:@"DS_GERAN_GRR_FAIL"])
  {
    v4 = 39;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_LTE_FAIL"])
  {
    v4 = 40;
  }

  else if ([v3 isEqualToString:@"DS_GSM_TO_WCDMA_FAIL"])
  {
    v4 = 41;
  }

  else if ([v3 isEqualToString:@"NR_TO_LTE_START"])
  {
    v4 = 42;
  }

  else if ([v3 isEqualToString:@"NR_TO_LTE_SUCCESS"])
  {
    v4 = 43;
  }

  else if ([v3 isEqualToString:@"NR_TO_LTE_FAIL"])
  {
    v4 = 44;
  }

  else if ([v3 isEqualToString:@"LTE_TO_NR_START"])
  {
    v4 = 45;
  }

  else if ([v3 isEqualToString:@"LTE_TO_NR_SUCCESS"])
  {
    v4 = 46;
  }

  else if ([v3 isEqualToString:@"LTE_TO_NR_FAIL"])
  {
    v4 = 47;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSubsId:(BOOL)a3
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
  v8.super_class = AWDMETRICSCellularPowerLogRATChangeEvent;
  v4 = [(AWDMETRICSCellularPowerLogRATChangeEvent *)&v8 description];
  v5 = [(AWDMETRICSCellularPowerLogRATChangeEvent *)self dictionaryRepresentation];
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

  event = self->_event;
  if (event >= 0x30)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_event];
  }

  else
  {
    v9 = off_279A10FC8[event];
  }

  [v3 setObject:v9 forKey:@"event"];

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v5 forKey:@"subs_id"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
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

  event = self->_event;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    subsId = self->_subsId;
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
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
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

  *(v4 + 4) = self->_event;
  *(v4 + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v4 + 5) = self->_subsId;
    *(v4 + 24) |= 4u;
  }

LABEL_5:
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

  *(result + 4) = self->_event;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_subsId;
  *(result + 24) |= 4u;
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
    if ((*(v4 + 24) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_event != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_subsId != *(v4 + 5))
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

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_event;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_subsId;
  return v3 ^ v2 ^ v4;
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

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_event = *(v4 + 4);
  *&self->_has |= 2u;
  if ((*(v4 + 24) & 4) != 0)
  {
LABEL_4:
    self->_subsId = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end