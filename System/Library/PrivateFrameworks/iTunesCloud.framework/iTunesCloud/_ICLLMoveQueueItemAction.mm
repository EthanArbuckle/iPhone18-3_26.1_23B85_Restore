@interface _ICLLMoveQueueItemAction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLMoveQueueItemAction

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_revision;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_itemId hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_position;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_ICLLQueueQuery *)self->_queueQuery hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  v6 = *(equalCopy + 36);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_revision != *(equalCopy + 8))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 36) & 2) != 0)
  {
    goto LABEL_17;
  }

  itemId = self->_itemId;
  if (itemId | *(equalCopy + 1))
  {
    if (![(NSString *)itemId isEqual:?])
    {
LABEL_17:
      v9 = 0;
      goto LABEL_18;
    }

    has = self->_has;
    v6 = *(equalCopy + 36);
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_position != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
    goto LABEL_17;
  }

  queueQuery = self->_queueQuery;
  if (queueQuery | *(equalCopy + 3))
  {
    v9 = [(_ICLLQueueQuery *)queueQuery isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_18:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 32) = self->_revision;
    *(v5 + 36) |= 2u;
  }

  v7 = [(NSString *)self->_itemId copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if (*&self->_has)
  {
    *(v6 + 16) = self->_position;
    *(v6 + 36) |= 1u;
  }

  v9 = [(_ICLLQueueQuery *)self->_queueQuery copyWithZone:zone];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_itemId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_queueQuery)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [dictionary setObject:v4 forKey:@"revision"];
  }

  itemId = self->_itemId;
  if (itemId)
  {
    [dictionary setObject:itemId forKey:@"itemId"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_position];
    [dictionary setObject:v6 forKey:@"position"];
  }

  queueQuery = self->_queueQuery;
  if (queueQuery)
  {
    dictionaryRepresentation = [(_ICLLQueueQuery *)queueQuery dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"queueQuery"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLMoveQueueItemAction;
  v4 = [(_ICLLMoveQueueItemAction *)&v8 description];
  dictionaryRepresentation = [(_ICLLMoveQueueItemAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end