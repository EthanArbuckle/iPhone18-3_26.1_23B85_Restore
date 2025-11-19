@interface KCellularLteFwDuplexMode
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsInTddMode:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularLteFwDuplexMode

- (void)setHasIsInTddMode:(BOOL)a3
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
  v8.super_class = KCellularLteFwDuplexMode;
  v4 = [(KCellularLteFwDuplexMode *)&v8 description];
  v5 = [(KCellularLteFwDuplexMode *)self dictionaryRepresentation];
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isInTddMode];
  [v3 setObject:v8 forKey:@"is_in_tdd_mode"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v5 forKey:@"subs_id"];
  }

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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  isInTddMode = self->_isInTddMode;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 20) = self->_isInTddMode;
  *(v4 + 24) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(v4 + 4) = self->_subsId;
    *(v4 + 24) |= 2u;
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
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 20) = self->_isInTddMode;
  *(result + 24) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 4) = self->_subsId;
  *(result + 24) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((*(v4 + 24) & 4) == 0)
    {
      goto LABEL_9;
    }

LABEL_14:
    v5 = 0;
    goto LABEL_15;
  }

  if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_14;
  }

  v7 = *(v4 + 20);
  if (self->_isInTddMode)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 20))
  {
    goto LABEL_14;
  }

LABEL_9:
  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_subsId != *(v4 + 4))
    {
      goto LABEL_14;
    }

    v5 = 1;
  }

LABEL_15:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isInTddMode;
  if ((*&self->_has & 2) == 0)
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
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_isInTddMode = *(v4 + 20);
  *&self->_has |= 4u;
  if ((*(v4 + 24) & 2) != 0)
  {
LABEL_4:
    self->_subsId = *(v4 + 4);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end