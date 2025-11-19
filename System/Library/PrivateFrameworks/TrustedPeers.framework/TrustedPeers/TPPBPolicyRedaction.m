@interface TPPBPolicyRedaction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyRedaction

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(TPPBPolicyRedaction *)self setName:?];
    v4 = v7;
  }

  ciphertext = self->_ciphertext;
  v6 = v4[1];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((name = self->_name, !(name | v4[2])) || -[NSString isEqual:](name, "isEqual:")))
  {
    ciphertext = self->_ciphertext;
    if (ciphertext | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)self->_ciphertext copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_ciphertext)
  {
    [v5 setCiphertext:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ciphertext)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    v7 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)ciphertext dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"ciphertext"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyRedaction;
  v4 = [(TPPBPolicyRedaction *)&v8 description];
  v5 = [(TPPBPolicyRedaction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end