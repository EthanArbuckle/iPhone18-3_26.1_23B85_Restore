@interface _ICLLQueueQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _ICLLQueueQuery

- (unint64_t)hash
{
  v3 = [(_ICLLQueue *)self->_queue hash];
  v4 = [(NSString *)self->_queueContext hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_revision;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(_ICLLPlaybackControlSettings *)self->_controlSettings hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  queue = self->_queue;
  if (queue | *(equalCopy + 2))
  {
    if (![(_ICLLQueue *)queue isEqual:?])
    {
      goto LABEL_13;
    }
  }

  queueContext = self->_queueContext;
  if (queueContext | *(equalCopy + 3))
  {
    if (![(NSString *)queueContext isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_revision != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  controlSettings = self->_controlSettings;
  if (controlSettings | *(equalCopy + 1))
  {
    v8 = [(_ICLLPlaybackControlSettings *)controlSettings isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_ICLLQueue *)self->_queue copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_queueContext copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_revision;
    *(v5 + 36) |= 1u;
  }

  v10 = [(_ICLLPlaybackControlSettings *)self->_controlSettings copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_queue)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_queueContext)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_controlSettings)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  if (queue)
  {
    dictionaryRepresentation = [(_ICLLQueue *)queue dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"queue"];
  }

  queueContext = self->_queueContext;
  if (queueContext)
  {
    [dictionary setObject:queueContext forKey:@"queueContext"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [dictionary setObject:v7 forKey:@"revision"];
  }

  controlSettings = self->_controlSettings;
  if (controlSettings)
  {
    dictionaryRepresentation2 = [(_ICLLPlaybackControlSettings *)controlSettings dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"controlSettings"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLQueueQuery;
  v4 = [(_ICLLQueueQuery *)&v8 description];
  dictionaryRepresentation = [(_ICLLQueueQuery *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end