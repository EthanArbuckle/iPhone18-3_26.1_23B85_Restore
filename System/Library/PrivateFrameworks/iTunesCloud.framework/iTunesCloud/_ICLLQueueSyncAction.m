@interface _ICLLQueueSyncAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLQueueSyncAction

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  queue = self->_queue;
  if (queue | *(v4 + 2))
  {
    if (![(_ICLLQueue *)queue isEqual:?])
    {
      goto LABEL_13;
    }
  }

  queueContext = self->_queueContext;
  if (queueContext | *(v4 + 3))
  {
    if (![(NSString *)queueContext isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_revision != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  controlSettings = self->_controlSettings;
  if (controlSettings | *(v4 + 1))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_ICLLQueue *)self->_queue copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_queueContext copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_revision;
    *(v5 + 36) |= 1u;
  }

  v10 = [(_ICLLPlaybackControlSettings *)self->_controlSettings copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_queue)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_queueContext)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_controlSettings)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  queue = self->_queue;
  if (queue)
  {
    v5 = [(_ICLLQueue *)queue dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"queue"];
  }

  queueContext = self->_queueContext;
  if (queueContext)
  {
    [v3 setObject:queueContext forKey:@"queueContext"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v3 setObject:v7 forKey:@"revision"];
  }

  controlSettings = self->_controlSettings;
  if (controlSettings)
  {
    v9 = [(_ICLLPlaybackControlSettings *)controlSettings dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"controlSettings"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLQueueSyncAction;
  v4 = [(_ICLLQueueSyncAction *)&v8 description];
  v5 = [(_ICLLQueueSyncAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end