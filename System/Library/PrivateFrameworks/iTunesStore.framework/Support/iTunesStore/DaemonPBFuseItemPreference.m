@interface DaemonPBFuseItemPreference
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)preferenceType;
- (unint64_t)hash;
- (void)mergeFrom:(id)a3;
- (void)setHasCreatedOffsetMillis:(BOOL)a3;
- (void)setHasPreferenceType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DaemonPBFuseItemPreference

- (void)setHasCreatedOffsetMillis:(BOOL)a3
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

- (int)preferenceType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_preferenceType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasPreferenceType:(BOOL)a3
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

- (id)description
{
  v7.receiver = self;
  v7.super_class = DaemonPBFuseItemPreference;
  v3 = [(DaemonPBFuseItemPreference *)&v7 description];
  v4 = [(DaemonPBFuseItemPreference *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_preference];
  [v3 setObject:v4 forKey:@"preference"];

  if (*&self->_has)
  {
    v5 = [NSNumber numberWithLongLong:self->_adamId];
    [v3 setObject:v5 forKey:@"adam_id"];
  }

  externalId = self->_externalId;
  if (externalId)
  {
    [v3 setObject:externalId forKey:@"external_id"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [NSNumber numberWithLongLong:self->_createdOffsetMillis];
    [v3 setObject:v8 forKey:@"created_offset_millis"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [NSNumber numberWithInt:self->_preferenceType];
    [v3 setObject:v9 forKey:@"preference_type"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_externalId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  v5[8] = self->_preference;
  if (*&self->_has)
  {
    *(v5 + 1) = self->_adamId;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_externalId copyWithZone:a3];
  v8 = v6[3];
  v6[3] = v7;

  has = self->_has;
  if ((has & 2) != 0)
  {
    v6[2] = self->_createdOffsetMillis;
    *(v6 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 9) = self->_preferenceType;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_preference != *(v4 + 8))
  {
    goto LABEL_20;
  }

  has = self->_has;
  if (has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_adamId != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_20;
  }

  externalId = self->_externalId;
  if (externalId | *(v4 + 3))
  {
    if (![(NSString *)externalId isEqual:?])
    {
LABEL_20:
      v7 = 0;
      goto LABEL_21;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_createdOffsetMillis != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(v4 + 40) & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_preferenceType != *(v4 + 9))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_adamId;
  }

  else
  {
    v3 = 0;
  }

  preference = self->_preference;
  v5 = [(NSString *)self->_externalId hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_createdOffsetMillis;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v3 ^ v5 ^ v6 ^ v7 ^ (2654435761 * preference);
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_preferenceType;
  return v3 ^ v5 ^ v6 ^ v7 ^ (2654435761 * preference);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_preference = *(v4 + 8);
  if (*(v4 + 40))
  {
    self->_adamId = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    v6 = v4;
    [(DaemonPBFuseItemPreference *)self setExternalId:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 2) != 0)
  {
    self->_createdOffsetMillis = *(v4 + 2);
    *&self->_has |= 2u;
    v5 = *(v4 + 40);
  }

  if ((v5 & 4) != 0)
  {
    self->_preferenceType = *(v4 + 9);
    *&self->_has |= 4u;
  }
}

@end