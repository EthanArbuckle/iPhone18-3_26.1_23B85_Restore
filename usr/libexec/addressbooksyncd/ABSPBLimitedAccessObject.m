@interface ABSPBLimitedAccessObject
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsActive:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBLimitedAccessObject

- (void)setHasIsActive:(BOOL)a3
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
  v7.receiver = self;
  v7.super_class = ABSPBLimitedAccessObject;
  v3 = [(ABSPBLimitedAccessObject *)&v7 description];
  v4 = [(ABSPBLimitedAccessObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v4 setObject:contactID forKey:@"contactID"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [NSNumber numberWithUnsignedLongLong:self->_sequenceNumber];
    [v4 setObject:v8 forKey:@"sequenceNumber"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_isActive];
    [v4 setObject:v9 forKey:@"isActive"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isActive = self->_isActive;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_bundleID)
  {
    [v4 setBundleID:?];
    v4 = v6;
  }

  if (self->_contactID)
  {
    [v6 setContactID:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_sequenceNumber;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_isActive;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_contactID copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  has = self->_has;
  if (has)
  {
    v5[1] = self->_sequenceNumber;
    *(v5 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_isActive;
    *(v5 + 36) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  contactID = self->_contactID;
  if (contactID | *(v4 + 3))
  {
    if (![(NSString *)contactID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_sequenceNumber != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_isActive)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_13;
    }

    v7 = 1;
  }

LABEL_14:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleID hash];
  v4 = [(NSString *)self->_contactID hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_sequenceNumber;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_isActive;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 2))
  {
    [(ABSPBLimitedAccessObject *)self setBundleID:?];
    v4 = v6;
  }

  if (*(v4 + 3))
  {
    [(ABSPBLimitedAccessObject *)self setContactID:?];
    v4 = v6;
  }

  v5 = *(v4 + 36);
  if (v5)
  {
    self->_sequenceNumber = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_isActive = *(v4 + 32);
    *&self->_has |= 2u;
  }
}

@end