@interface ABSPBLinkTo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsName:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBLinkTo

- (void)setHasIsName:(BOOL)a3
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
  v7.super_class = ABSPBLinkTo;
  v3 = [(ABSPBLinkTo *)&v7 description];
  v4 = [(ABSPBLinkTo *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_toGuid)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    isImage = self->_isImage;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isName = self->_isName;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_toGuid)
  {
    v6 = v4;
    [v4 setToGuid:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    v4[16] = self->_isImage;
    v4[20] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[17] = self->_isName;
    v4[20] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_toGuid copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  toGuid = self->_toGuid;
  if (toGuid | *(v4 + 1))
  {
    if (![(NSString *)toGuid isEqual:?])
    {
      goto LABEL_12;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(v4 + 20) & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_12;
  }

  v8 = *(v4 + 16);
  if (self->_isImage)
  {
    if ((*(v4 + 16) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = (*(v4 + 20) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 20) & 2) != 0)
    {
      if (self->_isName)
      {
        if (*(v4 + 17))
        {
          goto LABEL_20;
        }
      }

      else if (!*(v4 + 17))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 1))
  {
    v6 = v4;
    [(ABSPBLinkTo *)self setToGuid:?];
    v4 = v6;
  }

  v5 = v4[20];
  if (v5)
  {
    self->_isImage = v4[16];
    *&self->_has |= 1u;
    v5 = v4[20];
  }

  if ((v5 & 2) != 0)
  {
    self->_isName = v4[17];
    *&self->_has |= 2u;
  }
}

@end