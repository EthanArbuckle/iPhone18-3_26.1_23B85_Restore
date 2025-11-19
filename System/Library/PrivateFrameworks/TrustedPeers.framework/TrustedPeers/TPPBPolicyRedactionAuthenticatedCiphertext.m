@interface TPPBPolicyRedactionAuthenticatedCiphertext
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation TPPBPolicyRedactionAuthenticatedCiphertext

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(TPPBPolicyRedactionAuthenticatedCiphertext *)self setCiphertext:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(TPPBPolicyRedactionAuthenticatedCiphertext *)self setAuthenticationCode:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(TPPBPolicyRedactionAuthenticatedCiphertext *)self setInitializationVector:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_ciphertext hash];
  v4 = [(NSData *)self->_authenticationCode hash]^ v3;
  return v4 ^ [(NSData *)self->_initializationVector hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((ciphertext = self->_ciphertext, !(ciphertext | v4[2])) || -[NSData isEqual:](ciphertext, "isEqual:")) && ((authenticationCode = self->_authenticationCode, !(authenticationCode | v4[1])) || -[NSData isEqual:](authenticationCode, "isEqual:")))
  {
    initializationVector = self->_initializationVector;
    if (initializationVector | v4[3])
    {
      v8 = [(NSData *)initializationVector isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_ciphertext copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_authenticationCode copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_initializationVector copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ciphertext)
  {
    [v4 setCiphertext:?];
    v4 = v5;
  }

  if (self->_authenticationCode)
  {
    [v5 setAuthenticationCode:?];
    v4 = v5;
  }

  if (self->_initializationVector)
  {
    [v5 setInitializationVector:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_ciphertext)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_authenticationCode)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_initializationVector)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  ciphertext = self->_ciphertext;
  if (ciphertext)
  {
    [v3 setObject:ciphertext forKey:@"ciphertext"];
  }

  authenticationCode = self->_authenticationCode;
  if (authenticationCode)
  {
    [v4 setObject:authenticationCode forKey:@"authenticationCode"];
  }

  initializationVector = self->_initializationVector;
  if (initializationVector)
  {
    [v4 setObject:initializationVector forKey:@"initializationVector"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyRedactionAuthenticatedCiphertext;
  v4 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)&v8 description];
  v5 = [(TPPBPolicyRedactionAuthenticatedCiphertext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end