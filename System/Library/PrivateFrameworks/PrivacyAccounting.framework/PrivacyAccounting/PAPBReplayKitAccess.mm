@interface PAPBReplayKitAccess
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PAPBReplayKitAccess

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PAPBReplayKitAccess;
  v4 = [(PAPBReplayKitAccess *)&v8 description];
  dictionaryRepresentation = [(PAPBReplayKitAccess *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  access = self->_access;
  if (access)
  {
    dictionaryRepresentation = [(PAPBAccess *)access dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"access"];
  }

  broadcaster = self->_broadcaster;
  if (broadcaster)
  {
    dictionaryRepresentation2 = [(PAPBApplication *)broadcaster dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"broadcaster"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_access)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_broadcaster)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PAPBAccess *)self->_access copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(PAPBApplication *)self->_broadcaster copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((access = self->_access, !(access | equalCopy[1])) || -[PAPBAccess isEqual:](access, "isEqual:")))
  {
    broadcaster = self->_broadcaster;
    if (broadcaster | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  access = self->_access;
  v6 = fromCopy[1];
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  broadcaster = self->_broadcaster;
  v8 = fromCopy[2];
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