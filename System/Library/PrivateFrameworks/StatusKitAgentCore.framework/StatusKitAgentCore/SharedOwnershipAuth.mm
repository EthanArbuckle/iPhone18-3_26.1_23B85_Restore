@interface SharedOwnershipAuth
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SharedOwnershipAuth

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SharedOwnershipAuth;
  v4 = [(SharedOwnershipAuth *)&v8 description];
  v5 = [(SharedOwnershipAuth *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  simpleJwt = self->_simpleJwt;
  if (simpleJwt)
  {
    [v3 setObject:simpleJwt forKey:@"simple_jwt"];
  }

  channelPublicKey = self->_channelPublicKey;
  if (channelPublicKey)
  {
    [v4 setObject:channelPublicKey forKey:@"channel_public_key"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v4 setObject:nonce forKey:@"nonce"];
  }

  signNonce = self->_signNonce;
  if (signNonce)
  {
    [v4 setObject:signNonce forKey:@"sign_nonce"];
  }

  serverEncryptionKey = self->_serverEncryptionKey;
  if (serverEncryptionKey)
  {
    [v4 setObject:serverEncryptionKey forKey:@"server_encryption_key"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_simpleJwt)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_channelPublicKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_nonce)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_signNonce)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_serverEncryptionKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_simpleJwt)
  {
    [v4 setSimpleJwt:?];
    v4 = v5;
  }

  if (self->_channelPublicKey)
  {
    [v5 setChannelPublicKey:?];
    v4 = v5;
  }

  if (self->_nonce)
  {
    [v5 setNonce:?];
    v4 = v5;
  }

  if (self->_signNonce)
  {
    [v5 setSignNonce:?];
    v4 = v5;
  }

  if (self->_serverEncryptionKey)
  {
    [v5 setServerEncryptionKey:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_simpleJwt copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_channelPublicKey copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_nonce copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_signNonce copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_serverEncryptionKey copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((simpleJwt = self->_simpleJwt, !(simpleJwt | v4[5])) || -[NSString isEqual:](simpleJwt, "isEqual:")) && ((channelPublicKey = self->_channelPublicKey, !(channelPublicKey | v4[1])) || -[NSData isEqual:](channelPublicKey, "isEqual:")) && ((nonce = self->_nonce, !(nonce | v4[2])) || -[NSData isEqual:](nonce, "isEqual:")) && ((signNonce = self->_signNonce, !(signNonce | v4[4])) || -[NSData isEqual:](signNonce, "isEqual:")))
  {
    serverEncryptionKey = self->_serverEncryptionKey;
    if (serverEncryptionKey | v4[3])
    {
      v10 = [(NSData *)serverEncryptionKey isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_simpleJwt hash];
  v4 = [(NSData *)self->_channelPublicKey hash]^ v3;
  v5 = [(NSData *)self->_nonce hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_signNonce hash];
  return v6 ^ [(NSData *)self->_serverEncryptionKey hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(SharedOwnershipAuth *)self setSimpleJwt:?];
  }

  if (v4[1])
  {
    [(SharedOwnershipAuth *)self setChannelPublicKey:?];
  }

  if (v4[2])
  {
    [(SharedOwnershipAuth *)self setNonce:?];
  }

  if (v4[4])
  {
    [(SharedOwnershipAuth *)self setSignNonce:?];
  }

  if (v4[3])
  {
    [(SharedOwnershipAuth *)self setServerEncryptionKey:?];
  }
}

@end