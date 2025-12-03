@interface AWDMETRICSKCellularPowerLogNRCdrxConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEndc:(BOOL)endc;
- (void)setHasSubsId:(BOOL)id;
- (void)setHasVonrCallOngoing:(BOOL)ongoing;
- (void)writeTo:(id)to;
@end

@implementation AWDMETRICSKCellularPowerLogNRCdrxConfig

- (void)setHasVonrCallOngoing:(BOOL)ongoing
{
  if (ongoing)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsEndc:(BOOL)endc
{
  if (endc)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSubsId:(BOOL)id
{
  if (id)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDMETRICSKCellularPowerLogNRCdrxConfig;
  v4 = [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)&v8 description];
  dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  mcgDefaultDrx = self->_mcgDefaultDrx;
  if (mcgDefaultDrx)
  {
    dictionaryRepresentation = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)mcgDefaultDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"mcg_default_drx"];
  }

  mcgSecondaryDrx = self->_mcgSecondaryDrx;
  if (mcgSecondaryDrx)
  {
    dictionaryRepresentation2 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)mcgSecondaryDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mcg_secondary_drx"];
  }

  scgDefaultDrx = self->_scgDefaultDrx;
  if (scgDefaultDrx)
  {
    dictionaryRepresentation3 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)scgDefaultDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"scg_default_drx"];
  }

  scgSecondaryDrx = self->_scgSecondaryDrx;
  if (scgSecondaryDrx)
  {
    dictionaryRepresentation4 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)scgSecondaryDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"scg_secondary_drx"];
  }

  endcScgDefaultDrx = self->_endcScgDefaultDrx;
  if (endcScgDefaultDrx)
  {
    dictionaryRepresentation5 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)endcScgDefaultDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"endc_scg_default_drx"];
  }

  endcScgSecondaryDrx = self->_endcScgSecondaryDrx;
  if (endcScgSecondaryDrx)
  {
    dictionaryRepresentation6 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)endcScgSecondaryDrx dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"endc_scg_secondary_drx"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_vonrCallOngoing];
    [dictionary setObject:v20 forKey:@"vonr_call_ongoing"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndc];
  [dictionary setObject:v21 forKey:@"is_endc"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v18 forKey:@"subs_id"];
  }

LABEL_19:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
  }

  if (self->_mcgDefaultDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_mcgSecondaryDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_scgDefaultDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_scgSecondaryDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endcScgDefaultDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endcScgSecondaryDrx)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    vonrCallOngoing = self->_vonrCallOngoing;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  isEndc = self->_isEndc;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }

