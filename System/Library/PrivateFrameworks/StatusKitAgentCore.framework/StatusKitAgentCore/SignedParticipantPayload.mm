@interface SignedParticipantPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SignedParticipantPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SignedParticipantPayload;
  v4 = [(SignedParticipantPayload *)&v8 description];
  dictionaryRepresentation = [(SignedParticipantPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  payload = self->_payload;
  if (payload)
  {
    dictionaryRepresentation = [(DecryptedParticipantPayload *)payload dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"payload"];
  }

  signature = self->_signature;
  if (signature)
  {
    [dictionary setObject:signature forKey:@"signature"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_payload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_payload)
  {
    [toCopy setPayload:?];
    toCopy = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DecryptedParticipantPayload *)self->_payload copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signature copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((payload = self->_payload, !(payload | equalCopy[1])) || -[DecryptedParticipantPayload isEqual:](payload, "isEqual:")))
  {
    signature = self->_signature;
    if (signature | equalCopy[2])
    {
      v7 = [(NSData *)signature isEqual:?];
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
  payload = self->_payload;
  v6 = fromCopy[1];
  v7 = fromCopy;
  if (payload)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DecryptedParticipantPayload *)payload mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SignedParticipantPayload *)self setPayload:?];
  }

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    [(SignedParticipantPayload *)self setSignature:?];
  }

  MEMORY[0x2821F96F8]();
}

@end