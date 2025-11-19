@interface ABSPBContainerAttributes
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEnabled:(BOOL)a3;
- (void)setHasGuardianRestricted:(BOOL)a3;
- (void)setHasParentallyManaged:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation ABSPBContainerAttributes

- (void)setHasEnabled:(BOOL)a3
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

- (void)setHasGuardianRestricted:(BOOL)a3
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

- (void)setHasParentallyManaged:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ABSPBContainerAttributes;
  v3 = [(ABSPBContainerAttributes *)&v7 description];
  v4 = [(ABSPBContainerAttributes *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [NSNumber numberWithBool:self->_enabled];
    [v3 setObject:v4 forKey:@"enabled"];
  }

  permissions = self->_permissions;
  if (permissions)
  {
    v6 = [(ABSPBContainerPermissions *)permissions dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"permissions"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [NSNumber numberWithBool:self->_guardianRestricted];
    [v3 setObject:v8 forKey:@"guardianRestricted"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v9 = [NSNumber numberWithBool:self->_parentallyManaged];
    [v3 setObject:v9 forKey:@"parentallyManaged"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if (*&self->_has)
  {
    v11 = [NSNumber numberWithInt:self->_type];
    [v3 setObject:v11 forKey:@"type"];
  }

  accountExternalIdentifier = self->_accountExternalIdentifier;
  if (accountExternalIdentifier)
  {
    [v3 setObject:accountExternalIdentifier forKey:@"accountExternalIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if ((*&self->_has & 2) != 0)
  {
    enabled = self->_enabled;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_permissions)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    guardianRestricted = self->_guardianRestricted;
    PBDataWriterWriteBOOLField();
    v4 = v10;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    parentallyManaged = self->_parentallyManaged;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v10;
  }

  if (self->_accountExternalIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[36] = self->_enabled;
    v4[40] |= 2u;
  }

  v6 = v4;
  if (self->_permissions)
  {
    [v4 setPermissions:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[37] = self->_guardianRestricted;
    v4[40] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v4[38] = self->_parentallyManaged;
    v4[40] |= 8u;
  }

  if (self->_name)
  {
    [v6 setName:?];
    v4 = v6;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_type;
    v4[40] |= 1u;
  }

  if (self->_accountExternalIdentifier)
  {
    [v6 setAccountExternalIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    v5[36] = self->_enabled;
    v5[40] |= 2u;
  }

  v7 = [(ABSPBContainerPermissions *)self->_permissions copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 37) = self->_guardianRestricted;
    *(v6 + 40) |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    *(v6 + 38) = self->_parentallyManaged;
    *(v6 + 40) |= 8u;
  }

  v10 = [(NSString *)self->_name copyWithZone:a3];
  v11 = v6[2];
  v6[2] = v10;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_type;
    *(v6 + 40) |= 1u;
  }

  v12 = [(NSString *)self->_accountExternalIdentifier copyWithZone:a3];
  v13 = v6[1];
  v6[1] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_38;
  }

  has = self->_has;
  v6 = *(v4 + 40);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0)
    {
      goto LABEL_38;
    }

    v11 = *(v4 + 36);
    if (self->_enabled)
    {
      if ((*(v4 + 36) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 36))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_38;
  }

  permissions = self->_permissions;
  if (permissions | *(v4 + 3))
  {
    if (![(ABSPBContainerPermissions *)permissions isEqual:?])
    {
      goto LABEL_38;
    }

    has = self->_has;
  }

  v8 = *(v4 + 40);
  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0)
    {
      goto LABEL_38;
    }

    v12 = *(v4 + 37);
    if (self->_guardianRestricted)
    {
      if ((*(v4 + 37) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 37))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_38;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0)
    {
      goto LABEL_38;
    }

    v13 = *(v4 + 38);
    if (self->_parentallyManaged)
    {
      if ((*(v4 + 38) & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else if (*(v4 + 38))
    {
      goto LABEL_38;
    }
  }

  else if ((*(v4 + 40) & 8) != 0)
  {
    goto LABEL_38;
  }

  name = self->_name;
  if (!(name | *(v4 + 2)))
  {
    goto LABEL_14;
  }

  if (![(NSString *)name isEqual:?])
  {
LABEL_38:
    v15 = 0;
    goto LABEL_39;
  }

  has = self->_has;
LABEL_14:
  v10 = *(v4 + 40);
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_type != *(v4 + 8))
    {
      goto LABEL_38;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_38;
  }

  accountExternalIdentifier = self->_accountExternalIdentifier;
  if (accountExternalIdentifier | *(v4 + 1))
  {
    v15 = [(NSString *)accountExternalIdentifier isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_39:

  return v15;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_enabled;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(ABSPBContainerPermissions *)self->_permissions hash];
  if ((*&self->_has & 4) != 0)
  {
    v5 = 2654435761 * self->_guardianRestricted;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_parentallyManaged;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_type;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_accountExternalIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((v4[40] & 2) != 0)
  {
    self->_enabled = v4[36];
    *&self->_has |= 2u;
  }

  permissions = self->_permissions;
  v7 = *(v5 + 3);
  v9 = v5;
  if (permissions)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ABSPBContainerPermissions *)permissions mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(ABSPBContainerAttributes *)self setPermissions:?];
  }

  v5 = v9;
LABEL_9:
  v8 = v5[40];
  if ((v8 & 4) != 0)
  {
    self->_guardianRestricted = v5[37];
    *&self->_has |= 4u;
    v8 = v5[40];
  }

  if ((v8 & 8) != 0)
  {
    self->_parentallyManaged = v5[38];
    *&self->_has |= 8u;
  }

  if (*(v5 + 2))
  {
    [(ABSPBContainerAttributes *)self setName:?];
    v5 = v9;
  }

  if (v5[40])
  {
    self->_type = *(v5 + 8);
    *&self->_has |= 1u;
  }

  if (*(v5 + 1))
  {
    [(ABSPBContainerAttributes *)self setAccountExternalIdentifier:?];
  }

  _objc_release_x1();
}

@end