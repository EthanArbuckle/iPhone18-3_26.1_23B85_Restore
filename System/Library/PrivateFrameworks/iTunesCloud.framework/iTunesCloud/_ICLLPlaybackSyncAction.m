@interface _ICLLPlaybackSyncAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)clearOneofValuesForPayload;
- (void)writeTo:(id)a3;
@end

@implementation _ICLLPlaybackSyncAction

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_payload;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_participantState hash]^ v3;
  return v4 ^ [(NSString *)self->_transportControlState hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_payload != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  participantState = self->_participantState;
  if (participantState | *(v4 + 1) && ![(NSString *)participantState isEqual:?])
  {
    goto LABEL_11;
  }

  transportControlState = self->_transportControlState;
  if (transportControlState | *(v4 + 3))
  {
    v7 = [(NSString *)transportControlState isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_payload;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_participantState copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_transportControlState copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_participantState)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transportControlState)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)clearOneofValuesForPayload
{
  if (a1)
  {
    *(a1 + 32) &= ~1u;
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    *(a1 + 8) = 0;

    v3 = *(a1 + 24);
    *(a1 + 24) = 0;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  participantState = self->_participantState;
  if (participantState)
  {
    [v3 setObject:participantState forKey:@"participantState"];
  }

  transportControlState = self->_transportControlState;
  if (transportControlState)
  {
    [v4 setObject:transportControlState forKey:@"transportControlState"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_payload];
    [v4 setObject:v7 forKey:@"payload"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _ICLLPlaybackSyncAction;
  v4 = [(_ICLLPlaybackSyncAction *)&v8 description];
  v5 = [(_ICLLPlaybackSyncAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end