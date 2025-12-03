@interface ABSPBAlert
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABSPBAlert

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBAlert;
  v3 = [(ABSPBAlert *)&v7 description];
  dictionaryRepresentation = [(ABSPBAlert *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  sound = self->_sound;
  if (sound)
  {
    [v3 setObject:sound forKey:@"sound"];
  }

  vibration = self->_vibration;
  if (vibration)
  {
    [v4 setObject:vibration forKey:@"vibration"];
  }

  if (*&self->_has)
  {
    v7 = [NSNumber numberWithBool:self->_ignoreMute];
    [v4 setObject:v7 forKey:@"ignoreMute"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sound)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_vibration)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    ignoreMute = self->_ignoreMute;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sound)
  {
    [toCopy setSound:?];
    toCopy = v5;
  }

  if (self->_vibration)
  {
    [v5 setVibration:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_ignoreMute;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_sound copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_vibration copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_ignoreMute;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  sound = self->_sound;
  if (sound | *(equalCopy + 1))
  {
    if (![(NSString *)sound isEqual:?])
    {
      goto LABEL_8;
    }
  }

  vibration = self->_vibration;
  if (vibration | *(equalCopy + 2))
  {
    if (![(NSString *)vibration isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_ignoreMute)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sound hash];
  v4 = [(NSString *)self->_vibration hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_ignoreMute;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(ABSPBAlert *)self setSound:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(ABSPBAlert *)self setVibration:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_ignoreMute = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end