LABEL_19:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 72) |= 1u;
  }

  v6 = toCopy;
  if (self->_mcgDefaultDrx)
  {
    [toCopy setMcgDefaultDrx:?];
    toCopy = v6;
  }

  if (self->_mcgSecondaryDrx)
  {
    [v6 setMcgSecondaryDrx:?];
    toCopy = v6;
  }

  if (self->_scgDefaultDrx)
  {
    [v6 setScgDefaultDrx:?];
    toCopy = v6;
  }

  if (self->_scgSecondaryDrx)
  {
    [v6 setScgSecondaryDrx:?];
    toCopy = v6;
  }

  if (self->_endcScgDefaultDrx)
  {
    [v6 setEndcScgDefaultDrx:?];
    toCopy = v6;
  }

  if (self->_endcScgSecondaryDrx)
  {
    [v6 setEndcScgSecondaryDrx:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(toCopy + 69) = self->_vonrCallOngoing;
    *(toCopy + 72) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_17:
      if ((has & 2) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 68) = self->_isEndc;
  *(toCopy + 72) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_18:
    *(toCopy + 16) = self->_subsId;
    *(toCopy + 72) |= 2u;
  }

LABEL_19:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 72) |= 1u;
  }

  v7 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_mcgDefaultDrx copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_mcgSecondaryDrx copyWithZone:zone];
  v10 = *(v6 + 40);
  *(v6 + 40) = v9;

  v11 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_scgDefaultDrx copyWithZone:zone];
  v12 = *(v6 + 48);
  *(v6 + 48) = v11;

  v13 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_scgSecondaryDrx copyWithZone:zone];
  v14 = *(v6 + 56);
  *(v6 + 56) = v13;

  v15 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_endcScgDefaultDrx copyWithZone:zone];
  v16 = *(v6 + 16);
  *(v6 + 16) = v15;

  v17 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_endcScgSecondaryDrx copyWithZone:zone];
  v18 = *(v6 + 24);
  *(v6 + 24) = v17;

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 68) = self->_isEndc;
    *(v6 + 72) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 69) = self->_vonrCallOngoing;
  *(v6 + 72) |= 8u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 64) = self->_subsId;
    *(v6 + 72) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  v5 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_38;
  }

  mcgDefaultDrx = self->_mcgDefaultDrx;
  if (mcgDefaultDrx | *(equalCopy + 4) && ![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)mcgDefaultDrx isEqual:?])
  {
    goto LABEL_38;
  }

  mcgSecondaryDrx = self->_mcgSecondaryDrx;
  if (mcgSecondaryDrx | *(equalCopy + 5))
  {
    if (![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)mcgSecondaryDrx isEqual:?])
    {
      goto LABEL_38;
    }
  }

  scgDefaultDrx = self->_scgDefaultDrx;
  if (scgDefaultDrx | *(equalCopy + 6))
  {
    if (![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)scgDefaultDrx isEqual:?])
    {
      goto LABEL_38;
    }
  }

  scgSecondaryDrx = self->_scgSecondaryDrx;
  if (scgSecondaryDrx | *(equalCopy + 7))
  {
    if (![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)scgSecondaryDrx isEqual:?])
    {
      goto LABEL_38;
    }
  }

  endcScgDefaultDrx = self->_endcScgDefaultDrx;
  if (endcScgDefaultDrx | *(equalCopy + 2))
  {
    if (![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)endcScgDefaultDrx isEqual:?])
    {
      goto LABEL_38;
    }
  }

  endcScgSecondaryDrx = self->_endcScgSecondaryDrx;
  if (endcScgSecondaryDrx | *(equalCopy + 3))
  {
    if (![(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)endcScgSecondaryDrx isEqual:?])
    {
      goto LABEL_38;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 72) & 8) == 0)
    {
      goto LABEL_38;
    }

    v13 = *(equalCopy + 69);
    if (self->_vonrCallOngoing)
    {
      if ((*(equalCopy + 69) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(equalCopy + 69))
    {
      goto LABEL_38;
    }
  }

  else if ((*(equalCopy + 72) & 8) != 0)
  {
    goto LABEL_38;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(equalCopy + 72) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    v12 = 0;
    goto LABEL_39;
  }

  if ((*(equalCopy + 72) & 4) == 0)
  {
    goto LABEL_38;
  }

  v14 = *(equalCopy + 68);
  if (self->_isEndc)
  {
    if ((*(equalCopy + 68) & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_38;
  }

LABEL_23:
  v12 = (*(equalCopy + 72) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_subsId != *(equalCopy + 16))
    {
      goto LABEL_38;
    }

    v12 = 1;
  }

LABEL_39:

  return v12;
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

  v4 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_mcgDefaultDrx hash];
  v5 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_mcgSecondaryDrx hash];
  v6 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_scgDefaultDrx hash];
  v7 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_scgSecondaryDrx hash];
  v8 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)self->_endcScgDefaultDrx hash];
  v9 = [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)self->_endcScgSecondaryDrx hash];
  if ((*&self->_has & 8) == 0)
  {
    v10 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v11 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v12 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
  }

  v10 = 2654435761 * self->_vonrCallOngoing;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v11 = 2654435761 * self->_isEndc;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = 2654435761 * self->_subsId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[9])
  {
    self->_timestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  mcgDefaultDrx = self->_mcgDefaultDrx;
  v7 = v5[4];
  v19 = v5;
  if (mcgDefaultDrx)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)mcgDefaultDrx mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setMcgDefaultDrx:?];
  }

  v5 = v19;
LABEL_9:
  mcgSecondaryDrx = self->_mcgSecondaryDrx;
  v9 = v5[5];
  if (mcgSecondaryDrx)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)mcgSecondaryDrx mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setMcgSecondaryDrx:?];
  }

  v5 = v19;
LABEL_15:
  scgDefaultDrx = self->_scgDefaultDrx;
  v11 = v5[6];
  if (scgDefaultDrx)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)scgDefaultDrx mergeFrom:?];
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setScgDefaultDrx:?];
  }

  v5 = v19;
LABEL_21:
  scgSecondaryDrx = self->_scgSecondaryDrx;
  v13 = v5[7];
  if (scgSecondaryDrx)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)scgSecondaryDrx mergeFrom:?];
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setScgSecondaryDrx:?];
  }

  v5 = v19;
LABEL_27:
  endcScgDefaultDrx = self->_endcScgDefaultDrx;
  v15 = v5[2];
  if (endcScgDefaultDrx)
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxConfigPerCellGroup *)endcScgDefaultDrx mergeFrom:?];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_33;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setEndcScgDefaultDrx:?];
  }

  v5 = v19;
LABEL_33:
  endcScgSecondaryDrx = self->_endcScgSecondaryDrx;
  v17 = v5[3];
  if (endcScgSecondaryDrx)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfigNrCdrxSecondaryConfigPerCellGroup *)endcScgSecondaryDrx mergeFrom:?];
  }

  else
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    [(AWDMETRICSKCellularPowerLogNRCdrxConfig *)self setEndcScgSecondaryDrx:?];
  }

  v5 = v19;
LABEL_39:
  v18 = *(v5 + 72);
  if ((v18 & 8) != 0)
  {
    self->_vonrCallOngoing = *(v5 + 69);
    *&self->_has |= 8u;
    v18 = *(v5 + 72);
    if ((v18 & 4) == 0)
    {
LABEL_41:
      if ((v18 & 2) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v5[9] & 4) == 0)
  {
    goto LABEL_41;
  }

  self->_isEndc = *(v5 + 68);
  *&self->_has |= 4u;
  if ((v5[9] & 2) != 0)
  {
LABEL_42:
    self->_subsId = *(v5 + 16);
    *&self->_has |= 2u;
  }

LABEL_43:

  MEMORY[0x2821F96F8]();
}

@end