@interface ICCloudContentTastePBFuseItemPreference
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ICCloudContentTastePBFuseItemPreference

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_adamId;
  }

  else
  {
    v3 = 0;
  }

  preference = self->_preference;
  v5 = [(NSString *)self->_externalId hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_7;
    }

LABEL_10:
    v8 = 0;
    return v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * preference);
  }

  v6 = 2654435761 * self->_createdOffsetMillis;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_preferenceType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = 2654435761 * self->_actionTimestampMillis;
  return v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * preference);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_preference != *(equalCopy + 10))
  {
    goto LABEL_25;
  }

  has = self->_has;
  v6 = *(equalCopy + 48);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_adamId != *(equalCopy + 2))
    {
      goto LABEL_25;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_25;
  }

  externalId = self->_externalId;
  if (externalId | *(equalCopy + 4))
  {
    if (![(NSString *)externalId isEqual:?])
    {
LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

    has = self->_has;
    v6 = *(equalCopy + 48);
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_createdOffsetMillis != *(equalCopy + 3))
    {
      goto LABEL_25;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_25;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_preferenceType != *(equalCopy + 11))
    {
      goto LABEL_25;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_25;
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_actionTimestampMillis != *(equalCopy + 1))
    {
      goto LABEL_25;
    }

    v8 = 1;
  }

LABEL_26:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  v5[10] = self->_preference;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 2) = self->_adamId;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NSString *)self->_externalId copyWithZone:zone];
  v8 = v6[4];
  v6[4] = v7;

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 11) = self->_preferenceType;
    *(v6 + 48) |= 8u;
    if ((*&self->_has & 1) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6[3] = self->_createdOffsetMillis;
  *(v6 + 48) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (has)
  {
LABEL_6:
    v6[1] = self->_actionTimestampMillis;
    *(v6 + 48) |= 1u;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  preference = self->_preference;
  v11 = toCopy;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
    adamId = self->_adamId;
    PBDataWriterWriteInt64Field();
  }

  if (self->_externalId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    createdOffsetMillis = self->_createdOffsetMillis;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  preferenceType = self->_preferenceType;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_8:
    actionTimestampMillis = self->_actionTimestampMillis;
    PBDataWriterWriteInt64Field();
  }

LABEL_9:
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithInt:self->_preference];
  [v3 setObject:v4 forKey:@"preference"];

  if ((*&self->_has & 2) != 0)
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
  if ((has & 4) != 0)
  {
    v10 = [NSNumber numberWithLongLong:self->_createdOffsetMillis];
    [v3 setObject:v10 forKey:@"created_offset_millis"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_7;
  }

  v11 = [NSNumber numberWithInt:self->_preferenceType];
  [v3 setObject:v11 forKey:@"preference_type"];

  if (*&self->_has)
  {
LABEL_8:
    v8 = [NSNumber numberWithLongLong:self->_actionTimestampMillis];
    [v3 setObject:v8 forKey:@"action_timestamp_millis"];
  }

LABEL_9:

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = ICCloudContentTastePBFuseItemPreference;
  v3 = [(ICCloudContentTastePBFuseItemPreference *)&v7 description];
  dictionaryRepresentation = [(ICCloudContentTastePBFuseItemPreference *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

@end