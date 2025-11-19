@interface ABSPBAlert
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBAlert

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBAlert;
  v3 = [(ABSPBAlert *)&v7 description];
  v4 = [(ABSPBAlert *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sound)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_vibration)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    ignoreMute = self->_ignoreMute;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sound)
  {
    [v4 setSound:?];
    v4 = v5;
  }

  if (self->_vibration)
  {
    [v5 setVibration:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_ignoreMute;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sound copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_vibration copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_ignoreMute;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  sound = self->_sound;
  if (sound | *(v4 + 1))
  {
    if (![(NSString *)sound isEqual:?])
    {
      goto LABEL_8;
    }
  }

  vibration = self->_vibration;
  if (vibration | *(v4 + 2))
  {
    if (![(NSString *)vibration isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_ignoreMute)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(ABSPBAlert *)self setSound:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(ABSPBAlert *)self setVibration:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_ignoreMute = v4[24];
    *&self->_has |= 1u;
  }
}

@end