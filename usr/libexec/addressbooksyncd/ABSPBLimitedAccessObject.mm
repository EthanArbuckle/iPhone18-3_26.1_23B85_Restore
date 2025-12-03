@interface ABSPBLimitedAccessObject
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsActive:(BOOL)active;
- (void)writeTo:(id)to;
@end

@implementation ABSPBLimitedAccessObject

- (void)setHasIsActive:(BOOL)active
{
  if (active)
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
  dictionaryRepresentation = [(ABSPBLimitedAccessObject *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_contactID)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    sequenceNumber = self->_sequenceNumber;
    PBDataWriterWriteUint64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isActive = self->_isActive;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_bundleID)
  {
    [toCopy setBundleID:?];
    toCopy = v6;
  }

  if (self->_contactID)
  {
    [v6 setContactID:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_sequenceNumber;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_isActive;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_contactID copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 2))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  contactID = self->_contactID;
  if (contactID | *(equalCopy + 3))
  {
    if (![(NSString *)contactID isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_sequenceNumber != *(equalCopy + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_13;
  }

  v7 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }

    if (self->_isActive)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(ABSPBLimitedAccessObject *)self setBundleID:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 3))
  {
    [(ABSPBLimitedAccessObject *)self setContactID:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 36);
  if (v5)
  {
    self->_sequenceNumber = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 36);
  }

  if ((v5 & 2) != 0)
  {
    self->_isActive = *(fromCopy + 32);
    *&self->_has |= 2u;
  }
}

@end