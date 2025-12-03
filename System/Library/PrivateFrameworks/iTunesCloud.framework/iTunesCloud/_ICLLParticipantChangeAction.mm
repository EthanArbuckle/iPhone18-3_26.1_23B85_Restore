@interface _ICLLParticipantChangeAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLParticipantChangeAction

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_status;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(_ICLLParticipantQuery *)self->_participantQuery hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_participantId;
  return v7 ^ v6 ^ [(_ICLLParticipantQuery *)self->_participantQuery hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_status != *(equalCopy + 6))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_participantId != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_14;
  }

  participantQuery = self->_participantQuery;
  if (participantQuery | *(equalCopy + 2))
  {
    v6 = [(_ICLLParticipantQuery *)participantQuery isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_15:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_status;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_participantId;
    *(v5 + 28) |= 1u;
  }

  v8 = [(_ICLLParticipantQuery *)self->_participantQuery copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_participantQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:self->_status];
    [dictionary setObject:v5 forKey:@"status"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_participantId];
    [dictionary setObject:v6 forKey:@"participantId"];
  }

  participantQuery = self->_participantQuery;
  if (participantQuery)
  {
    dictionaryRepresentation = [(_ICLLParticipantQuery *)participantQuery dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"participantQuery"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLParticipantChangeAction;
  v4 = [(_ICLLParticipantChangeAction *)&v8 description];
  dictionaryRepresentation = [(_ICLLParticipantChangeAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end