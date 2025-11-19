@interface ABSPBContainerPermissions
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCanCreateGrouops:(BOOL)a3;
- (void)setHasCanDeleteContacts:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBContainerPermissions

- (void)setHasCanDeleteContacts:(BOOL)a3
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

- (void)setHasCanCreateGrouops:(BOOL)a3
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
  v7.super_class = ABSPBContainerPermissions;
  v3 = [(ABSPBContainerPermissions *)&v7 description];
  v4 = [(ABSPBContainerPermissions *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v7 = [NSNumber numberWithBool:self->_canCreateContacts];
    [v3 setObject:v7 forKey:@"canCreateContacts"];

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

  v8 = [NSNumber numberWithBool:self->_canDeleteContacts];
  [v3 setObject:v8 forKey:@"canDeleteContacts"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v5 = [NSNumber numberWithBool:self->_canCreateGrouops];
    [v3 setObject:v5 forKey:@"canCreateGrouops"];
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
    canCreateContacts = self->_canCreateContacts;
    PBDataWriterWriteBOOLField();
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

  canDeleteContacts = self->_canDeleteContacts;
  PBDataWriterWriteBOOLField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    canCreateGrouops = self->_canCreateGrouops;
    PBDataWriterWriteBOOLField();
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
    v4[8] = self->_canCreateContacts;
    v4[12] |= 1u;
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

  v4[10] = self->_canDeleteContacts;
  v4[12] |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    v4[9] = self->_canCreateGrouops;
    v4[12] |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 8) = self->_canCreateContacts;
    *(result + 12) |= 1u;
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

  *(result + 10) = self->_canDeleteContacts;
  *(result + 12) |= 4u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 9) = self->_canCreateGrouops;
  *(result + 12) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((v4[12] & 1) == 0)
    {
      goto LABEL_24;
    }

    v6 = v4[8];
    if (self->_canCreateContacts)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (v4[8])
    {
      goto LABEL_24;
    }
  }

  else if (v4[12])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 4) == 0)
  {
    if ((v4[12] & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((v4[12] & 4) == 0)
  {
    goto LABEL_24;
  }

  v7 = v4[10];
  if (self->_canDeleteContacts)
  {
    if ((v4[10] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v4[10])
  {
    goto LABEL_24;
  }

LABEL_6:
  v5 = (v4[12] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[12] & 2) != 0)
    {
      if (self->_canCreateGrouops)
      {
        if (v4[9])
        {
          goto LABEL_26;
        }
      }

      else if (!v4[9])
      {
LABEL_26:
        v5 = 1;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

LABEL_25:

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

  v2 = 2654435761 * self->_canCreateContacts;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_canDeleteContacts;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_canCreateGrouops;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[12];
  if (v5)
  {
    self->_canCreateContacts = v4[8];
    *&self->_has |= 1u;
    v5 = v4[12];
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

  else if ((v4[12] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_canDeleteContacts = v4[10];
  *&self->_has |= 4u;
  if ((v4[12] & 2) != 0)
  {
LABEL_4:
    self->_canCreateGrouops = v4[9];
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end