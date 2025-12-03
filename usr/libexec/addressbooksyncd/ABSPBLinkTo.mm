@interface ABSPBLinkTo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsName:(BOOL)name;
- (void)writeTo:(id)to;
@end

@implementation ABSPBLinkTo

- (void)setHasIsName:(BOOL)name
{
  if (name)
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
  v7.super_class = ABSPBLinkTo;
  v3 = [(ABSPBLinkTo *)&v7 description];
  dictionaryRepresentation = [(ABSPBLinkTo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  toGuid = self->_toGuid;
  if (toGuid)
  {
    [v3 setObject:toGuid forKey:@"toGuid"];
  }

  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithBool:self->_isImage];
    [v4 setObject:v7 forKey:@"isImage"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_isName];
    [v4 setObject:v8 forKey:@"isName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_toGuid)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    isImage = self->_isImage;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isName = self->_isName;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_toGuid)
  {
    v6 = toCopy;
    [toCopy setToGuid:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    toCopy[16] = self->_isImage;
    toCopy[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[17] = self->_isName;
    toCopy[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_toGuid copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 16) = self->_isImage;
    *(v5 + 20) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 17) = self->_isName;
    *(v5 + 20) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  toGuid = self->_toGuid;
  if (toGuid | *(equalCopy + 1))
  {
    if (![(NSString *)toGuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 20) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(equalCopy + 16);
  if (self->_isImage)
  {
    if ((*(equalCopy + 16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(equalCopy + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 20) & 2) != 0)
    {
      if (self->_isName)
      {
        if (*(equalCopy + 17))
        {
          goto LABEL_20;
        }
      }

      else if (!*(equalCopy + 17))
      {
LABEL_20:
        v6 = 1;
        goto LABEL_13;
      }
    }

    goto LABEL_12;
  }

LABEL_13:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_toGuid hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isImage;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isName;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    v6 = fromCopy;
    [(ABSPBLinkTo *)self setToGuid:?];
    fromCopy = v6;
  }

  v5 = fromCopy[20];
  if (v5)
  {
    self->_isImage = fromCopy[16];
    *&self->_has |= 1u;
    v5 = fromCopy[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_isName = fromCopy[17];
    *&self->_has |= 2u;
  }
}

@end