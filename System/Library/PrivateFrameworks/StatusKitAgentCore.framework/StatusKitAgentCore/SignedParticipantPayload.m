@interface SignedParticipantPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SignedParticipantPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SignedParticipantPayload;
  v4 = [(SignedParticipantPayload *)&v8 description];
  v5 = [(SignedParticipantPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  payload = self->_payload;
  if (payload)
  {
    v5 = [(DecryptedParticipantPayload *)payload dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"payload"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v3 setObject:signature forKey:@"signature"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_payload)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_payload)
  {
    [v4 setPayload:?];
    v4 = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DecryptedParticipantPayload *)self->_payload copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signature copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((payload = self->_payload, !(payload | v4[1])) || -[DecryptedParticipantPayload isEqual:](payload, "isEqual:")))
  {
    signature = self->_signature;
    if (signature | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  payload = self->_payload;
  v6 = v4[1];
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(SignedParticipantPayload *)self setSignature:?];
  }

  MEMORY[0x2821F96F8]();
}

@end