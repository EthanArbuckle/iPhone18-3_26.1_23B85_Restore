@interface AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsDataPreferred:(BOOL)a3;
- (void)setHasNumSubs:(BOOL)a3;
- (void)setHasPagingDrxCycle:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle

- (void)setHasPagingDrxCycle:(BOOL)a3
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

- (void)setHasSubsId:(BOOL)a3
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

- (void)setHasNumSubs:(BOOL)a3
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

- (void)setHasIsDataPreferred:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle;
  v4 = [(AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle *)&v8 description];
  v5 = [(AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle *)self dictionaryRepresentation];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_pagingDrxCycle];
  [v3 setObject:v10 forKey:@"paging_drx_cycle"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
  [v3 setObject:v11 forKey:@"subs_id"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numSubs];
    [v3 setObject:v5 forKey:@"num_subs"];
  }

LABEL_6:
  plmn = self->_plmn;
  if (plmn)
  {
    [v3 setObject:plmn forKey:@"plmn"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDataPreferred];
    [v3 setObject:v7 forKey:@"is_data_preferred"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  pagingDrxCycle = self->_pagingDrxCycle;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  subsId = self->_subsId;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    numSubs = self->_numSubs;
    PBDataWriterWriteUint32Field();
  }

LABEL_6:
  if (self->_plmn)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 0x10) != 0)
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
    *(v4 + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 5) = self->_pagingDrxCycle;
  *(v4 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  *(v4 + 8) = self->_subsId;
  *(v4 + 40) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(v4 + 4) = self->_numSubs;
    *(v4 + 40) |= 2u;
  }

LABEL_6:
  if (self->_plmn)
  {
    v6 = v4;
    [v4 setPlmn:?];
    v4 = v6;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 36) = self->_isDataPreferred;
    *(v4 + 40) |= 0x10u;
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
    *(v5 + 40) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 20) = self->_pagingDrxCycle;
  *(v5 + 40) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  *(v5 + 32) = self->_subsId;
  *(v5 + 40) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_numSubs;
    *(v5 + 40) |= 2u;
  }

LABEL_6:
  v8 = [(NSData *)self->_plmn copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 36) = self->_isDataPreferred;
    *(v6 + 40) |= 0x10u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_pagingDrxCycle != *(v4 + 5))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_subsId != *(v4 + 8))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_numSubs != *(v4 + 4))
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_27;
  }

  plmn = self->_plmn;
  if (plmn | *(v4 + 3))
  {
    if (![(NSData *)plmn isEqual:?])
    {
      goto LABEL_27;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 40) & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 40) & 0x10) != 0)
    {
      if (self->_isDataPreferred)
      {
        if ((*(v4 + 36) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (*(v4 + 36))
      {
        goto LABEL_27;
      }

      v8 = 1;
      goto LABEL_28;
    }

LABEL_27:
    v8 = 0;
  }

LABEL_28:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_pagingDrxCycle;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = 0;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = 2654435761 * self->_subsId;
  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_numSubs;
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:
  v7 = [(NSData *)self->_plmn hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v8 = 2654435761 * self->_isDataPreferred;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 40);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 40);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*(v4 + 40) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_pagingDrxCycle = *(v4 + 5);
  *&self->_has |= 4u;
  v5 = *(v4 + 40);
  if ((v5 & 8) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  self->_subsId = *(v4 + 8);
  *&self->_has |= 8u;
  if ((*(v4 + 40) & 2) != 0)
  {
LABEL_5:
    self->_numSubs = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_6:
  if (*(v4 + 3))
  {
    v6 = v4;
    [(AWDMETRICSKCellularPowerLogWcdmaPagingDRXCycle *)self setPlmn:?];
    v4 = v6;
  }

  if ((*(v4 + 40) & 0x10) != 0)
  {
    self->_isDataPreferred = *(v4 + 36);
    *&self->_has |= 0x10u;
  }
}

@end