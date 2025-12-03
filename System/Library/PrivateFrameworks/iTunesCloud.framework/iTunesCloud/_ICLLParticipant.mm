@interface _ICLLParticipant
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLParticipant

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_participantId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_externalId hash];
  v5 = [(NSString *)self->_participantUUID hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_storefront;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v6 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  v7 = 2654435761 * self->_unreliablePlaybackSyncStatus;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_participantId != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  externalId = self->_externalId;
  if (externalId | *(equalCopy + 2) && ![(NSString *)externalId isEqual:?])
  {
    goto LABEL_20;
  }

  participantUUID = self->_participantUUID;
  if (participantUUID | *(equalCopy + 3))
  {
    if (![(NSString *)participantUUID isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_storefront != *(equalCopy + 8))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 40) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 40) & 4) == 0 || self->_unreliablePlaybackSyncStatus != *(equalCopy + 9))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_participantId;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_externalId copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_participantUUID copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v6 + 32) = self->_storefront;
    *(v6 + 40) |= 2u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v6 + 36) = self->_unreliablePlaybackSyncStatus;
    *(v6 + 40) |= 4u;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_externalId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_participantUUID)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_participantId];
    [dictionary setObject:v4 forKey:@"participantId"];
  }

  externalId = self->_externalId;
  if (externalId)
  {
    [dictionary setObject:externalId forKey:@"externalId"];
  }

  participantUUID = self->_participantUUID;
  if (participantUUID)
  {
    [dictionary setObject:participantUUID forKey:@"participantUUID"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_storefront];
    [dictionary setObject:v8 forKey:@"storefront"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_unreliablePlaybackSyncStatus];
    [dictionary setObject:v9 forKey:@"unreliablePlaybackSyncStatus"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLParticipant;
  v4 = [(_ICLLParticipant *)&v8 description];
  dictionaryRepresentation = [(_ICLLParticipant *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end