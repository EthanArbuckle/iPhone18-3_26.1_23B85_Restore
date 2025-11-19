@interface PAPBReplayKitAccess
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PAPBReplayKitAccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBReplayKitAccess;
  v4 = [(PAPBReplayKitAccess *)&v8 description];
  v5 = [(PAPBReplayKitAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    v5 = [(PAPBAccess *)access dictionaryRepresentation];
    [v3 setObject:v5 forKeyedSubscript:@"access"];
  }

  broadcaster = self->_broadcaster;
  if (broadcaster)
  {
    v7 = [(PAPBApplication *)broadcaster dictionaryRepresentation];
    [v3 setObject:v7 forKeyedSubscript:@"broadcaster"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_broadcaster)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PAPBApplication *)self->_broadcaster copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((access = self->_access, !(access | v4[1])) || -[PAPBAccess isEqual:](access, "isEqual:")))
  {
    broadcaster = self->_broadcaster;
    if (broadcaster | v4[2])
    {
      v7 = [(PAPBApplication *)broadcaster isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  access = self->_access;
  v6 = v4[1];
  v9 = v4;
  if (access)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PAPBAccess *)access mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(PAPBReplayKitAccess *)self setAccess:?];
  }

  v4 = v9;
LABEL_7:
  broadcaster = self->_broadcaster;
  v8 = v4[2];
  if (broadcaster)
  {
    if (v8)
    {
      [(PAPBApplication *)broadcaster mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(PAPBReplayKitAccess *)self setBroadcaster:?];
  }

  MEMORY[0x1EEE66BB8]();
}

@end