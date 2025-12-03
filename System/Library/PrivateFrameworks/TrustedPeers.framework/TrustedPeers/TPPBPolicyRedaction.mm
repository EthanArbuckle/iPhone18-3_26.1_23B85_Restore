@interface TPPBPolicyRedaction
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyRedaction

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(TPPBPolicyRedaction *)self setName:?];
    fromCopy = v7;
  }

  ciphertext = self->_ciphertext;
  v6 = fromCopy[1];
  if (ciphertext)
  {
    if (v6)
    {
      [(TPPBPolicyRedactionAuthenticatedCiphertext *)ciphertext mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(TPPBPolicyRedaction *)self setCiphertext:?];
  }

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | equalCopy[2])) || -[NSString isEqual:](name, "isEqual:")))
  {
    ciphertext = self->_ciphertext;
    if (ciphertext | equalCopy[1])
    {
      v7 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)ciphertext isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)self->_ciphertext copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_ciphertext)
  {
    [v5 setCiphertext:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_ciphertext)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    dictionaryRepresentation = [(TPPBPolicyRedactionAuthenticatedCiphertext *)ciphertext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"ciphertext"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyRedaction;
  v4 = [(TPPBPolicyRedaction *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyRedaction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end