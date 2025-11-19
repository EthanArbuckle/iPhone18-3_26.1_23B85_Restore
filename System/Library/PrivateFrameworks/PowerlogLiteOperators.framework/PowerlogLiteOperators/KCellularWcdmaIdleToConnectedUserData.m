@interface KCellularWcdmaIdleToConnectedUserData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsUplink:(BOOL)a3;
- (void)setHasSubsId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation KCellularWcdmaIdleToConnectedUserData

- (void)setHasIsUplink:(BOOL)a3
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
  v8.super_class = KCellularWcdmaIdleToConnectedUserData;
  v4 = [(KCellularWcdmaIdleToConnectedUserData *)&v8 description];
  v5 = [(KCellularWcdmaIdleToConnectedUserData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUplink];
    [v3 setObject:v6 forKey:@"is_uplink"];
  }

  userData = self->_userData;
  if (userData)
  {
    [v3 setObject:userData forKey:@"user_data"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [v3 setObject:v8 forKey:@"subs_id"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    isUplink = self->_isUplink;
    PBDataWriterWriteBOOLField();
  }

  if (self->_userData)
  {
    PBDataWriterWriteDataField();
  }

  if ((*&self->_has & 2) != 0)
  {
    subsId = self->_subsId;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v4 + 32) = self->_isUplink;
    *(v4 + 36) |= 4u;
  }

  if (self->_userData)
  {
    v6 = v4;
    [v4 setUserData:?];
    v4 = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 4) = self->_subsId;
    *(v4 + 36) |= 2u;
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
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_isUplink;
    *(v5 + 36) |= 4u;
  }

  v8 = [(NSData *)self->_userData copyWithZone:a3];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_subsId;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(v4 + 36);
  if (has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(v4 + 32);
    if (self->_isUplink)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_17;
  }

  userData = self->_userData;
  if (!(userData | *(v4 + 3)))
  {
    goto LABEL_12;
  }

  if (![(NSData *)userData isEqual:?])
  {
LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  has = self->_has;
  v6 = *(v4 + 36);
LABEL_12:
  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_subsId != *(v4 + 4))
    {
      goto LABEL_17;
    }

    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_isUplink;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSData *)self->_userData hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_subsId;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v6 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_isUplink = *(v4 + 32);
    *&self->_has |= 4u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(KCellularWcdmaIdleToConnectedUserData *)self setUserData:?];
    v4 = v6;
  }

  if ((*(v4 + 36) & 2) != 0)
  {
    self->_subsId = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end