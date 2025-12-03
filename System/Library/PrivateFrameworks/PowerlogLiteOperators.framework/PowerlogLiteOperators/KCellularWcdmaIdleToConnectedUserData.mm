@interface KCellularWcdmaIdleToConnectedUserData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsUplink:(BOOL)uplink;
- (void)setHasSubsId:(BOOL)id;
- (void)writeTo:(id)to;
@end

@implementation KCellularWcdmaIdleToConnectedUserData

- (void)setHasIsUplink:(BOOL)uplink
{
  if (uplink)
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
  v8.super_class = KCellularWcdmaIdleToConnectedUserData;
  v4 = [(KCellularWcdmaIdleToConnectedUserData *)&v8 description];
  dictionaryRepresentation = [(KCellularWcdmaIdleToConnectedUserData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isUplink];
    [dictionary setObject:v6 forKey:@"is_uplink"];
  }

  userData = self->_userData;
  if (userData)
  {
    [dictionary setObject:userData forKey:@"user_data"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_subsId];
    [dictionary setObject:v8 forKey:@"subs_id"];
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

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 32) = self->_isUplink;
    *(toCopy + 36) |= 4u;
  }

  if (self->_userData)
  {
    v6 = toCopy;
    [toCopy setUserData:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_subsId;
    *(toCopy + 36) |= 2u;
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
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_isUplink;
    *(v5 + 36) |= 4u;
  }

  v8 = [(NSData *)self->_userData copyWithZone:zone];
  v9 = *(v6 + 24);
  *(v6 + 24) = v8;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_subsId;
    *(v6 + 36) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if (has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_17;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 36) & 4) == 0)
    {
      goto LABEL_17;
    }

    v10 = *(equalCopy + 32);
    if (self->_isUplink)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 36) & 4) != 0)
  {
    goto LABEL_17;
  }

  userData = self->_userData;
  if (!(userData | *(equalCopy + 3)))
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
  v6 = *(equalCopy + 36);
LABEL_12:
  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_subsId != *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 4) != 0)
  {
    self->_isUplink = *(fromCopy + 32);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 3))
  {
    v6 = fromCopy;
    [(KCellularWcdmaIdleToConnectedUserData *)self setUserData:?];
    fromCopy = v6;
  }

  if ((*(fromCopy + 36) & 2) != 0)
  {
    self->_subsId = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end