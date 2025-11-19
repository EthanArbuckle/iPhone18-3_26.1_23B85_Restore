@interface CSDMessagingEncryptedConversationMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSDMessagingEncryptedConversationMessage

- (id)description
{
  v7.receiver = self;
  v7.super_class = CSDMessagingEncryptedConversationMessage;
  v3 = [(CSDMessagingEncryptedConversationMessage *)&v7 description];
  v4 = [(CSDMessagingEncryptedConversationMessage *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  publicKey = self->_publicKey;
  if (publicKey)
  {
    [v3 setObject:publicKey forKey:@"publicKey"];
  }

  conversationMessageBytes = self->_conversationMessageBytes;
  if (conversationMessageBytes)
  {
    [v4 setObject:conversationMessageBytes forKey:@"conversationMessageBytes"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publicKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_conversationMessageBytes)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publicKey)
  {
    [v4 setPublicKey:?];
    v4 = v5;
  }

  if (self->_conversationMessageBytes)
  {
    [v5 setConversationMessageBytes:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_publicKey copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_conversationMessageBytes copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((publicKey = self->_publicKey, !(publicKey | v4[2])) || -[NSData isEqual:](publicKey, "isEqual:")))
  {
    conversationMessageBytes = self->_conversationMessageBytes;
    if (conversationMessageBytes | v4[1])
    {
      v7 = [(NSData *)conversationMessageBytes isEqual:?];
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
  v5 = v4;
  if (v4[2])
  {
    [(CSDMessagingEncryptedConversationMessage *)self setPublicKey:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(CSDMessagingEncryptedConversationMessage *)self setConversationMessageBytes:?];
    v4 = v5;
  }
}

@end